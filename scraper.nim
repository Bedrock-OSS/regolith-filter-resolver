import os, json, strutils, strformat, httpclient

var 
    client = newHttpClient()
    resolverJsonPath = fmt"{getAppDir()}/resolver.json"
    resolverJson = parseFile(resolverJsonPath)

type
    Filter = object
        name: string
        author: string
        url: string
        lang: string
        desc: string

proc newFilter(name, author, url: string): Filter =
    result.name = name
    result.author = author
    result.url = url

proc getRepos(): JsonNode =
    const filterReqUrl = r"https://api.github.com/search/repositories?q=topic:regolith-filter"
    let repoRes = client.getContent(filterReqUrl)
    return repoRes.parseJson()

proc cloneRepos(repoList: JsonNode) =
    createDir("Repos")
    setCurrentDir("Repos")
    for repo in repoList["items"]:
        let cloneName = repo["full_name"].to(string).replace("/", "___")
        let cloneUrl = repo["clone_url"].to(string)
        if not dirExists(cloneName):
            discard execShellCmd(fmt"git clone {cloneUrl} {cloneName}")
    setCurrentDir(getAppDir())

proc isFilter(relativeDir: string): bool =
    let checkRoot = getCurrentDir()
    setCurrentDir(relativeDir)
    result = fileExists("filter.json")
    setCurrentDir(checkRoot)

proc getFilters(): seq[Filter] =
    setCurrentDir("Repos")
    var filterList: seq[Filter] = @[]
    let repoRoot = getCurrentDir()
    for repo in walkDirs("*"):
        setCurrentDir(repoRoot)
        let 
            repoOwner = repo.split("___")[0]
            repoName = repo.split("___")[1]
        var repoUrl = fmt"github.com/{repoOwner}/{repoName}"
        if isFilter(repo):
            filterList.add(newFilter(repoName, repoOwner, repoUrl))
            continue
        setCurrentDir(repo)
        for filter in walkDirs("*"):
            if isFilter(filter):
                filterList.add(newFilter(filter, repoOwner, repoUrl))
        
    setCurrentDir(getAppDir())
    return filterList

proc addFilter(f: Filter) =
    if not resolverJson["filters"].hasKey(f.name):
        resolverJson["filters"][f.name] = %*{"url": f.url}

let repoList = getRepos()
cloneRepos(repoList)
let filterList: seq[Filter] = getFilters()
for f in filterList:
    addFilter(f)
resolverJsonPath.writeFile(resolverJson.pretty())