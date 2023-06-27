#!/bin/bash
#Credits - MrNavy || Github  @NabarajDhungel01
read -p "Enter the repository name: " REPO_NAME
read -p "Is the repository private? (y/n): " PRIVATE

GITHUB_TOKEN="<YOUR_GITHUB_PERSONAL_TOKEN>"  # Replace with your own token.

if [[ ${PRIVATE,,} == "y" ]]; then
  IS_PRIVATE=true
else
  IS_PRIVATE=false
fi

curl -f -X POST \
  -H "Authorization: token ${GITHUB_TOKEN}" -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/user/repos -d "{\"name\": \"${REPO_NAME}\", \"private\": ${IS_PRIVATE}}"

mkdir "${REPO_NAME}"
cd "${REPO_NAME}"
echo "This is the readme for ${REPO_NAME}" >> README.md
git init
git add README.md
git commit -m "First commit from terminal"

git remote add origin "https://github.com/<YOUR_GITHUB_USERNAME>/${REPO_NAME}.git"

git branch -M main
git push -u origin main
