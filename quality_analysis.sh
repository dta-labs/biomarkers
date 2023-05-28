cd data

samnSEQ="SAMN$1"
cd "${samnSEQ}"

srrSEQ=$(ls *.seqName)
srrSEQ=$(echo $srrSEQ | cut -d '.' -f 1)

# Genera el anpalisis de calidad para todas las secuencias, generando ficheros html y zip
# No es necesario realizarlo
fastqc *.fastq -t 2

# Realiza la limpieza de las secuencias en base a la calidad (elimina calidad < 30 y tamaño < 30)
fastq_quality_trimmer -t 30 -l 30 -v -i "${srrSEQ}_1.fastq" -o "${srrSEQ}_1_trimmed.fastq"
fastq_quality_trimmer -t 30 -l 30 -v -i "${srrSEQ}_2.fastq" -o "${srrSEQ}_2_trimmed.fastq"

# Similar al procedimiento que el anterior pero empleando FastX 
# No es necesario realizarlos

# Análisis estadístico
fastx_quality_stats -Q33 -i "${srrSEQ}_1.fastq" -o "${srrSEQ}_1.stats"
fastx_quality_stats -Q33 -i "${srrSEQ}_2.fastq" -o "${srrSEQ}_2.stats"

# Eliminación de las bases de baja calidad
fastx_trimmer -Q33 -i "${srrSEQ}_1.fastq" -o "${srrSEQ}_1_trimmed.fastq"
fastx_trimmer -Q33 -i "${srrSEQ}_2.fastq" -o "${srrSEQ}_2_trimmed.fastq"

cd ..
cd ..
