#!/bin/bash
set -eu
cd "$(dirname "$0")"
mkdir Tests/Mocks
swift package describe --type json > project.json
.build/checkouts/mockingbird/mockingbird generate --project project.json \
  --output-dir Tests/Mocks \
  --testbundle Tests \
  --targets InventoryMgmt
