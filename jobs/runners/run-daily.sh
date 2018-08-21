#!/usr/bin/env sh

JOBS_PATH=/jobs/daily

for sc in $(ls ${JOBS_PATH})
do
    sh ${JOBS_PATH}/${sc}
done