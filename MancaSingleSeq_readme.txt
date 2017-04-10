cd /home/oliver/entrez/MancaSeqs
./MancaSingleSeq.sh
te saca un fichero *.w70.fa en /home/oliver/entrez/MancaSeqs por cada carpeta / ensamblado. Esos FASTA son ya la entrada del seqpar ??
 
es un FASTA con una sola secuencia (fusión de las secuencias del ensemblado por nombre alfabetico de la ID), encolumnado a 70 caracteres
el ID de esa única secuencia es el nombre de la carpeta (en este caso, el nombre científico de la especie con guión bajo)

lo que hace el script es:
- Junta los fasta de la carpeta y los convierte a un único tabular
- Desecha las IDs y fusiona las secuencias una tras otra
- Añade el nombre de la carpeta como ID y convierte de nuevo a FASTA, encolunmando a 70 caracteres