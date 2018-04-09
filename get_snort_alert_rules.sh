#!/bin/bash
SNORT_LOG='/var/log/snort/snort.log'
SNORT_SIDS=`u2spewfoo $SNORT_LOG | grep 'sig id: ' | awk '{print $3}' | sort -g | uniq | tr '\n' ' '`
for sid in ${SNORT_SIDS[@]};
do
    rules=`ack 'sid:'$sid';' /etc/snort/rules`
    echo $rules
done
