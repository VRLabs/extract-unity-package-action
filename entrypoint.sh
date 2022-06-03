#!/bin/bash
mkdir -p $(dirname $3)
dotnet run --project "/unity-package-exporter/UnityPackageExporter/UnityPackageExporter.csproj" '--project "'$1'" --output "'$2'"'
echo "::set-output name=artifactsPath::$3"
