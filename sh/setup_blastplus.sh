cd ~
wget https://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/ncbi-blast-2.13.0+-x64-linux.tar.gz
tar -zxvf ncbi-blast-*.tar.gz
export PATH=~/ncbi-blast-2.13.0+/bin:$PATH
mkdir blast_db && cd blast_db
wget https://ftp.ncbi.nlm.nih.gov/blast/db/16S_ribosomal_RNA.tar.gz
tar -zxvf 16S_ribosomal_RNA.tar.gz