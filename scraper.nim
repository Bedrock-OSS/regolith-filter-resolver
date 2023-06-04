import std/[os, json, strutils, strformat]

let
    resolverJsonPath = fmt"{getAppDir()}/resolver.json"
    repoList = parseFile("repos.json")

var resolverJson = parseFile(resolverJsonPath)

type
    Filter = object
        name: string
        author: string
        url: string

proc newFilter(name, author, url: string): Filter =
    result.name = name
    result.author = author
    result.url = url

proc findRepo(author, repoName: string): string =
    for repo in repoList["known_repos"].to(seq[string]):
        if repo.contains(author) and repo.contains(repoName):
            return repo
    quit("Unable to run findRepo")

proc cloneRepos() =
    createDir("Repos")
    setCurrentDir("Repos")
    for repo in repoList["known_repos"].to(seq[string]):
        let cloneSplit = repo.split("/")
        var cloneName = ""
        if cloneSplit[0].startsWith("github.com"):
            cloneName = cloneSplit[1] & "/" & cloneSplit[2]
        let cloneUrl = "http://" & repo
        if not dirExists(cloneName):
            discard execShellCmd(fmt"git clone {cloneUrl} {cloneName}")
    setCurrentDir(getAppDir())

iterator getFilters(): Filter =
    for owner in walkDir("Repos"):
        let user = splitPath(owner.path)[1]
        for repo in walkDir(owner.path):
            let repoName = splitPath(repo.path)[1]
            for filter in walkDir(repo.path):
                let filterName = splitPath(filter.path)[1]
                if (fileExists(filter.path & "/filter.json")):
                    yield newFilter(filterName, user, findRepo(user, repoName))

proc addFilter(f: Filter) =
    if not resolverJson["filters"].hasKey(f.name):
        resolverJson["filters"][f.name] = %*{"url": f.url}
        echo fmt"Added filter {f.name}"
    elif not resolverJson["filters"][f.name]["url"].to(string).contains(f.author):
        let newFilterName = f.author & "_" & f.name
        resolverJson["filters"][newFilterName] = %*{"url": f.url}
        echo fmt"Added filter {newFilterName}"

cloneRepos()
for validFilter in getFilters():
    validFilter.addFilter()
resolverJsonPath.writeFile(resolverJson.pretty())
sleep(1500)
