#!/bin/bash
mkdir -p $(dirname $3)
dotnet run --project "/unity-package-exporter/UnityPackageExporter/UnityPackageExporter.csproj" -i "$1" --asset-root "$2" -o "$3"
echo "::set-output name=artifactsPath::$3"
