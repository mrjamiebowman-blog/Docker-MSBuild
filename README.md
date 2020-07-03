# MSBuild Image
This image is based on the dotnet framework image. The Dockerfile installs Git, Vim and sets up a source and published folder.  

There is a **FolderProfile.pubxml** file that is used in the build process to publish and build whatever is placed into the source folder.

# How
This will automatically build any ASP.NET solution dropped into the source folder. There are 2 scripts written in PowerShell; msbuild.ps1 and release.ps1.

`docker run --rm -it -v ${PWD}\source:C:\source -v ${PWD}\published:C:\published --name msbuild mrjamiebowman/msbuild`

Specifically, if you just want to do a build... for whatever reason...

`docker run --rm -it -v ${PWD}\source:C:\source -v ${PWD}\published:C:\published --name msbuild mrjamiebowman/msbuild powershell /scripts/msbuild.ps1`

# GitHub
Open to pull requests and what not... or fork it if you like...

https://github.com/mrjamiebowman-blog/Docker-MSBuild
