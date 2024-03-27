FROM debian:12

COPY worker /app/

WORKDIR /app

RUN apt-get update -y

RUN apt-get install -y wget

RUN wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb

RUN dpkg -i packages-microsoft-prod.deb

RUN rm packages-microsoft-prod.deb

RUN apt-get update -y

RUN apt-get install -y dotnet-sdk-7.0

RUN apt-get install -y aspnetcore-runtime-7.0

RUN apt-get install -y dotnet-runtime-7.0

RUN dotnet restore

RUN dotnet publish -c release -o /app

CMD ["dotnet", "Worker.dll"]