#!/bin/bash
mkdir -p $(dirname $3)
dotnet run --project "/unity-package-exporter/UnityPackageExporter/UnityPackageExporter.csproj" -i "$1" -o "$2"
echo "::set-output name=artifactsPath::$3"
