#!/usr/bin/env bash


cp /executeCollectPrChanges $GITHUB_WORKSPACE


echo 'Collecting PR changes...'
./executeCollectPrChanges $GITHUB_EVENT_PATH $INPUT_REPOTOKEN

collection_result=$?
if [ $collection_result -ne 0 ]; then
  echo 'There was an error while collecting PR changes'
  exit $collection_result
fi

