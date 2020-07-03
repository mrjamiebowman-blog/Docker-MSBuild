
# restore packages
nuget restore C:\source

# run default build script
msbuild C:\source\ /t:Rebuild /p:Configuration=Release /v:minimal