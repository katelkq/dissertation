#!/bin/bash
perf record -e '{cycles,instructions}:Su' -c 10000 -o ./experiments/results/resnet50_31a80_s0.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0.data > ./experiments/results/resnet50_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 25000 -o ./experiments/results/resnet50_31a80_s0.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0.data > ./experiments/results/resnet50_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 50000 -o ./experiments/results/resnet50_31a80_s0.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0.data > ./experiments/results/resnet50_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 75000 -o ./experiments/results/resnet50_31a80_s0.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0.data > ./experiments/results/resnet50_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o ./experiments/results/resnet50_31a80_s0.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0.data > ./experiments/results/resnet50_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 250000 -o ./experiments/results/resnet50_31a80_s0.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0.data > ./experiments/results/resnet50_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 500000 -o ./experiments/results/resnet50_31a80_s0.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0.data > ./experiments/results/resnet50_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 750000 -o ./experiments/results/resnet50_31a80_s0.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0.data > ./experiments/results/resnet50_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 1000000 -o ./experiments/results/resnet50_31a80_s0.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0.data > ./experiments/results/resnet50_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 2500000 -o ./experiments/results/resnet50_31a80_s0.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0.data > ./experiments/results/resnet50_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 5000000 -o ./experiments/results/resnet50_31a80_s0.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0.data > ./experiments/results/resnet50_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 7500000 -o ./experiments/results/resnet50_31a80_s0.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0.data > ./experiments/results/resnet50_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 10000000 -o ./experiments/results/resnet50_31a80_s0.data -T python src/run.py --model resnet50 --seed 0
perf script -i ./experiments/results/resnet50_31a80_s0.data > ./experiments/results/resnet50_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 10000 -o ./experiments/results/resnet50_31a80_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42.data > ./experiments/results/resnet50_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 25000 -o ./experiments/results/resnet50_31a80_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42.data > ./experiments/results/resnet50_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 50000 -o ./experiments/results/resnet50_31a80_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42.data > ./experiments/results/resnet50_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 75000 -o ./experiments/results/resnet50_31a80_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42.data > ./experiments/results/resnet50_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o ./experiments/results/resnet50_31a80_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42.data > ./experiments/results/resnet50_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 250000 -o ./experiments/results/resnet50_31a80_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42.data > ./experiments/results/resnet50_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 500000 -o ./experiments/results/resnet50_31a80_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42.data > ./experiments/results/resnet50_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 750000 -o ./experiments/results/resnet50_31a80_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42.data > ./experiments/results/resnet50_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 1000000 -o ./experiments/results/resnet50_31a80_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42.data > ./experiments/results/resnet50_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 2500000 -o ./experiments/results/resnet50_31a80_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42.data > ./experiments/results/resnet50_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 5000000 -o ./experiments/results/resnet50_31a80_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42.data > ./experiments/results/resnet50_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 7500000 -o ./experiments/results/resnet50_31a80_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42.data > ./experiments/results/resnet50_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 10000000 -o ./experiments/results/resnet50_31a80_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42.data > ./experiments/results/resnet50_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 10000 -o ./experiments/results/resnet50_31a80_s137.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137.data > ./experiments/results/resnet50_31a80_s137.txt
perf record -e '{cycles,instructions}:Su' -c 25000 -o ./experiments/results/resnet50_31a80_s137.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137.data > ./experiments/results/resnet50_31a80_s137.txt
perf record -e '{cycles,instructions}:Su' -c 50000 -o ./experiments/results/resnet50_31a80_s137.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137.data > ./experiments/results/resnet50_31a80_s137.txt
perf record -e '{cycles,instructions}:Su' -c 75000 -o ./experiments/results/resnet50_31a80_s137.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137.data > ./experiments/results/resnet50_31a80_s137.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o ./experiments/results/resnet50_31a80_s137.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137.data > ./experiments/results/resnet50_31a80_s137.txt
perf record -e '{cycles,instructions}:Su' -c 250000 -o ./experiments/results/resnet50_31a80_s137.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137.data > ./experiments/results/resnet50_31a80_s137.txt
perf record -e '{cycles,instructions}:Su' -c 500000 -o ./experiments/results/resnet50_31a80_s137.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137.data > ./experiments/results/resnet50_31a80_s137.txt
perf record -e '{cycles,instructions}:Su' -c 750000 -o ./experiments/results/resnet50_31a80_s137.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137.data > ./experiments/results/resnet50_31a80_s137.txt
perf record -e '{cycles,instructions}:Su' -c 1000000 -o ./experiments/results/resnet50_31a80_s137.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137.data > ./experiments/results/resnet50_31a80_s137.txt
perf record -e '{cycles,instructions}:Su' -c 2500000 -o ./experiments/results/resnet50_31a80_s137.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137.data > ./experiments/results/resnet50_31a80_s137.txt
perf record -e '{cycles,instructions}:Su' -c 5000000 -o ./experiments/results/resnet50_31a80_s137.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137.data > ./experiments/results/resnet50_31a80_s137.txt
perf record -e '{cycles,instructions}:Su' -c 7500000 -o ./experiments/results/resnet50_31a80_s137.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137.data > ./experiments/results/resnet50_31a80_s137.txt
perf record -e '{cycles,instructions}:Su' -c 10000000 -o ./experiments/results/resnet50_31a80_s137.data -T python src/run.py --model resnet50 --seed 137
perf script -i ./experiments/results/resnet50_31a80_s137.data > ./experiments/results/resnet50_31a80_s137.txt
