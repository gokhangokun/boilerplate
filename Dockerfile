FROM microsoft/aspnetcore-build:2.0 AS build-env

WORKDIR /workdir

COPY ./src/{solutionName}.csproj ./src/
RUN dotnet restore ./src/{solutionName}.csproj

COPY ./tests/{solutionName}.Test.csproj ./tests/
RUN dotnet restore ./tests/{solutionName}.Test.csproj

COPY ./src ./src
COPY ./tests ./tests

RUN dotnet test ./tests/{solutionName}.Test.csproj
RUN dotnet publish ./src/{solutionName}.csproj -o /publish

FROM microsoft/aspnetcore:2.0
COPY --from=build-env /publish /publish
WORKDIR /publish
ENTRYPOINT ["dotnet", "{solutionName}.dll"]