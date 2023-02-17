cd output/picrust2_out_pipeline/

EC_INPUT="EC_metagenome_out/pred_metagenome_unstrat.tsv.gz"
EC_OUTPUT="EC_metagenome_out/EC_pred_metagenome_unstrat_descrip.tsv.gz"

add_descriptions.py \
  -i $EC_INPUT \
  -m EC \
  -o $EC_OUTPUT
echo "$EC_OUTPUT \n"
gunzip $EC_OUTPUT -k

KO_INPUT="KO_metagenome_out/pred_metagenome_unstrat.tsv.gz"
KO_OUTPUT="KO_metagenome_out/KO_pred_metagenome_unstrat_descrip.tsv.gz"

add_descriptions.py \
  -i $KO_INPUT \
  -m KO \
  -o $KO_OUTPUT

echo "$KO_OUTPUT \n"
gunzip $KO_OUTPUT -k

PATHWAYS_INPUT="pathways_out/path_abun_unstrat.tsv.gz"
PATHWAYS_OUTPUT="pathways_out/path_abun_unstrat_descrip.tsv.gz"
 
add_descriptions.py \
  -i $PATHWAYS_INPUT \
  -m METACYC \
  -o $PATHWAYS_OUTPUT

echo "$PATHWAYS_OUTPUT \n"
gunzip $PATHWAYS_OUTPUT -k