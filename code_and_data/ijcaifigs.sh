#!/usr/bin/env bash
# generates all figures for paper Generalized Bargaining Protocols

BASE=${1:-"$HOME/code/papers/current/2024ijcai"}
DST=${BASE}/results
python src/ijcaifigs.py --dataset=all --name-stem=everything --rename-cab --remove-cab-vs-war
python src/ijcaistats.py --dataset=all --cabwar --name-stem=everything --rename-cab --remove-cab-vs-war
scalability.sh
# python src/ijcaistats.py --dataset=all --no-cabwar --name-stem=adapter --rename-cab
# python src/ijcaifigs.py --dataset="all" --no-cabwar --name-stem="adapter" --rename-cab
# python src/ijcaifigs.py --dataset="all" --remove-aop --name-stem="tau_only" --rename-cab
# python src/ijcaifigs.py --dataset="all" --no-adapters --name-stem="tau_native" --rename-cab
# python src/ijcaifigs.py --dataset="all" --no-adapters --tau-pure --name-stem="tau_pure" --rename-cab
cp -r figs/ijcai "$DST"
