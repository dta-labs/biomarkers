cd data

samnSEQ="SAMN$1"
DB=$PWD/bd
cd "${samnSEQ}"

srrSEQ=$(ls *.seqName)
srrSEQ=$(echo $srrSEQ | cut -d '.' -f 1)

blastn -query "${srrSEQ}_contigs.fasta" -db "${DB}" -out "${srrSEQ}_result.out" -outfmt 6 -num_threads 40 &

# blast -query SAMN15421765_conting.fasta -bd data/bd -out SAMN15421765_result.out -outfmt 6 -num_threads 40 &
# blast -query SAMN15421765_conting.fasta -subject PBP1.fasta -evalue "0.0000001" -outfmt "6 qseqid sseqid qcovs pident evalue"
# Configuraciones: https://www.ncbi.nlm.nih.gov/books/NBK279684/
# Ref: https://blogs.upm.es/estudiaciencia/blast-local/

# Ejemplo de resultado
# ASD49649.1  ANW82078.1  100.000 744 0 0 1 744 1 744 0.0 1522
# ASD49649.1  ASD49626.1  100.000 744 0 0 1 744 1 744 0.0 1522
# ASD49649.1  ASD49630.1  100.000 744 0 0 1 744 1 744 0.0 1522
# ASD49649.1  ASD49632.1  100.000 744 0 0 1 744 1 744 0.0 1522
# ASD49649.1  ASD49633.1  100.000 744 0 0 1 744 1 744 0.0 1522
# ASD49649.1  ASD49643.1  100.000 744 0 0 1 744 1 744 0.0 1522
# ASD49649.1  ASD49646.1  100.000 744 0 0 1 744 1 744 0.0 1522
# ASD49649.1  ASD49647.1  100.000 744 0 0 1 744 1 744 0.0 1522
# ASD49649.1  ASD49649.1  100.000 744 0 0 1 744 1 744 0.0 1522
# ASD49649.1  ASD49651.1  100.000 744 0 0 1 744 1 744 0.0 1522

# minimap2 SAMN15421765_1.fastq

cd ..
cd ..
