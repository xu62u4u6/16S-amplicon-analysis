echo "1.download blast+..."
wget https://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/ncbi-blast-2.13.0+-x64-linux.tar.gz -P ~
tar -zxvf ncbi-blast-*.tar.gz -C ~
export PATH=~/ncbi-blast-2.13.0+/bin:$PATH
rm ~/ncbi-blast-2.13.0+-x64-linux.tar.gz
echo "2.download 16s database..."
mkdir ~/blast_db
wget https://ftp.ncbi.nlm.nih.gov/blast/db/16S_ribosomal_RNA.tar.gz -P ~/blast_db
tar -zxvf ~/blast_db/16S_ribosomal_RNA.tar.gz -C ~/blast_db
rm ~/blast_db/16S_ribosomal_RNA.tar.gz