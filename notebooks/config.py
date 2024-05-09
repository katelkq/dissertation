MODELS = ['resnet50', 'retinanet', 'unet']

MODELS_EXT = ['mobilenet', 'swint', 'swins', 'swinb', 'vgg11', 'vgg13', 'vgg16', 'vgg19', 'vitb16', 'vitb32', 'vitl16', 'vitl32', 'vith14']

EVENTS = ['instructions',
'cache-misses',
'cache-references',
'L1-dcache-load-misses',
'L1-dcache-loads',
'L1-dcache-stores',
'LLC-load-misses',
'LLC-loads',
'LLC-store-misses',
'LLC-stores',
'fp_arith_inst_retired.128b_packed_single',
'fp_arith_inst_retired.256b_packed_single',
'fp_arith_inst_retired.512b_packed_single',
'fp_arith_inst_retired.scalar_double',
'fp_arith_inst_retired.scalar_single']

SEEDS = [0, 1, 27, 42, 137]

EVENT_TO_IDX = {'instructions': 0,
'cache-misses': 1,
'cache-references': 2,
'L1-dcache-load-misses': 3,
'L1-dcache-loads': 4,
'L1-dcache-stores': 5,
'LLC-load-misses': 6,
'LLC-loads': 7,
'LLC-store-misses': 8,
'LLC-stores': 9,
'fp_arith_inst_retired.128b_packed_single': 11,
'fp_arith_inst_retired.256b_packed_single': 13,
'fp_arith_inst_retired.512b_packed_single': 15,
'fp_arith_inst_retired.scalar_double': 16,
'fp_arith_inst_retired.scalar_single': 17
}