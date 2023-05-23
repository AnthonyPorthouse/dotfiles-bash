#!/usr/bin/env bash

export DOTNET_CLI_TELEMETRY_OPTOUT=true
export NUGET_API_KEY="$(get-secret nuget-api-key)"
