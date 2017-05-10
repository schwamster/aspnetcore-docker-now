# Deploy an Hello World Asp.Net Core app with "now"

This repo is a simple hello world Asp.Net Core Web Api that will demonstrate how too deploy a containerized core app with Zeit now.

## Prerequisites

    - node.js
    - .net core sdk 1.1

## Install "now"

    npm install -g now

## Build the application

    dotnet publish -c Release

## Publish the app.

    now

Follow the instructions (if you havent run now before you will have to register with your email and validate that the email is yours).

The output of the build/deploy process will supply you with an url to the deployed app.

Find out more at [https://zeit.co/docs](zeit-docs)

## Important

If you run the default free OSS-Plan there is a restriction in file size for the uploaded of 1 MB per file. Since dotnet publish generates the unnecessary refs/Microsoft.CodeAnalysis* -files that bigger than that your deploy will not work unless you add the following to your csproj:

    <PreserveCompilationContext>false</PreserveCompilationContext>

This is already done in this repos csproj.