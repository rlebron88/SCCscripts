#!/bin/bash
while read org; 
do 
    MancaInfo=${org}.MancaInfo
    mkdir $org 
    cd $org
    echo "Species: ${org}" 
    while read line;
    do
	info=($line)
	seqID=${info[0]}
        echo "Downloading: $seqID"
        esearch -db nucleotide -query $seqID < /dev/null | efetch -format fasta > ${seqID}.fa ;
    done < ../$MancaInfo 
    cd .. ;
done < MancaSpecies.txt
echo "Done"
