#!/usr/bin/env sh

JOBS_PATH=/jobs/weekly

for sc in $(ls ${JOBS_PATH})
do
    sh ${sc}
done