#!/usr/bin/env bash
SOURCE="${BASH_SOURCE[0]}"
SRC_DIR="$(cd -P "$(dirname "$SOURCE")"&&pwd)"

dotnet nuget locals all --clear

cd "${SRC_DIR}/ExampleLocalLibrary"
dotnet restore
dotnet pack -c Release -o ../local-packages

