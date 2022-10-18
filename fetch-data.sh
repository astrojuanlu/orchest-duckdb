#!/usr/bin/env bash
# From https://github.com/astrojuanlu/orchest-vaex/blob/main/fetch-data.sh
# Linted with https://www.shellcheck.net/

export KAGGLE_USERNAME=$KAGGLE_API_USERNAME
export KAGGLE_KEY=$KAGGLE_API_KEY
export DATA_DIR=/data/reddit-climate

mkdir -p $DATA_DIR
if [ "$(find $DATA_DIR -name '*.csv' -type f -printf '.' | wc -c)" != "2" ]
then
    kaggle datasets download pavellexyr/the-reddit-climate-change-dataset -p $DATA_DIR --unzip
fi
