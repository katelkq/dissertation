#!/bin/bash
perf record -e '{cycles,instructions}:Su' -c 10000 -o ./experiments/results/resnet50_31a80_s0_c10000.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0_c10000.data > ./experiments/results/resnet50_31a80_s0_c10000.txt
perf record -e '{cycles,instructions}:Su' -c 25000 -o ./experiments/results/resnet50_31a80_s0_c25000.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0_c25000.data > ./experiments/results/resnet50_31a80_s0_c25000.txt
perf record -e '{cycles,instructions}:Su' -c 50000 -o ./experiments/results/resnet50_31a80_s0_c50000.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0_c50000.data > ./experiments/results/resnet50_31a80_s0_c50000.txt
perf record -e '{cycles,instructions}:Su' -c 75000 -o ./experiments/results/resnet50_31a80_s0_c75000.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0_c75000.data > ./experiments/results/resnet50_31a80_s0_c75000.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o ./experiments/results/resnet50_31a80_s0_c100000.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0_c100000.data > ./experiments/results/resnet50_31a80_s0_c100000.txt
perf record -e '{cycles,instructions}:Su' -c 250000 -o ./experiments/results/resnet50_31a80_s0_c250000.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0_c250000.data > ./experiments/results/resnet50_31a80_s0_c250000.txt
perf record -e '{cycles,instructions}:Su' -c 500000 -o ./experiments/results/resnet50_31a80_s0_c500000.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0_c500000.data > ./experiments/results/resnet50_31a80_s0_c500000.txt
perf record -e '{cycles,instructions}:Su' -c 750000 -o ./experiments/results/resnet50_31a80_s0_c750000.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0_c750000.data > ./experiments/results/resnet50_31a80_s0_c750000.txt
perf record -e '{cycles,instructions}:Su' -c 1000000 -o ./experiments/results/resnet50_31a80_s0_c1000000.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0_c1000000.data > ./experiments/results/resnet50_31a80_s0_c1000000.txt
perf record -e '{cycles,instructions}:Su' -c 2500000 -o ./experiments/results/resnet50_31a80_s0_c2500000.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0_c2500000.data > ./experiments/results/resnet50_31a80_s0_c2500000.txt
perf record -e '{cycles,instructions}:Su' -c 5000000 -o ./experiments/results/resnet50_31a80_s0_c5000000.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0_c5000000.data > ./experiments/results/resnet50_31a80_s0_c5000000.txt
perf record -e '{cycles,instructions}:Su' -c 7500000 -o ./experiments/results/resnet50_31a80_s0_c7500000.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0_c7500000.data > ./experiments/results/resnet50_31a80_s0_c7500000.txt
perf record -e '{cycles,instructions}:Su' -c 10000000 -o ./experiments/results/resnet50_31a80_s0_c10000000.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0_c10000000.data > ./experiments/results/resnet50_31a80_s0_c10000000.txt
perf record -e '{cycles,instructions}:Su' -c 10000 -o ./experiments/results/resnet50_31a80_s42_c10000.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42_c10000.data > ./experiments/results/resnet50_31a80_s42_c10000.txt
perf record -e '{cycles,instructions}:Su' -c 25000 -o ./experiments/results/resnet50_31a80_s42_c25000.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42_c25000.data > ./experiments/results/resnet50_31a80_s42_c25000.txt
perf record -e '{cycles,instructions}:Su' -c 50000 -o ./experiments/results/resnet50_31a80_s42_c50000.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42_c50000.data > ./experiments/results/resnet50_31a80_s42_c50000.txt
perf record -e '{cycles,instructions}:Su' -c 75000 -o ./experiments/results/resnet50_31a80_s42_c75000.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42_c75000.data > ./experiments/results/resnet50_31a80_s42_c75000.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o ./experiments/results/resnet50_31a80_s42_c100000.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42_c100000.data > ./experiments/results/resnet50_31a80_s42_c100000.txt
perf record -e '{cycles,instructions}:Su' -c 250000 -o ./experiments/results/resnet50_31a80_s42_c250000.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42_c250000.data > ./experiments/results/resnet50_31a80_s42_c250000.txt
perf record -e '{cycles,instructions}:Su' -c 500000 -o ./experiments/results/resnet50_31a80_s42_c500000.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42_c500000.data > ./experiments/results/resnet50_31a80_s42_c500000.txt
perf record -e '{cycles,instructions}:Su' -c 750000 -o ./experiments/results/resnet50_31a80_s42_c750000.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42_c750000.data > ./experiments/results/resnet50_31a80_s42_c750000.txt
perf record -e '{cycles,instructions}:Su' -c 1000000 -o ./experiments/results/resnet50_31a80_s42_c1000000.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42_c1000000.data > ./experiments/results/resnet50_31a80_s42_c1000000.txt
perf record -e '{cycles,instructions}:Su' -c 2500000 -o ./experiments/results/resnet50_31a80_s42_c2500000.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42_c2500000.data > ./experiments/results/resnet50_31a80_s42_c2500000.txt
perf record -e '{cycles,instructions}:Su' -c 5000000 -o ./experiments/results/resnet50_31a80_s42_c5000000.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42_c5000000.data > ./experiments/results/resnet50_31a80_s42_c5000000.txt
perf record -e '{cycles,instructions}:Su' -c 7500000 -o ./experiments/results/resnet50_31a80_s42_c7500000.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42_c7500000.data > ./experiments/results/resnet50_31a80_s42_c7500000.txt
perf record -e '{cycles,instructions}:Su' -c 10000000 -o ./experiments/results/resnet50_31a80_s42_c10000000.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42_c10000000.data > ./experiments/results/resnet50_31a80_s42_c10000000.txt
perf record -e '{cycles,instructions}:Su' -c 10000 -o ./experiments/results/resnet50_31a80_s137_c10000.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137_c10000.data > ./experiments/results/resnet50_31a80_s137_c10000.txt
perf record -e '{cycles,instructions}:Su' -c 25000 -o ./experiments/results/resnet50_31a80_s137_c25000.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137_c25000.data > ./experiments/results/resnet50_31a80_s137_c25000.txt
perf record -e '{cycles,instructions}:Su' -c 50000 -o ./experiments/results/resnet50_31a80_s137_c50000.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137_c50000.data > ./experiments/results/resnet50_31a80_s137_c50000.txt
perf record -e '{cycles,instructions}:Su' -c 75000 -o ./experiments/results/resnet50_31a80_s137_c75000.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137_c75000.data > ./experiments/results/resnet50_31a80_s137_c75000.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o ./experiments/results/resnet50_31a80_s137_c100000.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137_c100000.data > ./experiments/results/resnet50_31a80_s137_c100000.txt
perf record -e '{cycles,instructions}:Su' -c 250000 -o ./experiments/results/resnet50_31a80_s137_c250000.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137_c250000.data > ./experiments/results/resnet50_31a80_s137_c250000.txt
perf record -e '{cycles,instructions}:Su' -c 500000 -o ./experiments/results/resnet50_31a80_s137_c500000.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137_c500000.data > ./experiments/results/resnet50_31a80_s137_c500000.txt
perf record -e '{cycles,instructions}:Su' -c 750000 -o ./experiments/results/resnet50_31a80_s137_c750000.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137_c750000.data > ./experiments/results/resnet50_31a80_s137_c750000.txt
perf record -e '{cycles,instructions}:Su' -c 1000000 -o ./experiments/results/resnet50_31a80_s137_c1000000.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137_c1000000.data > ./experiments/results/resnet50_31a80_s137_c1000000.txt
perf record -e '{cycles,instructions}:Su' -c 2500000 -o ./experiments/results/resnet50_31a80_s137_c2500000.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137_c2500000.data > ./experiments/results/resnet50_31a80_s137_c2500000.txt
perf record -e '{cycles,instructions}:Su' -c 5000000 -o ./experiments/results/resnet50_31a80_s137_c5000000.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137_c5000000.data > ./experiments/results/resnet50_31a80_s137_c5000000.txt
perf record -e '{cycles,instructions}:Su' -c 7500000 -o ./experiments/results/resnet50_31a80_s137_c7500000.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137_c7500000.data > ./experiments/results/resnet50_31a80_s137_c7500000.txt
perf record -e '{cycles,instructions}:Su' -c 10000000 -o ./experiments/results/resnet50_31a80_s137_c10000000.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137_c10000000.data > ./experiments/results/resnet50_31a80_s137_c10000000.txt
