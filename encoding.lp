%%%%%%%%%%%%
% helpers

% overall cube size, aka number of voxels/ virtual machines
cube_size(1,S) :- dim(1,S).
cube_size(D,SS*S) :- cube_size(D-1,SS), dim(D,S).
cube_size(CS) :- cube_size(n,CS).

% physical machines
phys(1..p).

% number of parts for lower dimensional cubes for a relation
num_parts(1..r,0,1).
num_parts(R,D,SS*S) :- num_parts(R,D-1,SS), dim(D,S), rel(R,D).
num_parts(R,D,S) :- num_parts(R,D-1,S), dim(D,_), not rel(R,D).
num_parts(R,NP) :- num_parts(R,n,NP).

% numbers of dimensions for relations
num_dim(R,L) :- rel(R,_), L = { rel(R,D) }.

%%%%%%%%%%%%
% generate

% assign physical machines to voxel
1 { assign(V,P) : phys(P) } 1 :- voxel(V,D,X).

%%%%%%%%%%%%
% test

% fix one server to break symmetry
%:- not assign(1,1).
%:- assign(2,P),  P > 2, phys(P).

%%%%%%%%%%%%
% helper

% voxel used in assignment
match_vox(V,D,X,P) :- assign(V,P), voxel(V,D,X).

% collapse voxels that are the same
match_voxel_red(D,X,P,R) :- match_vox(V,D,X,P), num_dim(R,L), not L { match_vox(VV,DD,XX,P) : VV > V, match_vox(V,DD,XX,P), rel(R,DD) } L.

% cost of assignment for relations
count(P,R,N) :- N = { match_voxel_red(D,X,P,R) }, phys(P), rel(R,_).
cost(P,C) :- C = #sum { CC : CC = N * S * CS / NP, count(P,R,N), num_parts(R,NP), size(R,S), cube_size(CS) }, phys(P).

%%%%%%%%%%%%
% optimize

#minimize { C : cost(P,C) }.

%%%%%%%%%%%%
% print

#show assign/2.
% #show voxel/3.
% #show cost/4.
% #show cost/2.
% #show match_vox/4.
% #show match_voxel_red/4.
