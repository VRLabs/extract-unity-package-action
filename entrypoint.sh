#!/bin/bash
mkdir -p $(dirname $3)
dotnet run --project "/unity-package-exporter/UnityPackageExporter/UnityPackageExporter.csproj" "$1" "$3" --asset-root "$2" --skip-dependecy-check
echo "::set-output name=artifactsPath::$3"
