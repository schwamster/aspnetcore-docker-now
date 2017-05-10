FROM microsoft/aspnetcore

ENV ASPNETCORE_URLS=http://+:80

EXPOSE 80

COPY ./bin/Release/netcoreapp1.1/publish /opt/app

WORKDIR /opt/app

CMD dotnet get-started-docker.dll
