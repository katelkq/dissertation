#!/bin/bash
mkdir experiments/results/
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/mobilenet_31a80_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/results/mobilenet_31a80_s0.data > experiments/results/mobilenet_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/mobilenet_31a80_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/results/mobilenet_31a80_s1.data > experiments/results/mobilenet_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/mobilenet_31a80_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/results/mobilenet_31a80_s27.data > experiments/results/mobilenet_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/mobilenet_31a80_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/results/mobilenet_31a80_s42.data > experiments/results/mobilenet_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/mobilenet_31a80_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/results/mobilenet_31a80_s137.data > experiments/results/mobilenet_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/mobilenet_00b76_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/results/mobilenet_00b76_s0.data > experiments/results/mobilenet_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/mobilenet_00b76_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/results/mobilenet_00b76_s1.data > experiments/results/mobilenet_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/mobilenet_00b76_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/results/mobilenet_00b76_s27.data > experiments/results/mobilenet_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/mobilenet_00b76_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/results/mobilenet_00b76_s42.data > experiments/results/mobilenet_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/mobilenet_00b76_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/results/mobilenet_00b76_s137.data > experiments/results/mobilenet_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/mobilenet_4bba3_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/results/mobilenet_4bba3_s0.data > experiments/results/mobilenet_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/mobilenet_4bba3_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/results/mobilenet_4bba3_s1.data > experiments/results/mobilenet_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/mobilenet_4bba3_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/results/mobilenet_4bba3_s27.data > experiments/results/mobilenet_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/mobilenet_4bba3_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/results/mobilenet_4bba3_s42.data > experiments/results/mobilenet_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/mobilenet_4bba3_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/results/mobilenet_4bba3_s137.data > experiments/results/mobilenet_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/mobilenet_73780_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/results/mobilenet_73780_s0.data > experiments/results/mobilenet_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/mobilenet_73780_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/results/mobilenet_73780_s1.data > experiments/results/mobilenet_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/mobilenet_73780_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/results/mobilenet_73780_s27.data > experiments/results/mobilenet_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/mobilenet_73780_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/results/mobilenet_73780_s42.data > experiments/results/mobilenet_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/mobilenet_73780_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/results/mobilenet_73780_s137.data > experiments/results/mobilenet_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/mobilenet_a1a60_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/results/mobilenet_a1a60_s0.data > experiments/results/mobilenet_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/mobilenet_a1a60_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/results/mobilenet_a1a60_s1.data > experiments/results/mobilenet_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/mobilenet_a1a60_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/results/mobilenet_a1a60_s27.data > experiments/results/mobilenet_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/mobilenet_a1a60_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/results/mobilenet_a1a60_s42.data > experiments/results/mobilenet_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/mobilenet_a1a60_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/results/mobilenet_a1a60_s137.data > experiments/results/mobilenet_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/mobilenet_2ee02_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/results/mobilenet_2ee02_s0.data > experiments/results/mobilenet_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/mobilenet_2ee02_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/results/mobilenet_2ee02_s1.data > experiments/results/mobilenet_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/mobilenet_2ee02_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/results/mobilenet_2ee02_s27.data > experiments/results/mobilenet_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/mobilenet_2ee02_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/results/mobilenet_2ee02_s42.data > experiments/results/mobilenet_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/mobilenet_2ee02_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/results/mobilenet_2ee02_s137.data > experiments/results/mobilenet_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/mobilenet_b54c7_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/results/mobilenet_b54c7_s0.data > experiments/results/mobilenet_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/mobilenet_b54c7_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/results/mobilenet_b54c7_s1.data > experiments/results/mobilenet_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/mobilenet_b54c7_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/results/mobilenet_b54c7_s27.data > experiments/results/mobilenet_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/mobilenet_b54c7_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/results/mobilenet_b54c7_s42.data > experiments/results/mobilenet_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/mobilenet_b54c7_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/results/mobilenet_b54c7_s137.data > experiments/results/mobilenet_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/mobilenet_0a0cc_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/results/mobilenet_0a0cc_s0.data > experiments/results/mobilenet_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/mobilenet_0a0cc_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/results/mobilenet_0a0cc_s1.data > experiments/results/mobilenet_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/mobilenet_0a0cc_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/results/mobilenet_0a0cc_s27.data > experiments/results/mobilenet_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/mobilenet_0a0cc_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/results/mobilenet_0a0cc_s42.data > experiments/results/mobilenet_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/mobilenet_0a0cc_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/results/mobilenet_0a0cc_s137.data > experiments/results/mobilenet_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/mobilenet_58f4c_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/results/mobilenet_58f4c_s0.data > experiments/results/mobilenet_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/mobilenet_58f4c_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/results/mobilenet_58f4c_s1.data > experiments/results/mobilenet_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/mobilenet_58f4c_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/results/mobilenet_58f4c_s27.data > experiments/results/mobilenet_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/mobilenet_58f4c_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/results/mobilenet_58f4c_s42.data > experiments/results/mobilenet_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/mobilenet_58f4c_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/results/mobilenet_58f4c_s137.data > experiments/results/mobilenet_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/mobilenet_ff571_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/results/mobilenet_ff571_s0.data > experiments/results/mobilenet_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/mobilenet_ff571_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/results/mobilenet_ff571_s1.data > experiments/results/mobilenet_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/mobilenet_ff571_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/results/mobilenet_ff571_s27.data > experiments/results/mobilenet_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/mobilenet_ff571_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/results/mobilenet_ff571_s42.data > experiments/results/mobilenet_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/mobilenet_ff571_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/results/mobilenet_ff571_s137.data > experiments/results/mobilenet_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/mobilenet_c346c_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/results/mobilenet_c346c_s0.data > experiments/results/mobilenet_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/mobilenet_c346c_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/results/mobilenet_c346c_s1.data > experiments/results/mobilenet_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/mobilenet_c346c_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/results/mobilenet_c346c_s27.data > experiments/results/mobilenet_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/mobilenet_c346c_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/results/mobilenet_c346c_s42.data > experiments/results/mobilenet_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/mobilenet_c346c_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/results/mobilenet_c346c_s137.data > experiments/results/mobilenet_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/mobilenet_3ce60_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/results/mobilenet_3ce60_s0.data > experiments/results/mobilenet_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/mobilenet_3ce60_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/results/mobilenet_3ce60_s1.data > experiments/results/mobilenet_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/mobilenet_3ce60_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/results/mobilenet_3ce60_s27.data > experiments/results/mobilenet_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/mobilenet_3ce60_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/results/mobilenet_3ce60_s42.data > experiments/results/mobilenet_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/mobilenet_3ce60_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/results/mobilenet_3ce60_s137.data > experiments/results/mobilenet_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/mobilenet_f1dee_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/results/mobilenet_f1dee_s0.data > experiments/results/mobilenet_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/mobilenet_f1dee_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/results/mobilenet_f1dee_s1.data > experiments/results/mobilenet_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/mobilenet_f1dee_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/results/mobilenet_f1dee_s27.data > experiments/results/mobilenet_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/mobilenet_f1dee_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/results/mobilenet_f1dee_s42.data > experiments/results/mobilenet_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/mobilenet_f1dee_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/results/mobilenet_f1dee_s137.data > experiments/results/mobilenet_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/mobilenet_9899f_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/results/mobilenet_9899f_s0.data > experiments/results/mobilenet_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/mobilenet_9899f_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/results/mobilenet_9899f_s1.data > experiments/results/mobilenet_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/mobilenet_9899f_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/results/mobilenet_9899f_s27.data > experiments/results/mobilenet_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/mobilenet_9899f_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/results/mobilenet_9899f_s42.data > experiments/results/mobilenet_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/mobilenet_9899f_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/results/mobilenet_9899f_s137.data > experiments/results/mobilenet_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/mobilenet_f9059_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/results/mobilenet_f9059_s0.data > experiments/results/mobilenet_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/mobilenet_f9059_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/results/mobilenet_f9059_s1.data > experiments/results/mobilenet_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/mobilenet_f9059_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/results/mobilenet_f9059_s27.data > experiments/results/mobilenet_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/mobilenet_f9059_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/results/mobilenet_f9059_s42.data > experiments/results/mobilenet_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/mobilenet_f9059_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/results/mobilenet_f9059_s137.data > experiments/results/mobilenet_f9059_s137.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/swint_31a80_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/results/swint_31a80_s0.data > experiments/results/swint_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/swint_31a80_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/results/swint_31a80_s1.data > experiments/results/swint_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/swint_31a80_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/results/swint_31a80_s27.data > experiments/results/swint_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/swint_31a80_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/results/swint_31a80_s42.data > experiments/results/swint_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/swint_31a80_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/results/swint_31a80_s137.data > experiments/results/swint_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/swint_00b76_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/results/swint_00b76_s0.data > experiments/results/swint_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/swint_00b76_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/results/swint_00b76_s1.data > experiments/results/swint_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/swint_00b76_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/results/swint_00b76_s27.data > experiments/results/swint_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/swint_00b76_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/results/swint_00b76_s42.data > experiments/results/swint_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/swint_00b76_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/results/swint_00b76_s137.data > experiments/results/swint_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/swint_4bba3_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/results/swint_4bba3_s0.data > experiments/results/swint_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/swint_4bba3_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/results/swint_4bba3_s1.data > experiments/results/swint_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/swint_4bba3_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/results/swint_4bba3_s27.data > experiments/results/swint_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/swint_4bba3_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/results/swint_4bba3_s42.data > experiments/results/swint_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/swint_4bba3_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/results/swint_4bba3_s137.data > experiments/results/swint_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/swint_73780_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/results/swint_73780_s0.data > experiments/results/swint_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/swint_73780_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/results/swint_73780_s1.data > experiments/results/swint_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/swint_73780_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/results/swint_73780_s27.data > experiments/results/swint_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/swint_73780_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/results/swint_73780_s42.data > experiments/results/swint_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/swint_73780_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/results/swint_73780_s137.data > experiments/results/swint_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/swint_a1a60_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/results/swint_a1a60_s0.data > experiments/results/swint_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/swint_a1a60_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/results/swint_a1a60_s1.data > experiments/results/swint_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/swint_a1a60_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/results/swint_a1a60_s27.data > experiments/results/swint_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/swint_a1a60_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/results/swint_a1a60_s42.data > experiments/results/swint_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/swint_a1a60_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/results/swint_a1a60_s137.data > experiments/results/swint_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/swint_2ee02_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/results/swint_2ee02_s0.data > experiments/results/swint_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/swint_2ee02_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/results/swint_2ee02_s1.data > experiments/results/swint_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/swint_2ee02_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/results/swint_2ee02_s27.data > experiments/results/swint_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/swint_2ee02_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/results/swint_2ee02_s42.data > experiments/results/swint_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/swint_2ee02_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/results/swint_2ee02_s137.data > experiments/results/swint_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/swint_b54c7_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/results/swint_b54c7_s0.data > experiments/results/swint_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/swint_b54c7_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/results/swint_b54c7_s1.data > experiments/results/swint_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/swint_b54c7_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/results/swint_b54c7_s27.data > experiments/results/swint_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/swint_b54c7_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/results/swint_b54c7_s42.data > experiments/results/swint_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/swint_b54c7_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/results/swint_b54c7_s137.data > experiments/results/swint_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/swint_0a0cc_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/results/swint_0a0cc_s0.data > experiments/results/swint_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/swint_0a0cc_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/results/swint_0a0cc_s1.data > experiments/results/swint_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/swint_0a0cc_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/results/swint_0a0cc_s27.data > experiments/results/swint_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/swint_0a0cc_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/results/swint_0a0cc_s42.data > experiments/results/swint_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/swint_0a0cc_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/results/swint_0a0cc_s137.data > experiments/results/swint_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/swint_58f4c_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/results/swint_58f4c_s0.data > experiments/results/swint_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/swint_58f4c_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/results/swint_58f4c_s1.data > experiments/results/swint_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/swint_58f4c_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/results/swint_58f4c_s27.data > experiments/results/swint_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/swint_58f4c_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/results/swint_58f4c_s42.data > experiments/results/swint_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/swint_58f4c_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/results/swint_58f4c_s137.data > experiments/results/swint_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/swint_ff571_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/results/swint_ff571_s0.data > experiments/results/swint_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/swint_ff571_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/results/swint_ff571_s1.data > experiments/results/swint_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/swint_ff571_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/results/swint_ff571_s27.data > experiments/results/swint_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/swint_ff571_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/results/swint_ff571_s42.data > experiments/results/swint_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/swint_ff571_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/results/swint_ff571_s137.data > experiments/results/swint_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/swint_c346c_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/results/swint_c346c_s0.data > experiments/results/swint_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/swint_c346c_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/results/swint_c346c_s1.data > experiments/results/swint_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/swint_c346c_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/results/swint_c346c_s27.data > experiments/results/swint_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/swint_c346c_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/results/swint_c346c_s42.data > experiments/results/swint_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/swint_c346c_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/results/swint_c346c_s137.data > experiments/results/swint_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/swint_3ce60_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/results/swint_3ce60_s0.data > experiments/results/swint_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/swint_3ce60_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/results/swint_3ce60_s1.data > experiments/results/swint_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/swint_3ce60_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/results/swint_3ce60_s27.data > experiments/results/swint_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/swint_3ce60_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/results/swint_3ce60_s42.data > experiments/results/swint_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/swint_3ce60_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/results/swint_3ce60_s137.data > experiments/results/swint_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/swint_f1dee_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/results/swint_f1dee_s0.data > experiments/results/swint_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/swint_f1dee_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/results/swint_f1dee_s1.data > experiments/results/swint_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/swint_f1dee_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/results/swint_f1dee_s27.data > experiments/results/swint_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/swint_f1dee_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/results/swint_f1dee_s42.data > experiments/results/swint_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/swint_f1dee_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/results/swint_f1dee_s137.data > experiments/results/swint_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/swint_9899f_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/results/swint_9899f_s0.data > experiments/results/swint_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/swint_9899f_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/results/swint_9899f_s1.data > experiments/results/swint_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/swint_9899f_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/results/swint_9899f_s27.data > experiments/results/swint_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/swint_9899f_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/results/swint_9899f_s42.data > experiments/results/swint_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/swint_9899f_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/results/swint_9899f_s137.data > experiments/results/swint_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/swint_f9059_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/results/swint_f9059_s0.data > experiments/results/swint_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/swint_f9059_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/results/swint_f9059_s1.data > experiments/results/swint_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/swint_f9059_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/results/swint_f9059_s27.data > experiments/results/swint_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/swint_f9059_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/results/swint_f9059_s42.data > experiments/results/swint_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/swint_f9059_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/results/swint_f9059_s137.data > experiments/results/swint_f9059_s137.txt
rm experiments/results/*.data
gdrive files upload experiments/results/ --recursive
rm -r experiments/results/
mkdir experiments/results/
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/swins_31a80_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/results/swins_31a80_s0.data > experiments/results/swins_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/swins_31a80_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/results/swins_31a80_s1.data > experiments/results/swins_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/swins_31a80_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/results/swins_31a80_s27.data > experiments/results/swins_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/swins_31a80_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/results/swins_31a80_s42.data > experiments/results/swins_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/swins_31a80_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/results/swins_31a80_s137.data > experiments/results/swins_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/swins_00b76_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/results/swins_00b76_s0.data > experiments/results/swins_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/swins_00b76_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/results/swins_00b76_s1.data > experiments/results/swins_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/swins_00b76_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/results/swins_00b76_s27.data > experiments/results/swins_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/swins_00b76_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/results/swins_00b76_s42.data > experiments/results/swins_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/swins_00b76_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/results/swins_00b76_s137.data > experiments/results/swins_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/swins_4bba3_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/results/swins_4bba3_s0.data > experiments/results/swins_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/swins_4bba3_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/results/swins_4bba3_s1.data > experiments/results/swins_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/swins_4bba3_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/results/swins_4bba3_s27.data > experiments/results/swins_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/swins_4bba3_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/results/swins_4bba3_s42.data > experiments/results/swins_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/swins_4bba3_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/results/swins_4bba3_s137.data > experiments/results/swins_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/swins_73780_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/results/swins_73780_s0.data > experiments/results/swins_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/swins_73780_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/results/swins_73780_s1.data > experiments/results/swins_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/swins_73780_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/results/swins_73780_s27.data > experiments/results/swins_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/swins_73780_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/results/swins_73780_s42.data > experiments/results/swins_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/swins_73780_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/results/swins_73780_s137.data > experiments/results/swins_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/swins_a1a60_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/results/swins_a1a60_s0.data > experiments/results/swins_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/swins_a1a60_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/results/swins_a1a60_s1.data > experiments/results/swins_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/swins_a1a60_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/results/swins_a1a60_s27.data > experiments/results/swins_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/swins_a1a60_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/results/swins_a1a60_s42.data > experiments/results/swins_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/swins_a1a60_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/results/swins_a1a60_s137.data > experiments/results/swins_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/swins_2ee02_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/results/swins_2ee02_s0.data > experiments/results/swins_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/swins_2ee02_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/results/swins_2ee02_s1.data > experiments/results/swins_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/swins_2ee02_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/results/swins_2ee02_s27.data > experiments/results/swins_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/swins_2ee02_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/results/swins_2ee02_s42.data > experiments/results/swins_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/swins_2ee02_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/results/swins_2ee02_s137.data > experiments/results/swins_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/swins_b54c7_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/results/swins_b54c7_s0.data > experiments/results/swins_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/swins_b54c7_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/results/swins_b54c7_s1.data > experiments/results/swins_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/swins_b54c7_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/results/swins_b54c7_s27.data > experiments/results/swins_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/swins_b54c7_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/results/swins_b54c7_s42.data > experiments/results/swins_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/swins_b54c7_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/results/swins_b54c7_s137.data > experiments/results/swins_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/swins_0a0cc_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/results/swins_0a0cc_s0.data > experiments/results/swins_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/swins_0a0cc_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/results/swins_0a0cc_s1.data > experiments/results/swins_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/swins_0a0cc_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/results/swins_0a0cc_s27.data > experiments/results/swins_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/swins_0a0cc_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/results/swins_0a0cc_s42.data > experiments/results/swins_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/swins_0a0cc_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/results/swins_0a0cc_s137.data > experiments/results/swins_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/swins_58f4c_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/results/swins_58f4c_s0.data > experiments/results/swins_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/swins_58f4c_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/results/swins_58f4c_s1.data > experiments/results/swins_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/swins_58f4c_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/results/swins_58f4c_s27.data > experiments/results/swins_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/swins_58f4c_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/results/swins_58f4c_s42.data > experiments/results/swins_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/swins_58f4c_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/results/swins_58f4c_s137.data > experiments/results/swins_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/swins_ff571_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/results/swins_ff571_s0.data > experiments/results/swins_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/swins_ff571_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/results/swins_ff571_s1.data > experiments/results/swins_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/swins_ff571_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/results/swins_ff571_s27.data > experiments/results/swins_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/swins_ff571_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/results/swins_ff571_s42.data > experiments/results/swins_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/swins_ff571_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/results/swins_ff571_s137.data > experiments/results/swins_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/swins_c346c_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/results/swins_c346c_s0.data > experiments/results/swins_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/swins_c346c_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/results/swins_c346c_s1.data > experiments/results/swins_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/swins_c346c_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/results/swins_c346c_s27.data > experiments/results/swins_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/swins_c346c_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/results/swins_c346c_s42.data > experiments/results/swins_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/swins_c346c_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/results/swins_c346c_s137.data > experiments/results/swins_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/swins_3ce60_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/results/swins_3ce60_s0.data > experiments/results/swins_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/swins_3ce60_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/results/swins_3ce60_s1.data > experiments/results/swins_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/swins_3ce60_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/results/swins_3ce60_s27.data > experiments/results/swins_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/swins_3ce60_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/results/swins_3ce60_s42.data > experiments/results/swins_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/swins_3ce60_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/results/swins_3ce60_s137.data > experiments/results/swins_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/swins_f1dee_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/results/swins_f1dee_s0.data > experiments/results/swins_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/swins_f1dee_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/results/swins_f1dee_s1.data > experiments/results/swins_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/swins_f1dee_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/results/swins_f1dee_s27.data > experiments/results/swins_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/swins_f1dee_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/results/swins_f1dee_s42.data > experiments/results/swins_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/swins_f1dee_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/results/swins_f1dee_s137.data > experiments/results/swins_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/swins_9899f_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/results/swins_9899f_s0.data > experiments/results/swins_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/swins_9899f_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/results/swins_9899f_s1.data > experiments/results/swins_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/swins_9899f_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/results/swins_9899f_s27.data > experiments/results/swins_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/swins_9899f_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/results/swins_9899f_s42.data > experiments/results/swins_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/swins_9899f_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/results/swins_9899f_s137.data > experiments/results/swins_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/swins_f9059_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/results/swins_f9059_s0.data > experiments/results/swins_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/swins_f9059_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/results/swins_f9059_s1.data > experiments/results/swins_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/swins_f9059_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/results/swins_f9059_s27.data > experiments/results/swins_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/swins_f9059_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/results/swins_f9059_s42.data > experiments/results/swins_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/swins_f9059_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/results/swins_f9059_s137.data > experiments/results/swins_f9059_s137.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/swinb_31a80_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/results/swinb_31a80_s0.data > experiments/results/swinb_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/swinb_31a80_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/results/swinb_31a80_s1.data > experiments/results/swinb_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/swinb_31a80_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/results/swinb_31a80_s27.data > experiments/results/swinb_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/swinb_31a80_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/results/swinb_31a80_s42.data > experiments/results/swinb_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/swinb_31a80_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/results/swinb_31a80_s137.data > experiments/results/swinb_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/swinb_00b76_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/results/swinb_00b76_s0.data > experiments/results/swinb_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/swinb_00b76_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/results/swinb_00b76_s1.data > experiments/results/swinb_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/swinb_00b76_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/results/swinb_00b76_s27.data > experiments/results/swinb_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/swinb_00b76_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/results/swinb_00b76_s42.data > experiments/results/swinb_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/swinb_00b76_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/results/swinb_00b76_s137.data > experiments/results/swinb_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/swinb_4bba3_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/results/swinb_4bba3_s0.data > experiments/results/swinb_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/swinb_4bba3_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/results/swinb_4bba3_s1.data > experiments/results/swinb_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/swinb_4bba3_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/results/swinb_4bba3_s27.data > experiments/results/swinb_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/swinb_4bba3_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/results/swinb_4bba3_s42.data > experiments/results/swinb_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/swinb_4bba3_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/results/swinb_4bba3_s137.data > experiments/results/swinb_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/swinb_73780_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/results/swinb_73780_s0.data > experiments/results/swinb_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/swinb_73780_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/results/swinb_73780_s1.data > experiments/results/swinb_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/swinb_73780_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/results/swinb_73780_s27.data > experiments/results/swinb_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/swinb_73780_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/results/swinb_73780_s42.data > experiments/results/swinb_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/swinb_73780_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/results/swinb_73780_s137.data > experiments/results/swinb_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/swinb_a1a60_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/results/swinb_a1a60_s0.data > experiments/results/swinb_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/swinb_a1a60_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/results/swinb_a1a60_s1.data > experiments/results/swinb_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/swinb_a1a60_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/results/swinb_a1a60_s27.data > experiments/results/swinb_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/swinb_a1a60_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/results/swinb_a1a60_s42.data > experiments/results/swinb_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/swinb_a1a60_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/results/swinb_a1a60_s137.data > experiments/results/swinb_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/swinb_2ee02_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/results/swinb_2ee02_s0.data > experiments/results/swinb_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/swinb_2ee02_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/results/swinb_2ee02_s1.data > experiments/results/swinb_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/swinb_2ee02_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/results/swinb_2ee02_s27.data > experiments/results/swinb_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/swinb_2ee02_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/results/swinb_2ee02_s42.data > experiments/results/swinb_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/swinb_2ee02_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/results/swinb_2ee02_s137.data > experiments/results/swinb_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/swinb_b54c7_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/results/swinb_b54c7_s0.data > experiments/results/swinb_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/swinb_b54c7_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/results/swinb_b54c7_s1.data > experiments/results/swinb_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/swinb_b54c7_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/results/swinb_b54c7_s27.data > experiments/results/swinb_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/swinb_b54c7_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/results/swinb_b54c7_s42.data > experiments/results/swinb_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/swinb_b54c7_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/results/swinb_b54c7_s137.data > experiments/results/swinb_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/swinb_0a0cc_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/results/swinb_0a0cc_s0.data > experiments/results/swinb_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/swinb_0a0cc_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/results/swinb_0a0cc_s1.data > experiments/results/swinb_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/swinb_0a0cc_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/results/swinb_0a0cc_s27.data > experiments/results/swinb_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/swinb_0a0cc_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/results/swinb_0a0cc_s42.data > experiments/results/swinb_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/swinb_0a0cc_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/results/swinb_0a0cc_s137.data > experiments/results/swinb_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/swinb_58f4c_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/results/swinb_58f4c_s0.data > experiments/results/swinb_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/swinb_58f4c_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/results/swinb_58f4c_s1.data > experiments/results/swinb_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/swinb_58f4c_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/results/swinb_58f4c_s27.data > experiments/results/swinb_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/swinb_58f4c_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/results/swinb_58f4c_s42.data > experiments/results/swinb_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/swinb_58f4c_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/results/swinb_58f4c_s137.data > experiments/results/swinb_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/swinb_ff571_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/results/swinb_ff571_s0.data > experiments/results/swinb_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/swinb_ff571_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/results/swinb_ff571_s1.data > experiments/results/swinb_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/swinb_ff571_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/results/swinb_ff571_s27.data > experiments/results/swinb_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/swinb_ff571_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/results/swinb_ff571_s42.data > experiments/results/swinb_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/swinb_ff571_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/results/swinb_ff571_s137.data > experiments/results/swinb_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/swinb_c346c_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/results/swinb_c346c_s0.data > experiments/results/swinb_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/swinb_c346c_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/results/swinb_c346c_s1.data > experiments/results/swinb_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/swinb_c346c_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/results/swinb_c346c_s27.data > experiments/results/swinb_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/swinb_c346c_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/results/swinb_c346c_s42.data > experiments/results/swinb_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/swinb_c346c_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/results/swinb_c346c_s137.data > experiments/results/swinb_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/swinb_3ce60_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/results/swinb_3ce60_s0.data > experiments/results/swinb_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/swinb_3ce60_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/results/swinb_3ce60_s1.data > experiments/results/swinb_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/swinb_3ce60_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/results/swinb_3ce60_s27.data > experiments/results/swinb_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/swinb_3ce60_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/results/swinb_3ce60_s42.data > experiments/results/swinb_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/swinb_3ce60_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/results/swinb_3ce60_s137.data > experiments/results/swinb_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/swinb_f1dee_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/results/swinb_f1dee_s0.data > experiments/results/swinb_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/swinb_f1dee_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/results/swinb_f1dee_s1.data > experiments/results/swinb_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/swinb_f1dee_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/results/swinb_f1dee_s27.data > experiments/results/swinb_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/swinb_f1dee_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/results/swinb_f1dee_s42.data > experiments/results/swinb_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/swinb_f1dee_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/results/swinb_f1dee_s137.data > experiments/results/swinb_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/swinb_9899f_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/results/swinb_9899f_s0.data > experiments/results/swinb_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/swinb_9899f_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/results/swinb_9899f_s1.data > experiments/results/swinb_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/swinb_9899f_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/results/swinb_9899f_s27.data > experiments/results/swinb_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/swinb_9899f_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/results/swinb_9899f_s42.data > experiments/results/swinb_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/swinb_9899f_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/results/swinb_9899f_s137.data > experiments/results/swinb_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/swinb_f9059_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/results/swinb_f9059_s0.data > experiments/results/swinb_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/swinb_f9059_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/results/swinb_f9059_s1.data > experiments/results/swinb_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/swinb_f9059_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/results/swinb_f9059_s27.data > experiments/results/swinb_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/swinb_f9059_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/results/swinb_f9059_s42.data > experiments/results/swinb_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/swinb_f9059_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/results/swinb_f9059_s137.data > experiments/results/swinb_f9059_s137.txt
rm experiments/results/*.data
gdrive files upload experiments/results/ --recursive
rm -r experiments/results/
mkdir experiments/results/
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vgg11_31a80_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/results/vgg11_31a80_s0.data > experiments/results/vgg11_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vgg11_31a80_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/results/vgg11_31a80_s1.data > experiments/results/vgg11_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vgg11_31a80_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/results/vgg11_31a80_s27.data > experiments/results/vgg11_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vgg11_31a80_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/results/vgg11_31a80_s42.data > experiments/results/vgg11_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vgg11_31a80_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/results/vgg11_31a80_s137.data > experiments/results/vgg11_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vgg11_00b76_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/results/vgg11_00b76_s0.data > experiments/results/vgg11_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vgg11_00b76_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/results/vgg11_00b76_s1.data > experiments/results/vgg11_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vgg11_00b76_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/results/vgg11_00b76_s27.data > experiments/results/vgg11_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vgg11_00b76_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/results/vgg11_00b76_s42.data > experiments/results/vgg11_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vgg11_00b76_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/results/vgg11_00b76_s137.data > experiments/results/vgg11_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vgg11_4bba3_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/results/vgg11_4bba3_s0.data > experiments/results/vgg11_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vgg11_4bba3_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/results/vgg11_4bba3_s1.data > experiments/results/vgg11_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vgg11_4bba3_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/results/vgg11_4bba3_s27.data > experiments/results/vgg11_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vgg11_4bba3_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/results/vgg11_4bba3_s42.data > experiments/results/vgg11_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vgg11_4bba3_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/results/vgg11_4bba3_s137.data > experiments/results/vgg11_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vgg11_73780_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/results/vgg11_73780_s0.data > experiments/results/vgg11_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vgg11_73780_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/results/vgg11_73780_s1.data > experiments/results/vgg11_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vgg11_73780_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/results/vgg11_73780_s27.data > experiments/results/vgg11_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vgg11_73780_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/results/vgg11_73780_s42.data > experiments/results/vgg11_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vgg11_73780_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/results/vgg11_73780_s137.data > experiments/results/vgg11_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vgg11_a1a60_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/results/vgg11_a1a60_s0.data > experiments/results/vgg11_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vgg11_a1a60_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/results/vgg11_a1a60_s1.data > experiments/results/vgg11_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vgg11_a1a60_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/results/vgg11_a1a60_s27.data > experiments/results/vgg11_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vgg11_a1a60_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/results/vgg11_a1a60_s42.data > experiments/results/vgg11_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vgg11_a1a60_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/results/vgg11_a1a60_s137.data > experiments/results/vgg11_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vgg11_2ee02_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/results/vgg11_2ee02_s0.data > experiments/results/vgg11_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vgg11_2ee02_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/results/vgg11_2ee02_s1.data > experiments/results/vgg11_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vgg11_2ee02_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/results/vgg11_2ee02_s27.data > experiments/results/vgg11_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vgg11_2ee02_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/results/vgg11_2ee02_s42.data > experiments/results/vgg11_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vgg11_2ee02_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/results/vgg11_2ee02_s137.data > experiments/results/vgg11_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vgg11_b54c7_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/results/vgg11_b54c7_s0.data > experiments/results/vgg11_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vgg11_b54c7_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/results/vgg11_b54c7_s1.data > experiments/results/vgg11_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vgg11_b54c7_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/results/vgg11_b54c7_s27.data > experiments/results/vgg11_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vgg11_b54c7_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/results/vgg11_b54c7_s42.data > experiments/results/vgg11_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vgg11_b54c7_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/results/vgg11_b54c7_s137.data > experiments/results/vgg11_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vgg11_0a0cc_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/results/vgg11_0a0cc_s0.data > experiments/results/vgg11_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vgg11_0a0cc_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/results/vgg11_0a0cc_s1.data > experiments/results/vgg11_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vgg11_0a0cc_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/results/vgg11_0a0cc_s27.data > experiments/results/vgg11_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vgg11_0a0cc_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/results/vgg11_0a0cc_s42.data > experiments/results/vgg11_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vgg11_0a0cc_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/results/vgg11_0a0cc_s137.data > experiments/results/vgg11_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vgg11_58f4c_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/results/vgg11_58f4c_s0.data > experiments/results/vgg11_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vgg11_58f4c_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/results/vgg11_58f4c_s1.data > experiments/results/vgg11_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vgg11_58f4c_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/results/vgg11_58f4c_s27.data > experiments/results/vgg11_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vgg11_58f4c_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/results/vgg11_58f4c_s42.data > experiments/results/vgg11_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vgg11_58f4c_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/results/vgg11_58f4c_s137.data > experiments/results/vgg11_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vgg11_ff571_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/results/vgg11_ff571_s0.data > experiments/results/vgg11_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vgg11_ff571_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/results/vgg11_ff571_s1.data > experiments/results/vgg11_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vgg11_ff571_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/results/vgg11_ff571_s27.data > experiments/results/vgg11_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vgg11_ff571_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/results/vgg11_ff571_s42.data > experiments/results/vgg11_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vgg11_ff571_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/results/vgg11_ff571_s137.data > experiments/results/vgg11_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vgg11_c346c_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/results/vgg11_c346c_s0.data > experiments/results/vgg11_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vgg11_c346c_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/results/vgg11_c346c_s1.data > experiments/results/vgg11_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vgg11_c346c_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/results/vgg11_c346c_s27.data > experiments/results/vgg11_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vgg11_c346c_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/results/vgg11_c346c_s42.data > experiments/results/vgg11_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vgg11_c346c_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/results/vgg11_c346c_s137.data > experiments/results/vgg11_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vgg11_3ce60_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/results/vgg11_3ce60_s0.data > experiments/results/vgg11_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vgg11_3ce60_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/results/vgg11_3ce60_s1.data > experiments/results/vgg11_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vgg11_3ce60_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/results/vgg11_3ce60_s27.data > experiments/results/vgg11_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vgg11_3ce60_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/results/vgg11_3ce60_s42.data > experiments/results/vgg11_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vgg11_3ce60_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/results/vgg11_3ce60_s137.data > experiments/results/vgg11_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vgg11_f1dee_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/results/vgg11_f1dee_s0.data > experiments/results/vgg11_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vgg11_f1dee_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/results/vgg11_f1dee_s1.data > experiments/results/vgg11_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vgg11_f1dee_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/results/vgg11_f1dee_s27.data > experiments/results/vgg11_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vgg11_f1dee_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/results/vgg11_f1dee_s42.data > experiments/results/vgg11_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vgg11_f1dee_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/results/vgg11_f1dee_s137.data > experiments/results/vgg11_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vgg11_9899f_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/results/vgg11_9899f_s0.data > experiments/results/vgg11_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vgg11_9899f_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/results/vgg11_9899f_s1.data > experiments/results/vgg11_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vgg11_9899f_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/results/vgg11_9899f_s27.data > experiments/results/vgg11_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vgg11_9899f_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/results/vgg11_9899f_s42.data > experiments/results/vgg11_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vgg11_9899f_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/results/vgg11_9899f_s137.data > experiments/results/vgg11_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vgg11_f9059_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/results/vgg11_f9059_s0.data > experiments/results/vgg11_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vgg11_f9059_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/results/vgg11_f9059_s1.data > experiments/results/vgg11_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vgg11_f9059_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/results/vgg11_f9059_s27.data > experiments/results/vgg11_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vgg11_f9059_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/results/vgg11_f9059_s42.data > experiments/results/vgg11_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vgg11_f9059_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/results/vgg11_f9059_s137.data > experiments/results/vgg11_f9059_s137.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vgg13_31a80_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/results/vgg13_31a80_s0.data > experiments/results/vgg13_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vgg13_31a80_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/results/vgg13_31a80_s1.data > experiments/results/vgg13_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vgg13_31a80_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/results/vgg13_31a80_s27.data > experiments/results/vgg13_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vgg13_31a80_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/results/vgg13_31a80_s42.data > experiments/results/vgg13_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vgg13_31a80_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/results/vgg13_31a80_s137.data > experiments/results/vgg13_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vgg13_00b76_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/results/vgg13_00b76_s0.data > experiments/results/vgg13_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vgg13_00b76_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/results/vgg13_00b76_s1.data > experiments/results/vgg13_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vgg13_00b76_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/results/vgg13_00b76_s27.data > experiments/results/vgg13_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vgg13_00b76_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/results/vgg13_00b76_s42.data > experiments/results/vgg13_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vgg13_00b76_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/results/vgg13_00b76_s137.data > experiments/results/vgg13_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vgg13_4bba3_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/results/vgg13_4bba3_s0.data > experiments/results/vgg13_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vgg13_4bba3_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/results/vgg13_4bba3_s1.data > experiments/results/vgg13_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vgg13_4bba3_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/results/vgg13_4bba3_s27.data > experiments/results/vgg13_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vgg13_4bba3_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/results/vgg13_4bba3_s42.data > experiments/results/vgg13_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vgg13_4bba3_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/results/vgg13_4bba3_s137.data > experiments/results/vgg13_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vgg13_73780_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/results/vgg13_73780_s0.data > experiments/results/vgg13_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vgg13_73780_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/results/vgg13_73780_s1.data > experiments/results/vgg13_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vgg13_73780_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/results/vgg13_73780_s27.data > experiments/results/vgg13_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vgg13_73780_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/results/vgg13_73780_s42.data > experiments/results/vgg13_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vgg13_73780_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/results/vgg13_73780_s137.data > experiments/results/vgg13_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vgg13_a1a60_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/results/vgg13_a1a60_s0.data > experiments/results/vgg13_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vgg13_a1a60_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/results/vgg13_a1a60_s1.data > experiments/results/vgg13_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vgg13_a1a60_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/results/vgg13_a1a60_s27.data > experiments/results/vgg13_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vgg13_a1a60_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/results/vgg13_a1a60_s42.data > experiments/results/vgg13_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vgg13_a1a60_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/results/vgg13_a1a60_s137.data > experiments/results/vgg13_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vgg13_2ee02_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/results/vgg13_2ee02_s0.data > experiments/results/vgg13_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vgg13_2ee02_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/results/vgg13_2ee02_s1.data > experiments/results/vgg13_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vgg13_2ee02_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/results/vgg13_2ee02_s27.data > experiments/results/vgg13_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vgg13_2ee02_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/results/vgg13_2ee02_s42.data > experiments/results/vgg13_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vgg13_2ee02_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/results/vgg13_2ee02_s137.data > experiments/results/vgg13_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vgg13_b54c7_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/results/vgg13_b54c7_s0.data > experiments/results/vgg13_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vgg13_b54c7_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/results/vgg13_b54c7_s1.data > experiments/results/vgg13_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vgg13_b54c7_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/results/vgg13_b54c7_s27.data > experiments/results/vgg13_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vgg13_b54c7_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/results/vgg13_b54c7_s42.data > experiments/results/vgg13_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vgg13_b54c7_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/results/vgg13_b54c7_s137.data > experiments/results/vgg13_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vgg13_0a0cc_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/results/vgg13_0a0cc_s0.data > experiments/results/vgg13_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vgg13_0a0cc_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/results/vgg13_0a0cc_s1.data > experiments/results/vgg13_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vgg13_0a0cc_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/results/vgg13_0a0cc_s27.data > experiments/results/vgg13_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vgg13_0a0cc_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/results/vgg13_0a0cc_s42.data > experiments/results/vgg13_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vgg13_0a0cc_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/results/vgg13_0a0cc_s137.data > experiments/results/vgg13_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vgg13_58f4c_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/results/vgg13_58f4c_s0.data > experiments/results/vgg13_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vgg13_58f4c_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/results/vgg13_58f4c_s1.data > experiments/results/vgg13_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vgg13_58f4c_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/results/vgg13_58f4c_s27.data > experiments/results/vgg13_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vgg13_58f4c_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/results/vgg13_58f4c_s42.data > experiments/results/vgg13_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vgg13_58f4c_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/results/vgg13_58f4c_s137.data > experiments/results/vgg13_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vgg13_ff571_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/results/vgg13_ff571_s0.data > experiments/results/vgg13_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vgg13_ff571_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/results/vgg13_ff571_s1.data > experiments/results/vgg13_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vgg13_ff571_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/results/vgg13_ff571_s27.data > experiments/results/vgg13_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vgg13_ff571_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/results/vgg13_ff571_s42.data > experiments/results/vgg13_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vgg13_ff571_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/results/vgg13_ff571_s137.data > experiments/results/vgg13_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vgg13_c346c_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/results/vgg13_c346c_s0.data > experiments/results/vgg13_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vgg13_c346c_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/results/vgg13_c346c_s1.data > experiments/results/vgg13_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vgg13_c346c_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/results/vgg13_c346c_s27.data > experiments/results/vgg13_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vgg13_c346c_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/results/vgg13_c346c_s42.data > experiments/results/vgg13_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vgg13_c346c_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/results/vgg13_c346c_s137.data > experiments/results/vgg13_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vgg13_3ce60_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/results/vgg13_3ce60_s0.data > experiments/results/vgg13_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vgg13_3ce60_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/results/vgg13_3ce60_s1.data > experiments/results/vgg13_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vgg13_3ce60_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/results/vgg13_3ce60_s27.data > experiments/results/vgg13_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vgg13_3ce60_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/results/vgg13_3ce60_s42.data > experiments/results/vgg13_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vgg13_3ce60_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/results/vgg13_3ce60_s137.data > experiments/results/vgg13_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vgg13_f1dee_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/results/vgg13_f1dee_s0.data > experiments/results/vgg13_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vgg13_f1dee_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/results/vgg13_f1dee_s1.data > experiments/results/vgg13_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vgg13_f1dee_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/results/vgg13_f1dee_s27.data > experiments/results/vgg13_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vgg13_f1dee_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/results/vgg13_f1dee_s42.data > experiments/results/vgg13_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vgg13_f1dee_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/results/vgg13_f1dee_s137.data > experiments/results/vgg13_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vgg13_9899f_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/results/vgg13_9899f_s0.data > experiments/results/vgg13_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vgg13_9899f_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/results/vgg13_9899f_s1.data > experiments/results/vgg13_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vgg13_9899f_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/results/vgg13_9899f_s27.data > experiments/results/vgg13_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vgg13_9899f_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/results/vgg13_9899f_s42.data > experiments/results/vgg13_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vgg13_9899f_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/results/vgg13_9899f_s137.data > experiments/results/vgg13_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vgg13_f9059_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/results/vgg13_f9059_s0.data > experiments/results/vgg13_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vgg13_f9059_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/results/vgg13_f9059_s1.data > experiments/results/vgg13_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vgg13_f9059_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/results/vgg13_f9059_s27.data > experiments/results/vgg13_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vgg13_f9059_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/results/vgg13_f9059_s42.data > experiments/results/vgg13_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vgg13_f9059_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/results/vgg13_f9059_s137.data > experiments/results/vgg13_f9059_s137.txt
rm experiments/results/*.data
gdrive files upload experiments/results/ --recursive
rm -r experiments/results/
mkdir experiments/results/
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vgg16_31a80_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/results/vgg16_31a80_s0.data > experiments/results/vgg16_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vgg16_31a80_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/results/vgg16_31a80_s1.data > experiments/results/vgg16_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vgg16_31a80_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/results/vgg16_31a80_s27.data > experiments/results/vgg16_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vgg16_31a80_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/results/vgg16_31a80_s42.data > experiments/results/vgg16_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vgg16_31a80_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/results/vgg16_31a80_s137.data > experiments/results/vgg16_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vgg16_00b76_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/results/vgg16_00b76_s0.data > experiments/results/vgg16_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vgg16_00b76_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/results/vgg16_00b76_s1.data > experiments/results/vgg16_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vgg16_00b76_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/results/vgg16_00b76_s27.data > experiments/results/vgg16_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vgg16_00b76_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/results/vgg16_00b76_s42.data > experiments/results/vgg16_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vgg16_00b76_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/results/vgg16_00b76_s137.data > experiments/results/vgg16_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vgg16_4bba3_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/results/vgg16_4bba3_s0.data > experiments/results/vgg16_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vgg16_4bba3_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/results/vgg16_4bba3_s1.data > experiments/results/vgg16_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vgg16_4bba3_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/results/vgg16_4bba3_s27.data > experiments/results/vgg16_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vgg16_4bba3_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/results/vgg16_4bba3_s42.data > experiments/results/vgg16_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vgg16_4bba3_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/results/vgg16_4bba3_s137.data > experiments/results/vgg16_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vgg16_73780_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/results/vgg16_73780_s0.data > experiments/results/vgg16_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vgg16_73780_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/results/vgg16_73780_s1.data > experiments/results/vgg16_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vgg16_73780_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/results/vgg16_73780_s27.data > experiments/results/vgg16_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vgg16_73780_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/results/vgg16_73780_s42.data > experiments/results/vgg16_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vgg16_73780_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/results/vgg16_73780_s137.data > experiments/results/vgg16_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vgg16_a1a60_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/results/vgg16_a1a60_s0.data > experiments/results/vgg16_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vgg16_a1a60_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/results/vgg16_a1a60_s1.data > experiments/results/vgg16_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vgg16_a1a60_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/results/vgg16_a1a60_s27.data > experiments/results/vgg16_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vgg16_a1a60_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/results/vgg16_a1a60_s42.data > experiments/results/vgg16_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vgg16_a1a60_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/results/vgg16_a1a60_s137.data > experiments/results/vgg16_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vgg16_2ee02_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/results/vgg16_2ee02_s0.data > experiments/results/vgg16_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vgg16_2ee02_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/results/vgg16_2ee02_s1.data > experiments/results/vgg16_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vgg16_2ee02_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/results/vgg16_2ee02_s27.data > experiments/results/vgg16_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vgg16_2ee02_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/results/vgg16_2ee02_s42.data > experiments/results/vgg16_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vgg16_2ee02_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/results/vgg16_2ee02_s137.data > experiments/results/vgg16_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vgg16_b54c7_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/results/vgg16_b54c7_s0.data > experiments/results/vgg16_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vgg16_b54c7_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/results/vgg16_b54c7_s1.data > experiments/results/vgg16_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vgg16_b54c7_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/results/vgg16_b54c7_s27.data > experiments/results/vgg16_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vgg16_b54c7_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/results/vgg16_b54c7_s42.data > experiments/results/vgg16_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vgg16_b54c7_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/results/vgg16_b54c7_s137.data > experiments/results/vgg16_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vgg16_0a0cc_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/results/vgg16_0a0cc_s0.data > experiments/results/vgg16_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vgg16_0a0cc_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/results/vgg16_0a0cc_s1.data > experiments/results/vgg16_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vgg16_0a0cc_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/results/vgg16_0a0cc_s27.data > experiments/results/vgg16_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vgg16_0a0cc_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/results/vgg16_0a0cc_s42.data > experiments/results/vgg16_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vgg16_0a0cc_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/results/vgg16_0a0cc_s137.data > experiments/results/vgg16_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vgg16_58f4c_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/results/vgg16_58f4c_s0.data > experiments/results/vgg16_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vgg16_58f4c_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/results/vgg16_58f4c_s1.data > experiments/results/vgg16_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vgg16_58f4c_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/results/vgg16_58f4c_s27.data > experiments/results/vgg16_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vgg16_58f4c_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/results/vgg16_58f4c_s42.data > experiments/results/vgg16_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vgg16_58f4c_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/results/vgg16_58f4c_s137.data > experiments/results/vgg16_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vgg16_ff571_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/results/vgg16_ff571_s0.data > experiments/results/vgg16_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vgg16_ff571_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/results/vgg16_ff571_s1.data > experiments/results/vgg16_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vgg16_ff571_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/results/vgg16_ff571_s27.data > experiments/results/vgg16_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vgg16_ff571_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/results/vgg16_ff571_s42.data > experiments/results/vgg16_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vgg16_ff571_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/results/vgg16_ff571_s137.data > experiments/results/vgg16_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vgg16_c346c_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/results/vgg16_c346c_s0.data > experiments/results/vgg16_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vgg16_c346c_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/results/vgg16_c346c_s1.data > experiments/results/vgg16_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vgg16_c346c_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/results/vgg16_c346c_s27.data > experiments/results/vgg16_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vgg16_c346c_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/results/vgg16_c346c_s42.data > experiments/results/vgg16_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vgg16_c346c_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/results/vgg16_c346c_s137.data > experiments/results/vgg16_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vgg16_3ce60_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/results/vgg16_3ce60_s0.data > experiments/results/vgg16_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vgg16_3ce60_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/results/vgg16_3ce60_s1.data > experiments/results/vgg16_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vgg16_3ce60_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/results/vgg16_3ce60_s27.data > experiments/results/vgg16_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vgg16_3ce60_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/results/vgg16_3ce60_s42.data > experiments/results/vgg16_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vgg16_3ce60_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/results/vgg16_3ce60_s137.data > experiments/results/vgg16_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vgg16_f1dee_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/results/vgg16_f1dee_s0.data > experiments/results/vgg16_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vgg16_f1dee_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/results/vgg16_f1dee_s1.data > experiments/results/vgg16_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vgg16_f1dee_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/results/vgg16_f1dee_s27.data > experiments/results/vgg16_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vgg16_f1dee_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/results/vgg16_f1dee_s42.data > experiments/results/vgg16_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vgg16_f1dee_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/results/vgg16_f1dee_s137.data > experiments/results/vgg16_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vgg16_9899f_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/results/vgg16_9899f_s0.data > experiments/results/vgg16_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vgg16_9899f_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/results/vgg16_9899f_s1.data > experiments/results/vgg16_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vgg16_9899f_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/results/vgg16_9899f_s27.data > experiments/results/vgg16_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vgg16_9899f_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/results/vgg16_9899f_s42.data > experiments/results/vgg16_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vgg16_9899f_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/results/vgg16_9899f_s137.data > experiments/results/vgg16_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vgg16_f9059_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/results/vgg16_f9059_s0.data > experiments/results/vgg16_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vgg16_f9059_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/results/vgg16_f9059_s1.data > experiments/results/vgg16_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vgg16_f9059_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/results/vgg16_f9059_s27.data > experiments/results/vgg16_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vgg16_f9059_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/results/vgg16_f9059_s42.data > experiments/results/vgg16_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vgg16_f9059_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/results/vgg16_f9059_s137.data > experiments/results/vgg16_f9059_s137.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vgg19_31a80_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/results/vgg19_31a80_s0.data > experiments/results/vgg19_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vgg19_31a80_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/results/vgg19_31a80_s1.data > experiments/results/vgg19_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vgg19_31a80_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/results/vgg19_31a80_s27.data > experiments/results/vgg19_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vgg19_31a80_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/results/vgg19_31a80_s42.data > experiments/results/vgg19_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vgg19_31a80_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/results/vgg19_31a80_s137.data > experiments/results/vgg19_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vgg19_00b76_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/results/vgg19_00b76_s0.data > experiments/results/vgg19_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vgg19_00b76_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/results/vgg19_00b76_s1.data > experiments/results/vgg19_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vgg19_00b76_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/results/vgg19_00b76_s27.data > experiments/results/vgg19_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vgg19_00b76_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/results/vgg19_00b76_s42.data > experiments/results/vgg19_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vgg19_00b76_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/results/vgg19_00b76_s137.data > experiments/results/vgg19_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vgg19_4bba3_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/results/vgg19_4bba3_s0.data > experiments/results/vgg19_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vgg19_4bba3_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/results/vgg19_4bba3_s1.data > experiments/results/vgg19_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vgg19_4bba3_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/results/vgg19_4bba3_s27.data > experiments/results/vgg19_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vgg19_4bba3_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/results/vgg19_4bba3_s42.data > experiments/results/vgg19_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vgg19_4bba3_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/results/vgg19_4bba3_s137.data > experiments/results/vgg19_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vgg19_73780_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/results/vgg19_73780_s0.data > experiments/results/vgg19_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vgg19_73780_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/results/vgg19_73780_s1.data > experiments/results/vgg19_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vgg19_73780_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/results/vgg19_73780_s27.data > experiments/results/vgg19_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vgg19_73780_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/results/vgg19_73780_s42.data > experiments/results/vgg19_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vgg19_73780_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/results/vgg19_73780_s137.data > experiments/results/vgg19_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vgg19_a1a60_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/results/vgg19_a1a60_s0.data > experiments/results/vgg19_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vgg19_a1a60_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/results/vgg19_a1a60_s1.data > experiments/results/vgg19_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vgg19_a1a60_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/results/vgg19_a1a60_s27.data > experiments/results/vgg19_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vgg19_a1a60_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/results/vgg19_a1a60_s42.data > experiments/results/vgg19_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vgg19_a1a60_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/results/vgg19_a1a60_s137.data > experiments/results/vgg19_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vgg19_2ee02_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/results/vgg19_2ee02_s0.data > experiments/results/vgg19_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vgg19_2ee02_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/results/vgg19_2ee02_s1.data > experiments/results/vgg19_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vgg19_2ee02_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/results/vgg19_2ee02_s27.data > experiments/results/vgg19_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vgg19_2ee02_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/results/vgg19_2ee02_s42.data > experiments/results/vgg19_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vgg19_2ee02_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/results/vgg19_2ee02_s137.data > experiments/results/vgg19_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vgg19_b54c7_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/results/vgg19_b54c7_s0.data > experiments/results/vgg19_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vgg19_b54c7_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/results/vgg19_b54c7_s1.data > experiments/results/vgg19_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vgg19_b54c7_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/results/vgg19_b54c7_s27.data > experiments/results/vgg19_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vgg19_b54c7_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/results/vgg19_b54c7_s42.data > experiments/results/vgg19_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vgg19_b54c7_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/results/vgg19_b54c7_s137.data > experiments/results/vgg19_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vgg19_0a0cc_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/results/vgg19_0a0cc_s0.data > experiments/results/vgg19_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vgg19_0a0cc_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/results/vgg19_0a0cc_s1.data > experiments/results/vgg19_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vgg19_0a0cc_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/results/vgg19_0a0cc_s27.data > experiments/results/vgg19_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vgg19_0a0cc_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/results/vgg19_0a0cc_s42.data > experiments/results/vgg19_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vgg19_0a0cc_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/results/vgg19_0a0cc_s137.data > experiments/results/vgg19_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vgg19_58f4c_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/results/vgg19_58f4c_s0.data > experiments/results/vgg19_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vgg19_58f4c_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/results/vgg19_58f4c_s1.data > experiments/results/vgg19_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vgg19_58f4c_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/results/vgg19_58f4c_s27.data > experiments/results/vgg19_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vgg19_58f4c_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/results/vgg19_58f4c_s42.data > experiments/results/vgg19_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vgg19_58f4c_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/results/vgg19_58f4c_s137.data > experiments/results/vgg19_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vgg19_ff571_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/results/vgg19_ff571_s0.data > experiments/results/vgg19_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vgg19_ff571_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/results/vgg19_ff571_s1.data > experiments/results/vgg19_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vgg19_ff571_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/results/vgg19_ff571_s27.data > experiments/results/vgg19_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vgg19_ff571_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/results/vgg19_ff571_s42.data > experiments/results/vgg19_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vgg19_ff571_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/results/vgg19_ff571_s137.data > experiments/results/vgg19_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vgg19_c346c_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/results/vgg19_c346c_s0.data > experiments/results/vgg19_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vgg19_c346c_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/results/vgg19_c346c_s1.data > experiments/results/vgg19_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vgg19_c346c_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/results/vgg19_c346c_s27.data > experiments/results/vgg19_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vgg19_c346c_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/results/vgg19_c346c_s42.data > experiments/results/vgg19_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vgg19_c346c_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/results/vgg19_c346c_s137.data > experiments/results/vgg19_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vgg19_3ce60_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/results/vgg19_3ce60_s0.data > experiments/results/vgg19_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vgg19_3ce60_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/results/vgg19_3ce60_s1.data > experiments/results/vgg19_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vgg19_3ce60_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/results/vgg19_3ce60_s27.data > experiments/results/vgg19_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vgg19_3ce60_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/results/vgg19_3ce60_s42.data > experiments/results/vgg19_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vgg19_3ce60_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/results/vgg19_3ce60_s137.data > experiments/results/vgg19_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vgg19_f1dee_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/results/vgg19_f1dee_s0.data > experiments/results/vgg19_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vgg19_f1dee_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/results/vgg19_f1dee_s1.data > experiments/results/vgg19_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vgg19_f1dee_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/results/vgg19_f1dee_s27.data > experiments/results/vgg19_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vgg19_f1dee_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/results/vgg19_f1dee_s42.data > experiments/results/vgg19_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vgg19_f1dee_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/results/vgg19_f1dee_s137.data > experiments/results/vgg19_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vgg19_9899f_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/results/vgg19_9899f_s0.data > experiments/results/vgg19_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vgg19_9899f_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/results/vgg19_9899f_s1.data > experiments/results/vgg19_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vgg19_9899f_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/results/vgg19_9899f_s27.data > experiments/results/vgg19_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vgg19_9899f_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/results/vgg19_9899f_s42.data > experiments/results/vgg19_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vgg19_9899f_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/results/vgg19_9899f_s137.data > experiments/results/vgg19_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vgg19_f9059_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/results/vgg19_f9059_s0.data > experiments/results/vgg19_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vgg19_f9059_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/results/vgg19_f9059_s1.data > experiments/results/vgg19_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vgg19_f9059_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/results/vgg19_f9059_s27.data > experiments/results/vgg19_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vgg19_f9059_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/results/vgg19_f9059_s42.data > experiments/results/vgg19_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vgg19_f9059_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/results/vgg19_f9059_s137.data > experiments/results/vgg19_f9059_s137.txt
rm experiments/results/*.data
gdrive files upload experiments/results/ --recursive
rm -r experiments/results/
mkdir experiments/results/
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vitb32_31a80_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/results/vitb32_31a80_s0.data > experiments/results/vitb32_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vitb32_31a80_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/results/vitb32_31a80_s1.data > experiments/results/vitb32_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vitb32_31a80_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/results/vitb32_31a80_s27.data > experiments/results/vitb32_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vitb32_31a80_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/results/vitb32_31a80_s42.data > experiments/results/vitb32_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vitb32_31a80_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/results/vitb32_31a80_s137.data > experiments/results/vitb32_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vitb32_00b76_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/results/vitb32_00b76_s0.data > experiments/results/vitb32_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vitb32_00b76_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/results/vitb32_00b76_s1.data > experiments/results/vitb32_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vitb32_00b76_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/results/vitb32_00b76_s27.data > experiments/results/vitb32_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vitb32_00b76_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/results/vitb32_00b76_s42.data > experiments/results/vitb32_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vitb32_00b76_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/results/vitb32_00b76_s137.data > experiments/results/vitb32_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vitb32_4bba3_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/results/vitb32_4bba3_s0.data > experiments/results/vitb32_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vitb32_4bba3_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/results/vitb32_4bba3_s1.data > experiments/results/vitb32_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vitb32_4bba3_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/results/vitb32_4bba3_s27.data > experiments/results/vitb32_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vitb32_4bba3_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/results/vitb32_4bba3_s42.data > experiments/results/vitb32_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vitb32_4bba3_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/results/vitb32_4bba3_s137.data > experiments/results/vitb32_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vitb32_73780_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/results/vitb32_73780_s0.data > experiments/results/vitb32_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vitb32_73780_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/results/vitb32_73780_s1.data > experiments/results/vitb32_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vitb32_73780_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/results/vitb32_73780_s27.data > experiments/results/vitb32_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vitb32_73780_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/results/vitb32_73780_s42.data > experiments/results/vitb32_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vitb32_73780_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/results/vitb32_73780_s137.data > experiments/results/vitb32_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vitb32_a1a60_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/results/vitb32_a1a60_s0.data > experiments/results/vitb32_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vitb32_a1a60_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/results/vitb32_a1a60_s1.data > experiments/results/vitb32_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vitb32_a1a60_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/results/vitb32_a1a60_s27.data > experiments/results/vitb32_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vitb32_a1a60_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/results/vitb32_a1a60_s42.data > experiments/results/vitb32_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vitb32_a1a60_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/results/vitb32_a1a60_s137.data > experiments/results/vitb32_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vitb32_2ee02_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/results/vitb32_2ee02_s0.data > experiments/results/vitb32_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vitb32_2ee02_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/results/vitb32_2ee02_s1.data > experiments/results/vitb32_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vitb32_2ee02_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/results/vitb32_2ee02_s27.data > experiments/results/vitb32_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vitb32_2ee02_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/results/vitb32_2ee02_s42.data > experiments/results/vitb32_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vitb32_2ee02_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/results/vitb32_2ee02_s137.data > experiments/results/vitb32_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vitb32_b54c7_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/results/vitb32_b54c7_s0.data > experiments/results/vitb32_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vitb32_b54c7_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/results/vitb32_b54c7_s1.data > experiments/results/vitb32_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vitb32_b54c7_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/results/vitb32_b54c7_s27.data > experiments/results/vitb32_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vitb32_b54c7_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/results/vitb32_b54c7_s42.data > experiments/results/vitb32_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vitb32_b54c7_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/results/vitb32_b54c7_s137.data > experiments/results/vitb32_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vitb32_0a0cc_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/results/vitb32_0a0cc_s0.data > experiments/results/vitb32_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vitb32_0a0cc_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/results/vitb32_0a0cc_s1.data > experiments/results/vitb32_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vitb32_0a0cc_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/results/vitb32_0a0cc_s27.data > experiments/results/vitb32_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vitb32_0a0cc_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/results/vitb32_0a0cc_s42.data > experiments/results/vitb32_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vitb32_0a0cc_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/results/vitb32_0a0cc_s137.data > experiments/results/vitb32_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vitb32_58f4c_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/results/vitb32_58f4c_s0.data > experiments/results/vitb32_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vitb32_58f4c_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/results/vitb32_58f4c_s1.data > experiments/results/vitb32_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vitb32_58f4c_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/results/vitb32_58f4c_s27.data > experiments/results/vitb32_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vitb32_58f4c_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/results/vitb32_58f4c_s42.data > experiments/results/vitb32_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vitb32_58f4c_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/results/vitb32_58f4c_s137.data > experiments/results/vitb32_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vitb32_ff571_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/results/vitb32_ff571_s0.data > experiments/results/vitb32_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vitb32_ff571_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/results/vitb32_ff571_s1.data > experiments/results/vitb32_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vitb32_ff571_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/results/vitb32_ff571_s27.data > experiments/results/vitb32_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vitb32_ff571_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/results/vitb32_ff571_s42.data > experiments/results/vitb32_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vitb32_ff571_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/results/vitb32_ff571_s137.data > experiments/results/vitb32_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vitb32_c346c_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/results/vitb32_c346c_s0.data > experiments/results/vitb32_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vitb32_c346c_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/results/vitb32_c346c_s1.data > experiments/results/vitb32_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vitb32_c346c_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/results/vitb32_c346c_s27.data > experiments/results/vitb32_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vitb32_c346c_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/results/vitb32_c346c_s42.data > experiments/results/vitb32_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vitb32_c346c_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/results/vitb32_c346c_s137.data > experiments/results/vitb32_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vitb32_3ce60_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/results/vitb32_3ce60_s0.data > experiments/results/vitb32_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vitb32_3ce60_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/results/vitb32_3ce60_s1.data > experiments/results/vitb32_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vitb32_3ce60_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/results/vitb32_3ce60_s27.data > experiments/results/vitb32_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vitb32_3ce60_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/results/vitb32_3ce60_s42.data > experiments/results/vitb32_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vitb32_3ce60_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/results/vitb32_3ce60_s137.data > experiments/results/vitb32_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vitb32_f1dee_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/results/vitb32_f1dee_s0.data > experiments/results/vitb32_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vitb32_f1dee_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/results/vitb32_f1dee_s1.data > experiments/results/vitb32_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vitb32_f1dee_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/results/vitb32_f1dee_s27.data > experiments/results/vitb32_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vitb32_f1dee_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/results/vitb32_f1dee_s42.data > experiments/results/vitb32_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vitb32_f1dee_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/results/vitb32_f1dee_s137.data > experiments/results/vitb32_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vitb32_9899f_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/results/vitb32_9899f_s0.data > experiments/results/vitb32_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vitb32_9899f_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/results/vitb32_9899f_s1.data > experiments/results/vitb32_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vitb32_9899f_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/results/vitb32_9899f_s27.data > experiments/results/vitb32_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vitb32_9899f_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/results/vitb32_9899f_s42.data > experiments/results/vitb32_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vitb32_9899f_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/results/vitb32_9899f_s137.data > experiments/results/vitb32_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vitb32_f9059_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/results/vitb32_f9059_s0.data > experiments/results/vitb32_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vitb32_f9059_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/results/vitb32_f9059_s1.data > experiments/results/vitb32_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vitb32_f9059_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/results/vitb32_f9059_s27.data > experiments/results/vitb32_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vitb32_f9059_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/results/vitb32_f9059_s42.data > experiments/results/vitb32_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vitb32_f9059_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/results/vitb32_f9059_s137.data > experiments/results/vitb32_f9059_s137.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vitl16_31a80_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/results/vitl16_31a80_s0.data > experiments/results/vitl16_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vitl16_31a80_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/results/vitl16_31a80_s1.data > experiments/results/vitl16_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vitl16_31a80_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/results/vitl16_31a80_s27.data > experiments/results/vitl16_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vitl16_31a80_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/results/vitl16_31a80_s42.data > experiments/results/vitl16_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vitl16_31a80_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/results/vitl16_31a80_s137.data > experiments/results/vitl16_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vitl16_00b76_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/results/vitl16_00b76_s0.data > experiments/results/vitl16_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vitl16_00b76_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/results/vitl16_00b76_s1.data > experiments/results/vitl16_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vitl16_00b76_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/results/vitl16_00b76_s27.data > experiments/results/vitl16_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vitl16_00b76_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/results/vitl16_00b76_s42.data > experiments/results/vitl16_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vitl16_00b76_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/results/vitl16_00b76_s137.data > experiments/results/vitl16_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vitl16_4bba3_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/results/vitl16_4bba3_s0.data > experiments/results/vitl16_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vitl16_4bba3_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/results/vitl16_4bba3_s1.data > experiments/results/vitl16_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vitl16_4bba3_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/results/vitl16_4bba3_s27.data > experiments/results/vitl16_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vitl16_4bba3_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/results/vitl16_4bba3_s42.data > experiments/results/vitl16_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vitl16_4bba3_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/results/vitl16_4bba3_s137.data > experiments/results/vitl16_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vitl16_73780_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/results/vitl16_73780_s0.data > experiments/results/vitl16_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vitl16_73780_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/results/vitl16_73780_s1.data > experiments/results/vitl16_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vitl16_73780_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/results/vitl16_73780_s27.data > experiments/results/vitl16_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vitl16_73780_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/results/vitl16_73780_s42.data > experiments/results/vitl16_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vitl16_73780_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/results/vitl16_73780_s137.data > experiments/results/vitl16_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vitl16_a1a60_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/results/vitl16_a1a60_s0.data > experiments/results/vitl16_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vitl16_a1a60_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/results/vitl16_a1a60_s1.data > experiments/results/vitl16_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vitl16_a1a60_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/results/vitl16_a1a60_s27.data > experiments/results/vitl16_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vitl16_a1a60_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/results/vitl16_a1a60_s42.data > experiments/results/vitl16_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vitl16_a1a60_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/results/vitl16_a1a60_s137.data > experiments/results/vitl16_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vitl16_2ee02_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/results/vitl16_2ee02_s0.data > experiments/results/vitl16_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vitl16_2ee02_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/results/vitl16_2ee02_s1.data > experiments/results/vitl16_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vitl16_2ee02_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/results/vitl16_2ee02_s27.data > experiments/results/vitl16_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vitl16_2ee02_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/results/vitl16_2ee02_s42.data > experiments/results/vitl16_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vitl16_2ee02_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/results/vitl16_2ee02_s137.data > experiments/results/vitl16_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vitl16_b54c7_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/results/vitl16_b54c7_s0.data > experiments/results/vitl16_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vitl16_b54c7_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/results/vitl16_b54c7_s1.data > experiments/results/vitl16_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vitl16_b54c7_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/results/vitl16_b54c7_s27.data > experiments/results/vitl16_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vitl16_b54c7_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/results/vitl16_b54c7_s42.data > experiments/results/vitl16_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vitl16_b54c7_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/results/vitl16_b54c7_s137.data > experiments/results/vitl16_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vitl16_0a0cc_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/results/vitl16_0a0cc_s0.data > experiments/results/vitl16_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vitl16_0a0cc_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/results/vitl16_0a0cc_s1.data > experiments/results/vitl16_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vitl16_0a0cc_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/results/vitl16_0a0cc_s27.data > experiments/results/vitl16_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vitl16_0a0cc_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/results/vitl16_0a0cc_s42.data > experiments/results/vitl16_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vitl16_0a0cc_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/results/vitl16_0a0cc_s137.data > experiments/results/vitl16_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vitl16_58f4c_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/results/vitl16_58f4c_s0.data > experiments/results/vitl16_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vitl16_58f4c_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/results/vitl16_58f4c_s1.data > experiments/results/vitl16_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vitl16_58f4c_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/results/vitl16_58f4c_s27.data > experiments/results/vitl16_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vitl16_58f4c_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/results/vitl16_58f4c_s42.data > experiments/results/vitl16_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vitl16_58f4c_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/results/vitl16_58f4c_s137.data > experiments/results/vitl16_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vitl16_ff571_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/results/vitl16_ff571_s0.data > experiments/results/vitl16_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vitl16_ff571_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/results/vitl16_ff571_s1.data > experiments/results/vitl16_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vitl16_ff571_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/results/vitl16_ff571_s27.data > experiments/results/vitl16_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vitl16_ff571_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/results/vitl16_ff571_s42.data > experiments/results/vitl16_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vitl16_ff571_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/results/vitl16_ff571_s137.data > experiments/results/vitl16_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vitl16_c346c_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/results/vitl16_c346c_s0.data > experiments/results/vitl16_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vitl16_c346c_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/results/vitl16_c346c_s1.data > experiments/results/vitl16_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vitl16_c346c_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/results/vitl16_c346c_s27.data > experiments/results/vitl16_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vitl16_c346c_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/results/vitl16_c346c_s42.data > experiments/results/vitl16_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vitl16_c346c_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/results/vitl16_c346c_s137.data > experiments/results/vitl16_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vitl16_3ce60_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/results/vitl16_3ce60_s0.data > experiments/results/vitl16_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vitl16_3ce60_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/results/vitl16_3ce60_s1.data > experiments/results/vitl16_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vitl16_3ce60_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/results/vitl16_3ce60_s27.data > experiments/results/vitl16_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vitl16_3ce60_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/results/vitl16_3ce60_s42.data > experiments/results/vitl16_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vitl16_3ce60_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/results/vitl16_3ce60_s137.data > experiments/results/vitl16_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vitl16_f1dee_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/results/vitl16_f1dee_s0.data > experiments/results/vitl16_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vitl16_f1dee_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/results/vitl16_f1dee_s1.data > experiments/results/vitl16_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vitl16_f1dee_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/results/vitl16_f1dee_s27.data > experiments/results/vitl16_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vitl16_f1dee_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/results/vitl16_f1dee_s42.data > experiments/results/vitl16_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vitl16_f1dee_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/results/vitl16_f1dee_s137.data > experiments/results/vitl16_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vitl16_9899f_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/results/vitl16_9899f_s0.data > experiments/results/vitl16_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vitl16_9899f_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/results/vitl16_9899f_s1.data > experiments/results/vitl16_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vitl16_9899f_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/results/vitl16_9899f_s27.data > experiments/results/vitl16_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vitl16_9899f_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/results/vitl16_9899f_s42.data > experiments/results/vitl16_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vitl16_9899f_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/results/vitl16_9899f_s137.data > experiments/results/vitl16_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vitl16_f9059_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/results/vitl16_f9059_s0.data > experiments/results/vitl16_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vitl16_f9059_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/results/vitl16_f9059_s1.data > experiments/results/vitl16_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vitl16_f9059_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/results/vitl16_f9059_s27.data > experiments/results/vitl16_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vitl16_f9059_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/results/vitl16_f9059_s42.data > experiments/results/vitl16_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vitl16_f9059_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/results/vitl16_f9059_s137.data > experiments/results/vitl16_f9059_s137.txt
rm experiments/results/*.data
gdrive files upload experiments/results/ --recursive
rm -r experiments/results/
mkdir experiments/results/
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vitl32_31a80_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/results/vitl32_31a80_s0.data > experiments/results/vitl32_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vitl32_31a80_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/results/vitl32_31a80_s1.data > experiments/results/vitl32_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vitl32_31a80_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/results/vitl32_31a80_s27.data > experiments/results/vitl32_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vitl32_31a80_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/results/vitl32_31a80_s42.data > experiments/results/vitl32_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vitl32_31a80_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/results/vitl32_31a80_s137.data > experiments/results/vitl32_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vitl32_00b76_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/results/vitl32_00b76_s0.data > experiments/results/vitl32_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vitl32_00b76_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/results/vitl32_00b76_s1.data > experiments/results/vitl32_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vitl32_00b76_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/results/vitl32_00b76_s27.data > experiments/results/vitl32_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vitl32_00b76_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/results/vitl32_00b76_s42.data > experiments/results/vitl32_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vitl32_00b76_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/results/vitl32_00b76_s137.data > experiments/results/vitl32_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vitl32_4bba3_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/results/vitl32_4bba3_s0.data > experiments/results/vitl32_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vitl32_4bba3_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/results/vitl32_4bba3_s1.data > experiments/results/vitl32_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vitl32_4bba3_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/results/vitl32_4bba3_s27.data > experiments/results/vitl32_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vitl32_4bba3_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/results/vitl32_4bba3_s42.data > experiments/results/vitl32_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vitl32_4bba3_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/results/vitl32_4bba3_s137.data > experiments/results/vitl32_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vitl32_73780_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/results/vitl32_73780_s0.data > experiments/results/vitl32_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vitl32_73780_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/results/vitl32_73780_s1.data > experiments/results/vitl32_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vitl32_73780_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/results/vitl32_73780_s27.data > experiments/results/vitl32_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vitl32_73780_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/results/vitl32_73780_s42.data > experiments/results/vitl32_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vitl32_73780_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/results/vitl32_73780_s137.data > experiments/results/vitl32_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vitl32_a1a60_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/results/vitl32_a1a60_s0.data > experiments/results/vitl32_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vitl32_a1a60_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/results/vitl32_a1a60_s1.data > experiments/results/vitl32_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vitl32_a1a60_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/results/vitl32_a1a60_s27.data > experiments/results/vitl32_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vitl32_a1a60_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/results/vitl32_a1a60_s42.data > experiments/results/vitl32_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vitl32_a1a60_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/results/vitl32_a1a60_s137.data > experiments/results/vitl32_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vitl32_2ee02_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/results/vitl32_2ee02_s0.data > experiments/results/vitl32_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vitl32_2ee02_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/results/vitl32_2ee02_s1.data > experiments/results/vitl32_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vitl32_2ee02_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/results/vitl32_2ee02_s27.data > experiments/results/vitl32_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vitl32_2ee02_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/results/vitl32_2ee02_s42.data > experiments/results/vitl32_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vitl32_2ee02_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/results/vitl32_2ee02_s137.data > experiments/results/vitl32_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vitl32_b54c7_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/results/vitl32_b54c7_s0.data > experiments/results/vitl32_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vitl32_b54c7_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/results/vitl32_b54c7_s1.data > experiments/results/vitl32_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vitl32_b54c7_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/results/vitl32_b54c7_s27.data > experiments/results/vitl32_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vitl32_b54c7_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/results/vitl32_b54c7_s42.data > experiments/results/vitl32_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vitl32_b54c7_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/results/vitl32_b54c7_s137.data > experiments/results/vitl32_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vitl32_0a0cc_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/results/vitl32_0a0cc_s0.data > experiments/results/vitl32_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vitl32_0a0cc_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/results/vitl32_0a0cc_s1.data > experiments/results/vitl32_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vitl32_0a0cc_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/results/vitl32_0a0cc_s27.data > experiments/results/vitl32_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vitl32_0a0cc_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/results/vitl32_0a0cc_s42.data > experiments/results/vitl32_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vitl32_0a0cc_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/results/vitl32_0a0cc_s137.data > experiments/results/vitl32_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vitl32_58f4c_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/results/vitl32_58f4c_s0.data > experiments/results/vitl32_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vitl32_58f4c_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/results/vitl32_58f4c_s1.data > experiments/results/vitl32_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vitl32_58f4c_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/results/vitl32_58f4c_s27.data > experiments/results/vitl32_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vitl32_58f4c_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/results/vitl32_58f4c_s42.data > experiments/results/vitl32_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vitl32_58f4c_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/results/vitl32_58f4c_s137.data > experiments/results/vitl32_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vitl32_ff571_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/results/vitl32_ff571_s0.data > experiments/results/vitl32_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vitl32_ff571_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/results/vitl32_ff571_s1.data > experiments/results/vitl32_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vitl32_ff571_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/results/vitl32_ff571_s27.data > experiments/results/vitl32_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vitl32_ff571_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/results/vitl32_ff571_s42.data > experiments/results/vitl32_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vitl32_ff571_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/results/vitl32_ff571_s137.data > experiments/results/vitl32_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vitl32_c346c_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/results/vitl32_c346c_s0.data > experiments/results/vitl32_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vitl32_c346c_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/results/vitl32_c346c_s1.data > experiments/results/vitl32_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vitl32_c346c_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/results/vitl32_c346c_s27.data > experiments/results/vitl32_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vitl32_c346c_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/results/vitl32_c346c_s42.data > experiments/results/vitl32_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vitl32_c346c_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/results/vitl32_c346c_s137.data > experiments/results/vitl32_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vitl32_3ce60_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/results/vitl32_3ce60_s0.data > experiments/results/vitl32_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vitl32_3ce60_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/results/vitl32_3ce60_s1.data > experiments/results/vitl32_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vitl32_3ce60_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/results/vitl32_3ce60_s27.data > experiments/results/vitl32_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vitl32_3ce60_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/results/vitl32_3ce60_s42.data > experiments/results/vitl32_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vitl32_3ce60_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/results/vitl32_3ce60_s137.data > experiments/results/vitl32_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vitl32_f1dee_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/results/vitl32_f1dee_s0.data > experiments/results/vitl32_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vitl32_f1dee_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/results/vitl32_f1dee_s1.data > experiments/results/vitl32_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vitl32_f1dee_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/results/vitl32_f1dee_s27.data > experiments/results/vitl32_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vitl32_f1dee_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/results/vitl32_f1dee_s42.data > experiments/results/vitl32_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vitl32_f1dee_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/results/vitl32_f1dee_s137.data > experiments/results/vitl32_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vitl32_9899f_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/results/vitl32_9899f_s0.data > experiments/results/vitl32_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vitl32_9899f_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/results/vitl32_9899f_s1.data > experiments/results/vitl32_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vitl32_9899f_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/results/vitl32_9899f_s27.data > experiments/results/vitl32_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vitl32_9899f_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/results/vitl32_9899f_s42.data > experiments/results/vitl32_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vitl32_9899f_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/results/vitl32_9899f_s137.data > experiments/results/vitl32_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vitl32_f9059_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/results/vitl32_f9059_s0.data > experiments/results/vitl32_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vitl32_f9059_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/results/vitl32_f9059_s1.data > experiments/results/vitl32_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vitl32_f9059_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/results/vitl32_f9059_s27.data > experiments/results/vitl32_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vitl32_f9059_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/results/vitl32_f9059_s42.data > experiments/results/vitl32_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vitl32_f9059_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/results/vitl32_f9059_s137.data > experiments/results/vitl32_f9059_s137.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vith14_31a80_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/results/vith14_31a80_s0.data > experiments/results/vith14_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vith14_31a80_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/results/vith14_31a80_s1.data > experiments/results/vith14_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vith14_31a80_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/results/vith14_31a80_s27.data > experiments/results/vith14_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vith14_31a80_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/results/vith14_31a80_s42.data > experiments/results/vith14_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/results/vith14_31a80_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/results/vith14_31a80_s137.data > experiments/results/vith14_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vith14_00b76_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/results/vith14_00b76_s0.data > experiments/results/vith14_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vith14_00b76_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/results/vith14_00b76_s1.data > experiments/results/vith14_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vith14_00b76_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/results/vith14_00b76_s27.data > experiments/results/vith14_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vith14_00b76_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/results/vith14_00b76_s42.data > experiments/results/vith14_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/results/vith14_00b76_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/results/vith14_00b76_s137.data > experiments/results/vith14_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vith14_4bba3_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/results/vith14_4bba3_s0.data > experiments/results/vith14_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vith14_4bba3_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/results/vith14_4bba3_s1.data > experiments/results/vith14_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vith14_4bba3_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/results/vith14_4bba3_s27.data > experiments/results/vith14_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vith14_4bba3_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/results/vith14_4bba3_s42.data > experiments/results/vith14_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/results/vith14_4bba3_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/results/vith14_4bba3_s137.data > experiments/results/vith14_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vith14_73780_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/results/vith14_73780_s0.data > experiments/results/vith14_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vith14_73780_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/results/vith14_73780_s1.data > experiments/results/vith14_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vith14_73780_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/results/vith14_73780_s27.data > experiments/results/vith14_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vith14_73780_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/results/vith14_73780_s42.data > experiments/results/vith14_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/results/vith14_73780_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/results/vith14_73780_s137.data > experiments/results/vith14_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vith14_a1a60_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/results/vith14_a1a60_s0.data > experiments/results/vith14_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vith14_a1a60_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/results/vith14_a1a60_s1.data > experiments/results/vith14_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vith14_a1a60_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/results/vith14_a1a60_s27.data > experiments/results/vith14_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vith14_a1a60_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/results/vith14_a1a60_s42.data > experiments/results/vith14_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/results/vith14_a1a60_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/results/vith14_a1a60_s137.data > experiments/results/vith14_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vith14_2ee02_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/results/vith14_2ee02_s0.data > experiments/results/vith14_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vith14_2ee02_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/results/vith14_2ee02_s1.data > experiments/results/vith14_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vith14_2ee02_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/results/vith14_2ee02_s27.data > experiments/results/vith14_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vith14_2ee02_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/results/vith14_2ee02_s42.data > experiments/results/vith14_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/results/vith14_2ee02_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/results/vith14_2ee02_s137.data > experiments/results/vith14_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vith14_b54c7_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/results/vith14_b54c7_s0.data > experiments/results/vith14_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vith14_b54c7_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/results/vith14_b54c7_s1.data > experiments/results/vith14_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vith14_b54c7_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/results/vith14_b54c7_s27.data > experiments/results/vith14_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vith14_b54c7_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/results/vith14_b54c7_s42.data > experiments/results/vith14_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/results/vith14_b54c7_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/results/vith14_b54c7_s137.data > experiments/results/vith14_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vith14_0a0cc_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/results/vith14_0a0cc_s0.data > experiments/results/vith14_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vith14_0a0cc_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/results/vith14_0a0cc_s1.data > experiments/results/vith14_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vith14_0a0cc_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/results/vith14_0a0cc_s27.data > experiments/results/vith14_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vith14_0a0cc_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/results/vith14_0a0cc_s42.data > experiments/results/vith14_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/results/vith14_0a0cc_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/results/vith14_0a0cc_s137.data > experiments/results/vith14_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vith14_58f4c_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/results/vith14_58f4c_s0.data > experiments/results/vith14_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vith14_58f4c_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/results/vith14_58f4c_s1.data > experiments/results/vith14_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vith14_58f4c_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/results/vith14_58f4c_s27.data > experiments/results/vith14_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vith14_58f4c_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/results/vith14_58f4c_s42.data > experiments/results/vith14_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/results/vith14_58f4c_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/results/vith14_58f4c_s137.data > experiments/results/vith14_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vith14_ff571_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/results/vith14_ff571_s0.data > experiments/results/vith14_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vith14_ff571_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/results/vith14_ff571_s1.data > experiments/results/vith14_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vith14_ff571_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/results/vith14_ff571_s27.data > experiments/results/vith14_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vith14_ff571_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/results/vith14_ff571_s42.data > experiments/results/vith14_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/results/vith14_ff571_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/results/vith14_ff571_s137.data > experiments/results/vith14_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vith14_c346c_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/results/vith14_c346c_s0.data > experiments/results/vith14_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vith14_c346c_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/results/vith14_c346c_s1.data > experiments/results/vith14_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vith14_c346c_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/results/vith14_c346c_s27.data > experiments/results/vith14_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vith14_c346c_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/results/vith14_c346c_s42.data > experiments/results/vith14_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/results/vith14_c346c_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/results/vith14_c346c_s137.data > experiments/results/vith14_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vith14_3ce60_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/results/vith14_3ce60_s0.data > experiments/results/vith14_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vith14_3ce60_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/results/vith14_3ce60_s1.data > experiments/results/vith14_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vith14_3ce60_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/results/vith14_3ce60_s27.data > experiments/results/vith14_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vith14_3ce60_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/results/vith14_3ce60_s42.data > experiments/results/vith14_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/results/vith14_3ce60_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/results/vith14_3ce60_s137.data > experiments/results/vith14_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vith14_f1dee_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/results/vith14_f1dee_s0.data > experiments/results/vith14_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vith14_f1dee_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/results/vith14_f1dee_s1.data > experiments/results/vith14_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vith14_f1dee_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/results/vith14_f1dee_s27.data > experiments/results/vith14_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vith14_f1dee_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/results/vith14_f1dee_s42.data > experiments/results/vith14_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/results/vith14_f1dee_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/results/vith14_f1dee_s137.data > experiments/results/vith14_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vith14_9899f_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/results/vith14_9899f_s0.data > experiments/results/vith14_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vith14_9899f_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/results/vith14_9899f_s1.data > experiments/results/vith14_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vith14_9899f_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/results/vith14_9899f_s27.data > experiments/results/vith14_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vith14_9899f_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/results/vith14_9899f_s42.data > experiments/results/vith14_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/results/vith14_9899f_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/results/vith14_9899f_s137.data > experiments/results/vith14_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vith14_f9059_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/results/vith14_f9059_s0.data > experiments/results/vith14_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vith14_f9059_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/results/vith14_f9059_s1.data > experiments/results/vith14_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vith14_f9059_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/results/vith14_f9059_s27.data > experiments/results/vith14_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vith14_f9059_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/results/vith14_f9059_s42.data > experiments/results/vith14_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/results/vith14_f9059_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/results/vith14_f9059_s137.data > experiments/results/vith14_f9059_s137.txt
rm experiments/results/*.data
gdrive files upload experiments/results/ --recursive
rm -r experiments/results/
