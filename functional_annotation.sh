cd data

samnSEQ="SAMN$1"
cd "${samnSEQ}"

srrSEQ=$(ls *.seqName)
srrSEQ=$(echo $srrSEQ | cut -d '.' -f 1)

prokka contigs.fasta --addgenes --mincontiglen 200 --centre Prokka --mincontiglen 200 --kingdom Bacteria --gcode 10 --evalue 1e-06 --cpus 0
mv PROKKA_* ../

cd ..
cd ..
