cd data

samnSEQ="SAMN$1"
cd "${samnSEQ}"

srrSEQ=$(ls *.seqName)
srrSEQ=$(echo $srrSEQ | cut -d '.' -f 1)

spades.py -t 40 -m 160 -1 "${srrSEQ}_1.fastq" -2 "${srrSEQ}_2.fastq" --only-assembler -o ensemble
# spades.py -t 40 -m 160 -1 "${srrSEQ}_1.fastq" -2 "${srrSEQ}_2.fastq" --isolate -o ensemble

cd ..
cd ..
