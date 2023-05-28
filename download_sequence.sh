cd data
samnSEQ="SAMN$1"
mkdir "${samnSEQ}"
cd "${samnSEQ}"

prefetch "${samnSEQ}" 	# Descarga la secuencia y crea una carpeta que contiene el archivo .sra

srrSEQ=$(ls)
echo $srrSEQ > "$srrSEQ.seqName"
cd "${srrSEQ}"

#fasterq-dump "${srrSEQ}.sra" --split-files --clip --skip-technical	# Crea los ficheros .fastq
fasterq-dump "${srrSEQ}.sra" --split-files --skip-technical	# Crea los ficheros .fastq

mv *.fastq ../ 
rm *.sra
cd ..
rm -r "${srrSEQ}"

cd ..
cd ..
