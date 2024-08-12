#!/bin/bash

##
#python data_handler.py

## NAME OF COHORTS:
## P1 P3_22USA P3_22UKA DeFilippisF_2019 TaralloS_2021

mkdir -p ../ml_results/LODO/
mkdir -p ../ml_results/rel_abund/cross_LODO/

py="python"
s="../metaml/classification_thomas-manghi.py"
p="-l rf -nt 1000 -nsl 5 -mf 0.1 -nc 10 -r 10 -c entropy -cc 10"

#####################################################################################################################
############################################### LODO ################################################################
#####################################################################################################################

# #omnivore vs vegetarian
${py} ${s} \
    ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegetarian.tsv \
    ../ml_results/LODO/LODO_on_PREDICT1_omn_veg ${p} -t "cohort_name:P1" \
    -d 1:diet_type:vegetarian -z "t__"
    
${py} ${s} \
    ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegetarian.tsv \
    ../ml_results/LODO/LODO_on_PREDICT3_22USA_omn_veg ${p} -t "cohort_name:P3_22USA" \
    -d 1:diet_type:vegetarian -z "t__"

${py} ${s} \
    ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegetarian.tsv \
    ../ml_results/LODO/LODO_on_PREDICT3_22UKA_omn_veg ${p} -t "cohort_name:P3_22UKA" \
    -d 1:diet_type:vegetarian -z "t__"

${py} ${s} \
    ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegetarian.tsv \
    ../ml_results/LODO/LODO_on_DeFilippisF_2019_omn_veg ${p} -t "cohort_name:DeFilippisF_2019" \
    -d 1:diet_type:vegetarian -z "t__"

${py} ${s} \
    ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegetarian.tsv \
    ../ml_results/LODO/LODO_on_TaralloS_2021_omn_veg ${p} -t "cohort_name:TaralloS_2021" \
    -d 1:diet_type:vegetarian -z "t__"

# #omnivore vs vegan
${py} ${s} \
    ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegan.tsv \
    ../ml_results/LODO/LODO_on_PREDICT1_omn_vegan ${p} -t "cohort_name:P1" \
    -d 1:diet_type:vegan -z "t__"
   
${py} ${s} \
    ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegan.tsv \
    ../ml_results/LODO/LODO_on_PREDICT3_22USA_omn_vegan ${p} -t "cohort_name:P3_22USA" \
    -d 1:diet_type:vegan -z "t__"

${py} ${s} \
    ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegan.tsv \
    ../ml_results/LODO/LODO_on_PREDICT3_22UKA_omn_vegan ${p} -t "cohort_name:P3_22UKA" \
    -d 1:diet_type:vegan -z "t__"

${py} ${s} \
    ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegan.tsv \
    ../ml_results/LODO/LODO_on_DeFilippisF_2019_omn_vegan ${p} -t "cohort_name:DeFilippisF_2019" \
    -d 1:diet_type:vegan -z "t__"

${py} ${s} \
    ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegan.tsv \
    ../ml_results/LODO/LODO_on_TaralloS_2021_omn_vegan ${p} -t "cohort_name:TaralloS_2021" \
    -d 1:diet_type:vegan -z "t__"

    
# ##vegetarian vs vegan
${py} ${s} \
     ../relative_abundances_metadata/merged_5_cohorts_dietV3_vegan_vegetarian.tsv \
     ../ml_results/LODO/LODO_on_PREDICT1_veg_vegan ${p} -t "cohort_name:P1" \
     -d 1:diet_type:vegan -z "t__"
    
${py} ${s} \
     ../relative_abundances_metadata/merged_5_cohorts_dietV3_vegan_vegetarian.tsv \
     ../ml_results/LODO/LODO_on_PREDICT3_22USA_veg_vegan ${p} -t "cohort_name:P3_22USA" \
     -d 1:diet_type:vegan -z "t__"

${py} ${s} \
     ../relative_abundances_metadata/merged_5_cohorts_dietV3_vegan_vegetarian.tsv \
     ../ml_results/LODO/LODO_on_PREDICT3_22UKA_veg_vegan ${p} -t "cohort_name:P3_22UKA" \
     -d 1:diet_type:vegan -z "t__"

${py} ${s} \
     ../relative_abundances_metadata/merged_5_cohorts_dietV3_vegan_vegetarian.tsv \
     ../ml_results/LODO/LODO_on_DeFilippisF_2019_veg_vegan ${p} -t "cohort_name:DeFilippisF_2019" \
     -d 1:diet_type:vegan -z "t__"

${py} ${s} \
     ../relative_abundances_metadata/merged_5_cohorts_dietV3_vegan_vegetarian.tsv \
     ../ml_results/LODO/LODO_on_TaralloS_2021_veg_vegan ${p} -t "cohort_name:TaralloS_2021" \
     -d 1:diet_type:vegan -z "t__"


#####################################################################################################################
############################################### Cross LODO ##########################################################
#####################################################################################################################
 
#omnivore vs vegetarian
${py} ${s} \
    ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegetarian.tsv \
    ../ml_results/rel_abund/cross_LODO/cross_LODO_on_PREDICT1_omn_veg ${p} -x "cohort_name:P3_22USA:P3_22UKA:DeFilippisF_2019:TaralloS_2021" \
    -d 1:diet_type:vegetarian -z "t__"
    
${py} ${s} \
    ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegetarian.tsv \
    ../ml_results/rel_abund/cross_LODO/cross_LODO_on_PREDICT3_22USA_omn_veg ${p} -x "cohort_name:P1:P3_22UKA:DeFilippisF_2019:TaralloS_2021" \
    -d 1:diet_type:vegetarian -z "t__"

${py} ${s} \
    ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegetarian.tsv \
    ../ml_results/rel_abund/cross_LODO/cross_LODO_on_PREDICT3_22UKA_omn_veg ${p} -x "cohort_name:P1:P3_22USA:DeFilippisF_2019:TaralloS_2021" \
    -d 1:diet_type:vegetarian -z "t__"

${py} ${s} \
    ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegetarian.tsv \
    ../ml_results/rel_abund/cross_LODO/cross_LODO_on_DeFilippisF_2019_omn_veg ${p} -x "cohort_name:P1:P3_22USA:P3_22UKA:TaralloS_2021" \
    -d 1:diet_type:vegetarian -z "t__"

${py} ${s} \
    ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegetarian.tsv \
    ../ml_results/rel_abund/cross_LODO/cross_LODO_on_TaralloS_2021_omn_veg ${p} -x "cohort_name:P1:P3_22USA:P3_22UKA:DeFilippisF_2019" \
    -d 1:diet_type:vegetarian -z "t__"

# #omnivore vs vegan
${py} ${s} \
    ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegan.tsv \
    ../ml_results/rel_abund/cross_LODO/cross_LODO_on_PREDICT1_omn_vegan ${p} -x "cohort_name:P3_22USA:P3_22UKA:DeFilippisF_2019:TaralloS_2021" \
    -d 1:diet_type:vegan -z "t__"
   
${py} ${s} \
    ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegan.tsv \
    ../ml_results/rel_abund/cross_LODO/cross_LODO_on_PREDICT3_22USA_omn_vegan ${p} -x "cohort_name:P1:P3_22UKA:DeFilippisF_2019:TaralloS_2021" \
    -d 1:diet_type:vegan -z "t__"

${py} ${s} \
    ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegan.tsv \
    ../ml_results/rel_abund/cross_LODO/cross_LODO_on_PREDICT3_22UKA_omn_vegan ${p} -x "cohort_name:P1:P3_22USA:DeFilippisF_2019:TaralloS_2021" \
    -d 1:diet_type:vegan -z "t__"

${py} ${s} \
    ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegan.tsv \
    ../ml_results/rel_abund/cross_LODO/cross_LODO_on_DeFilippisF_2019_omn_vegan ${p} -x "cohort_name:P1:P3_22USA:P3_22UKA:TaralloS_2021" \
    -d 1:diet_type:vegan -z "t__"

${py} ${s} \
    ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegan.tsv \
    ../ml_results/rel_abund/cross_LODO/cross_LODO_on_TaralloS_2021_omn_vegan ${p} -x "cohort_name:P1:P3_22USA:P3_22UKA:DeFilippisF_2019" \
    -d 1:diet_type:vegan -z "t__"

    
# ##vegetarian vs vegan
${py} ${s} \
     ../relative_abundances_metadata/merged_5_cohorts_dietV3_vegan_vegetarian.tsv \
     ../ml_results/rel_abund/cross_LODO/cross_LODO_on_PREDICT1_veg_vegan ${p} -x "cohort_name:P3_22USA:P3_22UKA:DeFilippisF_2019:TaralloS_2021" \
     -d 1:diet_type:vegan -z "t__"
    
${py} ${s} \
     ../relative_abundances_metadata/merged_5_cohorts_dietV3_vegan_vegetarian.tsv \
     ../ml_results/rel_abund/cross_LODO/cross_LODO_on_PREDICT3_22USA_veg_vegan ${p} -x "cohort_name:P1:P3_22UKA:DeFilippisF_2019:TaralloS_2021" \
     -d 1:diet_type:vegan -z "t__"

${py} ${s} \
     ../relative_abundances_metadata/merged_5_cohorts_dietV3_vegan_vegetarian.tsv \
     ../ml_results/rel_abund/cross_LODO/cross_LODO_on_PREDICT3_22UKA_veg_vegan ${p} -x "cohort_name:P1:P3_22USA:DeFilippisF_2019:TaralloS_2021" \
     -d 1:diet_type:vegan -z "t__"

${py} ${s} \
     ../relative_abundances_metadata/merged_5_cohorts_dietV3_vegan_vegetarian.tsv \
     ../ml_results/rel_abund/cross_LODO/cross_LODO_on_DeFilippisF_2019_veg_vegan ${p} -x "cohort_name:P1:P3_22USA:P3_22UKA:TaralloS_2021" \
     -d 1:diet_type:vegan -z "t__"

${py} ${s} \
     ../relative_abundances_metadata/merged_5_cohorts_dietV3_vegan_vegetarian.tsv \
     ../ml_results/rel_abund/cross_LODO/cross_LODO_on_TaralloS_2021_veg_vegan ${p} -x "cohort_name:P1:P3_22USA:P3_22UKA:DeFilippisF_2019" \
     -d 1:diet_type:vegan -z "t__"
