#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1.5-buster-slim AS base

WORKDIR /app

#See ENV ASPNETCORE_URLS=https://+5001

COPY ./publish .

#See EXPOSE 5000

ENTRYPOINT ["dotnet", "IBMBankAssistant.dll"]