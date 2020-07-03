# MSBuild Server
This image is based on the dotnet framework image. The Dockerfile installs Git, Vim and sets up a source and published folder.  

There is a FolderProfile.pubxml file that is used in the build process to publish and build whatever is placed into the source folder.

TODO: Map in source folder for build.. currently modifying this whole image to be more dynamic.