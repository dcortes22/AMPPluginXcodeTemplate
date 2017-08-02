#!/bin/bash

# Install AMP Plugin Template on Xcode #

folderName="AMP"

if [ "$#" -eq 1 ]; then
    folderName="$1"
elif [ "$#" -gt 1 ]; then
    echo -e "This script takes one argument at most.\\ne.g. install.sh \"FolderName\""
    exit 1
fi

projectDirectory=~/Library/Developer/Xcode/Templates/Project\ Templates/"${folderName}"
sourceDirectory=~/Library/Developer/Xcode/Templates/File\ Templates/"${folderName}"

echo "Templates will be installed to ${projectDirectory} and ${sourceDirectory}"

if [ -d "${projectDirectory}" ]; then
    rm -r "${projectDirectory}"
fi

if [ -d "${sourceDirectory}" ]; then
    rm -r "${sourceDirectory}"
fi

mkdir -p "${projectDirectory}"
mkdir -p "${sourceDirectory}"

cp -r Project/*.xctemplate "${projectDirectory}"
cp -r File/*.xctemplate "${sourceDirectory}"
