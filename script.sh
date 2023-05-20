#!/bin/bash

while getopts "f:o:t:" opt; do
    case "$opt" in
        f)
            in=$OPTARG
        ;;
        o)
            out=${OPTARG:-out\.txt}
        ;;
        t)
            places=${OPTARG:-5}
        ;;
    esac
done



cat $in | sort | sed -e 's/ G/ 3G/g' -e 's/ S/ 2S/g' -e 's/ N/ 1N/g' | sort --stable -k 2r -k 3g -k4  |  \
    sed -e 's/ 3G/ G/g' -e 's/ 2S/ S/g' -e 's/ 1N/ N/g' | head --lines=$places > $out