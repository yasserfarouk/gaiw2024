#!/usr/bin/env bash
# generates all figures for paper Generalized Bargaining Protocols

BASE=${1:-"$HOME/code/papers/current/2024ijcai"}
DST=${BASE}/results
python src/ijcaistats.py --dataset=all --cabwar --name-stem=everything --rename-cab --remove-cab-vs-war --statistics=mean --statistics=std --no-relative
python src/ijcaistats.py --dataset=all --cabwar --name-stem=everything_relative --rename-cab --remove-cab-vs-war --statistics=mean --statistics std --relative
# python src/ijcaistats.py --dataset=all --no-cabwar --name-stem=adapter --rename-cab --statistics=mean
# python src/ijcaistats.py --dataset=all --no-cabwar --name-stem=adapter_relative --rename-cab --statistics=mean --relative
# python src/ijcaistats.py --dataset=all --no-cabwar --name-stem=adapter --rename-cab
cp -r figs/ijcai/summary "$DST"
# scalability.sh
# cp -r figs/ijcai "$DST"
