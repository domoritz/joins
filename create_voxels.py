from itertools import product

dims = [3, 2, 2]

ranges = [range(x) for x in dims]

for vox, coords in enumerate(list(product(*ranges))):
    for dim, val in enumerate(coords):
        print "voxel({},{},{}).".format(vox+1, dim+1, val+1),
    print
