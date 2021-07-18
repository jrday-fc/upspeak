FROM mcr.microsoft.com/dotnet/core/sdk:2.2@sha256:42699bba2fe4545dd753694499e6db08478ba5b3bcc34b929e7e324d4c115449
WORKDIR /app

COPY . .
RUN dotnet restore
RUN dotnet publish -c Release -o out

EXPOSE 8080

ENTRYPOINT ["dotnet", "./out/dotnetcoreapp.dll"]
