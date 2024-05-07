#!/bin/bash
mkdir experiments/vith14/
echo '4%ftKJ6*' | kinit kl559@DC.CL.CAM.AC.UK
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/vith14/vith14_31a80_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/vith14/vith14_31a80_s0.data > experiments/vith14/vith14_31a80_s0.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/vith14/vith14_31a80_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/vith14/vith14_31a80_s1.data > experiments/vith14/vith14_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/vith14/vith14_31a80_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/vith14/vith14_31a80_s27.data > experiments/vith14/vith14_31a80_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/vith14/vith14_31a80_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/vith14/vith14_31a80_s42.data > experiments/vith14/vith14_31a80_s42.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o experiments/vith14/vith14_31a80_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/vith14/vith14_31a80_s137.data > experiments/vith14/vith14_31a80_s137.txt
echo '4%ftKJ6*' | kinit kl559@DC.CL.CAM.AC.UK
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/vith14/vith14_00b76_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/vith14/vith14_00b76_s0.data > experiments/vith14/vith14_00b76_s0.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/vith14/vith14_00b76_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/vith14/vith14_00b76_s1.data > experiments/vith14/vith14_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/vith14/vith14_00b76_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/vith14/vith14_00b76_s27.data > experiments/vith14/vith14_00b76_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/vith14/vith14_00b76_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/vith14/vith14_00b76_s42.data > experiments/vith14/vith14_00b76_s42.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o experiments/vith14/vith14_00b76_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/vith14/vith14_00b76_s137.data > experiments/vith14/vith14_00b76_s137.txt
echo '4%ftKJ6*' | kinit kl559@DC.CL.CAM.AC.UK
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/vith14/vith14_4bba3_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/vith14/vith14_4bba3_s0.data > experiments/vith14/vith14_4bba3_s0.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/vith14/vith14_4bba3_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/vith14/vith14_4bba3_s1.data > experiments/vith14/vith14_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/vith14/vith14_4bba3_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/vith14/vith14_4bba3_s27.data > experiments/vith14/vith14_4bba3_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/vith14/vith14_4bba3_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/vith14/vith14_4bba3_s42.data > experiments/vith14/vith14_4bba3_s42.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o experiments/vith14/vith14_4bba3_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/vith14/vith14_4bba3_s137.data > experiments/vith14/vith14_4bba3_s137.txt
echo '4%ftKJ6*' | kinit kl559@DC.CL.CAM.AC.UK
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/vith14/vith14_73780_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/vith14/vith14_73780_s0.data > experiments/vith14/vith14_73780_s0.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/vith14/vith14_73780_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/vith14/vith14_73780_s1.data > experiments/vith14/vith14_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/vith14/vith14_73780_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/vith14/vith14_73780_s27.data > experiments/vith14/vith14_73780_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/vith14/vith14_73780_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/vith14/vith14_73780_s42.data > experiments/vith14/vith14_73780_s42.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o experiments/vith14/vith14_73780_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/vith14/vith14_73780_s137.data > experiments/vith14/vith14_73780_s137.txt
echo '4%ftKJ6*' | kinit kl559@DC.CL.CAM.AC.UK
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/vith14/vith14_a1a60_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/vith14/vith14_a1a60_s0.data > experiments/vith14/vith14_a1a60_s0.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/vith14/vith14_a1a60_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/vith14/vith14_a1a60_s1.data > experiments/vith14/vith14_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/vith14/vith14_a1a60_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/vith14/vith14_a1a60_s27.data > experiments/vith14/vith14_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/vith14/vith14_a1a60_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/vith14/vith14_a1a60_s42.data > experiments/vith14/vith14_a1a60_s42.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o experiments/vith14/vith14_a1a60_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/vith14/vith14_a1a60_s137.data > experiments/vith14/vith14_a1a60_s137.txt
echo '4%ftKJ6*' | kinit kl559@DC.CL.CAM.AC.UK
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/vith14/vith14_2ee02_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/vith14/vith14_2ee02_s0.data > experiments/vith14/vith14_2ee02_s0.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/vith14/vith14_2ee02_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/vith14/vith14_2ee02_s1.data > experiments/vith14/vith14_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/vith14/vith14_2ee02_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/vith14/vith14_2ee02_s27.data > experiments/vith14/vith14_2ee02_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/vith14/vith14_2ee02_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/vith14/vith14_2ee02_s42.data > experiments/vith14/vith14_2ee02_s42.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o experiments/vith14/vith14_2ee02_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/vith14/vith14_2ee02_s137.data > experiments/vith14/vith14_2ee02_s137.txt
echo '4%ftKJ6*' | kinit kl559@DC.CL.CAM.AC.UK
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/vith14/vith14_b54c7_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/vith14/vith14_b54c7_s0.data > experiments/vith14/vith14_b54c7_s0.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/vith14/vith14_b54c7_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/vith14/vith14_b54c7_s1.data > experiments/vith14/vith14_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/vith14/vith14_b54c7_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/vith14/vith14_b54c7_s27.data > experiments/vith14/vith14_b54c7_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/vith14/vith14_b54c7_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/vith14/vith14_b54c7_s42.data > experiments/vith14/vith14_b54c7_s42.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o experiments/vith14/vith14_b54c7_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/vith14/vith14_b54c7_s137.data > experiments/vith14/vith14_b54c7_s137.txt
echo '4%ftKJ6*' | kinit kl559@DC.CL.CAM.AC.UK
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/vith14/vith14_0a0cc_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/vith14/vith14_0a0cc_s0.data > experiments/vith14/vith14_0a0cc_s0.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/vith14/vith14_0a0cc_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/vith14/vith14_0a0cc_s1.data > experiments/vith14/vith14_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/vith14/vith14_0a0cc_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/vith14/vith14_0a0cc_s27.data > experiments/vith14/vith14_0a0cc_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/vith14/vith14_0a0cc_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/vith14/vith14_0a0cc_s42.data > experiments/vith14/vith14_0a0cc_s42.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o experiments/vith14/vith14_0a0cc_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/vith14/vith14_0a0cc_s137.data > experiments/vith14/vith14_0a0cc_s137.txt
echo '4%ftKJ6*' | kinit kl559@DC.CL.CAM.AC.UK
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/vith14/vith14_58f4c_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/vith14/vith14_58f4c_s0.data > experiments/vith14/vith14_58f4c_s0.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/vith14/vith14_58f4c_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/vith14/vith14_58f4c_s1.data > experiments/vith14/vith14_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/vith14/vith14_58f4c_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/vith14/vith14_58f4c_s27.data > experiments/vith14/vith14_58f4c_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/vith14/vith14_58f4c_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/vith14/vith14_58f4c_s42.data > experiments/vith14/vith14_58f4c_s42.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o experiments/vith14/vith14_58f4c_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/vith14/vith14_58f4c_s137.data > experiments/vith14/vith14_58f4c_s137.txt
echo '4%ftKJ6*' | kinit kl559@DC.CL.CAM.AC.UK
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/vith14/vith14_ff571_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/vith14/vith14_ff571_s0.data > experiments/vith14/vith14_ff571_s0.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/vith14/vith14_ff571_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/vith14/vith14_ff571_s1.data > experiments/vith14/vith14_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/vith14/vith14_ff571_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/vith14/vith14_ff571_s27.data > experiments/vith14/vith14_ff571_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/vith14/vith14_ff571_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/vith14/vith14_ff571_s42.data > experiments/vith14/vith14_ff571_s42.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o experiments/vith14/vith14_ff571_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/vith14/vith14_ff571_s137.data > experiments/vith14/vith14_ff571_s137.txt
echo '4%ftKJ6*' | kinit kl559@DC.CL.CAM.AC.UK
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/vith14/vith14_c346c_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/vith14/vith14_c346c_s0.data > experiments/vith14/vith14_c346c_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/vith14/vith14_c346c_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/vith14/vith14_c346c_s1.data > experiments/vith14/vith14_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/vith14/vith14_c346c_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/vith14/vith14_c346c_s27.data > experiments/vith14/vith14_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/vith14/vith14_c346c_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/vith14/vith14_c346c_s42.data > experiments/vith14/vith14_c346c_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o experiments/vith14/vith14_c346c_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/vith14/vith14_c346c_s137.data > experiments/vith14/vith14_c346c_s137.txt
echo '4%ftKJ6*' | kinit kl559@DC.CL.CAM.AC.UK
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/vith14/vith14_3ce60_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/vith14/vith14_3ce60_s0.data > experiments/vith14/vith14_3ce60_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/vith14/vith14_3ce60_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/vith14/vith14_3ce60_s1.data > experiments/vith14/vith14_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/vith14/vith14_3ce60_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/vith14/vith14_3ce60_s27.data > experiments/vith14/vith14_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/vith14/vith14_3ce60_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/vith14/vith14_3ce60_s42.data > experiments/vith14/vith14_3ce60_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o experiments/vith14/vith14_3ce60_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/vith14/vith14_3ce60_s137.data > experiments/vith14/vith14_3ce60_s137.txt
echo '4%ftKJ6*' | kinit kl559@DC.CL.CAM.AC.UK
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/vith14/vith14_f1dee_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/vith14/vith14_f1dee_s0.data > experiments/vith14/vith14_f1dee_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/vith14/vith14_f1dee_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/vith14/vith14_f1dee_s1.data > experiments/vith14/vith14_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/vith14/vith14_f1dee_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/vith14/vith14_f1dee_s27.data > experiments/vith14/vith14_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/vith14/vith14_f1dee_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/vith14/vith14_f1dee_s42.data > experiments/vith14/vith14_f1dee_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o experiments/vith14/vith14_f1dee_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/vith14/vith14_f1dee_s137.data > experiments/vith14/vith14_f1dee_s137.txt
echo '4%ftKJ6*' | kinit kl559@DC.CL.CAM.AC.UK
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/vith14/vith14_9899f_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/vith14/vith14_9899f_s0.data > experiments/vith14/vith14_9899f_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/vith14/vith14_9899f_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/vith14/vith14_9899f_s1.data > experiments/vith14/vith14_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/vith14/vith14_9899f_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/vith14/vith14_9899f_s27.data > experiments/vith14/vith14_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/vith14/vith14_9899f_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/vith14/vith14_9899f_s42.data > experiments/vith14/vith14_9899f_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o experiments/vith14/vith14_9899f_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/vith14/vith14_9899f_s137.data > experiments/vith14/vith14_9899f_s137.txt
echo '4%ftKJ6*' | kinit kl559@DC.CL.CAM.AC.UK
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/vith14/vith14_f9059_s0.data -T python src/run.py --model vith14 --seed 0
perf script -i experiments/vith14/vith14_f9059_s0.data > experiments/vith14/vith14_f9059_s0.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/vith14/vith14_f9059_s1.data -T python src/run.py --model vith14 --seed 1
perf script -i experiments/vith14/vith14_f9059_s1.data > experiments/vith14/vith14_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/vith14/vith14_f9059_s27.data -T python src/run.py --model vith14 --seed 27
perf script -i experiments/vith14/vith14_f9059_s27.data > experiments/vith14/vith14_f9059_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/vith14/vith14_f9059_s42.data -T python src/run.py --model vith14 --seed 42
perf script -i experiments/vith14/vith14_f9059_s42.data > experiments/vith14/vith14_f9059_s42.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o experiments/vith14/vith14_f9059_s137.data -T python src/run.py --model vith14 --seed 137
perf script -i experiments/vith14/vith14_f9059_s137.data > experiments/vith14/vith14_f9059_s137.txt
rm experiments/vith14/*.data
gdrive files upload experiments/vith14/ --recursive
rm -r experiments/vith14/
