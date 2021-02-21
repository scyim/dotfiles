#! /usr/bin/bash
engine=$(ibus engine)
if [ "${engine}" == "rime" ] || [ "${engine}" == "xkb:jp::jpn" ]
then
    ibus engine xkb:us::eng
else
    ibus engine rime
fi
