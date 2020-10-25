#!/usr/bin/env bash
SOURCE="${BASH_SOURCE[0]}"
SRC_DIR="$(cd -P "$(dirname "$SOURCE")"&&pwd)"

cd "${SRC_DIR}/ExampleApp"
dotnet add package ExampleLocalLibrary
dotnet restore
dotnet run
