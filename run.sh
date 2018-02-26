#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [[ -z $1 ]]; then
    echo 'usage: run.sh <job_script.sh>'
    exit 0
fi

cd $DIR/logs
sbatch ../$(basename $1)
echo 'done!'

squeue -u jemmons