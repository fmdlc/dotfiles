#!/bin/bash
set -eo pipefail

GREEN='\033[1;32m'
RED='\033[1;31'
NC='\033[0m'

case $1 in
  "--dry-run")
    ARG="--dry-run"
  ;;
  "-h"|"--help")
    printf "Usage: %s <ARGUMENTS>\n\n" "$0"
    printf "Arguments:\n  --dry-run\n"
    exit 0
  ;;
esac

shopt -s nullglob
cd files/ || exit

echo -e "💾 Starting file copy.\n"

for SRC_FILE in __*; do
  DST_FILE="${SRC_FILE//\_\_/.}"
  echo -e "✅ Copying ${GREEN}$SRC_FILE${NC} to ${GREEN}$DST_FILE${NC}."
  rsync -avz $ARG "$SRC_FILE" "$HOME/$DST_FILE" &> /dev/null || echo -e \
    "⛔️ Error copying file: ${RED}%s${NC} to ${RED}%s${NC}.\n" "$SRC_FILE" "$DST_FILE"
done

exit $?
