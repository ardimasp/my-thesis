#!/bin/bash

exts="aux bbl blg brf idx ilg ind lof log lol lot nav out snm tdo toc synctex.gz fdb_latexmk fls"

for x in "${@:-.}"; do

    echo ${x}
    arg=$(echo ${x:-.} | perl -pe 's/\.(tex|pdf)$//')

    if [[ -d "$arg" ]]; then
        for ext in $exts; do
             rm -f "$arg"/*.$ext
        done
    else
        for ext in $exts; do
             rm -f "$arg".$ext
        done
    fi
done


for x in */; do

    echo ${x}
    arg=$(echo ${x:-.} | perl -pe 's/\.(tex|pdf)$//')

    if [[ -d "$arg" ]]; then
        for ext in $exts; do
             rm -f "$arg"/*.$ext
        done
    else
        for ext in $exts; do
             rm -f "$arg".$ext
        done
    fi
done
