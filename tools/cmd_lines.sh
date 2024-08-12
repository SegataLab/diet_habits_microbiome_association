#!/bin/bash

s="../curatedMetagenomicDataAnalyses/python_tools/metaanalyze.py"
ds="../curatedMetagenomicDataAnalyses/python_tools/draw_figure_with_ma.py"

## -re == std mean diff (cohen's d, adjusted)
mkdir -p ma_results
mkdir -p images

## OMNI VS VEGETARIAN
python ${s} ../arcsin_squarerooted_abundances/merged_5_cohorts_dietV3_omnivore_vegetarian.tsv -of ma_results/ma_omnivore_vegetarian_abun.tsv \
    -z t__ -re --formula "diet_type + BMI + age + C(sex)" -si cohort_name -cc omnivore:vegetarian -H DL

python ${ds} ma_results/ma_omnivore_vegetarian_abun.tsv --names "V3 diets" --outfile images/meta_top_30_omni_vs_veg \
    -ps "Vegetarian" -ns "Omnivore" --x_axis "Standardized mean difference" --y_axis "Microbial taxa" \
    --title "Meta-analysis of Omnivores vs Vegetarians microbiomes" --a_single 0.2 --a_random 0.1 \
    -re "RE_Effect" -ci "RE_conf_int" -rq "RE_Effect_Qvalue" -es "_Effect" -qs "_Qvalue" \
    -cbl black -cr gold -cb fuchsia -il 0.50 --neg_max_rho 0.8 --pos_max_rho 0.8 \
    --narrowed --imp 30 -ms 3 --markers --shrink_names "" -mp 0.05 \
    -a ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegetarian_shortnames.tsv

## OMNI VS VEGAN
python ${s} ../arcsin_squarerooted_abundances/merged_5_cohorts_dietV3_omnivore_vegan.tsv -of ma_results/ma_omnivore_vegan_abun.tsv \
    -z t__ -re --formula "diet_type + BMI + age + C(sex)" -si cohort_name -cc omnivore:vegan -H DL
  
python ${ds} ma_results/ma_omnivore_vegan_abun.tsv --names "V3 diets" --outfile images/meta_top_30_omni_vs_vegan \
   -ps "Vegan" -ns "Omnivore" --x_axis "Standardized mean difference" --y_axis "Microbial taxa" \
   --title "Meta-analysis of Omnivores vs Vegans microbiomes" --a_single 0.2 --a_random 0.1 \
   -re "RE_Effect" -ci "RE_conf_int" -rq "RE_Effect_Qvalue" -es "_Effect" -qs "_Qvalue" -cbl black \
   -cr gold -cb fuchsia -il 0.50 --neg_max_rho 1.0 --pos_max_rho 1.0 -mp 0.05 \
   --narrowed --imp 30 -ms 3 --markers --shrink_names "" -a ../relative_abundances_metadata/merged_5_cohorts_dietV3_omnivore_vegan_shortnames.tsv

## VEGETARIAN VS VEGAN
python ${s} ../arcsin_squarerooted_abundances/merged_5_cohorts_dietV3_vegan_vegetarian.tsv -of ma_results/ma_vegetarian_vegan_abun.tsv \
    -z t__ -re --formula "diet_type + BMI + age + C(sex)" -si cohort_name -cc vegetarian:vegan -H DL
 
python ${ds} ma_results/ma_vegetarian_vegan_abun.tsv --names "V3 diets" --outfile images/meta_top_30_vegetarian_vegan \
    -ps "Vegan" -ns "Vegetarian" --x_axis "Standardized mean difference" --y_axis "Microbial taxa" \
    --title "Meta-analysis of Vegetarian vs Vegan microbiomes" --a_single 0.2 --a_random 0.1 \
    -re "RE_Effect" -ci "RE_conf_int" -rq "RE_Effect_Qvalue" -es "_Effect" -qs "_Qvalue" -cbl black \
    -cr gold -cb fuchsia -il 0.50 --neg_max_rho 1.0 --pos_max_rho 1.0 -mp 0.05 \
    --narrowed --imp 30 -ms 3 --markers --shrink_names "" -a ../relative_abundances_metadata/merged_5_cohorts_dietV3_vegan_vegetarian_shortnames.tsv 
