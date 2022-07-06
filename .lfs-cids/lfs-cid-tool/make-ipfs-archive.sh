#! /bin/bash

set -e

cd ../..

REV=$(git rev-parse HEAD)

#echo $REV
#for f in `git diff-tree --no-commit-id --name-only -r $REV`; do
#for f in `git ls-tree --name-only -r $REV`; do
#  echo $f
#  git show $REV:$f
#done

DEST=/tmp/ipfs-git-lfs-archive
mkdir -p $DEST

git lfs ls-files -l -a > $DEST/lfs-ls-files-all-$REV.txt

NUMLINES=$(cat $DEST/lfs-ls-files-all-$REV.txt | wc -l)
COUNT=0

for hash in $(cat $DEST/lfs-ls-files-all-$REV.txt | awk '{ print $1 }'); do
  COUNT=$((COUNT + 1))
  if [ $COUNT -gt 6200 ]; then
    CID=$(node .lfs-cids/lfs-cid-tool/get-cid-from-hash.mjs $hash)
    echo $COUNT / $NUMLINES: $CID - $hash
    if [ ! -f $DEST/$CID ]; then
      ipfs get -o $DEST/$CID $CID
    fi
  fi
done

