% physical machines
#const p = 4.

% dimensions
#const n = 3.

% length of cube in dimension
% d(D,L)
dim(0,2).
dim(1,2).
dim(2,3).

% relations
#const r = 3.

% sizes of relations
% size(R,S)
size(a,5).
size(b,1).
size(c,10).

% dimensions of relations with the information which dimension it is
% rel(R,N,D)
rel(a,0,0). rel(a,1,1).
rel(b,0,1). rel(b,1,2).
rel(c,0,0). rel(c,1,2).
