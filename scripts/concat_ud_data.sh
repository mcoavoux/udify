#!/usr/bin/env bash

DATASET_DIR="data/ud-treebanks-v2.3"

echo "Generating multilingual dataset..."

mkdir -p "data/ud/french"
mkdir -p "data/ud/multilingual"

python concat_treebanks.py data/ud/multilingual --dataset_dir ${DATASET_DIR}


python concat_treebanks.py data/ud/french --dataset_dir ${DATASET_DIR} --treebanks UD_French-GSD UD_French-ParTUT UD_French-Sequoia UD_French-Spoken

