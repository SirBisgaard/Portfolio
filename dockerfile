FROM mcr.microsoft.com/dotnet/sdk:9.0 AS restore
ARG BUILD_CONFIGURATION=Release
WORKDIR /src

COPY SirBisgaard.Portfolio.Client/SirBisgaard.Portfolio.Client.csproj SirBisgaard.Portfolio.Client/
RUN dotnet restore SirBisgaard.Portfolio.Client/SirBisgaard.Portfolio.Client.csproj

FROM restore AS build
ARG BUILD_CONFIGURATION=Release
WORKDIR /src
COPY . .
WORKDIR /src/SirBisgaard.Portfolio.Client
RUN dotnet build SirBisgaard.Portfolio.Client.csproj -c $BUILD_CONFIGURATION -o /app/build

FROM build AS publish
ARG BUILD_CONFIGURATION=Release
RUN dotnet publish SirBisgaard.Portfolio.Client.csproj -c $BUILD_CONFIGURATION -o /app/publish /p:UseAppHost=false

FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS final
WORKDIR /app
EXPOSE 8080
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "SirBisgaard.Portfolio.Client.dll"]