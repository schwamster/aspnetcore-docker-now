FROM microsoft/aspnetcore-build

ENV ASPNETCORE_URLS=http://+:80

EXPOSE 80

COPY . /opt/app

WORKDIR /opt/app

RUN dotnet restore

CMD dotnet run
