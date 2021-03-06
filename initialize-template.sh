#!/bin/sh
# Reset README.md and CHANGELOG.md
# Remember to write your own README.md

BASE_PATH=$(realpath $0 | xargs dirname)

read_authors() {
    delim=''
    authors='['
    while read author
    do
        authors="$authors$delim\"$author\""
        delim=', '
    done
    authors="$authors]"
}

echo 'Amending initial commit'
git commit --amend -m "chore: generate repo from template"
git push -f

echo 'Package name (ex. vigilant_disco):'
read -r package_name

echo 'Authors (ex. John Doe <john@doe.com>): [Enter EOF (Ctrl + D) to continue]'
read_authors

sed -i "/^\[package\]$/, /^\[.*]$/ s/^name = .*$/name = \"$package_name\"/" "$BASE_PATH/Cargo.toml"
sed -i '/^\[package\]$/, /^\[.*]$/ s/^version = .*$/version = "0.0.0"/' "$BASE_PATH/Cargo.toml"
sed -i "/^\[package\]$/, /^\[.*]$/ s/^authors = .*$/authors = $authors/" "$BASE_PATH/Cargo.toml"

echo 'Resetting README.md and CHANGELOG.md'
rm "$BASE_PATH/README.md"
touch "$BASE_PATH/README.md"

(
echo '# Changelog'
echo 'All notable changes to this project will be documented in this file. See [conventional commits](https://www.conventionalcommits.org/) for commit guidelines.'
echo
echo '- - -'
) > "$BASE_PATH/CHANGELOG.md"

echo 'Running update-hooks.sh:'
$BASE_PATH/update-hooks.sh

echo 'Deleting this script'
rm "$BASE_PATH/initialize-template.sh"

echo 'Done!'