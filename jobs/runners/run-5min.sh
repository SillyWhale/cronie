#!/usr/bin/env sh

JOBS_PATH=/jobs/5min

for sc in $(ls ${JOBS_PATH})
do
    sh ${sc}
done