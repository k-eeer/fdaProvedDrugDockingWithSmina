#!/bin/bash
echo "fetch 3cm5" >segmentAlign.pml
for var in A B
do
for i in $(seq 1 14)
do
s=$(((i-1)*20+5))
e=$((i*20+5))
echo "save testtrim$i$var.pdb,resi $s:$e and chain $var">>segmentAlign.pml
done
echo "save testtrim15$var.pdb,resi 285:298 and chain $var">>segmentAlign.pml
done

for i in $(seq 1 3)
do
echo "load clnmas$i.pdb">>segmentAlign.pml
done


for var in A B
do
	for i in $(seq 1 15)
	do
	echo "load testtrim$i$var.pdb">>segmentAlign.pml
done
done
#pairfit:1A+1B
for num in 1 2 3
do
for var in A B
do
for i in $(seq 1 14)
do
s=$(((i-1)*20+5))
e=$((i*20+5))
echo "pair_fit testtrim$i$var///$s-$e/CA, clnmas$num///$s-$e/CA and chain $var">>segmentAlign.pml
done
echo "pair_fit testtrim15$var///285-298/CA, clnmas$num///285-298/CA and chain $var">>segmentAlign.pml
echo -n "save tf$num$var.pdb,testtrim$num$var ">>segmentAlign.pml
for i in $(seq 2 15) ;do echo -n "or testtrim$i$var "; done>>segmentAlign.pml
echo "">>segmentAlign.pml
done
done

for num in 1 2 3
do
for var in A B
do 
echo "load tf$num$var.pdb">>segmentAlign.pml
done
echo "save tf$num.pdb, tf${num}A or tf${num}B">>segmentAlign.pml
done

echo "delete movie">AlignAnimation.pml
for num in 1 2 3
do 
echo "load tf$num.pdb,movie">>AlignAnimation.pml
done
