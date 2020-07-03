# run build
& C:\scripts\msbuild.ps1

# run release
msbuild C:\source\ /p:DeployOnBuild=true /p:PublishProfile=C:\publishprofiles\FolderProfile.pubxml