#! /bin/bash
set -euf pipefail

mkdir -p build/intermediate
mkdir -p build/output

node_modules/.bin/toml < data/input_data.toml > build/intermediate/input_data.json
node_modules/.bin/handlebars build/intermediate/input_data.json < templates/README.md.hbs > build/output/README.md

cp build/output/README.md ..
