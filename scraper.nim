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
        versions: seq[string]

proc newFilter(name, author, url: string, versions: seq[string]): Filter =
    result.name = name
    result.author = author
    result.url = url
    result.versions = versions

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
        let cloneName = cloneSplit[1] & "/" & cloneSplit[2]
        let cloneUrl = "http://" & repo
        if not dirExists(cloneName):
            discard execShellCmd(fmt"git clone {cloneUrl} {cloneName}")
    setCurrentDir(getAppDir())

iterator getFilters(): Filter =
    let root = getCurrentDir()
    for owner in walkDir("Repos"):
        let user = splitPath(owner.path)[1]
        for repo in walkDir(owner.path):
            let repoName = splitPath(repo.path)[1]
            setCurrentDir(root & "/" & repo.path)
            discard execShellCmd("git tag > tags.txt")
            for filter in walkDir(getCurrentDir()):
                let filterName = splitPath(filter.path)[1]
                if (fileExists(filter.path & "/filter.json")):
                    var versions: seq[string] = @["latest"]
                    let tagList = readFile("tags.txt").split("\n")
                    for tag in tagList:
                        if tag.contains(filterName):
                            let strVersion = tag.replace(filterName & "-", "")
                            versions.add(strVersion)
                    yield newFilter(filterName, user, findRepo(user, repoName), versions)
            setCurrentDir(root)

proc addFilter(f: Filter): Filter =
    result = f
    if not resolverJson["filters"].hasKey(f.name):
        resolverJson["filters"][f.name] = %*{"url": f.url, "versions": f.versions}
        echo fmt"Added filter {f.name}"
    elif not resolverJson["filters"][f.name]["url"].to(string).contains(f.author):
        let newFilterName = f.author & "_" & f.name
        if not resolverJson["filters"].hasKey(newFilterName):
            resolverJson["filters"][newFilterName] = %*{"url": f.url, "versions": f.versions}
            echo fmt"Added filter {newFilterName}"
        result.name = newFilterName

cloneRepos()
var allFilters: seq[Filter] = @[]
for validFilter in getFilters():
    let addedFilter = validFilter.addFilter()
    allFilters.add(addedFilter)

for existFilter in allFilters:
    resolverJson["filters"][existFilter.name]["versions"] = %*existFilter.versions

resolverJsonPath.writeFile(resolverJson.pretty())
sleep(1500)
