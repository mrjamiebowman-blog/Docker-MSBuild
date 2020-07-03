# MSBuild Image
This image is based on the dotnet framework image. The Dockerfile installs Git, Vim and sets up a source and published folder.  

There is a FolderProfile.pubxml file that is used in the build process to publish and build whatever is placed into the source folder.

TODO: Map in source folder for build.. currently modifying this whole image to be more dynamic.

STILL WORKING ON THIS.. CHECK BACK 7/6/2020

# How to use
This will automatically build any ASP.NET solution dropped into the source folder.  

`docker run --rm -it -v ${PWD}\source:C:\source -v ${PWD}\published:C:\published --name msbuild mrjamiebowman/msbuild`

# GitHub
Currently, the Dockerfile pulls a dedicated repository into the /source folder. I'm going to refactor this so that the source folder can be passed in through a volume mount. If you see this and want to use it.. just get it off my GitHub and modify the scripts. 

https://github.com/mrjamiebowman-blog/Docker-MSBuild

