#!/usr/bin/env sh

JOBS_PATH=/jobs/hourly

for sc in $(ls ${JOBS_PATH})
do
    sh ${sc}
done