#!/bin/bash
echo '4%ftKJ6*' | kinit kl559@DC.CL.CAM.AC.UK
mkdir experiments/ext/
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/mobilenet_31a80_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/ext/mobilenet_31a80_s0.data > experiments/ext/mobilenet_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/mobilenet_31a80_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/ext/mobilenet_31a80_s1.data > experiments/ext/mobilenet_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/mobilenet_31a80_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/ext/mobilenet_31a80_s27.data > experiments/ext/mobilenet_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/mobilenet_31a80_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/ext/mobilenet_31a80_s42.data > experiments/ext/mobilenet_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/mobilenet_31a80_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/ext/mobilenet_31a80_s137.data > experiments/ext/mobilenet_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/mobilenet_00b76_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/ext/mobilenet_00b76_s0.data > experiments/ext/mobilenet_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/mobilenet_00b76_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/ext/mobilenet_00b76_s1.data > experiments/ext/mobilenet_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/mobilenet_00b76_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/ext/mobilenet_00b76_s27.data > experiments/ext/mobilenet_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/mobilenet_00b76_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/ext/mobilenet_00b76_s42.data > experiments/ext/mobilenet_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/mobilenet_00b76_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/ext/mobilenet_00b76_s137.data > experiments/ext/mobilenet_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/mobilenet_4bba3_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/ext/mobilenet_4bba3_s0.data > experiments/ext/mobilenet_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/mobilenet_4bba3_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/ext/mobilenet_4bba3_s1.data > experiments/ext/mobilenet_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/mobilenet_4bba3_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/ext/mobilenet_4bba3_s27.data > experiments/ext/mobilenet_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/mobilenet_4bba3_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/ext/mobilenet_4bba3_s42.data > experiments/ext/mobilenet_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/mobilenet_4bba3_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/ext/mobilenet_4bba3_s137.data > experiments/ext/mobilenet_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/mobilenet_73780_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/ext/mobilenet_73780_s0.data > experiments/ext/mobilenet_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/mobilenet_73780_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/ext/mobilenet_73780_s1.data > experiments/ext/mobilenet_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/mobilenet_73780_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/ext/mobilenet_73780_s27.data > experiments/ext/mobilenet_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/mobilenet_73780_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/ext/mobilenet_73780_s42.data > experiments/ext/mobilenet_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/mobilenet_73780_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/ext/mobilenet_73780_s137.data > experiments/ext/mobilenet_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/mobilenet_a1a60_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/ext/mobilenet_a1a60_s0.data > experiments/ext/mobilenet_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/mobilenet_a1a60_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/ext/mobilenet_a1a60_s1.data > experiments/ext/mobilenet_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/mobilenet_a1a60_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/ext/mobilenet_a1a60_s27.data > experiments/ext/mobilenet_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/mobilenet_a1a60_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/ext/mobilenet_a1a60_s42.data > experiments/ext/mobilenet_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/mobilenet_a1a60_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/ext/mobilenet_a1a60_s137.data > experiments/ext/mobilenet_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/mobilenet_2ee02_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/ext/mobilenet_2ee02_s0.data > experiments/ext/mobilenet_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/mobilenet_2ee02_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/ext/mobilenet_2ee02_s1.data > experiments/ext/mobilenet_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/mobilenet_2ee02_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/ext/mobilenet_2ee02_s27.data > experiments/ext/mobilenet_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/mobilenet_2ee02_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/ext/mobilenet_2ee02_s42.data > experiments/ext/mobilenet_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/mobilenet_2ee02_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/ext/mobilenet_2ee02_s137.data > experiments/ext/mobilenet_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/mobilenet_b54c7_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/ext/mobilenet_b54c7_s0.data > experiments/ext/mobilenet_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/mobilenet_b54c7_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/ext/mobilenet_b54c7_s1.data > experiments/ext/mobilenet_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/mobilenet_b54c7_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/ext/mobilenet_b54c7_s27.data > experiments/ext/mobilenet_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/mobilenet_b54c7_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/ext/mobilenet_b54c7_s42.data > experiments/ext/mobilenet_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/mobilenet_b54c7_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/ext/mobilenet_b54c7_s137.data > experiments/ext/mobilenet_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/mobilenet_0a0cc_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/ext/mobilenet_0a0cc_s0.data > experiments/ext/mobilenet_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/mobilenet_0a0cc_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/ext/mobilenet_0a0cc_s1.data > experiments/ext/mobilenet_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/mobilenet_0a0cc_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/ext/mobilenet_0a0cc_s27.data > experiments/ext/mobilenet_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/mobilenet_0a0cc_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/ext/mobilenet_0a0cc_s42.data > experiments/ext/mobilenet_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/mobilenet_0a0cc_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/ext/mobilenet_0a0cc_s137.data > experiments/ext/mobilenet_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/mobilenet_58f4c_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/ext/mobilenet_58f4c_s0.data > experiments/ext/mobilenet_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/mobilenet_58f4c_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/ext/mobilenet_58f4c_s1.data > experiments/ext/mobilenet_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/mobilenet_58f4c_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/ext/mobilenet_58f4c_s27.data > experiments/ext/mobilenet_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/mobilenet_58f4c_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/ext/mobilenet_58f4c_s42.data > experiments/ext/mobilenet_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/mobilenet_58f4c_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/ext/mobilenet_58f4c_s137.data > experiments/ext/mobilenet_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/mobilenet_ff571_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/ext/mobilenet_ff571_s0.data > experiments/ext/mobilenet_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/mobilenet_ff571_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/ext/mobilenet_ff571_s1.data > experiments/ext/mobilenet_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/mobilenet_ff571_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/ext/mobilenet_ff571_s27.data > experiments/ext/mobilenet_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/mobilenet_ff571_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/ext/mobilenet_ff571_s42.data > experiments/ext/mobilenet_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/mobilenet_ff571_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/ext/mobilenet_ff571_s137.data > experiments/ext/mobilenet_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/mobilenet_c346c_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/ext/mobilenet_c346c_s0.data > experiments/ext/mobilenet_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/mobilenet_c346c_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/ext/mobilenet_c346c_s1.data > experiments/ext/mobilenet_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/mobilenet_c346c_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/ext/mobilenet_c346c_s27.data > experiments/ext/mobilenet_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/mobilenet_c346c_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/ext/mobilenet_c346c_s42.data > experiments/ext/mobilenet_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/mobilenet_c346c_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/ext/mobilenet_c346c_s137.data > experiments/ext/mobilenet_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/mobilenet_3ce60_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/ext/mobilenet_3ce60_s0.data > experiments/ext/mobilenet_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/mobilenet_3ce60_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/ext/mobilenet_3ce60_s1.data > experiments/ext/mobilenet_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/mobilenet_3ce60_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/ext/mobilenet_3ce60_s27.data > experiments/ext/mobilenet_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/mobilenet_3ce60_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/ext/mobilenet_3ce60_s42.data > experiments/ext/mobilenet_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/mobilenet_3ce60_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/ext/mobilenet_3ce60_s137.data > experiments/ext/mobilenet_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/mobilenet_f1dee_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/ext/mobilenet_f1dee_s0.data > experiments/ext/mobilenet_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/mobilenet_f1dee_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/ext/mobilenet_f1dee_s1.data > experiments/ext/mobilenet_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/mobilenet_f1dee_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/ext/mobilenet_f1dee_s27.data > experiments/ext/mobilenet_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/mobilenet_f1dee_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/ext/mobilenet_f1dee_s42.data > experiments/ext/mobilenet_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/mobilenet_f1dee_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/ext/mobilenet_f1dee_s137.data > experiments/ext/mobilenet_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/mobilenet_9899f_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/ext/mobilenet_9899f_s0.data > experiments/ext/mobilenet_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/mobilenet_9899f_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/ext/mobilenet_9899f_s1.data > experiments/ext/mobilenet_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/mobilenet_9899f_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/ext/mobilenet_9899f_s27.data > experiments/ext/mobilenet_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/mobilenet_9899f_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/ext/mobilenet_9899f_s42.data > experiments/ext/mobilenet_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/mobilenet_9899f_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/ext/mobilenet_9899f_s137.data > experiments/ext/mobilenet_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/mobilenet_f9059_s0.data -T python src/run.py --model mobilenet --seed 0
perf script -i experiments/ext/mobilenet_f9059_s0.data > experiments/ext/mobilenet_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/mobilenet_f9059_s1.data -T python src/run.py --model mobilenet --seed 1
perf script -i experiments/ext/mobilenet_f9059_s1.data > experiments/ext/mobilenet_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/mobilenet_f9059_s27.data -T python src/run.py --model mobilenet --seed 27
perf script -i experiments/ext/mobilenet_f9059_s27.data > experiments/ext/mobilenet_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/mobilenet_f9059_s42.data -T python src/run.py --model mobilenet --seed 42
perf script -i experiments/ext/mobilenet_f9059_s42.data > experiments/ext/mobilenet_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/mobilenet_f9059_s137.data -T python src/run.py --model mobilenet --seed 137
perf script -i experiments/ext/mobilenet_f9059_s137.data > experiments/ext/mobilenet_f9059_s137.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/swint_31a80_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/ext/swint_31a80_s0.data > experiments/ext/swint_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/swint_31a80_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/ext/swint_31a80_s1.data > experiments/ext/swint_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/swint_31a80_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/ext/swint_31a80_s27.data > experiments/ext/swint_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/swint_31a80_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/ext/swint_31a80_s42.data > experiments/ext/swint_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/swint_31a80_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/ext/swint_31a80_s137.data > experiments/ext/swint_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/swint_00b76_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/ext/swint_00b76_s0.data > experiments/ext/swint_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/swint_00b76_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/ext/swint_00b76_s1.data > experiments/ext/swint_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/swint_00b76_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/ext/swint_00b76_s27.data > experiments/ext/swint_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/swint_00b76_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/ext/swint_00b76_s42.data > experiments/ext/swint_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/swint_00b76_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/ext/swint_00b76_s137.data > experiments/ext/swint_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/swint_4bba3_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/ext/swint_4bba3_s0.data > experiments/ext/swint_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/swint_4bba3_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/ext/swint_4bba3_s1.data > experiments/ext/swint_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/swint_4bba3_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/ext/swint_4bba3_s27.data > experiments/ext/swint_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/swint_4bba3_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/ext/swint_4bba3_s42.data > experiments/ext/swint_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/swint_4bba3_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/ext/swint_4bba3_s137.data > experiments/ext/swint_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/swint_73780_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/ext/swint_73780_s0.data > experiments/ext/swint_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/swint_73780_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/ext/swint_73780_s1.data > experiments/ext/swint_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/swint_73780_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/ext/swint_73780_s27.data > experiments/ext/swint_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/swint_73780_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/ext/swint_73780_s42.data > experiments/ext/swint_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/swint_73780_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/ext/swint_73780_s137.data > experiments/ext/swint_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/swint_a1a60_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/ext/swint_a1a60_s0.data > experiments/ext/swint_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/swint_a1a60_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/ext/swint_a1a60_s1.data > experiments/ext/swint_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/swint_a1a60_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/ext/swint_a1a60_s27.data > experiments/ext/swint_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/swint_a1a60_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/ext/swint_a1a60_s42.data > experiments/ext/swint_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/swint_a1a60_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/ext/swint_a1a60_s137.data > experiments/ext/swint_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/swint_2ee02_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/ext/swint_2ee02_s0.data > experiments/ext/swint_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/swint_2ee02_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/ext/swint_2ee02_s1.data > experiments/ext/swint_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/swint_2ee02_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/ext/swint_2ee02_s27.data > experiments/ext/swint_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/swint_2ee02_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/ext/swint_2ee02_s42.data > experiments/ext/swint_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/swint_2ee02_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/ext/swint_2ee02_s137.data > experiments/ext/swint_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/swint_b54c7_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/ext/swint_b54c7_s0.data > experiments/ext/swint_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/swint_b54c7_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/ext/swint_b54c7_s1.data > experiments/ext/swint_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/swint_b54c7_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/ext/swint_b54c7_s27.data > experiments/ext/swint_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/swint_b54c7_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/ext/swint_b54c7_s42.data > experiments/ext/swint_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/swint_b54c7_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/ext/swint_b54c7_s137.data > experiments/ext/swint_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/swint_0a0cc_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/ext/swint_0a0cc_s0.data > experiments/ext/swint_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/swint_0a0cc_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/ext/swint_0a0cc_s1.data > experiments/ext/swint_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/swint_0a0cc_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/ext/swint_0a0cc_s27.data > experiments/ext/swint_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/swint_0a0cc_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/ext/swint_0a0cc_s42.data > experiments/ext/swint_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/swint_0a0cc_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/ext/swint_0a0cc_s137.data > experiments/ext/swint_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/swint_58f4c_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/ext/swint_58f4c_s0.data > experiments/ext/swint_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/swint_58f4c_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/ext/swint_58f4c_s1.data > experiments/ext/swint_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/swint_58f4c_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/ext/swint_58f4c_s27.data > experiments/ext/swint_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/swint_58f4c_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/ext/swint_58f4c_s42.data > experiments/ext/swint_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/swint_58f4c_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/ext/swint_58f4c_s137.data > experiments/ext/swint_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/swint_ff571_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/ext/swint_ff571_s0.data > experiments/ext/swint_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/swint_ff571_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/ext/swint_ff571_s1.data > experiments/ext/swint_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/swint_ff571_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/ext/swint_ff571_s27.data > experiments/ext/swint_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/swint_ff571_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/ext/swint_ff571_s42.data > experiments/ext/swint_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/swint_ff571_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/ext/swint_ff571_s137.data > experiments/ext/swint_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/swint_c346c_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/ext/swint_c346c_s0.data > experiments/ext/swint_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/swint_c346c_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/ext/swint_c346c_s1.data > experiments/ext/swint_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/swint_c346c_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/ext/swint_c346c_s27.data > experiments/ext/swint_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/swint_c346c_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/ext/swint_c346c_s42.data > experiments/ext/swint_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/swint_c346c_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/ext/swint_c346c_s137.data > experiments/ext/swint_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/swint_3ce60_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/ext/swint_3ce60_s0.data > experiments/ext/swint_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/swint_3ce60_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/ext/swint_3ce60_s1.data > experiments/ext/swint_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/swint_3ce60_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/ext/swint_3ce60_s27.data > experiments/ext/swint_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/swint_3ce60_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/ext/swint_3ce60_s42.data > experiments/ext/swint_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/swint_3ce60_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/ext/swint_3ce60_s137.data > experiments/ext/swint_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/swint_f1dee_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/ext/swint_f1dee_s0.data > experiments/ext/swint_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/swint_f1dee_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/ext/swint_f1dee_s1.data > experiments/ext/swint_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/swint_f1dee_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/ext/swint_f1dee_s27.data > experiments/ext/swint_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/swint_f1dee_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/ext/swint_f1dee_s42.data > experiments/ext/swint_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/swint_f1dee_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/ext/swint_f1dee_s137.data > experiments/ext/swint_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/swint_9899f_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/ext/swint_9899f_s0.data > experiments/ext/swint_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/swint_9899f_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/ext/swint_9899f_s1.data > experiments/ext/swint_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/swint_9899f_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/ext/swint_9899f_s27.data > experiments/ext/swint_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/swint_9899f_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/ext/swint_9899f_s42.data > experiments/ext/swint_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/swint_9899f_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/ext/swint_9899f_s137.data > experiments/ext/swint_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/swint_f9059_s0.data -T python src/run.py --model swint --seed 0
perf script -i experiments/ext/swint_f9059_s0.data > experiments/ext/swint_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/swint_f9059_s1.data -T python src/run.py --model swint --seed 1
perf script -i experiments/ext/swint_f9059_s1.data > experiments/ext/swint_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/swint_f9059_s27.data -T python src/run.py --model swint --seed 27
perf script -i experiments/ext/swint_f9059_s27.data > experiments/ext/swint_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/swint_f9059_s42.data -T python src/run.py --model swint --seed 42
perf script -i experiments/ext/swint_f9059_s42.data > experiments/ext/swint_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/swint_f9059_s137.data -T python src/run.py --model swint --seed 137
perf script -i experiments/ext/swint_f9059_s137.data > experiments/ext/swint_f9059_s137.txt
rm experiments/ext/*.data
gdrive files upload experiments/ext/ --recursive
rm -r experiments/ext/
echo '4%ftKJ6*' | kinit kl559@DC.CL.CAM.AC.UK
mkdir experiments/ext/
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/swins_31a80_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/ext/swins_31a80_s0.data > experiments/ext/swins_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/swins_31a80_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/ext/swins_31a80_s1.data > experiments/ext/swins_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/swins_31a80_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/ext/swins_31a80_s27.data > experiments/ext/swins_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/swins_31a80_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/ext/swins_31a80_s42.data > experiments/ext/swins_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/swins_31a80_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/ext/swins_31a80_s137.data > experiments/ext/swins_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/swins_00b76_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/ext/swins_00b76_s0.data > experiments/ext/swins_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/swins_00b76_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/ext/swins_00b76_s1.data > experiments/ext/swins_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/swins_00b76_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/ext/swins_00b76_s27.data > experiments/ext/swins_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/swins_00b76_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/ext/swins_00b76_s42.data > experiments/ext/swins_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/swins_00b76_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/ext/swins_00b76_s137.data > experiments/ext/swins_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/swins_4bba3_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/ext/swins_4bba3_s0.data > experiments/ext/swins_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/swins_4bba3_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/ext/swins_4bba3_s1.data > experiments/ext/swins_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/swins_4bba3_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/ext/swins_4bba3_s27.data > experiments/ext/swins_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/swins_4bba3_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/ext/swins_4bba3_s42.data > experiments/ext/swins_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/swins_4bba3_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/ext/swins_4bba3_s137.data > experiments/ext/swins_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/swins_73780_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/ext/swins_73780_s0.data > experiments/ext/swins_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/swins_73780_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/ext/swins_73780_s1.data > experiments/ext/swins_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/swins_73780_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/ext/swins_73780_s27.data > experiments/ext/swins_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/swins_73780_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/ext/swins_73780_s42.data > experiments/ext/swins_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/swins_73780_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/ext/swins_73780_s137.data > experiments/ext/swins_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/swins_a1a60_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/ext/swins_a1a60_s0.data > experiments/ext/swins_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/swins_a1a60_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/ext/swins_a1a60_s1.data > experiments/ext/swins_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/swins_a1a60_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/ext/swins_a1a60_s27.data > experiments/ext/swins_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/swins_a1a60_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/ext/swins_a1a60_s42.data > experiments/ext/swins_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/swins_a1a60_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/ext/swins_a1a60_s137.data > experiments/ext/swins_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/swins_2ee02_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/ext/swins_2ee02_s0.data > experiments/ext/swins_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/swins_2ee02_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/ext/swins_2ee02_s1.data > experiments/ext/swins_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/swins_2ee02_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/ext/swins_2ee02_s27.data > experiments/ext/swins_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/swins_2ee02_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/ext/swins_2ee02_s42.data > experiments/ext/swins_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/swins_2ee02_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/ext/swins_2ee02_s137.data > experiments/ext/swins_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/swins_b54c7_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/ext/swins_b54c7_s0.data > experiments/ext/swins_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/swins_b54c7_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/ext/swins_b54c7_s1.data > experiments/ext/swins_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/swins_b54c7_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/ext/swins_b54c7_s27.data > experiments/ext/swins_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/swins_b54c7_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/ext/swins_b54c7_s42.data > experiments/ext/swins_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/swins_b54c7_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/ext/swins_b54c7_s137.data > experiments/ext/swins_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/swins_0a0cc_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/ext/swins_0a0cc_s0.data > experiments/ext/swins_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/swins_0a0cc_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/ext/swins_0a0cc_s1.data > experiments/ext/swins_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/swins_0a0cc_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/ext/swins_0a0cc_s27.data > experiments/ext/swins_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/swins_0a0cc_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/ext/swins_0a0cc_s42.data > experiments/ext/swins_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/swins_0a0cc_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/ext/swins_0a0cc_s137.data > experiments/ext/swins_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/swins_58f4c_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/ext/swins_58f4c_s0.data > experiments/ext/swins_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/swins_58f4c_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/ext/swins_58f4c_s1.data > experiments/ext/swins_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/swins_58f4c_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/ext/swins_58f4c_s27.data > experiments/ext/swins_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/swins_58f4c_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/ext/swins_58f4c_s42.data > experiments/ext/swins_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/swins_58f4c_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/ext/swins_58f4c_s137.data > experiments/ext/swins_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/swins_ff571_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/ext/swins_ff571_s0.data > experiments/ext/swins_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/swins_ff571_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/ext/swins_ff571_s1.data > experiments/ext/swins_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/swins_ff571_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/ext/swins_ff571_s27.data > experiments/ext/swins_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/swins_ff571_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/ext/swins_ff571_s42.data > experiments/ext/swins_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/swins_ff571_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/ext/swins_ff571_s137.data > experiments/ext/swins_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/swins_c346c_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/ext/swins_c346c_s0.data > experiments/ext/swins_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/swins_c346c_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/ext/swins_c346c_s1.data > experiments/ext/swins_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/swins_c346c_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/ext/swins_c346c_s27.data > experiments/ext/swins_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/swins_c346c_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/ext/swins_c346c_s42.data > experiments/ext/swins_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/swins_c346c_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/ext/swins_c346c_s137.data > experiments/ext/swins_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/swins_3ce60_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/ext/swins_3ce60_s0.data > experiments/ext/swins_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/swins_3ce60_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/ext/swins_3ce60_s1.data > experiments/ext/swins_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/swins_3ce60_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/ext/swins_3ce60_s27.data > experiments/ext/swins_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/swins_3ce60_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/ext/swins_3ce60_s42.data > experiments/ext/swins_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/swins_3ce60_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/ext/swins_3ce60_s137.data > experiments/ext/swins_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/swins_f1dee_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/ext/swins_f1dee_s0.data > experiments/ext/swins_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/swins_f1dee_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/ext/swins_f1dee_s1.data > experiments/ext/swins_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/swins_f1dee_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/ext/swins_f1dee_s27.data > experiments/ext/swins_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/swins_f1dee_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/ext/swins_f1dee_s42.data > experiments/ext/swins_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/swins_f1dee_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/ext/swins_f1dee_s137.data > experiments/ext/swins_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/swins_9899f_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/ext/swins_9899f_s0.data > experiments/ext/swins_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/swins_9899f_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/ext/swins_9899f_s1.data > experiments/ext/swins_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/swins_9899f_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/ext/swins_9899f_s27.data > experiments/ext/swins_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/swins_9899f_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/ext/swins_9899f_s42.data > experiments/ext/swins_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/swins_9899f_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/ext/swins_9899f_s137.data > experiments/ext/swins_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/swins_f9059_s0.data -T python src/run.py --model swins --seed 0
perf script -i experiments/ext/swins_f9059_s0.data > experiments/ext/swins_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/swins_f9059_s1.data -T python src/run.py --model swins --seed 1
perf script -i experiments/ext/swins_f9059_s1.data > experiments/ext/swins_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/swins_f9059_s27.data -T python src/run.py --model swins --seed 27
perf script -i experiments/ext/swins_f9059_s27.data > experiments/ext/swins_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/swins_f9059_s42.data -T python src/run.py --model swins --seed 42
perf script -i experiments/ext/swins_f9059_s42.data > experiments/ext/swins_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/swins_f9059_s137.data -T python src/run.py --model swins --seed 137
perf script -i experiments/ext/swins_f9059_s137.data > experiments/ext/swins_f9059_s137.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/swinb_31a80_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/ext/swinb_31a80_s0.data > experiments/ext/swinb_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/swinb_31a80_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/ext/swinb_31a80_s1.data > experiments/ext/swinb_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/swinb_31a80_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/ext/swinb_31a80_s27.data > experiments/ext/swinb_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/swinb_31a80_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/ext/swinb_31a80_s42.data > experiments/ext/swinb_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/swinb_31a80_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/ext/swinb_31a80_s137.data > experiments/ext/swinb_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/swinb_00b76_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/ext/swinb_00b76_s0.data > experiments/ext/swinb_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/swinb_00b76_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/ext/swinb_00b76_s1.data > experiments/ext/swinb_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/swinb_00b76_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/ext/swinb_00b76_s27.data > experiments/ext/swinb_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/swinb_00b76_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/ext/swinb_00b76_s42.data > experiments/ext/swinb_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/swinb_00b76_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/ext/swinb_00b76_s137.data > experiments/ext/swinb_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/swinb_4bba3_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/ext/swinb_4bba3_s0.data > experiments/ext/swinb_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/swinb_4bba3_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/ext/swinb_4bba3_s1.data > experiments/ext/swinb_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/swinb_4bba3_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/ext/swinb_4bba3_s27.data > experiments/ext/swinb_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/swinb_4bba3_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/ext/swinb_4bba3_s42.data > experiments/ext/swinb_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/swinb_4bba3_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/ext/swinb_4bba3_s137.data > experiments/ext/swinb_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/swinb_73780_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/ext/swinb_73780_s0.data > experiments/ext/swinb_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/swinb_73780_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/ext/swinb_73780_s1.data > experiments/ext/swinb_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/swinb_73780_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/ext/swinb_73780_s27.data > experiments/ext/swinb_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/swinb_73780_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/ext/swinb_73780_s42.data > experiments/ext/swinb_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/swinb_73780_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/ext/swinb_73780_s137.data > experiments/ext/swinb_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/swinb_a1a60_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/ext/swinb_a1a60_s0.data > experiments/ext/swinb_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/swinb_a1a60_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/ext/swinb_a1a60_s1.data > experiments/ext/swinb_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/swinb_a1a60_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/ext/swinb_a1a60_s27.data > experiments/ext/swinb_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/swinb_a1a60_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/ext/swinb_a1a60_s42.data > experiments/ext/swinb_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/swinb_a1a60_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/ext/swinb_a1a60_s137.data > experiments/ext/swinb_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/swinb_2ee02_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/ext/swinb_2ee02_s0.data > experiments/ext/swinb_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/swinb_2ee02_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/ext/swinb_2ee02_s1.data > experiments/ext/swinb_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/swinb_2ee02_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/ext/swinb_2ee02_s27.data > experiments/ext/swinb_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/swinb_2ee02_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/ext/swinb_2ee02_s42.data > experiments/ext/swinb_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/swinb_2ee02_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/ext/swinb_2ee02_s137.data > experiments/ext/swinb_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/swinb_b54c7_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/ext/swinb_b54c7_s0.data > experiments/ext/swinb_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/swinb_b54c7_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/ext/swinb_b54c7_s1.data > experiments/ext/swinb_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/swinb_b54c7_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/ext/swinb_b54c7_s27.data > experiments/ext/swinb_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/swinb_b54c7_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/ext/swinb_b54c7_s42.data > experiments/ext/swinb_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/swinb_b54c7_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/ext/swinb_b54c7_s137.data > experiments/ext/swinb_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/swinb_0a0cc_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/ext/swinb_0a0cc_s0.data > experiments/ext/swinb_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/swinb_0a0cc_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/ext/swinb_0a0cc_s1.data > experiments/ext/swinb_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/swinb_0a0cc_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/ext/swinb_0a0cc_s27.data > experiments/ext/swinb_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/swinb_0a0cc_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/ext/swinb_0a0cc_s42.data > experiments/ext/swinb_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/swinb_0a0cc_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/ext/swinb_0a0cc_s137.data > experiments/ext/swinb_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/swinb_58f4c_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/ext/swinb_58f4c_s0.data > experiments/ext/swinb_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/swinb_58f4c_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/ext/swinb_58f4c_s1.data > experiments/ext/swinb_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/swinb_58f4c_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/ext/swinb_58f4c_s27.data > experiments/ext/swinb_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/swinb_58f4c_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/ext/swinb_58f4c_s42.data > experiments/ext/swinb_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/swinb_58f4c_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/ext/swinb_58f4c_s137.data > experiments/ext/swinb_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/swinb_ff571_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/ext/swinb_ff571_s0.data > experiments/ext/swinb_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/swinb_ff571_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/ext/swinb_ff571_s1.data > experiments/ext/swinb_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/swinb_ff571_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/ext/swinb_ff571_s27.data > experiments/ext/swinb_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/swinb_ff571_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/ext/swinb_ff571_s42.data > experiments/ext/swinb_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/swinb_ff571_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/ext/swinb_ff571_s137.data > experiments/ext/swinb_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/swinb_c346c_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/ext/swinb_c346c_s0.data > experiments/ext/swinb_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/swinb_c346c_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/ext/swinb_c346c_s1.data > experiments/ext/swinb_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/swinb_c346c_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/ext/swinb_c346c_s27.data > experiments/ext/swinb_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/swinb_c346c_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/ext/swinb_c346c_s42.data > experiments/ext/swinb_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/swinb_c346c_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/ext/swinb_c346c_s137.data > experiments/ext/swinb_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/swinb_3ce60_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/ext/swinb_3ce60_s0.data > experiments/ext/swinb_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/swinb_3ce60_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/ext/swinb_3ce60_s1.data > experiments/ext/swinb_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/swinb_3ce60_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/ext/swinb_3ce60_s27.data > experiments/ext/swinb_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/swinb_3ce60_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/ext/swinb_3ce60_s42.data > experiments/ext/swinb_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/swinb_3ce60_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/ext/swinb_3ce60_s137.data > experiments/ext/swinb_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/swinb_f1dee_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/ext/swinb_f1dee_s0.data > experiments/ext/swinb_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/swinb_f1dee_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/ext/swinb_f1dee_s1.data > experiments/ext/swinb_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/swinb_f1dee_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/ext/swinb_f1dee_s27.data > experiments/ext/swinb_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/swinb_f1dee_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/ext/swinb_f1dee_s42.data > experiments/ext/swinb_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/swinb_f1dee_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/ext/swinb_f1dee_s137.data > experiments/ext/swinb_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/swinb_9899f_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/ext/swinb_9899f_s0.data > experiments/ext/swinb_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/swinb_9899f_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/ext/swinb_9899f_s1.data > experiments/ext/swinb_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/swinb_9899f_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/ext/swinb_9899f_s27.data > experiments/ext/swinb_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/swinb_9899f_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/ext/swinb_9899f_s42.data > experiments/ext/swinb_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/swinb_9899f_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/ext/swinb_9899f_s137.data > experiments/ext/swinb_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/swinb_f9059_s0.data -T python src/run.py --model swinb --seed 0
perf script -i experiments/ext/swinb_f9059_s0.data > experiments/ext/swinb_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/swinb_f9059_s1.data -T python src/run.py --model swinb --seed 1
perf script -i experiments/ext/swinb_f9059_s1.data > experiments/ext/swinb_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/swinb_f9059_s27.data -T python src/run.py --model swinb --seed 27
perf script -i experiments/ext/swinb_f9059_s27.data > experiments/ext/swinb_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/swinb_f9059_s42.data -T python src/run.py --model swinb --seed 42
perf script -i experiments/ext/swinb_f9059_s42.data > experiments/ext/swinb_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/swinb_f9059_s137.data -T python src/run.py --model swinb --seed 137
perf script -i experiments/ext/swinb_f9059_s137.data > experiments/ext/swinb_f9059_s137.txt
rm experiments/ext/*.data
gdrive files upload experiments/ext/ --recursive
rm -r experiments/ext/
echo '4%ftKJ6*' | kinit kl559@DC.CL.CAM.AC.UK
mkdir experiments/ext/
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vgg11_31a80_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/ext/vgg11_31a80_s0.data > experiments/ext/vgg11_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vgg11_31a80_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/ext/vgg11_31a80_s1.data > experiments/ext/vgg11_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vgg11_31a80_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/ext/vgg11_31a80_s27.data > experiments/ext/vgg11_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vgg11_31a80_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/ext/vgg11_31a80_s42.data > experiments/ext/vgg11_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vgg11_31a80_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/ext/vgg11_31a80_s137.data > experiments/ext/vgg11_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vgg11_00b76_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/ext/vgg11_00b76_s0.data > experiments/ext/vgg11_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vgg11_00b76_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/ext/vgg11_00b76_s1.data > experiments/ext/vgg11_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vgg11_00b76_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/ext/vgg11_00b76_s27.data > experiments/ext/vgg11_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vgg11_00b76_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/ext/vgg11_00b76_s42.data > experiments/ext/vgg11_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vgg11_00b76_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/ext/vgg11_00b76_s137.data > experiments/ext/vgg11_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vgg11_4bba3_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/ext/vgg11_4bba3_s0.data > experiments/ext/vgg11_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vgg11_4bba3_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/ext/vgg11_4bba3_s1.data > experiments/ext/vgg11_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vgg11_4bba3_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/ext/vgg11_4bba3_s27.data > experiments/ext/vgg11_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vgg11_4bba3_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/ext/vgg11_4bba3_s42.data > experiments/ext/vgg11_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vgg11_4bba3_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/ext/vgg11_4bba3_s137.data > experiments/ext/vgg11_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vgg11_73780_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/ext/vgg11_73780_s0.data > experiments/ext/vgg11_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vgg11_73780_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/ext/vgg11_73780_s1.data > experiments/ext/vgg11_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vgg11_73780_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/ext/vgg11_73780_s27.data > experiments/ext/vgg11_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vgg11_73780_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/ext/vgg11_73780_s42.data > experiments/ext/vgg11_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vgg11_73780_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/ext/vgg11_73780_s137.data > experiments/ext/vgg11_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vgg11_a1a60_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/ext/vgg11_a1a60_s0.data > experiments/ext/vgg11_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vgg11_a1a60_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/ext/vgg11_a1a60_s1.data > experiments/ext/vgg11_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vgg11_a1a60_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/ext/vgg11_a1a60_s27.data > experiments/ext/vgg11_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vgg11_a1a60_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/ext/vgg11_a1a60_s42.data > experiments/ext/vgg11_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vgg11_a1a60_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/ext/vgg11_a1a60_s137.data > experiments/ext/vgg11_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vgg11_2ee02_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/ext/vgg11_2ee02_s0.data > experiments/ext/vgg11_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vgg11_2ee02_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/ext/vgg11_2ee02_s1.data > experiments/ext/vgg11_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vgg11_2ee02_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/ext/vgg11_2ee02_s27.data > experiments/ext/vgg11_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vgg11_2ee02_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/ext/vgg11_2ee02_s42.data > experiments/ext/vgg11_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vgg11_2ee02_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/ext/vgg11_2ee02_s137.data > experiments/ext/vgg11_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vgg11_b54c7_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/ext/vgg11_b54c7_s0.data > experiments/ext/vgg11_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vgg11_b54c7_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/ext/vgg11_b54c7_s1.data > experiments/ext/vgg11_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vgg11_b54c7_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/ext/vgg11_b54c7_s27.data > experiments/ext/vgg11_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vgg11_b54c7_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/ext/vgg11_b54c7_s42.data > experiments/ext/vgg11_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vgg11_b54c7_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/ext/vgg11_b54c7_s137.data > experiments/ext/vgg11_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vgg11_0a0cc_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/ext/vgg11_0a0cc_s0.data > experiments/ext/vgg11_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vgg11_0a0cc_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/ext/vgg11_0a0cc_s1.data > experiments/ext/vgg11_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vgg11_0a0cc_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/ext/vgg11_0a0cc_s27.data > experiments/ext/vgg11_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vgg11_0a0cc_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/ext/vgg11_0a0cc_s42.data > experiments/ext/vgg11_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vgg11_0a0cc_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/ext/vgg11_0a0cc_s137.data > experiments/ext/vgg11_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vgg11_58f4c_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/ext/vgg11_58f4c_s0.data > experiments/ext/vgg11_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vgg11_58f4c_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/ext/vgg11_58f4c_s1.data > experiments/ext/vgg11_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vgg11_58f4c_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/ext/vgg11_58f4c_s27.data > experiments/ext/vgg11_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vgg11_58f4c_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/ext/vgg11_58f4c_s42.data > experiments/ext/vgg11_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vgg11_58f4c_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/ext/vgg11_58f4c_s137.data > experiments/ext/vgg11_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vgg11_ff571_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/ext/vgg11_ff571_s0.data > experiments/ext/vgg11_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vgg11_ff571_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/ext/vgg11_ff571_s1.data > experiments/ext/vgg11_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vgg11_ff571_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/ext/vgg11_ff571_s27.data > experiments/ext/vgg11_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vgg11_ff571_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/ext/vgg11_ff571_s42.data > experiments/ext/vgg11_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vgg11_ff571_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/ext/vgg11_ff571_s137.data > experiments/ext/vgg11_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vgg11_c346c_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/ext/vgg11_c346c_s0.data > experiments/ext/vgg11_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vgg11_c346c_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/ext/vgg11_c346c_s1.data > experiments/ext/vgg11_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vgg11_c346c_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/ext/vgg11_c346c_s27.data > experiments/ext/vgg11_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vgg11_c346c_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/ext/vgg11_c346c_s42.data > experiments/ext/vgg11_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vgg11_c346c_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/ext/vgg11_c346c_s137.data > experiments/ext/vgg11_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vgg11_3ce60_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/ext/vgg11_3ce60_s0.data > experiments/ext/vgg11_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vgg11_3ce60_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/ext/vgg11_3ce60_s1.data > experiments/ext/vgg11_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vgg11_3ce60_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/ext/vgg11_3ce60_s27.data > experiments/ext/vgg11_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vgg11_3ce60_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/ext/vgg11_3ce60_s42.data > experiments/ext/vgg11_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vgg11_3ce60_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/ext/vgg11_3ce60_s137.data > experiments/ext/vgg11_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vgg11_f1dee_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/ext/vgg11_f1dee_s0.data > experiments/ext/vgg11_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vgg11_f1dee_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/ext/vgg11_f1dee_s1.data > experiments/ext/vgg11_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vgg11_f1dee_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/ext/vgg11_f1dee_s27.data > experiments/ext/vgg11_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vgg11_f1dee_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/ext/vgg11_f1dee_s42.data > experiments/ext/vgg11_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vgg11_f1dee_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/ext/vgg11_f1dee_s137.data > experiments/ext/vgg11_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vgg11_9899f_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/ext/vgg11_9899f_s0.data > experiments/ext/vgg11_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vgg11_9899f_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/ext/vgg11_9899f_s1.data > experiments/ext/vgg11_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vgg11_9899f_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/ext/vgg11_9899f_s27.data > experiments/ext/vgg11_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vgg11_9899f_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/ext/vgg11_9899f_s42.data > experiments/ext/vgg11_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vgg11_9899f_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/ext/vgg11_9899f_s137.data > experiments/ext/vgg11_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vgg11_f9059_s0.data -T python src/run.py --model vgg11 --seed 0
perf script -i experiments/ext/vgg11_f9059_s0.data > experiments/ext/vgg11_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vgg11_f9059_s1.data -T python src/run.py --model vgg11 --seed 1
perf script -i experiments/ext/vgg11_f9059_s1.data > experiments/ext/vgg11_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vgg11_f9059_s27.data -T python src/run.py --model vgg11 --seed 27
perf script -i experiments/ext/vgg11_f9059_s27.data > experiments/ext/vgg11_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vgg11_f9059_s42.data -T python src/run.py --model vgg11 --seed 42
perf script -i experiments/ext/vgg11_f9059_s42.data > experiments/ext/vgg11_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vgg11_f9059_s137.data -T python src/run.py --model vgg11 --seed 137
perf script -i experiments/ext/vgg11_f9059_s137.data > experiments/ext/vgg11_f9059_s137.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vgg13_31a80_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/ext/vgg13_31a80_s0.data > experiments/ext/vgg13_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vgg13_31a80_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/ext/vgg13_31a80_s1.data > experiments/ext/vgg13_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vgg13_31a80_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/ext/vgg13_31a80_s27.data > experiments/ext/vgg13_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vgg13_31a80_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/ext/vgg13_31a80_s42.data > experiments/ext/vgg13_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vgg13_31a80_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/ext/vgg13_31a80_s137.data > experiments/ext/vgg13_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vgg13_00b76_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/ext/vgg13_00b76_s0.data > experiments/ext/vgg13_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vgg13_00b76_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/ext/vgg13_00b76_s1.data > experiments/ext/vgg13_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vgg13_00b76_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/ext/vgg13_00b76_s27.data > experiments/ext/vgg13_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vgg13_00b76_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/ext/vgg13_00b76_s42.data > experiments/ext/vgg13_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vgg13_00b76_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/ext/vgg13_00b76_s137.data > experiments/ext/vgg13_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vgg13_4bba3_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/ext/vgg13_4bba3_s0.data > experiments/ext/vgg13_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vgg13_4bba3_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/ext/vgg13_4bba3_s1.data > experiments/ext/vgg13_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vgg13_4bba3_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/ext/vgg13_4bba3_s27.data > experiments/ext/vgg13_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vgg13_4bba3_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/ext/vgg13_4bba3_s42.data > experiments/ext/vgg13_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vgg13_4bba3_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/ext/vgg13_4bba3_s137.data > experiments/ext/vgg13_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vgg13_73780_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/ext/vgg13_73780_s0.data > experiments/ext/vgg13_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vgg13_73780_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/ext/vgg13_73780_s1.data > experiments/ext/vgg13_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vgg13_73780_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/ext/vgg13_73780_s27.data > experiments/ext/vgg13_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vgg13_73780_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/ext/vgg13_73780_s42.data > experiments/ext/vgg13_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vgg13_73780_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/ext/vgg13_73780_s137.data > experiments/ext/vgg13_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vgg13_a1a60_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/ext/vgg13_a1a60_s0.data > experiments/ext/vgg13_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vgg13_a1a60_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/ext/vgg13_a1a60_s1.data > experiments/ext/vgg13_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vgg13_a1a60_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/ext/vgg13_a1a60_s27.data > experiments/ext/vgg13_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vgg13_a1a60_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/ext/vgg13_a1a60_s42.data > experiments/ext/vgg13_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vgg13_a1a60_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/ext/vgg13_a1a60_s137.data > experiments/ext/vgg13_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vgg13_2ee02_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/ext/vgg13_2ee02_s0.data > experiments/ext/vgg13_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vgg13_2ee02_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/ext/vgg13_2ee02_s1.data > experiments/ext/vgg13_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vgg13_2ee02_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/ext/vgg13_2ee02_s27.data > experiments/ext/vgg13_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vgg13_2ee02_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/ext/vgg13_2ee02_s42.data > experiments/ext/vgg13_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vgg13_2ee02_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/ext/vgg13_2ee02_s137.data > experiments/ext/vgg13_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vgg13_b54c7_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/ext/vgg13_b54c7_s0.data > experiments/ext/vgg13_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vgg13_b54c7_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/ext/vgg13_b54c7_s1.data > experiments/ext/vgg13_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vgg13_b54c7_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/ext/vgg13_b54c7_s27.data > experiments/ext/vgg13_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vgg13_b54c7_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/ext/vgg13_b54c7_s42.data > experiments/ext/vgg13_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vgg13_b54c7_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/ext/vgg13_b54c7_s137.data > experiments/ext/vgg13_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vgg13_0a0cc_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/ext/vgg13_0a0cc_s0.data > experiments/ext/vgg13_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vgg13_0a0cc_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/ext/vgg13_0a0cc_s1.data > experiments/ext/vgg13_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vgg13_0a0cc_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/ext/vgg13_0a0cc_s27.data > experiments/ext/vgg13_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vgg13_0a0cc_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/ext/vgg13_0a0cc_s42.data > experiments/ext/vgg13_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vgg13_0a0cc_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/ext/vgg13_0a0cc_s137.data > experiments/ext/vgg13_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vgg13_58f4c_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/ext/vgg13_58f4c_s0.data > experiments/ext/vgg13_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vgg13_58f4c_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/ext/vgg13_58f4c_s1.data > experiments/ext/vgg13_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vgg13_58f4c_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/ext/vgg13_58f4c_s27.data > experiments/ext/vgg13_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vgg13_58f4c_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/ext/vgg13_58f4c_s42.data > experiments/ext/vgg13_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vgg13_58f4c_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/ext/vgg13_58f4c_s137.data > experiments/ext/vgg13_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vgg13_ff571_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/ext/vgg13_ff571_s0.data > experiments/ext/vgg13_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vgg13_ff571_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/ext/vgg13_ff571_s1.data > experiments/ext/vgg13_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vgg13_ff571_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/ext/vgg13_ff571_s27.data > experiments/ext/vgg13_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vgg13_ff571_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/ext/vgg13_ff571_s42.data > experiments/ext/vgg13_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vgg13_ff571_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/ext/vgg13_ff571_s137.data > experiments/ext/vgg13_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vgg13_c346c_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/ext/vgg13_c346c_s0.data > experiments/ext/vgg13_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vgg13_c346c_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/ext/vgg13_c346c_s1.data > experiments/ext/vgg13_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vgg13_c346c_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/ext/vgg13_c346c_s27.data > experiments/ext/vgg13_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vgg13_c346c_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/ext/vgg13_c346c_s42.data > experiments/ext/vgg13_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vgg13_c346c_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/ext/vgg13_c346c_s137.data > experiments/ext/vgg13_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vgg13_3ce60_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/ext/vgg13_3ce60_s0.data > experiments/ext/vgg13_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vgg13_3ce60_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/ext/vgg13_3ce60_s1.data > experiments/ext/vgg13_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vgg13_3ce60_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/ext/vgg13_3ce60_s27.data > experiments/ext/vgg13_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vgg13_3ce60_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/ext/vgg13_3ce60_s42.data > experiments/ext/vgg13_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vgg13_3ce60_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/ext/vgg13_3ce60_s137.data > experiments/ext/vgg13_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vgg13_f1dee_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/ext/vgg13_f1dee_s0.data > experiments/ext/vgg13_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vgg13_f1dee_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/ext/vgg13_f1dee_s1.data > experiments/ext/vgg13_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vgg13_f1dee_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/ext/vgg13_f1dee_s27.data > experiments/ext/vgg13_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vgg13_f1dee_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/ext/vgg13_f1dee_s42.data > experiments/ext/vgg13_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vgg13_f1dee_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/ext/vgg13_f1dee_s137.data > experiments/ext/vgg13_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vgg13_9899f_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/ext/vgg13_9899f_s0.data > experiments/ext/vgg13_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vgg13_9899f_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/ext/vgg13_9899f_s1.data > experiments/ext/vgg13_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vgg13_9899f_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/ext/vgg13_9899f_s27.data > experiments/ext/vgg13_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vgg13_9899f_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/ext/vgg13_9899f_s42.data > experiments/ext/vgg13_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vgg13_9899f_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/ext/vgg13_9899f_s137.data > experiments/ext/vgg13_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vgg13_f9059_s0.data -T python src/run.py --model vgg13 --seed 0
perf script -i experiments/ext/vgg13_f9059_s0.data > experiments/ext/vgg13_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vgg13_f9059_s1.data -T python src/run.py --model vgg13 --seed 1
perf script -i experiments/ext/vgg13_f9059_s1.data > experiments/ext/vgg13_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vgg13_f9059_s27.data -T python src/run.py --model vgg13 --seed 27
perf script -i experiments/ext/vgg13_f9059_s27.data > experiments/ext/vgg13_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vgg13_f9059_s42.data -T python src/run.py --model vgg13 --seed 42
perf script -i experiments/ext/vgg13_f9059_s42.data > experiments/ext/vgg13_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vgg13_f9059_s137.data -T python src/run.py --model vgg13 --seed 137
perf script -i experiments/ext/vgg13_f9059_s137.data > experiments/ext/vgg13_f9059_s137.txt
rm experiments/ext/*.data
gdrive files upload experiments/ext/ --recursive
rm -r experiments/ext/
echo '4%ftKJ6*' | kinit kl559@DC.CL.CAM.AC.UK
mkdir experiments/ext/
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vgg16_31a80_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/ext/vgg16_31a80_s0.data > experiments/ext/vgg16_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vgg16_31a80_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/ext/vgg16_31a80_s1.data > experiments/ext/vgg16_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vgg16_31a80_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/ext/vgg16_31a80_s27.data > experiments/ext/vgg16_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vgg16_31a80_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/ext/vgg16_31a80_s42.data > experiments/ext/vgg16_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vgg16_31a80_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/ext/vgg16_31a80_s137.data > experiments/ext/vgg16_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vgg16_00b76_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/ext/vgg16_00b76_s0.data > experiments/ext/vgg16_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vgg16_00b76_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/ext/vgg16_00b76_s1.data > experiments/ext/vgg16_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vgg16_00b76_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/ext/vgg16_00b76_s27.data > experiments/ext/vgg16_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vgg16_00b76_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/ext/vgg16_00b76_s42.data > experiments/ext/vgg16_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vgg16_00b76_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/ext/vgg16_00b76_s137.data > experiments/ext/vgg16_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vgg16_4bba3_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/ext/vgg16_4bba3_s0.data > experiments/ext/vgg16_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vgg16_4bba3_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/ext/vgg16_4bba3_s1.data > experiments/ext/vgg16_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vgg16_4bba3_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/ext/vgg16_4bba3_s27.data > experiments/ext/vgg16_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vgg16_4bba3_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/ext/vgg16_4bba3_s42.data > experiments/ext/vgg16_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vgg16_4bba3_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/ext/vgg16_4bba3_s137.data > experiments/ext/vgg16_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vgg16_73780_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/ext/vgg16_73780_s0.data > experiments/ext/vgg16_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vgg16_73780_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/ext/vgg16_73780_s1.data > experiments/ext/vgg16_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vgg16_73780_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/ext/vgg16_73780_s27.data > experiments/ext/vgg16_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vgg16_73780_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/ext/vgg16_73780_s42.data > experiments/ext/vgg16_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vgg16_73780_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/ext/vgg16_73780_s137.data > experiments/ext/vgg16_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vgg16_a1a60_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/ext/vgg16_a1a60_s0.data > experiments/ext/vgg16_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vgg16_a1a60_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/ext/vgg16_a1a60_s1.data > experiments/ext/vgg16_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vgg16_a1a60_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/ext/vgg16_a1a60_s27.data > experiments/ext/vgg16_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vgg16_a1a60_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/ext/vgg16_a1a60_s42.data > experiments/ext/vgg16_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vgg16_a1a60_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/ext/vgg16_a1a60_s137.data > experiments/ext/vgg16_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vgg16_2ee02_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/ext/vgg16_2ee02_s0.data > experiments/ext/vgg16_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vgg16_2ee02_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/ext/vgg16_2ee02_s1.data > experiments/ext/vgg16_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vgg16_2ee02_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/ext/vgg16_2ee02_s27.data > experiments/ext/vgg16_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vgg16_2ee02_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/ext/vgg16_2ee02_s42.data > experiments/ext/vgg16_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vgg16_2ee02_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/ext/vgg16_2ee02_s137.data > experiments/ext/vgg16_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vgg16_b54c7_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/ext/vgg16_b54c7_s0.data > experiments/ext/vgg16_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vgg16_b54c7_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/ext/vgg16_b54c7_s1.data > experiments/ext/vgg16_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vgg16_b54c7_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/ext/vgg16_b54c7_s27.data > experiments/ext/vgg16_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vgg16_b54c7_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/ext/vgg16_b54c7_s42.data > experiments/ext/vgg16_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vgg16_b54c7_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/ext/vgg16_b54c7_s137.data > experiments/ext/vgg16_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vgg16_0a0cc_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/ext/vgg16_0a0cc_s0.data > experiments/ext/vgg16_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vgg16_0a0cc_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/ext/vgg16_0a0cc_s1.data > experiments/ext/vgg16_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vgg16_0a0cc_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/ext/vgg16_0a0cc_s27.data > experiments/ext/vgg16_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vgg16_0a0cc_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/ext/vgg16_0a0cc_s42.data > experiments/ext/vgg16_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vgg16_0a0cc_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/ext/vgg16_0a0cc_s137.data > experiments/ext/vgg16_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vgg16_58f4c_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/ext/vgg16_58f4c_s0.data > experiments/ext/vgg16_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vgg16_58f4c_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/ext/vgg16_58f4c_s1.data > experiments/ext/vgg16_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vgg16_58f4c_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/ext/vgg16_58f4c_s27.data > experiments/ext/vgg16_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vgg16_58f4c_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/ext/vgg16_58f4c_s42.data > experiments/ext/vgg16_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vgg16_58f4c_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/ext/vgg16_58f4c_s137.data > experiments/ext/vgg16_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vgg16_ff571_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/ext/vgg16_ff571_s0.data > experiments/ext/vgg16_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vgg16_ff571_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/ext/vgg16_ff571_s1.data > experiments/ext/vgg16_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vgg16_ff571_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/ext/vgg16_ff571_s27.data > experiments/ext/vgg16_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vgg16_ff571_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/ext/vgg16_ff571_s42.data > experiments/ext/vgg16_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vgg16_ff571_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/ext/vgg16_ff571_s137.data > experiments/ext/vgg16_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vgg16_c346c_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/ext/vgg16_c346c_s0.data > experiments/ext/vgg16_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vgg16_c346c_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/ext/vgg16_c346c_s1.data > experiments/ext/vgg16_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vgg16_c346c_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/ext/vgg16_c346c_s27.data > experiments/ext/vgg16_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vgg16_c346c_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/ext/vgg16_c346c_s42.data > experiments/ext/vgg16_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vgg16_c346c_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/ext/vgg16_c346c_s137.data > experiments/ext/vgg16_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vgg16_3ce60_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/ext/vgg16_3ce60_s0.data > experiments/ext/vgg16_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vgg16_3ce60_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/ext/vgg16_3ce60_s1.data > experiments/ext/vgg16_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vgg16_3ce60_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/ext/vgg16_3ce60_s27.data > experiments/ext/vgg16_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vgg16_3ce60_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/ext/vgg16_3ce60_s42.data > experiments/ext/vgg16_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vgg16_3ce60_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/ext/vgg16_3ce60_s137.data > experiments/ext/vgg16_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vgg16_f1dee_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/ext/vgg16_f1dee_s0.data > experiments/ext/vgg16_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vgg16_f1dee_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/ext/vgg16_f1dee_s1.data > experiments/ext/vgg16_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vgg16_f1dee_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/ext/vgg16_f1dee_s27.data > experiments/ext/vgg16_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vgg16_f1dee_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/ext/vgg16_f1dee_s42.data > experiments/ext/vgg16_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vgg16_f1dee_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/ext/vgg16_f1dee_s137.data > experiments/ext/vgg16_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vgg16_9899f_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/ext/vgg16_9899f_s0.data > experiments/ext/vgg16_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vgg16_9899f_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/ext/vgg16_9899f_s1.data > experiments/ext/vgg16_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vgg16_9899f_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/ext/vgg16_9899f_s27.data > experiments/ext/vgg16_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vgg16_9899f_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/ext/vgg16_9899f_s42.data > experiments/ext/vgg16_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vgg16_9899f_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/ext/vgg16_9899f_s137.data > experiments/ext/vgg16_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vgg16_f9059_s0.data -T python src/run.py --model vgg16 --seed 0
perf script -i experiments/ext/vgg16_f9059_s0.data > experiments/ext/vgg16_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vgg16_f9059_s1.data -T python src/run.py --model vgg16 --seed 1
perf script -i experiments/ext/vgg16_f9059_s1.data > experiments/ext/vgg16_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vgg16_f9059_s27.data -T python src/run.py --model vgg16 --seed 27
perf script -i experiments/ext/vgg16_f9059_s27.data > experiments/ext/vgg16_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vgg16_f9059_s42.data -T python src/run.py --model vgg16 --seed 42
perf script -i experiments/ext/vgg16_f9059_s42.data > experiments/ext/vgg16_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vgg16_f9059_s137.data -T python src/run.py --model vgg16 --seed 137
perf script -i experiments/ext/vgg16_f9059_s137.data > experiments/ext/vgg16_f9059_s137.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vgg19_31a80_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/ext/vgg19_31a80_s0.data > experiments/ext/vgg19_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vgg19_31a80_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/ext/vgg19_31a80_s1.data > experiments/ext/vgg19_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vgg19_31a80_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/ext/vgg19_31a80_s27.data > experiments/ext/vgg19_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vgg19_31a80_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/ext/vgg19_31a80_s42.data > experiments/ext/vgg19_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vgg19_31a80_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/ext/vgg19_31a80_s137.data > experiments/ext/vgg19_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vgg19_00b76_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/ext/vgg19_00b76_s0.data > experiments/ext/vgg19_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vgg19_00b76_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/ext/vgg19_00b76_s1.data > experiments/ext/vgg19_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vgg19_00b76_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/ext/vgg19_00b76_s27.data > experiments/ext/vgg19_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vgg19_00b76_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/ext/vgg19_00b76_s42.data > experiments/ext/vgg19_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vgg19_00b76_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/ext/vgg19_00b76_s137.data > experiments/ext/vgg19_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vgg19_4bba3_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/ext/vgg19_4bba3_s0.data > experiments/ext/vgg19_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vgg19_4bba3_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/ext/vgg19_4bba3_s1.data > experiments/ext/vgg19_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vgg19_4bba3_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/ext/vgg19_4bba3_s27.data > experiments/ext/vgg19_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vgg19_4bba3_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/ext/vgg19_4bba3_s42.data > experiments/ext/vgg19_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vgg19_4bba3_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/ext/vgg19_4bba3_s137.data > experiments/ext/vgg19_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vgg19_73780_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/ext/vgg19_73780_s0.data > experiments/ext/vgg19_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vgg19_73780_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/ext/vgg19_73780_s1.data > experiments/ext/vgg19_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vgg19_73780_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/ext/vgg19_73780_s27.data > experiments/ext/vgg19_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vgg19_73780_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/ext/vgg19_73780_s42.data > experiments/ext/vgg19_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vgg19_73780_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/ext/vgg19_73780_s137.data > experiments/ext/vgg19_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vgg19_a1a60_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/ext/vgg19_a1a60_s0.data > experiments/ext/vgg19_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vgg19_a1a60_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/ext/vgg19_a1a60_s1.data > experiments/ext/vgg19_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vgg19_a1a60_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/ext/vgg19_a1a60_s27.data > experiments/ext/vgg19_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vgg19_a1a60_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/ext/vgg19_a1a60_s42.data > experiments/ext/vgg19_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vgg19_a1a60_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/ext/vgg19_a1a60_s137.data > experiments/ext/vgg19_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vgg19_2ee02_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/ext/vgg19_2ee02_s0.data > experiments/ext/vgg19_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vgg19_2ee02_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/ext/vgg19_2ee02_s1.data > experiments/ext/vgg19_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vgg19_2ee02_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/ext/vgg19_2ee02_s27.data > experiments/ext/vgg19_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vgg19_2ee02_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/ext/vgg19_2ee02_s42.data > experiments/ext/vgg19_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vgg19_2ee02_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/ext/vgg19_2ee02_s137.data > experiments/ext/vgg19_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vgg19_b54c7_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/ext/vgg19_b54c7_s0.data > experiments/ext/vgg19_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vgg19_b54c7_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/ext/vgg19_b54c7_s1.data > experiments/ext/vgg19_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vgg19_b54c7_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/ext/vgg19_b54c7_s27.data > experiments/ext/vgg19_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vgg19_b54c7_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/ext/vgg19_b54c7_s42.data > experiments/ext/vgg19_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vgg19_b54c7_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/ext/vgg19_b54c7_s137.data > experiments/ext/vgg19_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vgg19_0a0cc_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/ext/vgg19_0a0cc_s0.data > experiments/ext/vgg19_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vgg19_0a0cc_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/ext/vgg19_0a0cc_s1.data > experiments/ext/vgg19_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vgg19_0a0cc_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/ext/vgg19_0a0cc_s27.data > experiments/ext/vgg19_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vgg19_0a0cc_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/ext/vgg19_0a0cc_s42.data > experiments/ext/vgg19_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vgg19_0a0cc_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/ext/vgg19_0a0cc_s137.data > experiments/ext/vgg19_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vgg19_58f4c_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/ext/vgg19_58f4c_s0.data > experiments/ext/vgg19_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vgg19_58f4c_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/ext/vgg19_58f4c_s1.data > experiments/ext/vgg19_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vgg19_58f4c_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/ext/vgg19_58f4c_s27.data > experiments/ext/vgg19_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vgg19_58f4c_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/ext/vgg19_58f4c_s42.data > experiments/ext/vgg19_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vgg19_58f4c_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/ext/vgg19_58f4c_s137.data > experiments/ext/vgg19_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vgg19_ff571_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/ext/vgg19_ff571_s0.data > experiments/ext/vgg19_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vgg19_ff571_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/ext/vgg19_ff571_s1.data > experiments/ext/vgg19_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vgg19_ff571_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/ext/vgg19_ff571_s27.data > experiments/ext/vgg19_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vgg19_ff571_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/ext/vgg19_ff571_s42.data > experiments/ext/vgg19_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vgg19_ff571_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/ext/vgg19_ff571_s137.data > experiments/ext/vgg19_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vgg19_c346c_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/ext/vgg19_c346c_s0.data > experiments/ext/vgg19_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vgg19_c346c_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/ext/vgg19_c346c_s1.data > experiments/ext/vgg19_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vgg19_c346c_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/ext/vgg19_c346c_s27.data > experiments/ext/vgg19_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vgg19_c346c_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/ext/vgg19_c346c_s42.data > experiments/ext/vgg19_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vgg19_c346c_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/ext/vgg19_c346c_s137.data > experiments/ext/vgg19_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vgg19_3ce60_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/ext/vgg19_3ce60_s0.data > experiments/ext/vgg19_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vgg19_3ce60_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/ext/vgg19_3ce60_s1.data > experiments/ext/vgg19_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vgg19_3ce60_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/ext/vgg19_3ce60_s27.data > experiments/ext/vgg19_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vgg19_3ce60_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/ext/vgg19_3ce60_s42.data > experiments/ext/vgg19_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vgg19_3ce60_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/ext/vgg19_3ce60_s137.data > experiments/ext/vgg19_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vgg19_f1dee_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/ext/vgg19_f1dee_s0.data > experiments/ext/vgg19_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vgg19_f1dee_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/ext/vgg19_f1dee_s1.data > experiments/ext/vgg19_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vgg19_f1dee_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/ext/vgg19_f1dee_s27.data > experiments/ext/vgg19_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vgg19_f1dee_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/ext/vgg19_f1dee_s42.data > experiments/ext/vgg19_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vgg19_f1dee_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/ext/vgg19_f1dee_s137.data > experiments/ext/vgg19_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vgg19_9899f_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/ext/vgg19_9899f_s0.data > experiments/ext/vgg19_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vgg19_9899f_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/ext/vgg19_9899f_s1.data > experiments/ext/vgg19_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vgg19_9899f_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/ext/vgg19_9899f_s27.data > experiments/ext/vgg19_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vgg19_9899f_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/ext/vgg19_9899f_s42.data > experiments/ext/vgg19_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vgg19_9899f_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/ext/vgg19_9899f_s137.data > experiments/ext/vgg19_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vgg19_f9059_s0.data -T python src/run.py --model vgg19 --seed 0
perf script -i experiments/ext/vgg19_f9059_s0.data > experiments/ext/vgg19_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vgg19_f9059_s1.data -T python src/run.py --model vgg19 --seed 1
perf script -i experiments/ext/vgg19_f9059_s1.data > experiments/ext/vgg19_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vgg19_f9059_s27.data -T python src/run.py --model vgg19 --seed 27
perf script -i experiments/ext/vgg19_f9059_s27.data > experiments/ext/vgg19_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vgg19_f9059_s42.data -T python src/run.py --model vgg19 --seed 42
perf script -i experiments/ext/vgg19_f9059_s42.data > experiments/ext/vgg19_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vgg19_f9059_s137.data -T python src/run.py --model vgg19 --seed 137
perf script -i experiments/ext/vgg19_f9059_s137.data > experiments/ext/vgg19_f9059_s137.txt
rm experiments/ext/*.data
gdrive files upload experiments/ext/ --recursive
rm -r experiments/ext/
echo '4%ftKJ6*' | kinit kl559@DC.CL.CAM.AC.UK
mkdir experiments/ext/
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vitb16_31a80_s0.data -T python src/run.py --model vitb16 --seed 0
perf script -i experiments/ext/vitb16_31a80_s0.data > experiments/ext/vitb16_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vitb16_31a80_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i experiments/ext/vitb16_31a80_s1.data > experiments/ext/vitb16_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vitb16_31a80_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i experiments/ext/vitb16_31a80_s27.data > experiments/ext/vitb16_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vitb16_31a80_s42.data -T python src/run.py --model vitb16 --seed 42
perf script -i experiments/ext/vitb16_31a80_s42.data > experiments/ext/vitb16_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vitb16_31a80_s137.data -T python src/run.py --model vitb16 --seed 137
perf script -i experiments/ext/vitb16_31a80_s137.data > experiments/ext/vitb16_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vitb16_00b76_s0.data -T python src/run.py --model vitb16 --seed 0
perf script -i experiments/ext/vitb16_00b76_s0.data > experiments/ext/vitb16_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vitb16_00b76_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i experiments/ext/vitb16_00b76_s1.data > experiments/ext/vitb16_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vitb16_00b76_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i experiments/ext/vitb16_00b76_s27.data > experiments/ext/vitb16_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vitb16_00b76_s42.data -T python src/run.py --model vitb16 --seed 42
perf script -i experiments/ext/vitb16_00b76_s42.data > experiments/ext/vitb16_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vitb16_00b76_s137.data -T python src/run.py --model vitb16 --seed 137
perf script -i experiments/ext/vitb16_00b76_s137.data > experiments/ext/vitb16_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vitb16_4bba3_s0.data -T python src/run.py --model vitb16 --seed 0
perf script -i experiments/ext/vitb16_4bba3_s0.data > experiments/ext/vitb16_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vitb16_4bba3_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i experiments/ext/vitb16_4bba3_s1.data > experiments/ext/vitb16_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vitb16_4bba3_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i experiments/ext/vitb16_4bba3_s27.data > experiments/ext/vitb16_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vitb16_4bba3_s42.data -T python src/run.py --model vitb16 --seed 42
perf script -i experiments/ext/vitb16_4bba3_s42.data > experiments/ext/vitb16_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vitb16_4bba3_s137.data -T python src/run.py --model vitb16 --seed 137
perf script -i experiments/ext/vitb16_4bba3_s137.data > experiments/ext/vitb16_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vitb16_73780_s0.data -T python src/run.py --model vitb16 --seed 0
perf script -i experiments/ext/vitb16_73780_s0.data > experiments/ext/vitb16_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vitb16_73780_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i experiments/ext/vitb16_73780_s1.data > experiments/ext/vitb16_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vitb16_73780_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i experiments/ext/vitb16_73780_s27.data > experiments/ext/vitb16_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vitb16_73780_s42.data -T python src/run.py --model vitb16 --seed 42
perf script -i experiments/ext/vitb16_73780_s42.data > experiments/ext/vitb16_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vitb16_73780_s137.data -T python src/run.py --model vitb16 --seed 137
perf script -i experiments/ext/vitb16_73780_s137.data > experiments/ext/vitb16_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vitb16_a1a60_s0.data -T python src/run.py --model vitb16 --seed 0
perf script -i experiments/ext/vitb16_a1a60_s0.data > experiments/ext/vitb16_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vitb16_a1a60_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i experiments/ext/vitb16_a1a60_s1.data > experiments/ext/vitb16_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vitb16_a1a60_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i experiments/ext/vitb16_a1a60_s27.data > experiments/ext/vitb16_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vitb16_a1a60_s42.data -T python src/run.py --model vitb16 --seed 42
perf script -i experiments/ext/vitb16_a1a60_s42.data > experiments/ext/vitb16_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vitb16_a1a60_s137.data -T python src/run.py --model vitb16 --seed 137
perf script -i experiments/ext/vitb16_a1a60_s137.data > experiments/ext/vitb16_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vitb16_2ee02_s0.data -T python src/run.py --model vitb16 --seed 0
perf script -i experiments/ext/vitb16_2ee02_s0.data > experiments/ext/vitb16_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vitb16_2ee02_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i experiments/ext/vitb16_2ee02_s1.data > experiments/ext/vitb16_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vitb16_2ee02_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i experiments/ext/vitb16_2ee02_s27.data > experiments/ext/vitb16_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vitb16_2ee02_s42.data -T python src/run.py --model vitb16 --seed 42
perf script -i experiments/ext/vitb16_2ee02_s42.data > experiments/ext/vitb16_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vitb16_2ee02_s137.data -T python src/run.py --model vitb16 --seed 137
perf script -i experiments/ext/vitb16_2ee02_s137.data > experiments/ext/vitb16_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vitb16_b54c7_s0.data -T python src/run.py --model vitb16 --seed 0
perf script -i experiments/ext/vitb16_b54c7_s0.data > experiments/ext/vitb16_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vitb16_b54c7_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i experiments/ext/vitb16_b54c7_s1.data > experiments/ext/vitb16_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vitb16_b54c7_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i experiments/ext/vitb16_b54c7_s27.data > experiments/ext/vitb16_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vitb16_b54c7_s42.data -T python src/run.py --model vitb16 --seed 42
perf script -i experiments/ext/vitb16_b54c7_s42.data > experiments/ext/vitb16_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vitb16_b54c7_s137.data -T python src/run.py --model vitb16 --seed 137
perf script -i experiments/ext/vitb16_b54c7_s137.data > experiments/ext/vitb16_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vitb16_0a0cc_s0.data -T python src/run.py --model vitb16 --seed 0
perf script -i experiments/ext/vitb16_0a0cc_s0.data > experiments/ext/vitb16_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vitb16_0a0cc_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i experiments/ext/vitb16_0a0cc_s1.data > experiments/ext/vitb16_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vitb16_0a0cc_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i experiments/ext/vitb16_0a0cc_s27.data > experiments/ext/vitb16_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vitb16_0a0cc_s42.data -T python src/run.py --model vitb16 --seed 42
perf script -i experiments/ext/vitb16_0a0cc_s42.data > experiments/ext/vitb16_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vitb16_0a0cc_s137.data -T python src/run.py --model vitb16 --seed 137
perf script -i experiments/ext/vitb16_0a0cc_s137.data > experiments/ext/vitb16_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vitb16_58f4c_s0.data -T python src/run.py --model vitb16 --seed 0
perf script -i experiments/ext/vitb16_58f4c_s0.data > experiments/ext/vitb16_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vitb16_58f4c_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i experiments/ext/vitb16_58f4c_s1.data > experiments/ext/vitb16_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vitb16_58f4c_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i experiments/ext/vitb16_58f4c_s27.data > experiments/ext/vitb16_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vitb16_58f4c_s42.data -T python src/run.py --model vitb16 --seed 42
perf script -i experiments/ext/vitb16_58f4c_s42.data > experiments/ext/vitb16_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vitb16_58f4c_s137.data -T python src/run.py --model vitb16 --seed 137
perf script -i experiments/ext/vitb16_58f4c_s137.data > experiments/ext/vitb16_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vitb16_ff571_s0.data -T python src/run.py --model vitb16 --seed 0
perf script -i experiments/ext/vitb16_ff571_s0.data > experiments/ext/vitb16_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vitb16_ff571_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i experiments/ext/vitb16_ff571_s1.data > experiments/ext/vitb16_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vitb16_ff571_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i experiments/ext/vitb16_ff571_s27.data > experiments/ext/vitb16_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vitb16_ff571_s42.data -T python src/run.py --model vitb16 --seed 42
perf script -i experiments/ext/vitb16_ff571_s42.data > experiments/ext/vitb16_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vitb16_ff571_s137.data -T python src/run.py --model vitb16 --seed 137
perf script -i experiments/ext/vitb16_ff571_s137.data > experiments/ext/vitb16_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vitb16_c346c_s0.data -T python src/run.py --model vitb16 --seed 0
perf script -i experiments/ext/vitb16_c346c_s0.data > experiments/ext/vitb16_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vitb16_c346c_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i experiments/ext/vitb16_c346c_s1.data > experiments/ext/vitb16_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vitb16_c346c_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i experiments/ext/vitb16_c346c_s27.data > experiments/ext/vitb16_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vitb16_c346c_s42.data -T python src/run.py --model vitb16 --seed 42
perf script -i experiments/ext/vitb16_c346c_s42.data > experiments/ext/vitb16_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vitb16_c346c_s137.data -T python src/run.py --model vitb16 --seed 137
perf script -i experiments/ext/vitb16_c346c_s137.data > experiments/ext/vitb16_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vitb16_3ce60_s0.data -T python src/run.py --model vitb16 --seed 0
perf script -i experiments/ext/vitb16_3ce60_s0.data > experiments/ext/vitb16_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vitb16_3ce60_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i experiments/ext/vitb16_3ce60_s1.data > experiments/ext/vitb16_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vitb16_3ce60_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i experiments/ext/vitb16_3ce60_s27.data > experiments/ext/vitb16_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vitb16_3ce60_s42.data -T python src/run.py --model vitb16 --seed 42
perf script -i experiments/ext/vitb16_3ce60_s42.data > experiments/ext/vitb16_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vitb16_3ce60_s137.data -T python src/run.py --model vitb16 --seed 137
perf script -i experiments/ext/vitb16_3ce60_s137.data > experiments/ext/vitb16_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vitb16_f1dee_s0.data -T python src/run.py --model vitb16 --seed 0
perf script -i experiments/ext/vitb16_f1dee_s0.data > experiments/ext/vitb16_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vitb16_f1dee_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i experiments/ext/vitb16_f1dee_s1.data > experiments/ext/vitb16_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vitb16_f1dee_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i experiments/ext/vitb16_f1dee_s27.data > experiments/ext/vitb16_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vitb16_f1dee_s42.data -T python src/run.py --model vitb16 --seed 42
perf script -i experiments/ext/vitb16_f1dee_s42.data > experiments/ext/vitb16_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vitb16_f1dee_s137.data -T python src/run.py --model vitb16 --seed 137
perf script -i experiments/ext/vitb16_f1dee_s137.data > experiments/ext/vitb16_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vitb16_9899f_s0.data -T python src/run.py --model vitb16 --seed 0
perf script -i experiments/ext/vitb16_9899f_s0.data > experiments/ext/vitb16_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vitb16_9899f_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i experiments/ext/vitb16_9899f_s1.data > experiments/ext/vitb16_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vitb16_9899f_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i experiments/ext/vitb16_9899f_s27.data > experiments/ext/vitb16_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vitb16_9899f_s42.data -T python src/run.py --model vitb16 --seed 42
perf script -i experiments/ext/vitb16_9899f_s42.data > experiments/ext/vitb16_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vitb16_9899f_s137.data -T python src/run.py --model vitb16 --seed 137
perf script -i experiments/ext/vitb16_9899f_s137.data > experiments/ext/vitb16_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vitb16_f9059_s0.data -T python src/run.py --model vitb16 --seed 0
perf script -i experiments/ext/vitb16_f9059_s0.data > experiments/ext/vitb16_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vitb16_f9059_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i experiments/ext/vitb16_f9059_s1.data > experiments/ext/vitb16_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vitb16_f9059_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i experiments/ext/vitb16_f9059_s27.data > experiments/ext/vitb16_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vitb16_f9059_s42.data -T python src/run.py --model vitb16 --seed 42
perf script -i experiments/ext/vitb16_f9059_s42.data > experiments/ext/vitb16_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vitb16_f9059_s137.data -T python src/run.py --model vitb16 --seed 137
perf script -i experiments/ext/vitb16_f9059_s137.data > experiments/ext/vitb16_f9059_s137.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vitb32_31a80_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/ext/vitb32_31a80_s0.data > experiments/ext/vitb32_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vitb32_31a80_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/ext/vitb32_31a80_s1.data > experiments/ext/vitb32_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vitb32_31a80_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/ext/vitb32_31a80_s27.data > experiments/ext/vitb32_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vitb32_31a80_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/ext/vitb32_31a80_s42.data > experiments/ext/vitb32_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vitb32_31a80_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/ext/vitb32_31a80_s137.data > experiments/ext/vitb32_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vitb32_00b76_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/ext/vitb32_00b76_s0.data > experiments/ext/vitb32_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vitb32_00b76_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/ext/vitb32_00b76_s1.data > experiments/ext/vitb32_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vitb32_00b76_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/ext/vitb32_00b76_s27.data > experiments/ext/vitb32_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vitb32_00b76_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/ext/vitb32_00b76_s42.data > experiments/ext/vitb32_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vitb32_00b76_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/ext/vitb32_00b76_s137.data > experiments/ext/vitb32_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vitb32_4bba3_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/ext/vitb32_4bba3_s0.data > experiments/ext/vitb32_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vitb32_4bba3_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/ext/vitb32_4bba3_s1.data > experiments/ext/vitb32_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vitb32_4bba3_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/ext/vitb32_4bba3_s27.data > experiments/ext/vitb32_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vitb32_4bba3_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/ext/vitb32_4bba3_s42.data > experiments/ext/vitb32_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vitb32_4bba3_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/ext/vitb32_4bba3_s137.data > experiments/ext/vitb32_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vitb32_73780_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/ext/vitb32_73780_s0.data > experiments/ext/vitb32_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vitb32_73780_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/ext/vitb32_73780_s1.data > experiments/ext/vitb32_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vitb32_73780_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/ext/vitb32_73780_s27.data > experiments/ext/vitb32_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vitb32_73780_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/ext/vitb32_73780_s42.data > experiments/ext/vitb32_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vitb32_73780_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/ext/vitb32_73780_s137.data > experiments/ext/vitb32_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vitb32_a1a60_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/ext/vitb32_a1a60_s0.data > experiments/ext/vitb32_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vitb32_a1a60_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/ext/vitb32_a1a60_s1.data > experiments/ext/vitb32_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vitb32_a1a60_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/ext/vitb32_a1a60_s27.data > experiments/ext/vitb32_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vitb32_a1a60_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/ext/vitb32_a1a60_s42.data > experiments/ext/vitb32_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vitb32_a1a60_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/ext/vitb32_a1a60_s137.data > experiments/ext/vitb32_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vitb32_2ee02_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/ext/vitb32_2ee02_s0.data > experiments/ext/vitb32_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vitb32_2ee02_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/ext/vitb32_2ee02_s1.data > experiments/ext/vitb32_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vitb32_2ee02_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/ext/vitb32_2ee02_s27.data > experiments/ext/vitb32_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vitb32_2ee02_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/ext/vitb32_2ee02_s42.data > experiments/ext/vitb32_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vitb32_2ee02_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/ext/vitb32_2ee02_s137.data > experiments/ext/vitb32_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vitb32_b54c7_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/ext/vitb32_b54c7_s0.data > experiments/ext/vitb32_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vitb32_b54c7_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/ext/vitb32_b54c7_s1.data > experiments/ext/vitb32_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vitb32_b54c7_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/ext/vitb32_b54c7_s27.data > experiments/ext/vitb32_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vitb32_b54c7_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/ext/vitb32_b54c7_s42.data > experiments/ext/vitb32_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vitb32_b54c7_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/ext/vitb32_b54c7_s137.data > experiments/ext/vitb32_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vitb32_0a0cc_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/ext/vitb32_0a0cc_s0.data > experiments/ext/vitb32_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vitb32_0a0cc_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/ext/vitb32_0a0cc_s1.data > experiments/ext/vitb32_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vitb32_0a0cc_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/ext/vitb32_0a0cc_s27.data > experiments/ext/vitb32_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vitb32_0a0cc_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/ext/vitb32_0a0cc_s42.data > experiments/ext/vitb32_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vitb32_0a0cc_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/ext/vitb32_0a0cc_s137.data > experiments/ext/vitb32_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vitb32_58f4c_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/ext/vitb32_58f4c_s0.data > experiments/ext/vitb32_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vitb32_58f4c_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/ext/vitb32_58f4c_s1.data > experiments/ext/vitb32_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vitb32_58f4c_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/ext/vitb32_58f4c_s27.data > experiments/ext/vitb32_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vitb32_58f4c_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/ext/vitb32_58f4c_s42.data > experiments/ext/vitb32_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vitb32_58f4c_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/ext/vitb32_58f4c_s137.data > experiments/ext/vitb32_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vitb32_ff571_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/ext/vitb32_ff571_s0.data > experiments/ext/vitb32_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vitb32_ff571_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/ext/vitb32_ff571_s1.data > experiments/ext/vitb32_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vitb32_ff571_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/ext/vitb32_ff571_s27.data > experiments/ext/vitb32_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vitb32_ff571_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/ext/vitb32_ff571_s42.data > experiments/ext/vitb32_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vitb32_ff571_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/ext/vitb32_ff571_s137.data > experiments/ext/vitb32_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vitb32_c346c_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/ext/vitb32_c346c_s0.data > experiments/ext/vitb32_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vitb32_c346c_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/ext/vitb32_c346c_s1.data > experiments/ext/vitb32_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vitb32_c346c_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/ext/vitb32_c346c_s27.data > experiments/ext/vitb32_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vitb32_c346c_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/ext/vitb32_c346c_s42.data > experiments/ext/vitb32_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vitb32_c346c_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/ext/vitb32_c346c_s137.data > experiments/ext/vitb32_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vitb32_3ce60_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/ext/vitb32_3ce60_s0.data > experiments/ext/vitb32_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vitb32_3ce60_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/ext/vitb32_3ce60_s1.data > experiments/ext/vitb32_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vitb32_3ce60_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/ext/vitb32_3ce60_s27.data > experiments/ext/vitb32_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vitb32_3ce60_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/ext/vitb32_3ce60_s42.data > experiments/ext/vitb32_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vitb32_3ce60_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/ext/vitb32_3ce60_s137.data > experiments/ext/vitb32_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vitb32_f1dee_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/ext/vitb32_f1dee_s0.data > experiments/ext/vitb32_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vitb32_f1dee_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/ext/vitb32_f1dee_s1.data > experiments/ext/vitb32_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vitb32_f1dee_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/ext/vitb32_f1dee_s27.data > experiments/ext/vitb32_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vitb32_f1dee_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/ext/vitb32_f1dee_s42.data > experiments/ext/vitb32_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vitb32_f1dee_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/ext/vitb32_f1dee_s137.data > experiments/ext/vitb32_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vitb32_9899f_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/ext/vitb32_9899f_s0.data > experiments/ext/vitb32_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vitb32_9899f_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/ext/vitb32_9899f_s1.data > experiments/ext/vitb32_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vitb32_9899f_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/ext/vitb32_9899f_s27.data > experiments/ext/vitb32_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vitb32_9899f_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/ext/vitb32_9899f_s42.data > experiments/ext/vitb32_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vitb32_9899f_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/ext/vitb32_9899f_s137.data > experiments/ext/vitb32_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vitb32_f9059_s0.data -T python src/run.py --model vitb32 --seed 0
perf script -i experiments/ext/vitb32_f9059_s0.data > experiments/ext/vitb32_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vitb32_f9059_s1.data -T python src/run.py --model vitb32 --seed 1
perf script -i experiments/ext/vitb32_f9059_s1.data > experiments/ext/vitb32_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vitb32_f9059_s27.data -T python src/run.py --model vitb32 --seed 27
perf script -i experiments/ext/vitb32_f9059_s27.data > experiments/ext/vitb32_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vitb32_f9059_s42.data -T python src/run.py --model vitb32 --seed 42
perf script -i experiments/ext/vitb32_f9059_s42.data > experiments/ext/vitb32_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vitb32_f9059_s137.data -T python src/run.py --model vitb32 --seed 137
perf script -i experiments/ext/vitb32_f9059_s137.data > experiments/ext/vitb32_f9059_s137.txt
rm experiments/ext/*.data
gdrive files upload experiments/ext/ --recursive
rm -r experiments/ext/
echo '4%ftKJ6*' | kinit kl559@DC.CL.CAM.AC.UK
mkdir experiments/ext/
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vitl16_31a80_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/ext/vitl16_31a80_s0.data > experiments/ext/vitl16_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vitl16_31a80_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/ext/vitl16_31a80_s1.data > experiments/ext/vitl16_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vitl16_31a80_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/ext/vitl16_31a80_s27.data > experiments/ext/vitl16_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vitl16_31a80_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/ext/vitl16_31a80_s42.data > experiments/ext/vitl16_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vitl16_31a80_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/ext/vitl16_31a80_s137.data > experiments/ext/vitl16_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vitl16_00b76_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/ext/vitl16_00b76_s0.data > experiments/ext/vitl16_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vitl16_00b76_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/ext/vitl16_00b76_s1.data > experiments/ext/vitl16_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vitl16_00b76_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/ext/vitl16_00b76_s27.data > experiments/ext/vitl16_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vitl16_00b76_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/ext/vitl16_00b76_s42.data > experiments/ext/vitl16_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vitl16_00b76_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/ext/vitl16_00b76_s137.data > experiments/ext/vitl16_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vitl16_4bba3_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/ext/vitl16_4bba3_s0.data > experiments/ext/vitl16_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vitl16_4bba3_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/ext/vitl16_4bba3_s1.data > experiments/ext/vitl16_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vitl16_4bba3_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/ext/vitl16_4bba3_s27.data > experiments/ext/vitl16_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vitl16_4bba3_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/ext/vitl16_4bba3_s42.data > experiments/ext/vitl16_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vitl16_4bba3_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/ext/vitl16_4bba3_s137.data > experiments/ext/vitl16_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vitl16_73780_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/ext/vitl16_73780_s0.data > experiments/ext/vitl16_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vitl16_73780_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/ext/vitl16_73780_s1.data > experiments/ext/vitl16_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vitl16_73780_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/ext/vitl16_73780_s27.data > experiments/ext/vitl16_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vitl16_73780_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/ext/vitl16_73780_s42.data > experiments/ext/vitl16_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vitl16_73780_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/ext/vitl16_73780_s137.data > experiments/ext/vitl16_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vitl16_a1a60_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/ext/vitl16_a1a60_s0.data > experiments/ext/vitl16_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vitl16_a1a60_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/ext/vitl16_a1a60_s1.data > experiments/ext/vitl16_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vitl16_a1a60_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/ext/vitl16_a1a60_s27.data > experiments/ext/vitl16_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vitl16_a1a60_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/ext/vitl16_a1a60_s42.data > experiments/ext/vitl16_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vitl16_a1a60_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/ext/vitl16_a1a60_s137.data > experiments/ext/vitl16_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vitl16_2ee02_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/ext/vitl16_2ee02_s0.data > experiments/ext/vitl16_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vitl16_2ee02_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/ext/vitl16_2ee02_s1.data > experiments/ext/vitl16_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vitl16_2ee02_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/ext/vitl16_2ee02_s27.data > experiments/ext/vitl16_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vitl16_2ee02_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/ext/vitl16_2ee02_s42.data > experiments/ext/vitl16_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vitl16_2ee02_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/ext/vitl16_2ee02_s137.data > experiments/ext/vitl16_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vitl16_b54c7_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/ext/vitl16_b54c7_s0.data > experiments/ext/vitl16_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vitl16_b54c7_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/ext/vitl16_b54c7_s1.data > experiments/ext/vitl16_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vitl16_b54c7_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/ext/vitl16_b54c7_s27.data > experiments/ext/vitl16_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vitl16_b54c7_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/ext/vitl16_b54c7_s42.data > experiments/ext/vitl16_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vitl16_b54c7_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/ext/vitl16_b54c7_s137.data > experiments/ext/vitl16_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vitl16_0a0cc_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/ext/vitl16_0a0cc_s0.data > experiments/ext/vitl16_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vitl16_0a0cc_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/ext/vitl16_0a0cc_s1.data > experiments/ext/vitl16_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vitl16_0a0cc_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/ext/vitl16_0a0cc_s27.data > experiments/ext/vitl16_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vitl16_0a0cc_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/ext/vitl16_0a0cc_s42.data > experiments/ext/vitl16_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vitl16_0a0cc_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/ext/vitl16_0a0cc_s137.data > experiments/ext/vitl16_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vitl16_58f4c_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/ext/vitl16_58f4c_s0.data > experiments/ext/vitl16_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vitl16_58f4c_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/ext/vitl16_58f4c_s1.data > experiments/ext/vitl16_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vitl16_58f4c_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/ext/vitl16_58f4c_s27.data > experiments/ext/vitl16_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vitl16_58f4c_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/ext/vitl16_58f4c_s42.data > experiments/ext/vitl16_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vitl16_58f4c_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/ext/vitl16_58f4c_s137.data > experiments/ext/vitl16_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vitl16_ff571_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/ext/vitl16_ff571_s0.data > experiments/ext/vitl16_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vitl16_ff571_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/ext/vitl16_ff571_s1.data > experiments/ext/vitl16_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vitl16_ff571_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/ext/vitl16_ff571_s27.data > experiments/ext/vitl16_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vitl16_ff571_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/ext/vitl16_ff571_s42.data > experiments/ext/vitl16_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vitl16_ff571_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/ext/vitl16_ff571_s137.data > experiments/ext/vitl16_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vitl16_c346c_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/ext/vitl16_c346c_s0.data > experiments/ext/vitl16_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vitl16_c346c_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/ext/vitl16_c346c_s1.data > experiments/ext/vitl16_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vitl16_c346c_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/ext/vitl16_c346c_s27.data > experiments/ext/vitl16_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vitl16_c346c_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/ext/vitl16_c346c_s42.data > experiments/ext/vitl16_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vitl16_c346c_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/ext/vitl16_c346c_s137.data > experiments/ext/vitl16_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vitl16_3ce60_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/ext/vitl16_3ce60_s0.data > experiments/ext/vitl16_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vitl16_3ce60_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/ext/vitl16_3ce60_s1.data > experiments/ext/vitl16_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vitl16_3ce60_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/ext/vitl16_3ce60_s27.data > experiments/ext/vitl16_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vitl16_3ce60_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/ext/vitl16_3ce60_s42.data > experiments/ext/vitl16_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vitl16_3ce60_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/ext/vitl16_3ce60_s137.data > experiments/ext/vitl16_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vitl16_f1dee_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/ext/vitl16_f1dee_s0.data > experiments/ext/vitl16_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vitl16_f1dee_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/ext/vitl16_f1dee_s1.data > experiments/ext/vitl16_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vitl16_f1dee_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/ext/vitl16_f1dee_s27.data > experiments/ext/vitl16_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vitl16_f1dee_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/ext/vitl16_f1dee_s42.data > experiments/ext/vitl16_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vitl16_f1dee_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/ext/vitl16_f1dee_s137.data > experiments/ext/vitl16_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vitl16_9899f_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/ext/vitl16_9899f_s0.data > experiments/ext/vitl16_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vitl16_9899f_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/ext/vitl16_9899f_s1.data > experiments/ext/vitl16_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vitl16_9899f_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/ext/vitl16_9899f_s27.data > experiments/ext/vitl16_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vitl16_9899f_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/ext/vitl16_9899f_s42.data > experiments/ext/vitl16_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vitl16_9899f_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/ext/vitl16_9899f_s137.data > experiments/ext/vitl16_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vitl16_f9059_s0.data -T python src/run.py --model vitl16 --seed 0
perf script -i experiments/ext/vitl16_f9059_s0.data > experiments/ext/vitl16_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vitl16_f9059_s1.data -T python src/run.py --model vitl16 --seed 1
perf script -i experiments/ext/vitl16_f9059_s1.data > experiments/ext/vitl16_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vitl16_f9059_s27.data -T python src/run.py --model vitl16 --seed 27
perf script -i experiments/ext/vitl16_f9059_s27.data > experiments/ext/vitl16_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vitl16_f9059_s42.data -T python src/run.py --model vitl16 --seed 42
perf script -i experiments/ext/vitl16_f9059_s42.data > experiments/ext/vitl16_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vitl16_f9059_s137.data -T python src/run.py --model vitl16 --seed 137
perf script -i experiments/ext/vitl16_f9059_s137.data > experiments/ext/vitl16_f9059_s137.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vitl32_31a80_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/ext/vitl32_31a80_s0.data > experiments/ext/vitl32_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vitl32_31a80_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/ext/vitl32_31a80_s1.data > experiments/ext/vitl32_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vitl32_31a80_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/ext/vitl32_31a80_s27.data > experiments/ext/vitl32_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vitl32_31a80_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/ext/vitl32_31a80_s42.data > experiments/ext/vitl32_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/ext/vitl32_31a80_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/ext/vitl32_31a80_s137.data > experiments/ext/vitl32_31a80_s137.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vitl32_00b76_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/ext/vitl32_00b76_s0.data > experiments/ext/vitl32_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vitl32_00b76_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/ext/vitl32_00b76_s1.data > experiments/ext/vitl32_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vitl32_00b76_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/ext/vitl32_00b76_s27.data > experiments/ext/vitl32_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vitl32_00b76_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/ext/vitl32_00b76_s42.data > experiments/ext/vitl32_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/ext/vitl32_00b76_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/ext/vitl32_00b76_s137.data > experiments/ext/vitl32_00b76_s137.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vitl32_4bba3_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/ext/vitl32_4bba3_s0.data > experiments/ext/vitl32_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vitl32_4bba3_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/ext/vitl32_4bba3_s1.data > experiments/ext/vitl32_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vitl32_4bba3_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/ext/vitl32_4bba3_s27.data > experiments/ext/vitl32_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vitl32_4bba3_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/ext/vitl32_4bba3_s42.data > experiments/ext/vitl32_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/ext/vitl32_4bba3_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/ext/vitl32_4bba3_s137.data > experiments/ext/vitl32_4bba3_s137.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vitl32_73780_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/ext/vitl32_73780_s0.data > experiments/ext/vitl32_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vitl32_73780_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/ext/vitl32_73780_s1.data > experiments/ext/vitl32_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vitl32_73780_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/ext/vitl32_73780_s27.data > experiments/ext/vitl32_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vitl32_73780_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/ext/vitl32_73780_s42.data > experiments/ext/vitl32_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/ext/vitl32_73780_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/ext/vitl32_73780_s137.data > experiments/ext/vitl32_73780_s137.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vitl32_a1a60_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/ext/vitl32_a1a60_s0.data > experiments/ext/vitl32_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vitl32_a1a60_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/ext/vitl32_a1a60_s1.data > experiments/ext/vitl32_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vitl32_a1a60_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/ext/vitl32_a1a60_s27.data > experiments/ext/vitl32_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vitl32_a1a60_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/ext/vitl32_a1a60_s42.data > experiments/ext/vitl32_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/ext/vitl32_a1a60_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/ext/vitl32_a1a60_s137.data > experiments/ext/vitl32_a1a60_s137.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vitl32_2ee02_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/ext/vitl32_2ee02_s0.data > experiments/ext/vitl32_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vitl32_2ee02_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/ext/vitl32_2ee02_s1.data > experiments/ext/vitl32_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vitl32_2ee02_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/ext/vitl32_2ee02_s27.data > experiments/ext/vitl32_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vitl32_2ee02_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/ext/vitl32_2ee02_s42.data > experiments/ext/vitl32_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/ext/vitl32_2ee02_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/ext/vitl32_2ee02_s137.data > experiments/ext/vitl32_2ee02_s137.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vitl32_b54c7_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/ext/vitl32_b54c7_s0.data > experiments/ext/vitl32_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vitl32_b54c7_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/ext/vitl32_b54c7_s1.data > experiments/ext/vitl32_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vitl32_b54c7_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/ext/vitl32_b54c7_s27.data > experiments/ext/vitl32_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vitl32_b54c7_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/ext/vitl32_b54c7_s42.data > experiments/ext/vitl32_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/ext/vitl32_b54c7_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/ext/vitl32_b54c7_s137.data > experiments/ext/vitl32_b54c7_s137.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vitl32_0a0cc_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/ext/vitl32_0a0cc_s0.data > experiments/ext/vitl32_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vitl32_0a0cc_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/ext/vitl32_0a0cc_s1.data > experiments/ext/vitl32_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vitl32_0a0cc_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/ext/vitl32_0a0cc_s27.data > experiments/ext/vitl32_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vitl32_0a0cc_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/ext/vitl32_0a0cc_s42.data > experiments/ext/vitl32_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/ext/vitl32_0a0cc_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/ext/vitl32_0a0cc_s137.data > experiments/ext/vitl32_0a0cc_s137.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vitl32_58f4c_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/ext/vitl32_58f4c_s0.data > experiments/ext/vitl32_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vitl32_58f4c_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/ext/vitl32_58f4c_s1.data > experiments/ext/vitl32_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vitl32_58f4c_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/ext/vitl32_58f4c_s27.data > experiments/ext/vitl32_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vitl32_58f4c_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/ext/vitl32_58f4c_s42.data > experiments/ext/vitl32_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/ext/vitl32_58f4c_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/ext/vitl32_58f4c_s137.data > experiments/ext/vitl32_58f4c_s137.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vitl32_ff571_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/ext/vitl32_ff571_s0.data > experiments/ext/vitl32_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vitl32_ff571_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/ext/vitl32_ff571_s1.data > experiments/ext/vitl32_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vitl32_ff571_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/ext/vitl32_ff571_s27.data > experiments/ext/vitl32_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vitl32_ff571_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/ext/vitl32_ff571_s42.data > experiments/ext/vitl32_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/ext/vitl32_ff571_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/ext/vitl32_ff571_s137.data > experiments/ext/vitl32_ff571_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vitl32_c346c_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/ext/vitl32_c346c_s0.data > experiments/ext/vitl32_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vitl32_c346c_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/ext/vitl32_c346c_s1.data > experiments/ext/vitl32_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vitl32_c346c_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/ext/vitl32_c346c_s27.data > experiments/ext/vitl32_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vitl32_c346c_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/ext/vitl32_c346c_s42.data > experiments/ext/vitl32_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/ext/vitl32_c346c_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/ext/vitl32_c346c_s137.data > experiments/ext/vitl32_c346c_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vitl32_3ce60_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/ext/vitl32_3ce60_s0.data > experiments/ext/vitl32_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vitl32_3ce60_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/ext/vitl32_3ce60_s1.data > experiments/ext/vitl32_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vitl32_3ce60_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/ext/vitl32_3ce60_s27.data > experiments/ext/vitl32_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vitl32_3ce60_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/ext/vitl32_3ce60_s42.data > experiments/ext/vitl32_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/ext/vitl32_3ce60_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/ext/vitl32_3ce60_s137.data > experiments/ext/vitl32_3ce60_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vitl32_f1dee_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/ext/vitl32_f1dee_s0.data > experiments/ext/vitl32_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vitl32_f1dee_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/ext/vitl32_f1dee_s1.data > experiments/ext/vitl32_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vitl32_f1dee_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/ext/vitl32_f1dee_s27.data > experiments/ext/vitl32_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vitl32_f1dee_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/ext/vitl32_f1dee_s42.data > experiments/ext/vitl32_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/ext/vitl32_f1dee_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/ext/vitl32_f1dee_s137.data > experiments/ext/vitl32_f1dee_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vitl32_9899f_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/ext/vitl32_9899f_s0.data > experiments/ext/vitl32_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vitl32_9899f_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/ext/vitl32_9899f_s1.data > experiments/ext/vitl32_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vitl32_9899f_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/ext/vitl32_9899f_s27.data > experiments/ext/vitl32_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vitl32_9899f_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/ext/vitl32_9899f_s42.data > experiments/ext/vitl32_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/ext/vitl32_9899f_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/ext/vitl32_9899f_s137.data > experiments/ext/vitl32_9899f_s137.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vitl32_f9059_s0.data -T python src/run.py --model vitl32 --seed 0
perf script -i experiments/ext/vitl32_f9059_s0.data > experiments/ext/vitl32_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vitl32_f9059_s1.data -T python src/run.py --model vitl32 --seed 1
perf script -i experiments/ext/vitl32_f9059_s1.data > experiments/ext/vitl32_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vitl32_f9059_s27.data -T python src/run.py --model vitl32 --seed 27
perf script -i experiments/ext/vitl32_f9059_s27.data > experiments/ext/vitl32_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vitl32_f9059_s42.data -T python src/run.py --model vitl32 --seed 42
perf script -i experiments/ext/vitl32_f9059_s42.data > experiments/ext/vitl32_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/ext/vitl32_f9059_s137.data -T python src/run.py --model vitl32 --seed 137
perf script -i experiments/ext/vitl32_f9059_s137.data > experiments/ext/vitl32_f9059_s137.txt
rm experiments/ext/*.data
gdrive files upload experiments/ext/ --recursive
rm -r experiments/ext/
