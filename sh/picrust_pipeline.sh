conda activate picrust2
core=$(cat /proc/cpuinfo | grep "^processor" | wc -l)

picrust2_pipeline.py \
  -s dna-sequences.fasta \
  -i feature-table.biom \
  -o picrust2_out_pipeline \
  -p $core