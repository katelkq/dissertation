#!/bin/bash
perf record -e '{cycles,instructions}:Su' -c 100000 -o ./experiments/results/resnet50_31a80_s1.data -T python src/run.py --model resnet50 --seed 1
perf script -i ./experiments/results/resnet50_31a80_s1.data > ./experiments/results/resnet50_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o ./experiments/results/resnet50_31a80_s27.data -T python src/run.py --model resnet50 --seed 27
perf script -i ./experiments/results/resnet50_31a80_s27.data > ./experiments/results/resnet50_31a80_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o ./experiments/results/resnet50_00b76_s1.data -T python src/run.py --model resnet50 --seed 1
perf script -i ./experiments/results/resnet50_00b76_s1.data > ./experiments/results/resnet50_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o ./experiments/results/resnet50_00b76_s27.data -T python src/run.py --model resnet50 --seed 27
perf script -i ./experiments/results/resnet50_00b76_s27.data > ./experiments/results/resnet50_00b76_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o ./experiments/results/resnet50_4bba3_s1.data -T python src/run.py --model resnet50 --seed 1
perf script -i ./experiments/results/resnet50_4bba3_s1.data > ./experiments/results/resnet50_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o ./experiments/results/resnet50_4bba3_s27.data -T python src/run.py --model resnet50 --seed 27
perf script -i ./experiments/results/resnet50_4bba3_s27.data > ./experiments/results/resnet50_4bba3_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o ./experiments/results/resnet50_73780_s1.data -T python src/run.py --model resnet50 --seed 1
perf script -i ./experiments/results/resnet50_73780_s1.data > ./experiments/results/resnet50_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o ./experiments/results/resnet50_73780_s27.data -T python src/run.py --model resnet50 --seed 27
perf script -i ./experiments/results/resnet50_73780_s27.data > ./experiments/results/resnet50_73780_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o ./experiments/results/resnet50_a1a60_s1.data -T python src/run.py --model resnet50 --seed 1
perf script -i ./experiments/results/resnet50_a1a60_s1.data > ./experiments/results/resnet50_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o ./experiments/results/resnet50_a1a60_s27.data -T python src/run.py --model resnet50 --seed 27
perf script -i ./experiments/results/resnet50_a1a60_s27.data > ./experiments/results/resnet50_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o ./experiments/results/resnet50_2ee02_s1.data -T python src/run.py --model resnet50 --seed 1
perf script -i ./experiments/results/resnet50_2ee02_s1.data > ./experiments/results/resnet50_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o ./experiments/results/resnet50_2ee02_s27.data -T python src/run.py --model resnet50 --seed 27
perf script -i ./experiments/results/resnet50_2ee02_s27.data > ./experiments/results/resnet50_2ee02_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o ./experiments/results/resnet50_b54c7_s1.data -T python src/run.py --model resnet50 --seed 1
perf script -i ./experiments/results/resnet50_b54c7_s1.data > ./experiments/results/resnet50_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o ./experiments/results/resnet50_b54c7_s27.data -T python src/run.py --model resnet50 --seed 27
perf script -i ./experiments/results/resnet50_b54c7_s27.data > ./experiments/results/resnet50_b54c7_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o ./experiments/results/resnet50_0a0cc_s1.data -T python src/run.py --model resnet50 --seed 1
perf script -i ./experiments/results/resnet50_0a0cc_s1.data > ./experiments/results/resnet50_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o ./experiments/results/resnet50_0a0cc_s27.data -T python src/run.py --model resnet50 --seed 27
perf script -i ./experiments/results/resnet50_0a0cc_s27.data > ./experiments/results/resnet50_0a0cc_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o ./experiments/results/resnet50_58f4c_s1.data -T python src/run.py --model resnet50 --seed 1
perf script -i ./experiments/results/resnet50_58f4c_s1.data > ./experiments/results/resnet50_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o ./experiments/results/resnet50_58f4c_s27.data -T python src/run.py --model resnet50 --seed 27
perf script -i ./experiments/results/resnet50_58f4c_s27.data > ./experiments/results/resnet50_58f4c_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o ./experiments/results/resnet50_ff571_s1.data -T python src/run.py --model resnet50 --seed 1
perf script -i ./experiments/results/resnet50_ff571_s1.data > ./experiments/results/resnet50_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o ./experiments/results/resnet50_ff571_s27.data -T python src/run.py --model resnet50 --seed 27
perf script -i ./experiments/results/resnet50_ff571_s27.data > ./experiments/results/resnet50_ff571_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o ./experiments/results/resnet50_c346c_s1.data -T python src/run.py --model resnet50 --seed 1
perf script -i ./experiments/results/resnet50_c346c_s1.data > ./experiments/results/resnet50_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o ./experiments/results/resnet50_c346c_s27.data -T python src/run.py --model resnet50 --seed 27
perf script -i ./experiments/results/resnet50_c346c_s27.data > ./experiments/results/resnet50_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o ./experiments/results/resnet50_3ce60_s1.data -T python src/run.py --model resnet50 --seed 1
perf script -i ./experiments/results/resnet50_3ce60_s1.data > ./experiments/results/resnet50_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o ./experiments/results/resnet50_3ce60_s27.data -T python src/run.py --model resnet50 --seed 27
perf script -i ./experiments/results/resnet50_3ce60_s27.data > ./experiments/results/resnet50_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o ./experiments/results/resnet50_f1dee_s1.data -T python src/run.py --model resnet50 --seed 1
perf script -i ./experiments/results/resnet50_f1dee_s1.data > ./experiments/results/resnet50_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o ./experiments/results/resnet50_f1dee_s27.data -T python src/run.py --model resnet50 --seed 27
perf script -i ./experiments/results/resnet50_f1dee_s27.data > ./experiments/results/resnet50_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o ./experiments/results/resnet50_9899f_s1.data -T python src/run.py --model resnet50 --seed 1
perf script -i ./experiments/results/resnet50_9899f_s1.data > ./experiments/results/resnet50_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o ./experiments/results/resnet50_9899f_s27.data -T python src/run.py --model resnet50 --seed 27
perf script -i ./experiments/results/resnet50_9899f_s27.data > ./experiments/results/resnet50_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o ./experiments/results/resnet50_f9059_s1.data -T python src/run.py --model resnet50 --seed 1
perf script -i ./experiments/results/resnet50_f9059_s1.data > ./experiments/results/resnet50_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o ./experiments/results/resnet50_f9059_s27.data -T python src/run.py --model resnet50 --seed 27
perf script -i ./experiments/results/resnet50_f9059_s27.data > ./experiments/results/resnet50_f9059_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o ./experiments/results/retinanet_31a80_s1.data -T python src/run.py --model retinanet --seed 1
perf script -i ./experiments/results/retinanet_31a80_s1.data > ./experiments/results/retinanet_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o ./experiments/results/retinanet_31a80_s27.data -T python src/run.py --model retinanet --seed 27
perf script -i ./experiments/results/retinanet_31a80_s27.data > ./experiments/results/retinanet_31a80_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o ./experiments/results/retinanet_00b76_s1.data -T python src/run.py --model retinanet --seed 1
perf script -i ./experiments/results/retinanet_00b76_s1.data > ./experiments/results/retinanet_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o ./experiments/results/retinanet_00b76_s27.data -T python src/run.py --model retinanet --seed 27
perf script -i ./experiments/results/retinanet_00b76_s27.data > ./experiments/results/retinanet_00b76_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o ./experiments/results/retinanet_4bba3_s1.data -T python src/run.py --model retinanet --seed 1
perf script -i ./experiments/results/retinanet_4bba3_s1.data > ./experiments/results/retinanet_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o ./experiments/results/retinanet_4bba3_s27.data -T python src/run.py --model retinanet --seed 27
perf script -i ./experiments/results/retinanet_4bba3_s27.data > ./experiments/results/retinanet_4bba3_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o ./experiments/results/retinanet_73780_s1.data -T python src/run.py --model retinanet --seed 1
perf script -i ./experiments/results/retinanet_73780_s1.data > ./experiments/results/retinanet_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o ./experiments/results/retinanet_73780_s27.data -T python src/run.py --model retinanet --seed 27
perf script -i ./experiments/results/retinanet_73780_s27.data > ./experiments/results/retinanet_73780_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o ./experiments/results/retinanet_a1a60_s1.data -T python src/run.py --model retinanet --seed 1
perf script -i ./experiments/results/retinanet_a1a60_s1.data > ./experiments/results/retinanet_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o ./experiments/results/retinanet_a1a60_s27.data -T python src/run.py --model retinanet --seed 27
perf script -i ./experiments/results/retinanet_a1a60_s27.data > ./experiments/results/retinanet_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o ./experiments/results/retinanet_2ee02_s1.data -T python src/run.py --model retinanet --seed 1
perf script -i ./experiments/results/retinanet_2ee02_s1.data > ./experiments/results/retinanet_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o ./experiments/results/retinanet_2ee02_s27.data -T python src/run.py --model retinanet --seed 27
perf script -i ./experiments/results/retinanet_2ee02_s27.data > ./experiments/results/retinanet_2ee02_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o ./experiments/results/retinanet_b54c7_s1.data -T python src/run.py --model retinanet --seed 1
perf script -i ./experiments/results/retinanet_b54c7_s1.data > ./experiments/results/retinanet_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o ./experiments/results/retinanet_b54c7_s27.data -T python src/run.py --model retinanet --seed 27
perf script -i ./experiments/results/retinanet_b54c7_s27.data > ./experiments/results/retinanet_b54c7_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o ./experiments/results/retinanet_0a0cc_s1.data -T python src/run.py --model retinanet --seed 1
perf script -i ./experiments/results/retinanet_0a0cc_s1.data > ./experiments/results/retinanet_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o ./experiments/results/retinanet_0a0cc_s27.data -T python src/run.py --model retinanet --seed 27
perf script -i ./experiments/results/retinanet_0a0cc_s27.data > ./experiments/results/retinanet_0a0cc_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o ./experiments/results/retinanet_58f4c_s1.data -T python src/run.py --model retinanet --seed 1
perf script -i ./experiments/results/retinanet_58f4c_s1.data > ./experiments/results/retinanet_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o ./experiments/results/retinanet_58f4c_s27.data -T python src/run.py --model retinanet --seed 27
perf script -i ./experiments/results/retinanet_58f4c_s27.data > ./experiments/results/retinanet_58f4c_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o ./experiments/results/retinanet_ff571_s1.data -T python src/run.py --model retinanet --seed 1
perf script -i ./experiments/results/retinanet_ff571_s1.data > ./experiments/results/retinanet_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o ./experiments/results/retinanet_ff571_s27.data -T python src/run.py --model retinanet --seed 27
perf script -i ./experiments/results/retinanet_ff571_s27.data > ./experiments/results/retinanet_ff571_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o ./experiments/results/retinanet_c346c_s1.data -T python src/run.py --model retinanet --seed 1
perf script -i ./experiments/results/retinanet_c346c_s1.data > ./experiments/results/retinanet_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o ./experiments/results/retinanet_c346c_s27.data -T python src/run.py --model retinanet --seed 27
perf script -i ./experiments/results/retinanet_c346c_s27.data > ./experiments/results/retinanet_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o ./experiments/results/retinanet_3ce60_s1.data -T python src/run.py --model retinanet --seed 1
perf script -i ./experiments/results/retinanet_3ce60_s1.data > ./experiments/results/retinanet_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o ./experiments/results/retinanet_3ce60_s27.data -T python src/run.py --model retinanet --seed 27
perf script -i ./experiments/results/retinanet_3ce60_s27.data > ./experiments/results/retinanet_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o ./experiments/results/retinanet_f1dee_s1.data -T python src/run.py --model retinanet --seed 1
perf script -i ./experiments/results/retinanet_f1dee_s1.data > ./experiments/results/retinanet_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o ./experiments/results/retinanet_f1dee_s27.data -T python src/run.py --model retinanet --seed 27
perf script -i ./experiments/results/retinanet_f1dee_s27.data > ./experiments/results/retinanet_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o ./experiments/results/retinanet_9899f_s1.data -T python src/run.py --model retinanet --seed 1
perf script -i ./experiments/results/retinanet_9899f_s1.data > ./experiments/results/retinanet_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o ./experiments/results/retinanet_9899f_s27.data -T python src/run.py --model retinanet --seed 27
perf script -i ./experiments/results/retinanet_9899f_s27.data > ./experiments/results/retinanet_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o ./experiments/results/retinanet_f9059_s1.data -T python src/run.py --model retinanet --seed 1
perf script -i ./experiments/results/retinanet_f9059_s1.data > ./experiments/results/retinanet_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o ./experiments/results/retinanet_f9059_s27.data -T python src/run.py --model retinanet --seed 27
perf script -i ./experiments/results/retinanet_f9059_s27.data > ./experiments/results/retinanet_f9059_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o ./experiments/results/unet_31a80_s1.data -T python src/run.py --model unet --seed 1
perf script -i ./experiments/results/unet_31a80_s1.data > ./experiments/results/unet_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o ./experiments/results/unet_31a80_s27.data -T python src/run.py --model unet --seed 27
perf script -i ./experiments/results/unet_31a80_s27.data > ./experiments/results/unet_31a80_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o ./experiments/results/unet_00b76_s1.data -T python src/run.py --model unet --seed 1
perf script -i ./experiments/results/unet_00b76_s1.data > ./experiments/results/unet_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o ./experiments/results/unet_00b76_s27.data -T python src/run.py --model unet --seed 27
perf script -i ./experiments/results/unet_00b76_s27.data > ./experiments/results/unet_00b76_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o ./experiments/results/unet_4bba3_s1.data -T python src/run.py --model unet --seed 1
perf script -i ./experiments/results/unet_4bba3_s1.data > ./experiments/results/unet_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o ./experiments/results/unet_4bba3_s27.data -T python src/run.py --model unet --seed 27
perf script -i ./experiments/results/unet_4bba3_s27.data > ./experiments/results/unet_4bba3_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o ./experiments/results/unet_73780_s1.data -T python src/run.py --model unet --seed 1
perf script -i ./experiments/results/unet_73780_s1.data > ./experiments/results/unet_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o ./experiments/results/unet_73780_s27.data -T python src/run.py --model unet --seed 27
perf script -i ./experiments/results/unet_73780_s27.data > ./experiments/results/unet_73780_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o ./experiments/results/unet_a1a60_s1.data -T python src/run.py --model unet --seed 1
perf script -i ./experiments/results/unet_a1a60_s1.data > ./experiments/results/unet_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o ./experiments/results/unet_a1a60_s27.data -T python src/run.py --model unet --seed 27
perf script -i ./experiments/results/unet_a1a60_s27.data > ./experiments/results/unet_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o ./experiments/results/unet_2ee02_s1.data -T python src/run.py --model unet --seed 1
perf script -i ./experiments/results/unet_2ee02_s1.data > ./experiments/results/unet_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o ./experiments/results/unet_2ee02_s27.data -T python src/run.py --model unet --seed 27
perf script -i ./experiments/results/unet_2ee02_s27.data > ./experiments/results/unet_2ee02_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o ./experiments/results/unet_b54c7_s1.data -T python src/run.py --model unet --seed 1
perf script -i ./experiments/results/unet_b54c7_s1.data > ./experiments/results/unet_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o ./experiments/results/unet_b54c7_s27.data -T python src/run.py --model unet --seed 27
perf script -i ./experiments/results/unet_b54c7_s27.data > ./experiments/results/unet_b54c7_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o ./experiments/results/unet_0a0cc_s1.data -T python src/run.py --model unet --seed 1
perf script -i ./experiments/results/unet_0a0cc_s1.data > ./experiments/results/unet_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o ./experiments/results/unet_0a0cc_s27.data -T python src/run.py --model unet --seed 27
perf script -i ./experiments/results/unet_0a0cc_s27.data > ./experiments/results/unet_0a0cc_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o ./experiments/results/unet_58f4c_s1.data -T python src/run.py --model unet --seed 1
perf script -i ./experiments/results/unet_58f4c_s1.data > ./experiments/results/unet_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o ./experiments/results/unet_58f4c_s27.data -T python src/run.py --model unet --seed 27
perf script -i ./experiments/results/unet_58f4c_s27.data > ./experiments/results/unet_58f4c_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o ./experiments/results/unet_ff571_s1.data -T python src/run.py --model unet --seed 1
perf script -i ./experiments/results/unet_ff571_s1.data > ./experiments/results/unet_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o ./experiments/results/unet_ff571_s27.data -T python src/run.py --model unet --seed 27
perf script -i ./experiments/results/unet_ff571_s27.data > ./experiments/results/unet_ff571_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o ./experiments/results/unet_c346c_s1.data -T python src/run.py --model unet --seed 1
perf script -i ./experiments/results/unet_c346c_s1.data > ./experiments/results/unet_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o ./experiments/results/unet_c346c_s27.data -T python src/run.py --model unet --seed 27
perf script -i ./experiments/results/unet_c346c_s27.data > ./experiments/results/unet_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o ./experiments/results/unet_3ce60_s1.data -T python src/run.py --model unet --seed 1
perf script -i ./experiments/results/unet_3ce60_s1.data > ./experiments/results/unet_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o ./experiments/results/unet_3ce60_s27.data -T python src/run.py --model unet --seed 27
perf script -i ./experiments/results/unet_3ce60_s27.data > ./experiments/results/unet_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o ./experiments/results/unet_f1dee_s1.data -T python src/run.py --model unet --seed 1
perf script -i ./experiments/results/unet_f1dee_s1.data > ./experiments/results/unet_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o ./experiments/results/unet_f1dee_s27.data -T python src/run.py --model unet --seed 27
perf script -i ./experiments/results/unet_f1dee_s27.data > ./experiments/results/unet_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o ./experiments/results/unet_9899f_s1.data -T python src/run.py --model unet --seed 1
perf script -i ./experiments/results/unet_9899f_s1.data > ./experiments/results/unet_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o ./experiments/results/unet_9899f_s27.data -T python src/run.py --model unet --seed 27
perf script -i ./experiments/results/unet_9899f_s27.data > ./experiments/results/unet_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o ./experiments/results/unet_f9059_s1.data -T python src/run.py --model unet --seed 1
perf script -i ./experiments/results/unet_f9059_s1.data > ./experiments/results/unet_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o ./experiments/results/unet_f9059_s27.data -T python src/run.py --model unet --seed 27
perf script -i ./experiments/results/unet_f9059_s27.data > ./experiments/results/unet_f9059_s27.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o ./experiments/results/vitb16_31a80_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i ./experiments/results/vitb16_31a80_s1.data > ./experiments/results/vitb16_31a80_s1.txt
perf record -e '{cycles,instructions}:Su' -c 100000 -o ./experiments/results/vitb16_31a80_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i ./experiments/results/vitb16_31a80_s27.data > ./experiments/results/vitb16_31a80_s27.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o ./experiments/results/vitb16_00b76_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i ./experiments/results/vitb16_00b76_s1.data > ./experiments/results/vitb16_00b76_s1.txt
perf record -e '{cycles,cache-misses}:Su' -c 100000 -o ./experiments/results/vitb16_00b76_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i ./experiments/results/vitb16_00b76_s27.data > ./experiments/results/vitb16_00b76_s27.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o ./experiments/results/vitb16_4bba3_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i ./experiments/results/vitb16_4bba3_s1.data > ./experiments/results/vitb16_4bba3_s1.txt
perf record -e '{cycles,cache-references}:Su' -c 100000 -o ./experiments/results/vitb16_4bba3_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i ./experiments/results/vitb16_4bba3_s27.data > ./experiments/results/vitb16_4bba3_s27.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o ./experiments/results/vitb16_73780_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i ./experiments/results/vitb16_73780_s1.data > ./experiments/results/vitb16_73780_s1.txt
perf record -e '{cycles,L1-dcache-load-misses}:Su' -c 100000 -o ./experiments/results/vitb16_73780_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i ./experiments/results/vitb16_73780_s27.data > ./experiments/results/vitb16_73780_s27.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o ./experiments/results/vitb16_a1a60_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i ./experiments/results/vitb16_a1a60_s1.data > ./experiments/results/vitb16_a1a60_s1.txt
perf record -e '{cycles,L1-dcache-loads}:Su' -c 100000 -o ./experiments/results/vitb16_a1a60_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i ./experiments/results/vitb16_a1a60_s27.data > ./experiments/results/vitb16_a1a60_s27.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o ./experiments/results/vitb16_2ee02_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i ./experiments/results/vitb16_2ee02_s1.data > ./experiments/results/vitb16_2ee02_s1.txt
perf record -e '{cycles,L1-dcache-stores}:Su' -c 100000 -o ./experiments/results/vitb16_2ee02_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i ./experiments/results/vitb16_2ee02_s27.data > ./experiments/results/vitb16_2ee02_s27.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o ./experiments/results/vitb16_b54c7_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i ./experiments/results/vitb16_b54c7_s1.data > ./experiments/results/vitb16_b54c7_s1.txt
perf record -e '{cycles,LLC-load-misses}:Su' -c 100000 -o ./experiments/results/vitb16_b54c7_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i ./experiments/results/vitb16_b54c7_s27.data > ./experiments/results/vitb16_b54c7_s27.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o ./experiments/results/vitb16_0a0cc_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i ./experiments/results/vitb16_0a0cc_s1.data > ./experiments/results/vitb16_0a0cc_s1.txt
perf record -e '{cycles,LLC-loads}:Su' -c 100000 -o ./experiments/results/vitb16_0a0cc_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i ./experiments/results/vitb16_0a0cc_s27.data > ./experiments/results/vitb16_0a0cc_s27.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o ./experiments/results/vitb16_58f4c_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i ./experiments/results/vitb16_58f4c_s1.data > ./experiments/results/vitb16_58f4c_s1.txt
perf record -e '{cycles,LLC-store-misses}:Su' -c 100000 -o ./experiments/results/vitb16_58f4c_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i ./experiments/results/vitb16_58f4c_s27.data > ./experiments/results/vitb16_58f4c_s27.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o ./experiments/results/vitb16_ff571_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i ./experiments/results/vitb16_ff571_s1.data > ./experiments/results/vitb16_ff571_s1.txt
perf record -e '{cycles,LLC-stores}:Su' -c 100000 -o ./experiments/results/vitb16_ff571_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i ./experiments/results/vitb16_ff571_s27.data > ./experiments/results/vitb16_ff571_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o ./experiments/results/vitb16_c346c_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i ./experiments/results/vitb16_c346c_s1.data > ./experiments/results/vitb16_c346c_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.128b_packed_single}:Su' -c 100000 -o ./experiments/results/vitb16_c346c_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i ./experiments/results/vitb16_c346c_s27.data > ./experiments/results/vitb16_c346c_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o ./experiments/results/vitb16_3ce60_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i ./experiments/results/vitb16_3ce60_s1.data > ./experiments/results/vitb16_3ce60_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.256b_packed_single}:Su' -c 100000 -o ./experiments/results/vitb16_3ce60_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i ./experiments/results/vitb16_3ce60_s27.data > ./experiments/results/vitb16_3ce60_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o ./experiments/results/vitb16_f1dee_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i ./experiments/results/vitb16_f1dee_s1.data > ./experiments/results/vitb16_f1dee_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.512b_packed_single}:Su' -c 100000 -o ./experiments/results/vitb16_f1dee_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i ./experiments/results/vitb16_f1dee_s27.data > ./experiments/results/vitb16_f1dee_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o ./experiments/results/vitb16_9899f_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i ./experiments/results/vitb16_9899f_s1.data > ./experiments/results/vitb16_9899f_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_double}:Su' -c 100000 -o ./experiments/results/vitb16_9899f_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i ./experiments/results/vitb16_9899f_s27.data > ./experiments/results/vitb16_9899f_s27.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o ./experiments/results/vitb16_f9059_s1.data -T python src/run.py --model vitb16 --seed 1
perf script -i ./experiments/results/vitb16_f9059_s1.data > ./experiments/results/vitb16_f9059_s1.txt
perf record -e '{cycles,fp_arith_inst_retired.scalar_single}:Su' -c 100000 -o ./experiments/results/vitb16_f9059_s27.data -T python src/run.py --model vitb16 --seed 27
perf script -i ./experiments/results/vitb16_f9059_s27.data > ./experiments/results/vitb16_f9059_s27.txt
