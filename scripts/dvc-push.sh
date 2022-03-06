#!/bin/bash
dvcremote=$1

#
# commit dvc then push to remote
#
dvc status
dvc commit

echo "Pushing data to $dvcremote"
dvc push --remote $dvcremote
echo "Push to $dvcremote successful."

exit
