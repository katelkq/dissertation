#!/bin/bash
perf record -e '{cycles,instructions}:Su' -c 100000 -o ./experiments/results/resnet50_31a80_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_31a80_s42.data > ./experiments/results/resnet50_31a80_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o ./experiments/results/resnet50_00b76_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_00b76_s42.data > ./experiments/results/resnet50_00b76_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o ./experiments/results/resnet50_4bba3_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_4bba3_s42.data > ./experiments/results/resnet50_4bba3_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o ./experiments/results/resnet50_73780_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_73780_s42.data > ./experiments/results/resnet50_73780_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o ./experiments/results/resnet50_a1a60_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_a1a60_s42.data > ./experiments/results/resnet50_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o ./experiments/results/resnet50_2ee02_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_2ee02_s42.data > ./experiments/results/resnet50_2ee02_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o ./experiments/results/resnet50_b54c7_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_b54c7_s42.data > ./experiments/results/resnet50_b54c7_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o ./experiments/results/resnet50_0a0cc_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_0a0cc_s42.data > ./experiments/results/resnet50_0a0cc_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o ./experiments/results/resnet50_58f4c_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_58f4c_s42.data > ./experiments/results/resnet50_58f4c_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o ./experiments/results/resnet50_ff571_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_ff571_s42.data > ./experiments/results/resnet50_ff571_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o ./experiments/results/resnet50_c346c_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_c346c_s42.data > ./experiments/results/resnet50_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o ./experiments/results/resnet50_3ce60_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_3ce60_s42.data > ./experiments/results/resnet50_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o ./experiments/results/resnet50_f1dee_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_f1dee_s42.data > ./experiments/results/resnet50_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o ./experiments/results/resnet50_9899f_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_9899f_s42.data > ./experiments/results/resnet50_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o ./experiments/results/resnet50_f9059_s42.data -T python src/run.py --model resnet50 --seed 42
perf script -i ./experiments/results/resnet50_f9059_s42.data > ./experiments/results/resnet50_f9059_s42.txt
