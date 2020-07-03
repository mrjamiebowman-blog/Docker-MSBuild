
docker rm -f msbuild

#git clone https://github.com/NuGet/NuGet.Server.git source

docker run --rm -it -v ${PWD}\source:C:\source -v ${PWD}\published:C:\published --name msbuild mrjamiebowman/msbuild



