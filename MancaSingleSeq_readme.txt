cd /home/oliver/entrez/MancaSeqs
./MancaSingleSeq.sh
te saca un fichero *.w70.fa en /home/oliver/entrez/MancaSeqs por cada carpeta / ensamblado. Esos FASTA son ya la entrada del seqpar ??
 
es un FASTA con una sola secuencia (fusi�n de las secuencias del ensemblado por nombre alfabetico de la ID), encolumnado a 70 caracteres
el ID de esa �nica secuencia es el nombre de la carpeta (en este caso, el nombre cient�fico de la especie con gui�n bajo)

lo que hace el script es:
- Junta los fasta de la carpeta y los convierte a un �nico tabular
- Desecha las IDs y fusiona las secuencias una tras otra
- A�ade el nombre de la carpeta como ID y convierte de nuevo a FASTA, encolunmando a 70 caracteres