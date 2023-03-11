# https://hub.docker.com/_/microsoft-dotnet
FROM mcr.microsoft.com/dotnet/sdk:7.0-jammy AS build
WORKDIR /source

# copy csproj and restore as distinct layers
COPY aspnetapp/*.csproj .
RUN dotnet restore -r linux-x64

# copy everything else and build app

COPY entry.sh .

COPY aspnetapp/. /source

# This is not essential, just in case if you need the published app
RUN dotnet publish -c Release -o /app -r linux-x64 --self-contained false --no-restore

ENTRYPOINT ["bash", "entry.sh"]