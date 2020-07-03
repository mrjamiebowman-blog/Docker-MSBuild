FROM mcr.microsoft.com/dotnet/framework/sdk:4.8 as msbuild
LABEL maintainer="@mrjamiebowman"

SHELL ["powershell"]

# install choco
RUN Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
RUN choco install git -y
RUN choco install vim -y

# set up dirs
RUN New-Item -Path C:\source -ItemType Directory -Force
RUN New-Item -Path C:\published -ItemType Directory -Force
WORKDIR /source

# clone and run msbuild
RUN git clone https://github.com/NuGet/NuGet.Server.git .
RUN nuget restore

# wrapping the msbuild command in a powershell scripts returns 0 and does not fail...
COPY scripts/msbuild.ps1 .
RUN ./msbuild.ps1
COPY scripts/FolderProfile.pubxml /source/src/NuGet.Server/Properties/PublishProfiles/FolderProfile.pubxml
COPY scripts/release.ps1 .
RUN ./release.ps1

ENTRYPOINT ["powershell"]

