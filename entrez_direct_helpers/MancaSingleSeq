#!/bin/bash
for ORG in `find . -type d | sed 1d`
do
    cd $ORG
    LABEL=${ORG#./}
    echo $LABEL
    cat *.fa > ${LABEL}.fa
    cat ${LABEL}.fa | fasta_formatter | fasta_formatter -t | cut -f2 | sed ':a;N;$!ba;s/\n/ /g' > ${LABEL}.tab.tmp
    echo ">${LABEL}" >> ${LABEL}.fa.tmp
    cat ${LABEL}.tab.tmp >> ${LABEL}.fa.tmp
    echo '' >> ${LABEL}.fa.tmp
    cat ${LABEL}.fa.tmp | fasta_formatter -w 70 > ../${LABEL}.w70.fa
    rm ${LABEL}.fa ${LABEL}.tab.tmp ${LABEL}.fa.tmp
    cd ..
done
