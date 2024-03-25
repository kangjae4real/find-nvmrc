#!/bin/zsh

CURR_DIR=$(pwd) || echo '"pwd" Command Failed.'
SEARCH_FILE=".nvmrc"
TARGET_FILE=""
NODE_VERSION=""

# Get all files. including "." prefix file.
for ENTRY in "${CURR_DIR}"/* "${CURR_DIR}"/.[!.]*
do
  if [ "$(basename "${ENTRY}")" = ${SEARCH_FILE} ];
  then
    TARGET_FILE="$(basename "${ENTRY}")"
  fi
done

# File exists. && File readable && File writable
if [ -e "$TARGET_FILE" ] && [ -r "$TARGET_FILE" ] && [ -w "$TARGET_FILE" ];
then
  NODE_VERSION=$(<"$TARGET_FILE")
fi

# "node_version" variable exists.
if [ -n "$NODE_VERSION" ];
then
  # If not exists .nvm directory.
  if [ ! -d "$NVM_DIR" ];
  then
    echo "Please install nvm!";
    exit 1;
  fi

  # Make sure execute "nvm" command.
  . "$NVM_DIR"/nvm.sh
  echo "Change node version to $NODE_VERSION"
  nvm use "$NODE_VERSION"
fi
