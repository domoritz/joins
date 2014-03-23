% physical machines
#const p = 4.

% dimensions
#const n = 3.

% length of cube in dimension
% d(D,L)
dim(1,3).
dim(2,2).
dim(3,2).

% relations

#const r = 3.

% sizes of relations
% size(R,S)
size(1,3).
size(2,1).
size(3,5).

% dimensions of relations
% rel(R,D)
rel(1,2). rel(1,3).
rel(2,1). rel(2,3).
rel(3,1). rel(3,2). rel(3,3).

#const fac = 6.

% voxels aka virtual machines
voxel(1,1,1). voxel(1,2,1). voxel(1,3,1).
voxel(2,1,1). voxel(2,2,1). voxel(2,3,2).
voxel(3,1,1). voxel(3,2,2). voxel(3,3,1).
voxel(4,1,1). voxel(4,2,2). voxel(4,3,2).
voxel(5,1,2). voxel(5,2,1). voxel(5,3,1).
voxel(6,1,2). voxel(6,2,1). voxel(6,3,2).
voxel(7,1,2). voxel(7,2,2). voxel(7,3,1).
voxel(8,1,2). voxel(8,2,2). voxel(8,3,2).
voxel(9,1,3). voxel(9,2,1). voxel(9,3,1).
voxel(10,1,3). voxel(10,2,1). voxel(10,3,2).
voxel(11,1,3). voxel(11,2,2). voxel(11,3,1).
voxel(12,1,3). voxel(12,2,2). voxel(12,3,2).
