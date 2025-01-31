#!/bin/bash

TAG_NAME=$1

if [ -z "$TAG_NAME" ]; then
    echo "Usage: $0 <tag_name>"
    exit 1
fi

echo "Setting up variables..."

BASE_URL="https://release-download.tailcall.workers.dev/download/${TAG_NAME}"
URL_X86_64="${BASE_URL}/forge-x86_64-apple-darwin.tar.gz"
URL_AARCH64="${BASE_URL}/forge-aarch64-apple-darwin.tar.gz"

echo "Fetching SHA256 checksums..."

SHA256_X86_64="$(curl -L -s ${URL_X86_64} | shasum -a 256 | cut -d ' ' -f 1)"
SHA256_AARCH64="$(curl -L -s ${URL_AARCH64} | shasum -a 256 | cut -d ' ' -f 1)"

echo "URL (x86_64): ${URL_X86_64}"
echo "SHA256 (x86_64): ${SHA256_X86_64}"
echo "URL (aarch64): ${URL_AARCH64}"
echo "SHA256 (aarch64): ${SHA256_AARCH64}"

echo "Navigating to the Formula directory..."
cd Formula || exit

echo "Updating URLs and SHA256s in codeforge.rb..."

if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS uses a different syntax for 'sed -i'
    sed -i '' -e "/if Hardware::CPU.intel?/,/elsif Hardware::CPU.arm?/ s|url \".*\"|url \"${URL_X86_64}\"|" codeforge.rb
    sed -i '' -e "/if Hardware::CPU.intel?/,/elsif Hardware::CPU.arm?/ s|sha256 \".*\"|sha256 \"${SHA256_X86_64}\"|" codeforge.rb
    sed -i '' -e "/elsif Hardware::CPU.arm?/,/end/ s|url \".*\"|url \"${URL_AARCH64}\"|" codeforge.rb
    sed -i '' -e "/elsif Hardware::CPU.arm?/,/end/ s|sha256 \".*\"|sha256 \"${SHA256_AARCH64}\"|" codeforge.rb
    sed -i '' -e "s|version \".*\"|version \"${TAG_NAME}\"|" codeforge.rb
else
    # For Linux
    sed -i "/if Hardware::CPU.intel?/,/elsif Hardware::CPU.arm?/ s|url \".*\"|url \"${URL_X86_64}\"|" codeforge.rb
    sed -i "/if Hardware::CPU.intel?/,/elsif Hardware::CPU.arm?/ s|sha256 \".*\"|sha256 \"${SHA256_X86_64}\"|" codeforge.rb
    sed -i "/elsif Hardware::CPU.arm?/,/end/ s|url \".*\"|url \"${URL_AARCH64}\"|" codeforge.rb
    sed -i "/elsif Hardware::CPU.arm?/,/end/ s|sha256 \".*\"|sha256 \"${SHA256_AARCH64}\"|" codeforge.rb
    sed -i "s|version \".*\"|version \"${TAG_NAME}\"|" codeforge.rb
fi

echo "Committing and pushing updates..."

git config user.name "GitHub Actions"
git config user.email "actions@github.com"
git commit -am "Update CodeForge CLI version: ${TAG_NAME}"
git push

echo "Update completed successfully!"
