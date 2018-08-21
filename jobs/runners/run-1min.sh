#!/usr/bin/env sh

JOBS_PATH=/jobs/1min

for sc in $(ls ${JOBS_PATH})
do
    sh ${JOBS_PATH}/${sc}
done