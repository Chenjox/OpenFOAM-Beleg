#!/usr/bin/env bash

rm -r processor0 processor1 processor2 processor3
rm -r 0.0001
cartesianMesh
checkMesh
echo "Awaiting Mesh OK Directive!"
read -p "Press [Enter] to start renumbering Mesh"
renumberMesh
cp "0/alpha.water.orig" "0/alpha.water"
setFields
echo "Were Fields setted?"
read -p "Press [Enter] to start decomposing!"
decomposePar
echo "Removing output from nohub"
rm "nohup.out"