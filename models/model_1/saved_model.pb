??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
3
Square
x"T
y"T"
Ttype:
2
	
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??
|
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_21/kernel
u
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel* 
_output_shapes
:
??*
dtype0
r
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_21/bias
k
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
_output_shapes
:*
dtype0
|
dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_22/kernel
u
#dense_22/kernel/Read/ReadVariableOpReadVariableOpdense_22/kernel* 
_output_shapes
:
??*
dtype0
r
dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_22/bias
k
!dense_22/bias/Read/ReadVariableOpReadVariableOpdense_22/bias*
_output_shapes
:*
dtype0
?
batch_normalization_14/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_14/gamma
?
0batch_normalization_14/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_14/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_14/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_14/beta
?
/batch_normalization_14/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_14/beta*
_output_shapes
:*
dtype0
?
"batch_normalization_14/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_14/moving_mean
?
6batch_normalization_14/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_14/moving_mean*
_output_shapes
:*
dtype0
?
&batch_normalization_14/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_14/moving_variance
?
:batch_normalization_14/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_14/moving_variance*
_output_shapes
:*
dtype0
?
batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_15/gamma
?
0batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_15/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_15/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_15/beta
?
/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_15/beta*
_output_shapes
:*
dtype0
?
"batch_normalization_15/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_15/moving_mean
?
6batch_normalization_15/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_15/moving_mean*
_output_shapes
:*
dtype0
?
&batch_normalization_15/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_15/moving_variance
?
:batch_normalization_15/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_15/moving_variance*
_output_shapes
:*
dtype0
|
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_23/kernel
u
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel* 
_output_shapes
:
??*
dtype0
t
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*
shared_namedense_23/bias
m
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
_output_shapes

:??*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/dense_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_21/kernel/m
?
*Adam/dense_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_21/bias/m
y
(Adam/dense_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_22/kernel/m
?
*Adam/dense_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_22/bias/m
y
(Adam/dense_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/m*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_14/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_14/gamma/m
?
7Adam/batch_normalization_14/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_14/gamma/m*
_output_shapes
:*
dtype0
?
"Adam/batch_normalization_14/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_14/beta/m
?
6Adam/batch_normalization_14/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_14/beta/m*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_15/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_15/gamma/m
?
7Adam/batch_normalization_15/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_15/gamma/m*
_output_shapes
:*
dtype0
?
"Adam/batch_normalization_15/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_15/beta/m
?
6Adam/batch_normalization_15/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_15/beta/m*
_output_shapes
:*
dtype0
?
Adam/dense_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_23/kernel/m
?
*Adam/dense_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*%
shared_nameAdam/dense_23/bias/m
{
(Adam/dense_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/m*
_output_shapes

:??*
dtype0
?
Adam/dense_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_21/kernel/v
?
*Adam/dense_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_21/bias/v
y
(Adam/dense_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_22/kernel/v
?
*Adam/dense_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_22/bias/v
y
(Adam/dense_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/v*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_14/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_14/gamma/v
?
7Adam/batch_normalization_14/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_14/gamma/v*
_output_shapes
:*
dtype0
?
"Adam/batch_normalization_14/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_14/beta/v
?
6Adam/batch_normalization_14/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_14/beta/v*
_output_shapes
:*
dtype0
?
#Adam/batch_normalization_15/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_15/gamma/v
?
7Adam/batch_normalization_15/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_15/gamma/v*
_output_shapes
:*
dtype0
?
"Adam/batch_normalization_15/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_15/beta/v
?
6Adam/batch_normalization_15/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_15/beta/v*
_output_shapes
:*
dtype0
?
Adam/dense_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_23/kernel/v
?
*Adam/dense_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*%
shared_nameAdam/dense_23/bias/v
{
(Adam/dense_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/v*
_output_shapes

:??*
dtype0

NoOpNoOp
?K
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?J
value?JB?J B?J
?
layer-0
layer-1
layer-2
layer-3
layer_with_weights-0
layer-4
layer_with_weights-1
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
	optimizer

signatures
#_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
%
#_self_saveable_object_factories
%
#_self_saveable_object_factories
w
#_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
w
#_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
?

kernel
 bias
#!_self_saveable_object_factories
"regularization_losses
#	variables
$trainable_variables
%	keras_api
?

&kernel
'bias
#(_self_saveable_object_factories
)regularization_losses
*	variables
+trainable_variables
,	keras_api
?
-axis
	.gamma
/beta
0moving_mean
1moving_variance
#2_self_saveable_object_factories
3regularization_losses
4	variables
5trainable_variables
6	keras_api
?
7axis
	8gamma
9beta
:moving_mean
;moving_variance
#<_self_saveable_object_factories
=regularization_losses
>	variables
?trainable_variables
@	keras_api
w
#A_self_saveable_object_factories
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
?

Fkernel
Gbias
#H_self_saveable_object_factories
Iregularization_losses
J	variables
Ktrainable_variables
L	keras_api
w
#M_self_saveable_object_factories
Nregularization_losses
O	variables
Ptrainable_variables
Q	keras_api
?
Riter

Sbeta_1

Tbeta_2
	Udecay
Vlearning_ratem? m?&m?'m?.m?/m?8m?9m?Fm?Gm?v? v?&v?'v?.v?/v?8v?9v?Fv?Gv?
 
 
 
f
0
 1
&2
'3
.4
/5
06
17
88
99
:10
;11
F12
G13
F
0
 1
&2
'3
.4
/5
86
97
F8
G9
?

Wlayers
Xlayer_regularization_losses
Ymetrics
Znon_trainable_variables
[layer_metrics
regularization_losses
	variables
trainable_variables
 
 
 
 
 
 
?

\layers
]layer_regularization_losses
^layer_metrics
_non_trainable_variables
`metrics
regularization_losses
	variables
trainable_variables
 
 
 
 
?

alayers
blayer_regularization_losses
clayer_metrics
dnon_trainable_variables
emetrics
regularization_losses
	variables
trainable_variables
[Y
VARIABLE_VALUEdense_21/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_21/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
 1

0
 1
?

flayers
glayer_regularization_losses
hlayer_metrics
inon_trainable_variables
jmetrics
"regularization_losses
#	variables
$trainable_variables
[Y
VARIABLE_VALUEdense_22/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_22/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

&0
'1

&0
'1
?

klayers
llayer_regularization_losses
mlayer_metrics
nnon_trainable_variables
ometrics
)regularization_losses
*	variables
+trainable_variables
 
ge
VARIABLE_VALUEbatch_normalization_14/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_14/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_14/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_14/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
 

.0
/1
02
13

.0
/1
?

players
qlayer_regularization_losses
rlayer_metrics
snon_trainable_variables
tmetrics
3regularization_losses
4	variables
5trainable_variables
 
ge
VARIABLE_VALUEbatch_normalization_15/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_15/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_15/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_15/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
 

80
91
:2
;3

80
91
?

ulayers
vlayer_regularization_losses
wlayer_metrics
xnon_trainable_variables
ymetrics
=regularization_losses
>	variables
?trainable_variables
 
 
 
 
?

zlayers
{layer_regularization_losses
|layer_metrics
}non_trainable_variables
~metrics
Bregularization_losses
C	variables
Dtrainable_variables
[Y
VARIABLE_VALUEdense_23/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_23/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

F0
G1

F0
G1
?

layers
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?metrics
Iregularization_losses
J	variables
Ktrainable_variables
 
 
 
 
?
?layers
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?metrics
Nregularization_losses
O	variables
Ptrainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
N
0
1
2
3
4
5
6
7
	8

9
10
 

?0
?1

00
11
:2
;3
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

00
11
 
 
 
 

:0
;1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
~|
VARIABLE_VALUEAdam/dense_21/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_21/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_22/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_22/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_14/gamma/mQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_14/beta/mPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_15/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_15/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_21/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_21/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_22/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_22/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_14/gamma/vQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_14/beta/vPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_15/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_15/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_16Placeholder*0
_output_shapes
:??????????@*
dtype0*%
shape:??????????@
?
serving_default_input_17Placeholder*0
_output_shapes
:??????????@*
dtype0*%
shape:??????????@
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_16serving_default_input_17dense_22/kerneldense_22/biasdense_21/kerneldense_21/bias&batch_normalization_14/moving_variancebatch_normalization_14/gamma"batch_normalization_14/moving_meanbatch_normalization_14/beta&batch_normalization_15/moving_variancebatch_normalization_15/gamma"batch_normalization_15/moving_meanbatch_normalization_15/betadense_23/kerneldense_23/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_82213
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_21/kernel/Read/ReadVariableOp!dense_21/bias/Read/ReadVariableOp#dense_22/kernel/Read/ReadVariableOp!dense_22/bias/Read/ReadVariableOp0batch_normalization_14/gamma/Read/ReadVariableOp/batch_normalization_14/beta/Read/ReadVariableOp6batch_normalization_14/moving_mean/Read/ReadVariableOp:batch_normalization_14/moving_variance/Read/ReadVariableOp0batch_normalization_15/gamma/Read/ReadVariableOp/batch_normalization_15/beta/Read/ReadVariableOp6batch_normalization_15/moving_mean/Read/ReadVariableOp:batch_normalization_15/moving_variance/Read/ReadVariableOp#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_21/kernel/m/Read/ReadVariableOp(Adam/dense_21/bias/m/Read/ReadVariableOp*Adam/dense_22/kernel/m/Read/ReadVariableOp(Adam/dense_22/bias/m/Read/ReadVariableOp7Adam/batch_normalization_14/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_14/beta/m/Read/ReadVariableOp7Adam/batch_normalization_15/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_15/beta/m/Read/ReadVariableOp*Adam/dense_23/kernel/m/Read/ReadVariableOp(Adam/dense_23/bias/m/Read/ReadVariableOp*Adam/dense_21/kernel/v/Read/ReadVariableOp(Adam/dense_21/bias/v/Read/ReadVariableOp*Adam/dense_22/kernel/v/Read/ReadVariableOp(Adam/dense_22/bias/v/Read/ReadVariableOp7Adam/batch_normalization_14/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_14/beta/v/Read/ReadVariableOp7Adam/batch_normalization_15/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_15/beta/v/Read/ReadVariableOp*Adam/dense_23/kernel/v/Read/ReadVariableOp(Adam/dense_23/bias/v/Read/ReadVariableOpConst*8
Tin1
/2-	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_82865
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_21/kerneldense_21/biasdense_22/kerneldense_22/biasbatch_normalization_14/gammabatch_normalization_14/beta"batch_normalization_14/moving_mean&batch_normalization_14/moving_variancebatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_variancedense_23/kerneldense_23/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_21/kernel/mAdam/dense_21/bias/mAdam/dense_22/kernel/mAdam/dense_22/bias/m#Adam/batch_normalization_14/gamma/m"Adam/batch_normalization_14/beta/m#Adam/batch_normalization_15/gamma/m"Adam/batch_normalization_15/beta/mAdam/dense_23/kernel/mAdam/dense_23/bias/mAdam/dense_21/kernel/vAdam/dense_21/bias/vAdam/dense_22/kernel/vAdam/dense_22/bias/v#Adam/batch_normalization_14/gamma/v"Adam/batch_normalization_14/beta/v#Adam/batch_normalization_15/gamma/v"Adam/batch_normalization_15/beta/vAdam/dense_23/kernel/vAdam/dense_23/bias/v*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_83004??
?
a
E__inference_flatten_14_layer_call_and_return_conditional_losses_81767

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? `  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
C__inference_dense_23_layer_call_and_return_conditional_losses_66192

inputs2
matmul_readvariableop_resource:
??/
biasadd_readvariableop_resource:
??
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_23/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes

:??*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2	
BiasAddc
SigmoidSigmoidBiasAdd:output:0*
T0*)
_output_shapes
:???????????2	
SigmoidS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C2
mul/yb
mulMulSigmoid:y:0mul/y:output:0*
T0*)
_output_shapes
:???????????2
mul?
1dense_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_23/kernel/Regularizer/Square/ReadVariableOp?
"dense_23/kernel/Regularizer/SquareSquare9dense_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_23/kernel/Regularizer/Square?
!dense_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_23/kernel/Regularizer/Const?
dense_23/kernel/Regularizer/SumSum&dense_23/kernel/Regularizer/Square:y:0*dense_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/Sum?
!dense_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!dense_23/kernel/Regularizer/mul/x?
dense_23/kernel/Regularizer/mulMul*dense_23/kernel/Regularizer/mul/x:output:0(dense_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/mul?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_23/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOpd
IdentityIdentitymul:z:0^NoOp*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_23/kernel/Regularizer/Square/ReadVariableOp1dense_23/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_81606

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
t
H__inference_concatenate_7_layer_call_and_return_conditional_losses_82692
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
C__inference_dense_22_layer_call_and_return_conditional_losses_82519

inputs2
matmul_readvariableop_resource:
??-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_14_layer_call_fn_82532

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_814442
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?\
?
__inference__traced_save_82865
file_prefix.
*savev2_dense_21_kernel_read_readvariableop,
(savev2_dense_21_bias_read_readvariableop.
*savev2_dense_22_kernel_read_readvariableop,
(savev2_dense_22_bias_read_readvariableop;
7savev2_batch_normalization_14_gamma_read_readvariableop:
6savev2_batch_normalization_14_beta_read_readvariableopA
=savev2_batch_normalization_14_moving_mean_read_readvariableopE
Asavev2_batch_normalization_14_moving_variance_read_readvariableop;
7savev2_batch_normalization_15_gamma_read_readvariableop:
6savev2_batch_normalization_15_beta_read_readvariableopA
=savev2_batch_normalization_15_moving_mean_read_readvariableopE
Asavev2_batch_normalization_15_moving_variance_read_readvariableop.
*savev2_dense_23_kernel_read_readvariableop,
(savev2_dense_23_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_21_kernel_m_read_readvariableop3
/savev2_adam_dense_21_bias_m_read_readvariableop5
1savev2_adam_dense_22_kernel_m_read_readvariableop3
/savev2_adam_dense_22_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_14_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_14_beta_m_read_readvariableopB
>savev2_adam_batch_normalization_15_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_15_beta_m_read_readvariableop5
1savev2_adam_dense_23_kernel_m_read_readvariableop3
/savev2_adam_dense_23_bias_m_read_readvariableop5
1savev2_adam_dense_21_kernel_v_read_readvariableop3
/savev2_adam_dense_21_bias_v_read_readvariableop5
1savev2_adam_dense_22_kernel_v_read_readvariableop3
/savev2_adam_dense_22_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_14_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_14_beta_v_read_readvariableopB
>savev2_adam_batch_normalization_15_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_15_beta_v_read_readvariableop5
1savev2_adam_dense_23_kernel_v_read_readvariableop3
/savev2_adam_dense_23_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*?
value?B?,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_21_kernel_read_readvariableop(savev2_dense_21_bias_read_readvariableop*savev2_dense_22_kernel_read_readvariableop(savev2_dense_22_bias_read_readvariableop7savev2_batch_normalization_14_gamma_read_readvariableop6savev2_batch_normalization_14_beta_read_readvariableop=savev2_batch_normalization_14_moving_mean_read_readvariableopAsavev2_batch_normalization_14_moving_variance_read_readvariableop7savev2_batch_normalization_15_gamma_read_readvariableop6savev2_batch_normalization_15_beta_read_readvariableop=savev2_batch_normalization_15_moving_mean_read_readvariableopAsavev2_batch_normalization_15_moving_variance_read_readvariableop*savev2_dense_23_kernel_read_readvariableop(savev2_dense_23_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_21_kernel_m_read_readvariableop/savev2_adam_dense_21_bias_m_read_readvariableop1savev2_adam_dense_22_kernel_m_read_readvariableop/savev2_adam_dense_22_bias_m_read_readvariableop>savev2_adam_batch_normalization_14_gamma_m_read_readvariableop=savev2_adam_batch_normalization_14_beta_m_read_readvariableop>savev2_adam_batch_normalization_15_gamma_m_read_readvariableop=savev2_adam_batch_normalization_15_beta_m_read_readvariableop1savev2_adam_dense_23_kernel_m_read_readvariableop/savev2_adam_dense_23_bias_m_read_readvariableop1savev2_adam_dense_21_kernel_v_read_readvariableop/savev2_adam_dense_21_bias_v_read_readvariableop1savev2_adam_dense_22_kernel_v_read_readvariableop/savev2_adam_dense_22_bias_v_read_readvariableop>savev2_adam_batch_normalization_14_gamma_v_read_readvariableop=savev2_adam_batch_normalization_14_beta_v_read_readvariableop>savev2_adam_batch_normalization_15_gamma_v_read_readvariableop=savev2_adam_batch_normalization_15_beta_v_read_readvariableop1savev2_adam_dense_23_kernel_v_read_readvariableop/savev2_adam_dense_23_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *:
dtypes0
.2,	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
??::
??::::::::::
??:??: : : : : : : : : :
??::
??::::::
??:??:
??::
??::::::
??:??: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??: 

_output_shapes
::&"
 
_output_shapes
:
??: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 	

_output_shapes
:: 


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
??:"

_output_shapes

:??:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??: 

_output_shapes
::&"
 
_output_shapes
:
??: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::& "
 
_output_shapes
:
??:"!

_output_shapes

:??:&""
 
_output_shapes
:
??: #

_output_shapes
::&$"
 
_output_shapes
:
??: %

_output_shapes
:: &

_output_shapes
:: '

_output_shapes
:: (

_output_shapes
:: )

_output_shapes
::&*"
 
_output_shapes
:
??:"+

_output_shapes

:??:,

_output_shapes
: 
?
?
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_82565

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_model_7_layer_call_fn_82082
input_16
input_17
unknown:
??
	unknown_0:
	unknown_1:
??
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
??

unknown_12:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_16input_17unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*,
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_7_layer_call_and_return_conditional_losses_820172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????@:??????????@: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:??????????@
"
_user_specified_name
input_16:ZV
0
_output_shapes
:??????????@
"
_user_specified_name
input_17
?m
?
B__inference_model_7_layer_call_and_return_conditional_losses_82355
inputs_0
inputs_1;
'dense_22_matmul_readvariableop_resource:
??6
(dense_22_biasadd_readvariableop_resource:;
'dense_21_matmul_readvariableop_resource:
??6
(dense_21_biasadd_readvariableop_resource:F
8batch_normalization_14_batchnorm_readvariableop_resource:J
<batch_normalization_14_batchnorm_mul_readvariableop_resource:H
:batch_normalization_14_batchnorm_readvariableop_1_resource:H
:batch_normalization_14_batchnorm_readvariableop_2_resource:F
8batch_normalization_15_batchnorm_readvariableop_resource:J
<batch_normalization_15_batchnorm_mul_readvariableop_resource:H
:batch_normalization_15_batchnorm_readvariableop_1_resource:H
:batch_normalization_15_batchnorm_readvariableop_2_resource:"
dense_23_82337:
??
dense_23_82339:
??
identity??StatefulPartitionedCall?/batch_normalization_14/batchnorm/ReadVariableOp?1batch_normalization_14/batchnorm/ReadVariableOp_1?1batch_normalization_14/batchnorm/ReadVariableOp_2?3batch_normalization_14/batchnorm/mul/ReadVariableOp?/batch_normalization_15/batchnorm/ReadVariableOp?1batch_normalization_15/batchnorm/ReadVariableOp_1?1batch_normalization_15/batchnorm/ReadVariableOp_2?3batch_normalization_15/batchnorm/mul/ReadVariableOp?dense_21/BiasAdd/ReadVariableOp?dense_21/MatMul/ReadVariableOp?dense_22/BiasAdd/ReadVariableOp?dense_22/MatMul/ReadVariableOp? dense_23/StatefulPartitionedCallu
flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? `  2
flatten_15/Const?
flatten_15/ReshapeReshapeinputs_1flatten_15/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_15/Reshapeu
flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? `  2
flatten_14/Const?
flatten_14/ReshapeReshapeinputs_0flatten_14/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_14/Reshape?
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_22/MatMul/ReadVariableOp?
dense_22/MatMulMatMulflatten_15/Reshape:output:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_22/MatMul?
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_22/BiasAdd/ReadVariableOp?
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_22/BiasAdds
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_22/Relu?
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_21/MatMul/ReadVariableOp?
dense_21/MatMulMatMulflatten_14/Reshape:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_21/MatMul?
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_21/BiasAdd/ReadVariableOp?
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_21/BiasAdds
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_21/Relu?
/batch_normalization_14/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_14_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype021
/batch_normalization_14/batchnorm/ReadVariableOp?
&batch_normalization_14/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_14/batchnorm/add/y?
$batch_normalization_14/batchnorm/addAddV27batch_normalization_14/batchnorm/ReadVariableOp:value:0/batch_normalization_14/batchnorm/add/y:output:0*
T0*
_output_shapes
:2&
$batch_normalization_14/batchnorm/add?
&batch_normalization_14/batchnorm/RsqrtRsqrt(batch_normalization_14/batchnorm/add:z:0*
T0*
_output_shapes
:2(
&batch_normalization_14/batchnorm/Rsqrt?
3batch_normalization_14/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_14_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype025
3batch_normalization_14/batchnorm/mul/ReadVariableOp?
$batch_normalization_14/batchnorm/mulMul*batch_normalization_14/batchnorm/Rsqrt:y:0;batch_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2&
$batch_normalization_14/batchnorm/mul?
&batch_normalization_14/batchnorm/mul_1Muldense_21/Relu:activations:0(batch_normalization_14/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2(
&batch_normalization_14/batchnorm/mul_1?
1batch_normalization_14/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_14_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype023
1batch_normalization_14/batchnorm/ReadVariableOp_1?
&batch_normalization_14/batchnorm/mul_2Mul9batch_normalization_14/batchnorm/ReadVariableOp_1:value:0(batch_normalization_14/batchnorm/mul:z:0*
T0*
_output_shapes
:2(
&batch_normalization_14/batchnorm/mul_2?
1batch_normalization_14/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_14_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype023
1batch_normalization_14/batchnorm/ReadVariableOp_2?
$batch_normalization_14/batchnorm/subSub9batch_normalization_14/batchnorm/ReadVariableOp_2:value:0*batch_normalization_14/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2&
$batch_normalization_14/batchnorm/sub?
&batch_normalization_14/batchnorm/add_1AddV2*batch_normalization_14/batchnorm/mul_1:z:0(batch_normalization_14/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2(
&batch_normalization_14/batchnorm/add_1?
/batch_normalization_15/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_15_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype021
/batch_normalization_15/batchnorm/ReadVariableOp?
&batch_normalization_15/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_15/batchnorm/add/y?
$batch_normalization_15/batchnorm/addAddV27batch_normalization_15/batchnorm/ReadVariableOp:value:0/batch_normalization_15/batchnorm/add/y:output:0*
T0*
_output_shapes
:2&
$batch_normalization_15/batchnorm/add?
&batch_normalization_15/batchnorm/RsqrtRsqrt(batch_normalization_15/batchnorm/add:z:0*
T0*
_output_shapes
:2(
&batch_normalization_15/batchnorm/Rsqrt?
3batch_normalization_15/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_15_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype025
3batch_normalization_15/batchnorm/mul/ReadVariableOp?
$batch_normalization_15/batchnorm/mulMul*batch_normalization_15/batchnorm/Rsqrt:y:0;batch_normalization_15/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2&
$batch_normalization_15/batchnorm/mul?
&batch_normalization_15/batchnorm/mul_1Muldense_22/Relu:activations:0(batch_normalization_15/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2(
&batch_normalization_15/batchnorm/mul_1?
1batch_normalization_15/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_15_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype023
1batch_normalization_15/batchnorm/ReadVariableOp_1?
&batch_normalization_15/batchnorm/mul_2Mul9batch_normalization_15/batchnorm/ReadVariableOp_1:value:0(batch_normalization_15/batchnorm/mul:z:0*
T0*
_output_shapes
:2(
&batch_normalization_15/batchnorm/mul_2?
1batch_normalization_15/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_15_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype023
1batch_normalization_15/batchnorm/ReadVariableOp_2?
$batch_normalization_15/batchnorm/subSub9batch_normalization_15/batchnorm/ReadVariableOp_2:value:0*batch_normalization_15/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2&
$batch_normalization_15/batchnorm/sub?
&batch_normalization_15/batchnorm/add_1AddV2*batch_normalization_15/batchnorm/mul_1:z:0(batch_normalization_15/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2(
&batch_normalization_15/batchnorm/add_1x
concatenate_7/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_7/concat/axis?
concatenate_7/concatConcatV2*batch_normalization_14/batchnorm/add_1:z:0*batch_normalization_15/batchnorm/add_1:z:0"concatenate_7/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
concatenate_7/concat?
 dense_23/StatefulPartitionedCallStatefulPartitionedCallconcatenate_7/concat:output:0dense_23_82337dense_23_82339*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_814032"
 dense_23/StatefulPartitionedCall{
reshape_7/ShapeShape)dense_23/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
reshape_7/Shape?
reshape_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_7/strided_slice/stack?
reshape_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_7/strided_slice/stack_1?
reshape_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_7/strided_slice/stack_2?
reshape_7/strided_sliceStridedSlicereshape_7/Shape:output:0&reshape_7/strided_slice/stack:output:0(reshape_7/strided_slice/stack_1:output:0(reshape_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_7/strided_slicey
reshape_7/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_7/Reshape/shape/1x
reshape_7/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_7/Reshape/shape/2x
reshape_7/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_7/Reshape/shape/3?
reshape_7/Reshape/shapePack reshape_7/strided_slice:output:0"reshape_7/Reshape/shape/1:output:0"reshape_7/Reshape/shape/2:output:0"reshape_7/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_7/Reshape/shape?
reshape_7/ReshapeReshape)dense_23/StatefulPartitionedCall:output:0 reshape_7/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????@2
reshape_7/Reshape?
StatefulPartitionedCallStatefulPartitionedCalldense_23_82337*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_818562
StatefulPartitionedCall~
IdentityIdentityreshape_7/Reshape:output:0^NoOp*
T0*0
_output_shapes
:??????????@2

Identity?
NoOpNoOp^StatefulPartitionedCall0^batch_normalization_14/batchnorm/ReadVariableOp2^batch_normalization_14/batchnorm/ReadVariableOp_12^batch_normalization_14/batchnorm/ReadVariableOp_24^batch_normalization_14/batchnorm/mul/ReadVariableOp0^batch_normalization_15/batchnorm/ReadVariableOp2^batch_normalization_15/batchnorm/ReadVariableOp_12^batch_normalization_15/batchnorm/ReadVariableOp_24^batch_normalization_15/batchnorm/mul/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp!^dense_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????@:??????????@: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall2b
/batch_normalization_14/batchnorm/ReadVariableOp/batch_normalization_14/batchnorm/ReadVariableOp2f
1batch_normalization_14/batchnorm/ReadVariableOp_11batch_normalization_14/batchnorm/ReadVariableOp_12f
1batch_normalization_14/batchnorm/ReadVariableOp_21batch_normalization_14/batchnorm/ReadVariableOp_22j
3batch_normalization_14/batchnorm/mul/ReadVariableOp3batch_normalization_14/batchnorm/mul/ReadVariableOp2b
/batch_normalization_15/batchnorm/ReadVariableOp/batch_normalization_15/batchnorm/ReadVariableOp2f
1batch_normalization_15/batchnorm/ReadVariableOp_11batch_normalization_15/batchnorm/ReadVariableOp_12f
1batch_normalization_15/batchnorm/ReadVariableOp_21batch_normalization_15/batchnorm/ReadVariableOp_22j
3batch_normalization_15/batchnorm/mul/ReadVariableOp3batch_normalization_15/batchnorm/mul/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:Z V
0
_output_shapes
:??????????@
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????@
"
_user_specified_name
inputs/1
??
?
!__inference__traced_restore_83004
file_prefix4
 assignvariableop_dense_21_kernel:
??.
 assignvariableop_1_dense_21_bias:6
"assignvariableop_2_dense_22_kernel:
??.
 assignvariableop_3_dense_22_bias:=
/assignvariableop_4_batch_normalization_14_gamma:<
.assignvariableop_5_batch_normalization_14_beta:C
5assignvariableop_6_batch_normalization_14_moving_mean:G
9assignvariableop_7_batch_normalization_14_moving_variance:=
/assignvariableop_8_batch_normalization_15_gamma:<
.assignvariableop_9_batch_normalization_15_beta:D
6assignvariableop_10_batch_normalization_15_moving_mean:H
:assignvariableop_11_batch_normalization_15_moving_variance:7
#assignvariableop_12_dense_23_kernel:
??1
!assignvariableop_13_dense_23_bias:
??'
assignvariableop_14_adam_iter:	 )
assignvariableop_15_adam_beta_1: )
assignvariableop_16_adam_beta_2: (
assignvariableop_17_adam_decay: 0
&assignvariableop_18_adam_learning_rate: #
assignvariableop_19_total: #
assignvariableop_20_count: %
assignvariableop_21_total_1: %
assignvariableop_22_count_1: >
*assignvariableop_23_adam_dense_21_kernel_m:
??6
(assignvariableop_24_adam_dense_21_bias_m:>
*assignvariableop_25_adam_dense_22_kernel_m:
??6
(assignvariableop_26_adam_dense_22_bias_m:E
7assignvariableop_27_adam_batch_normalization_14_gamma_m:D
6assignvariableop_28_adam_batch_normalization_14_beta_m:E
7assignvariableop_29_adam_batch_normalization_15_gamma_m:D
6assignvariableop_30_adam_batch_normalization_15_beta_m:>
*assignvariableop_31_adam_dense_23_kernel_m:
??8
(assignvariableop_32_adam_dense_23_bias_m:
??>
*assignvariableop_33_adam_dense_21_kernel_v:
??6
(assignvariableop_34_adam_dense_21_bias_v:>
*assignvariableop_35_adam_dense_22_kernel_v:
??6
(assignvariableop_36_adam_dense_22_bias_v:E
7assignvariableop_37_adam_batch_normalization_14_gamma_v:D
6assignvariableop_38_adam_batch_normalization_14_beta_v:E
7assignvariableop_39_adam_batch_normalization_15_gamma_v:D
6assignvariableop_40_adam_batch_normalization_15_beta_v:>
*assignvariableop_41_adam_dense_23_kernel_v:
??8
(assignvariableop_42_adam_dense_23_bias_v:
??
identity_44??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*?
value?B?,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::*:
dtypes0
.2,	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_21_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_21_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_22_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_22_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp/assignvariableop_4_batch_normalization_14_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp.assignvariableop_5_batch_normalization_14_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp5assignvariableop_6_batch_normalization_14_moving_meanIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp9assignvariableop_7_batch_normalization_14_moving_varianceIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_15_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_15_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_15_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_15_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_23_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_23_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_21_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_21_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_22_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_22_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp7assignvariableop_27_adam_batch_normalization_14_gamma_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_batch_normalization_14_beta_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp7assignvariableop_29_adam_batch_normalization_15_gamma_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp6assignvariableop_30_adam_batch_normalization_15_beta_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_23_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_23_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_21_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_21_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_22_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_22_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp7assignvariableop_37_adam_batch_normalization_14_gamma_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp6assignvariableop_38_adam_batch_normalization_14_beta_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp7assignvariableop_39_adam_batch_normalization_15_gamma_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp6assignvariableop_40_adam_batch_normalization_15_beta_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_23_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_23_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_429
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_43Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_43f
Identity_44IdentityIdentity_43:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_44?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_44Identity_44:output:0*k
_input_shapesZ
X: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
'__inference_model_7_layer_call_fn_81891
input_16
input_17
unknown:
??
	unknown_0:
	unknown_1:
??
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
??

unknown_12:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_16input_17unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_7_layer_call_and_return_conditional_losses_818602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????@:??????????@: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:??????????@
"
_user_specified_name
input_16:ZV
0
_output_shapes
:??????????@
"
_user_specified_name
input_17
?
a
E__inference_flatten_15_layer_call_and_return_conditional_losses_82479

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? `  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
a
E__inference_flatten_14_layer_call_and_return_conditional_losses_82468

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? `  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
F
*__inference_flatten_14_layer_call_fn_82462

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_14_layer_call_and_return_conditional_losses_817672
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_65630N
:dense_23_kernel_regularizer_square_readvariableop_resource:
??
identity??1dense_23/kernel/Regularizer/Square/ReadVariableOp?
1dense_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_23_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_23/kernel/Regularizer/Square/ReadVariableOp?
"dense_23/kernel/Regularizer/SquareSquare9dense_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_23/kernel/Regularizer/Square?
!dense_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_23/kernel/Regularizer/Const?
dense_23/kernel/Regularizer/SumSum&dense_23/kernel/Regularizer/Square:y:0*dense_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/Sum?
!dense_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!dense_23/kernel/Regularizer/mul/x?
dense_23/kernel/Regularizer/mulMul*dense_23/kernel/Regularizer/mul/x:output:0(dense_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/mul?
NoOpNoOp2^dense_23/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOpm
IdentityIdentity#dense_23/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_23/kernel/Regularizer/Square/ReadVariableOp1dense_23/kernel/Regularizer/Square/ReadVariableOp
?
?
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_81444

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_82645

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
C__inference_dense_21_layer_call_and_return_conditional_losses_82499

inputs2
matmul_readvariableop_resource:
??-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?2
?
B__inference_model_7_layer_call_and_return_conditional_losses_82126
input_16
input_17"
dense_22_82088:
??
dense_22_82090:"
dense_21_82093:
??
dense_21_82095:*
batch_normalization_14_82098:*
batch_normalization_14_82100:*
batch_normalization_14_82102:*
batch_normalization_14_82104:*
batch_normalization_15_82107:*
batch_normalization_15_82109:*
batch_normalization_15_82111:*
batch_normalization_15_82113:"
dense_23_82117:
??
dense_23_82119:
??
identity??StatefulPartitionedCall?.batch_normalization_14/StatefulPartitionedCall?.batch_normalization_15/StatefulPartitionedCall? dense_21/StatefulPartitionedCall? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall?
flatten_15/PartitionedCallPartitionedCallinput_17*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_15_layer_call_and_return_conditional_losses_817592
flatten_15/PartitionedCall?
flatten_14/PartitionedCallPartitionedCallinput_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_14_layer_call_and_return_conditional_losses_817672
flatten_14/PartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0dense_22_82088dense_22_82090*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_817802"
 dense_22/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_21_82093dense_21_82095*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_21_layer_call_and_return_conditional_losses_817972"
 dense_21/StatefulPartitionedCall?
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0batch_normalization_14_82098batch_normalization_14_82100batch_normalization_14_82102batch_normalization_14_82104*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_8144420
.batch_normalization_14/StatefulPartitionedCall?
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0batch_normalization_15_82107batch_normalization_15_82109batch_normalization_15_82111batch_normalization_15_82113*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_8160620
.batch_normalization_15/StatefulPartitionedCall?
concatenate_7/PartitionedCallPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:07batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_concatenate_7_layer_call_and_return_conditional_losses_818282
concatenate_7/PartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall&concatenate_7/PartitionedCall:output:0dense_23_82117dense_23_82119*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_814032"
 dense_23/StatefulPartitionedCall?
reshape_7/PartitionedCallPartitionedCall)dense_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_reshape_7_layer_call_and_return_conditional_losses_818492
reshape_7/PartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_23_82117*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_818562
StatefulPartitionedCall?
IdentityIdentity"reshape_7/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????@2

Identity?
NoOpNoOp^StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall/^batch_normalization_15/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????@:??????????@: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:Z V
0
_output_shapes
:??????????@
"
_user_specified_name
input_16:ZV
0
_output_shapes
:??????????@
"
_user_specified_name
input_17
?
?
'__inference_model_7_layer_call_fn_82247
inputs_0
inputs_1
unknown:
??
	unknown_0:
	unknown_1:
??
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
??

unknown_12:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_7_layer_call_and_return_conditional_losses_818602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????@:??????????@: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:??????????@
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????@
"
_user_specified_name
inputs/1
?
a
E__inference_flatten_15_layer_call_and_return_conditional_losses_81759

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? `  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_82213
input_16
input_17
unknown:
??
	unknown_0:
	unknown_1:
??
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
??

unknown_12:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_16input_17unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_814202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????@:??????????@: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:??????????@
"
_user_specified_name
input_16:ZV
0
_output_shapes
:??????????@
"
_user_specified_name
input_17
?
?
C__inference_dense_23_layer_call_and_return_conditional_losses_66149

inputs2
matmul_readvariableop_resource:
??/
biasadd_readvariableop_resource:
??
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_23/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes

:??*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:???????????2	
BiasAddc
SigmoidSigmoidBiasAdd:output:0*
T0*)
_output_shapes
:???????????2	
SigmoidS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C2
mul/yb
mulMulSigmoid:y:0mul/y:output:0*
T0*)
_output_shapes
:???????????2
mul?
1dense_23/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_23/kernel/Regularizer/Square/ReadVariableOp?
"dense_23/kernel/Regularizer/SquareSquare9dense_23/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_23/kernel/Regularizer/Square?
!dense_23/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_23/kernel/Regularizer/Const?
dense_23/kernel/Regularizer/SumSum&dense_23/kernel/Regularizer/Square:y:0*dense_23/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/Sum?
!dense_23/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!dense_23/kernel/Regularizer/mul/x?
dense_23/kernel/Regularizer/mulMul*dense_23/kernel/Regularizer/mul/x:output:0(dense_23/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_23/kernel/Regularizer/mul?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_23/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOpd
IdentityIdentitymul:z:0^NoOp*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_23/kernel/Regularizer/Square/ReadVariableOp1dense_23/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
`
D__inference_reshape_7_layer_call_and_return_conditional_losses_82712

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicee
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:??????????@2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:???????????:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?2
?
B__inference_model_7_layer_call_and_return_conditional_losses_81860

inputs
inputs_1"
dense_22_81781:
??
dense_22_81783:"
dense_21_81798:
??
dense_21_81800:*
batch_normalization_14_81803:*
batch_normalization_14_81805:*
batch_normalization_14_81807:*
batch_normalization_14_81809:*
batch_normalization_15_81812:*
batch_normalization_15_81814:*
batch_normalization_15_81816:*
batch_normalization_15_81818:"
dense_23_81830:
??
dense_23_81832:
??
identity??StatefulPartitionedCall?.batch_normalization_14/StatefulPartitionedCall?.batch_normalization_15/StatefulPartitionedCall? dense_21/StatefulPartitionedCall? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall?
flatten_15/PartitionedCallPartitionedCallinputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_15_layer_call_and_return_conditional_losses_817592
flatten_15/PartitionedCall?
flatten_14/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_14_layer_call_and_return_conditional_losses_817672
flatten_14/PartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0dense_22_81781dense_22_81783*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_817802"
 dense_22/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_21_81798dense_21_81800*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_21_layer_call_and_return_conditional_losses_817972"
 dense_21/StatefulPartitionedCall?
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0batch_normalization_14_81803batch_normalization_14_81805batch_normalization_14_81807batch_normalization_14_81809*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_8144420
.batch_normalization_14/StatefulPartitionedCall?
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0batch_normalization_15_81812batch_normalization_15_81814batch_normalization_15_81816batch_normalization_15_81818*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_8160620
.batch_normalization_15/StatefulPartitionedCall?
concatenate_7/PartitionedCallPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:07batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_concatenate_7_layer_call_and_return_conditional_losses_818282
concatenate_7/PartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall&concatenate_7/PartitionedCall:output:0dense_23_81830dense_23_81832*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_814032"
 dense_23/StatefulPartitionedCall?
reshape_7/PartitionedCallPartitionedCall)dense_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_reshape_7_layer_call_and_return_conditional_losses_818492
reshape_7/PartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_23_81830*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_818562
StatefulPartitionedCall?
IdentityIdentity"reshape_7/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????@2

Identity?
NoOpNoOp^StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall/^batch_normalization_15/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????@:??????????@: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs:XT
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
`
D__inference_reshape_7_layer_call_and_return_conditional_losses_81849

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicee
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:??????????@2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:???????????:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
F
*__inference_flatten_15_layer_call_fn_82473

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_15_layer_call_and_return_conditional_losses_817592
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?x
?
 __inference__wrapped_model_81420
input_16
input_17C
/model_7_dense_22_matmul_readvariableop_resource:
??>
0model_7_dense_22_biasadd_readvariableop_resource:C
/model_7_dense_21_matmul_readvariableop_resource:
??>
0model_7_dense_21_biasadd_readvariableop_resource:N
@model_7_batch_normalization_14_batchnorm_readvariableop_resource:R
Dmodel_7_batch_normalization_14_batchnorm_mul_readvariableop_resource:P
Bmodel_7_batch_normalization_14_batchnorm_readvariableop_1_resource:P
Bmodel_7_batch_normalization_14_batchnorm_readvariableop_2_resource:N
@model_7_batch_normalization_15_batchnorm_readvariableop_resource:R
Dmodel_7_batch_normalization_15_batchnorm_mul_readvariableop_resource:P
Bmodel_7_batch_normalization_15_batchnorm_readvariableop_1_resource:P
Bmodel_7_batch_normalization_15_batchnorm_readvariableop_2_resource:*
model_7_dense_23_81404:
??&
model_7_dense_23_81406:
??
identity??7model_7/batch_normalization_14/batchnorm/ReadVariableOp?9model_7/batch_normalization_14/batchnorm/ReadVariableOp_1?9model_7/batch_normalization_14/batchnorm/ReadVariableOp_2?;model_7/batch_normalization_14/batchnorm/mul/ReadVariableOp?7model_7/batch_normalization_15/batchnorm/ReadVariableOp?9model_7/batch_normalization_15/batchnorm/ReadVariableOp_1?9model_7/batch_normalization_15/batchnorm/ReadVariableOp_2?;model_7/batch_normalization_15/batchnorm/mul/ReadVariableOp?'model_7/dense_21/BiasAdd/ReadVariableOp?&model_7/dense_21/MatMul/ReadVariableOp?'model_7/dense_22/BiasAdd/ReadVariableOp?&model_7/dense_22/MatMul/ReadVariableOp?(model_7/dense_23/StatefulPartitionedCall?
model_7/flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? `  2
model_7/flatten_15/Const?
model_7/flatten_15/ReshapeReshapeinput_17!model_7/flatten_15/Const:output:0*
T0*)
_output_shapes
:???????????2
model_7/flatten_15/Reshape?
model_7/flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? `  2
model_7/flatten_14/Const?
model_7/flatten_14/ReshapeReshapeinput_16!model_7/flatten_14/Const:output:0*
T0*)
_output_shapes
:???????????2
model_7/flatten_14/Reshape?
&model_7/dense_22/MatMul/ReadVariableOpReadVariableOp/model_7_dense_22_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&model_7/dense_22/MatMul/ReadVariableOp?
model_7/dense_22/MatMulMatMul#model_7/flatten_15/Reshape:output:0.model_7/dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_7/dense_22/MatMul?
'model_7/dense_22/BiasAdd/ReadVariableOpReadVariableOp0model_7_dense_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_7/dense_22/BiasAdd/ReadVariableOp?
model_7/dense_22/BiasAddBiasAdd!model_7/dense_22/MatMul:product:0/model_7/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_7/dense_22/BiasAdd?
model_7/dense_22/ReluRelu!model_7/dense_22/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_7/dense_22/Relu?
&model_7/dense_21/MatMul/ReadVariableOpReadVariableOp/model_7_dense_21_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&model_7/dense_21/MatMul/ReadVariableOp?
model_7/dense_21/MatMulMatMul#model_7/flatten_14/Reshape:output:0.model_7/dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_7/dense_21/MatMul?
'model_7/dense_21/BiasAdd/ReadVariableOpReadVariableOp0model_7_dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_7/dense_21/BiasAdd/ReadVariableOp?
model_7/dense_21/BiasAddBiasAdd!model_7/dense_21/MatMul:product:0/model_7/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_7/dense_21/BiasAdd?
model_7/dense_21/ReluRelu!model_7/dense_21/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model_7/dense_21/Relu?
7model_7/batch_normalization_14/batchnorm/ReadVariableOpReadVariableOp@model_7_batch_normalization_14_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype029
7model_7/batch_normalization_14/batchnorm/ReadVariableOp?
.model_7/batch_normalization_14/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:20
.model_7/batch_normalization_14/batchnorm/add/y?
,model_7/batch_normalization_14/batchnorm/addAddV2?model_7/batch_normalization_14/batchnorm/ReadVariableOp:value:07model_7/batch_normalization_14/batchnorm/add/y:output:0*
T0*
_output_shapes
:2.
,model_7/batch_normalization_14/batchnorm/add?
.model_7/batch_normalization_14/batchnorm/RsqrtRsqrt0model_7/batch_normalization_14/batchnorm/add:z:0*
T0*
_output_shapes
:20
.model_7/batch_normalization_14/batchnorm/Rsqrt?
;model_7/batch_normalization_14/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_7_batch_normalization_14_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02=
;model_7/batch_normalization_14/batchnorm/mul/ReadVariableOp?
,model_7/batch_normalization_14/batchnorm/mulMul2model_7/batch_normalization_14/batchnorm/Rsqrt:y:0Cmodel_7/batch_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2.
,model_7/batch_normalization_14/batchnorm/mul?
.model_7/batch_normalization_14/batchnorm/mul_1Mul#model_7/dense_21/Relu:activations:00model_7/batch_normalization_14/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????20
.model_7/batch_normalization_14/batchnorm/mul_1?
9model_7/batch_normalization_14/batchnorm/ReadVariableOp_1ReadVariableOpBmodel_7_batch_normalization_14_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02;
9model_7/batch_normalization_14/batchnorm/ReadVariableOp_1?
.model_7/batch_normalization_14/batchnorm/mul_2MulAmodel_7/batch_normalization_14/batchnorm/ReadVariableOp_1:value:00model_7/batch_normalization_14/batchnorm/mul:z:0*
T0*
_output_shapes
:20
.model_7/batch_normalization_14/batchnorm/mul_2?
9model_7/batch_normalization_14/batchnorm/ReadVariableOp_2ReadVariableOpBmodel_7_batch_normalization_14_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02;
9model_7/batch_normalization_14/batchnorm/ReadVariableOp_2?
,model_7/batch_normalization_14/batchnorm/subSubAmodel_7/batch_normalization_14/batchnorm/ReadVariableOp_2:value:02model_7/batch_normalization_14/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2.
,model_7/batch_normalization_14/batchnorm/sub?
.model_7/batch_normalization_14/batchnorm/add_1AddV22model_7/batch_normalization_14/batchnorm/mul_1:z:00model_7/batch_normalization_14/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????20
.model_7/batch_normalization_14/batchnorm/add_1?
7model_7/batch_normalization_15/batchnorm/ReadVariableOpReadVariableOp@model_7_batch_normalization_15_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype029
7model_7/batch_normalization_15/batchnorm/ReadVariableOp?
.model_7/batch_normalization_15/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:20
.model_7/batch_normalization_15/batchnorm/add/y?
,model_7/batch_normalization_15/batchnorm/addAddV2?model_7/batch_normalization_15/batchnorm/ReadVariableOp:value:07model_7/batch_normalization_15/batchnorm/add/y:output:0*
T0*
_output_shapes
:2.
,model_7/batch_normalization_15/batchnorm/add?
.model_7/batch_normalization_15/batchnorm/RsqrtRsqrt0model_7/batch_normalization_15/batchnorm/add:z:0*
T0*
_output_shapes
:20
.model_7/batch_normalization_15/batchnorm/Rsqrt?
;model_7/batch_normalization_15/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_7_batch_normalization_15_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02=
;model_7/batch_normalization_15/batchnorm/mul/ReadVariableOp?
,model_7/batch_normalization_15/batchnorm/mulMul2model_7/batch_normalization_15/batchnorm/Rsqrt:y:0Cmodel_7/batch_normalization_15/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2.
,model_7/batch_normalization_15/batchnorm/mul?
.model_7/batch_normalization_15/batchnorm/mul_1Mul#model_7/dense_22/Relu:activations:00model_7/batch_normalization_15/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????20
.model_7/batch_normalization_15/batchnorm/mul_1?
9model_7/batch_normalization_15/batchnorm/ReadVariableOp_1ReadVariableOpBmodel_7_batch_normalization_15_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02;
9model_7/batch_normalization_15/batchnorm/ReadVariableOp_1?
.model_7/batch_normalization_15/batchnorm/mul_2MulAmodel_7/batch_normalization_15/batchnorm/ReadVariableOp_1:value:00model_7/batch_normalization_15/batchnorm/mul:z:0*
T0*
_output_shapes
:20
.model_7/batch_normalization_15/batchnorm/mul_2?
9model_7/batch_normalization_15/batchnorm/ReadVariableOp_2ReadVariableOpBmodel_7_batch_normalization_15_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02;
9model_7/batch_normalization_15/batchnorm/ReadVariableOp_2?
,model_7/batch_normalization_15/batchnorm/subSubAmodel_7/batch_normalization_15/batchnorm/ReadVariableOp_2:value:02model_7/batch_normalization_15/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2.
,model_7/batch_normalization_15/batchnorm/sub?
.model_7/batch_normalization_15/batchnorm/add_1AddV22model_7/batch_normalization_15/batchnorm/mul_1:z:00model_7/batch_normalization_15/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????20
.model_7/batch_normalization_15/batchnorm/add_1?
!model_7/concatenate_7/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_7/concatenate_7/concat/axis?
model_7/concatenate_7/concatConcatV22model_7/batch_normalization_14/batchnorm/add_1:z:02model_7/batch_normalization_15/batchnorm/add_1:z:0*model_7/concatenate_7/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
model_7/concatenate_7/concat?
(model_7/dense_23/StatefulPartitionedCallStatefulPartitionedCall%model_7/concatenate_7/concat:output:0model_7_dense_23_81404model_7_dense_23_81406*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_814032*
(model_7/dense_23/StatefulPartitionedCall?
model_7/reshape_7/ShapeShape1model_7/dense_23/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
model_7/reshape_7/Shape?
%model_7/reshape_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%model_7/reshape_7/strided_slice/stack?
'model_7/reshape_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'model_7/reshape_7/strided_slice/stack_1?
'model_7/reshape_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'model_7/reshape_7/strided_slice/stack_2?
model_7/reshape_7/strided_sliceStridedSlice model_7/reshape_7/Shape:output:0.model_7/reshape_7/strided_slice/stack:output:00model_7/reshape_7/strided_slice/stack_1:output:00model_7/reshape_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
model_7/reshape_7/strided_slice?
!model_7/reshape_7/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2#
!model_7/reshape_7/Reshape/shape/1?
!model_7/reshape_7/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2#
!model_7/reshape_7/Reshape/shape/2?
!model_7/reshape_7/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2#
!model_7/reshape_7/Reshape/shape/3?
model_7/reshape_7/Reshape/shapePack(model_7/reshape_7/strided_slice:output:0*model_7/reshape_7/Reshape/shape/1:output:0*model_7/reshape_7/Reshape/shape/2:output:0*model_7/reshape_7/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2!
model_7/reshape_7/Reshape/shape?
model_7/reshape_7/ReshapeReshape1model_7/dense_23/StatefulPartitionedCall:output:0(model_7/reshape_7/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????@2
model_7/reshape_7/Reshape?
IdentityIdentity"model_7/reshape_7/Reshape:output:0^NoOp*
T0*0
_output_shapes
:??????????@2

Identity?
NoOpNoOp8^model_7/batch_normalization_14/batchnorm/ReadVariableOp:^model_7/batch_normalization_14/batchnorm/ReadVariableOp_1:^model_7/batch_normalization_14/batchnorm/ReadVariableOp_2<^model_7/batch_normalization_14/batchnorm/mul/ReadVariableOp8^model_7/batch_normalization_15/batchnorm/ReadVariableOp:^model_7/batch_normalization_15/batchnorm/ReadVariableOp_1:^model_7/batch_normalization_15/batchnorm/ReadVariableOp_2<^model_7/batch_normalization_15/batchnorm/mul/ReadVariableOp(^model_7/dense_21/BiasAdd/ReadVariableOp'^model_7/dense_21/MatMul/ReadVariableOp(^model_7/dense_22/BiasAdd/ReadVariableOp'^model_7/dense_22/MatMul/ReadVariableOp)^model_7/dense_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????@:??????????@: : : : : : : : : : : : : : 2r
7model_7/batch_normalization_14/batchnorm/ReadVariableOp7model_7/batch_normalization_14/batchnorm/ReadVariableOp2v
9model_7/batch_normalization_14/batchnorm/ReadVariableOp_19model_7/batch_normalization_14/batchnorm/ReadVariableOp_12v
9model_7/batch_normalization_14/batchnorm/ReadVariableOp_29model_7/batch_normalization_14/batchnorm/ReadVariableOp_22z
;model_7/batch_normalization_14/batchnorm/mul/ReadVariableOp;model_7/batch_normalization_14/batchnorm/mul/ReadVariableOp2r
7model_7/batch_normalization_15/batchnorm/ReadVariableOp7model_7/batch_normalization_15/batchnorm/ReadVariableOp2v
9model_7/batch_normalization_15/batchnorm/ReadVariableOp_19model_7/batch_normalization_15/batchnorm/ReadVariableOp_12v
9model_7/batch_normalization_15/batchnorm/ReadVariableOp_29model_7/batch_normalization_15/batchnorm/ReadVariableOp_22z
;model_7/batch_normalization_15/batchnorm/mul/ReadVariableOp;model_7/batch_normalization_15/batchnorm/mul/ReadVariableOp2R
'model_7/dense_21/BiasAdd/ReadVariableOp'model_7/dense_21/BiasAdd/ReadVariableOp2P
&model_7/dense_21/MatMul/ReadVariableOp&model_7/dense_21/MatMul/ReadVariableOp2R
'model_7/dense_22/BiasAdd/ReadVariableOp'model_7/dense_22/BiasAdd/ReadVariableOp2P
&model_7/dense_22/MatMul/ReadVariableOp&model_7/dense_22/MatMul/ReadVariableOp2T
(model_7/dense_23/StatefulPartitionedCall(model_7/dense_23/StatefulPartitionedCall:Z V
0
_output_shapes
:??????????@
"
_user_specified_name
input_16:ZV
0
_output_shapes
:??????????@
"
_user_specified_name
input_17
?
?
6__inference_batch_normalization_14_layer_call_fn_82545

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_815042
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?2
?
B__inference_model_7_layer_call_and_return_conditional_losses_82170
input_16
input_17"
dense_22_82132:
??
dense_22_82134:"
dense_21_82137:
??
dense_21_82139:*
batch_normalization_14_82142:*
batch_normalization_14_82144:*
batch_normalization_14_82146:*
batch_normalization_14_82148:*
batch_normalization_15_82151:*
batch_normalization_15_82153:*
batch_normalization_15_82155:*
batch_normalization_15_82157:"
dense_23_82161:
??
dense_23_82163:
??
identity??StatefulPartitionedCall?.batch_normalization_14/StatefulPartitionedCall?.batch_normalization_15/StatefulPartitionedCall? dense_21/StatefulPartitionedCall? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall?
flatten_15/PartitionedCallPartitionedCallinput_17*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_15_layer_call_and_return_conditional_losses_817592
flatten_15/PartitionedCall?
flatten_14/PartitionedCallPartitionedCallinput_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_14_layer_call_and_return_conditional_losses_817672
flatten_14/PartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0dense_22_82132dense_22_82134*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_817802"
 dense_22/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_21_82137dense_21_82139*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_21_layer_call_and_return_conditional_losses_817972"
 dense_21/StatefulPartitionedCall?
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0batch_normalization_14_82142batch_normalization_14_82144batch_normalization_14_82146batch_normalization_14_82148*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_8150420
.batch_normalization_14/StatefulPartitionedCall?
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0batch_normalization_15_82151batch_normalization_15_82153batch_normalization_15_82155batch_normalization_15_82157*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_8166620
.batch_normalization_15/StatefulPartitionedCall?
concatenate_7/PartitionedCallPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:07batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_concatenate_7_layer_call_and_return_conditional_losses_818282
concatenate_7/PartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall&concatenate_7/PartitionedCall:output:0dense_23_82161dense_23_82163*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_814032"
 dense_23/StatefulPartitionedCall?
reshape_7/PartitionedCallPartitionedCall)dense_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_reshape_7_layer_call_and_return_conditional_losses_818492
reshape_7/PartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_23_82161*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_818562
StatefulPartitionedCall?
IdentityIdentity"reshape_7/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????@2

Identity?
NoOpNoOp^StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall/^batch_normalization_15/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????@:??????????@: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:Z V
0
_output_shapes
:??????????@
"
_user_specified_name
input_16:ZV
0
_output_shapes
:??????????@
"
_user_specified_name
input_17
?
r
(__inference_restored_function_body_81856
unknown:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2*
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *$
fR
__inference_loss_fn_0_656302
StatefulPartitionedCallj
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall
?*
?
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_82599

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?*
?
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_82679

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_15_layer_call_fn_82625

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_816662
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?*
?
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_81504

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_dense_22_layer_call_fn_82508

inputs
unknown:
??
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_817802
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
E
)__inference_reshape_7_layer_call_fn_82698

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_reshape_7_layer_call_and_return_conditional_losses_818492
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:???????????:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
(__inference_restored_function_body_81403

inputs
unknown:
??
	unknown_0:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*)
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_661922
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*)
_output_shapes
:???????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
C__inference_dense_22_layer_call_and_return_conditional_losses_81780

inputs2
matmul_readvariableop_resource:
??-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
r
H__inference_concatenate_7_layer_call_and_return_conditional_losses_81828

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?2
?
B__inference_model_7_layer_call_and_return_conditional_losses_82017

inputs
inputs_1"
dense_22_81979:
??
dense_22_81981:"
dense_21_81984:
??
dense_21_81986:*
batch_normalization_14_81989:*
batch_normalization_14_81991:*
batch_normalization_14_81993:*
batch_normalization_14_81995:*
batch_normalization_15_81998:*
batch_normalization_15_82000:*
batch_normalization_15_82002:*
batch_normalization_15_82004:"
dense_23_82008:
??
dense_23_82010:
??
identity??StatefulPartitionedCall?.batch_normalization_14/StatefulPartitionedCall?.batch_normalization_15/StatefulPartitionedCall? dense_21/StatefulPartitionedCall? dense_22/StatefulPartitionedCall? dense_23/StatefulPartitionedCall?
flatten_15/PartitionedCallPartitionedCallinputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_15_layer_call_and_return_conditional_losses_817592
flatten_15/PartitionedCall?
flatten_14/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_14_layer_call_and_return_conditional_losses_817672
flatten_14/PartitionedCall?
 dense_22/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0dense_22_81979dense_22_81981*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_22_layer_call_and_return_conditional_losses_817802"
 dense_22/StatefulPartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_21_81984dense_21_81986*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_21_layer_call_and_return_conditional_losses_817972"
 dense_21/StatefulPartitionedCall?
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0batch_normalization_14_81989batch_normalization_14_81991batch_normalization_14_81993batch_normalization_14_81995*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_8150420
.batch_normalization_14/StatefulPartitionedCall?
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0batch_normalization_15_81998batch_normalization_15_82000batch_normalization_15_82002batch_normalization_15_82004*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_8166620
.batch_normalization_15/StatefulPartitionedCall?
concatenate_7/PartitionedCallPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:07batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_concatenate_7_layer_call_and_return_conditional_losses_818282
concatenate_7/PartitionedCall?
 dense_23/StatefulPartitionedCallStatefulPartitionedCall&concatenate_7/PartitionedCall:output:0dense_23_82008dense_23_82010*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_814032"
 dense_23/StatefulPartitionedCall?
reshape_7/PartitionedCallPartitionedCall)dense_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_reshape_7_layer_call_and_return_conditional_losses_818492
reshape_7/PartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_23_82008*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_818562
StatefulPartitionedCall?
IdentityIdentity"reshape_7/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????@2

Identity?
NoOpNoOp^StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall/^batch_normalization_15/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????@:??????????@: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs:XT
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
'__inference_model_7_layer_call_fn_82281
inputs_0
inputs_1
unknown:
??
	unknown_0:
	unknown_1:
??
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
??

unknown_12:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*,
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_7_layer_call_and_return_conditional_losses_820172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????@:??????????@: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:??????????@
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????@
"
_user_specified_name
inputs/1
?
?
C__inference_dense_21_layer_call_and_return_conditional_losses_81797

inputs2
matmul_readvariableop_resource:
??-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_15_layer_call_fn_82612

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_816062
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?*
?
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_81666

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2
batchnorm/add_1n
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
Y
-__inference_concatenate_7_layer_call_fn_82685
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_concatenate_7_layer_call_and_return_conditional_losses_818282
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
(__inference_dense_23_layer_call_fn_66156

inputs
unknown:
??
	unknown_0:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_23_layer_call_and_return_conditional_losses_661492
StatefulPartitionedCallh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_dense_21_layer_call_fn_82488

inputs
unknown:
??
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_21_layer_call_and_return_conditional_losses_817972
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
B__inference_model_7_layer_call_and_return_conditional_losses_82457
inputs_0
inputs_1;
'dense_22_matmul_readvariableop_resource:
??6
(dense_22_biasadd_readvariableop_resource:;
'dense_21_matmul_readvariableop_resource:
??6
(dense_21_biasadd_readvariableop_resource:L
>batch_normalization_14_assignmovingavg_readvariableop_resource:N
@batch_normalization_14_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_14_batchnorm_mul_readvariableop_resource:F
8batch_normalization_14_batchnorm_readvariableop_resource:L
>batch_normalization_15_assignmovingavg_readvariableop_resource:N
@batch_normalization_15_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_15_batchnorm_mul_readvariableop_resource:F
8batch_normalization_15_batchnorm_readvariableop_resource:"
dense_23_82439:
??
dense_23_82441:
??
identity??StatefulPartitionedCall?&batch_normalization_14/AssignMovingAvg?5batch_normalization_14/AssignMovingAvg/ReadVariableOp?(batch_normalization_14/AssignMovingAvg_1?7batch_normalization_14/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_14/batchnorm/ReadVariableOp?3batch_normalization_14/batchnorm/mul/ReadVariableOp?&batch_normalization_15/AssignMovingAvg?5batch_normalization_15/AssignMovingAvg/ReadVariableOp?(batch_normalization_15/AssignMovingAvg_1?7batch_normalization_15/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_15/batchnorm/ReadVariableOp?3batch_normalization_15/batchnorm/mul/ReadVariableOp?dense_21/BiasAdd/ReadVariableOp?dense_21/MatMul/ReadVariableOp?dense_22/BiasAdd/ReadVariableOp?dense_22/MatMul/ReadVariableOp? dense_23/StatefulPartitionedCallu
flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? `  2
flatten_15/Const?
flatten_15/ReshapeReshapeinputs_1flatten_15/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_15/Reshapeu
flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? `  2
flatten_14/Const?
flatten_14/ReshapeReshapeinputs_0flatten_14/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_14/Reshape?
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_22/MatMul/ReadVariableOp?
dense_22/MatMulMatMulflatten_15/Reshape:output:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_22/MatMul?
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_22/BiasAdd/ReadVariableOp?
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_22/BiasAdds
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_22/Relu?
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_21/MatMul/ReadVariableOp?
dense_21/MatMulMatMulflatten_14/Reshape:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_21/MatMul?
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_21/BiasAdd/ReadVariableOp?
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_21/BiasAdds
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_21/Relu?
5batch_normalization_14/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_14/moments/mean/reduction_indices?
#batch_normalization_14/moments/meanMeandense_21/Relu:activations:0>batch_normalization_14/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2%
#batch_normalization_14/moments/mean?
+batch_normalization_14/moments/StopGradientStopGradient,batch_normalization_14/moments/mean:output:0*
T0*
_output_shapes

:2-
+batch_normalization_14/moments/StopGradient?
0batch_normalization_14/moments/SquaredDifferenceSquaredDifferencedense_21/Relu:activations:04batch_normalization_14/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????22
0batch_normalization_14/moments/SquaredDifference?
9batch_normalization_14/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_14/moments/variance/reduction_indices?
'batch_normalization_14/moments/varianceMean4batch_normalization_14/moments/SquaredDifference:z:0Bbatch_normalization_14/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2)
'batch_normalization_14/moments/variance?
&batch_normalization_14/moments/SqueezeSqueeze,batch_normalization_14/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2(
&batch_normalization_14/moments/Squeeze?
(batch_normalization_14/moments/Squeeze_1Squeeze0batch_normalization_14/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2*
(batch_normalization_14/moments/Squeeze_1?
,batch_normalization_14/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_14/AssignMovingAvg/decay?
5batch_normalization_14/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_14_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype027
5batch_normalization_14/AssignMovingAvg/ReadVariableOp?
*batch_normalization_14/AssignMovingAvg/subSub=batch_normalization_14/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_14/moments/Squeeze:output:0*
T0*
_output_shapes
:2,
*batch_normalization_14/AssignMovingAvg/sub?
*batch_normalization_14/AssignMovingAvg/mulMul.batch_normalization_14/AssignMovingAvg/sub:z:05batch_normalization_14/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2,
*batch_normalization_14/AssignMovingAvg/mul?
&batch_normalization_14/AssignMovingAvgAssignSubVariableOp>batch_normalization_14_assignmovingavg_readvariableop_resource.batch_normalization_14/AssignMovingAvg/mul:z:06^batch_normalization_14/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_14/AssignMovingAvg?
.batch_normalization_14/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_14/AssignMovingAvg_1/decay?
7batch_normalization_14/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_14_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype029
7batch_normalization_14/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_14/AssignMovingAvg_1/subSub?batch_normalization_14/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_14/moments/Squeeze_1:output:0*
T0*
_output_shapes
:2.
,batch_normalization_14/AssignMovingAvg_1/sub?
,batch_normalization_14/AssignMovingAvg_1/mulMul0batch_normalization_14/AssignMovingAvg_1/sub:z:07batch_normalization_14/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2.
,batch_normalization_14/AssignMovingAvg_1/mul?
(batch_normalization_14/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_14_assignmovingavg_1_readvariableop_resource0batch_normalization_14/AssignMovingAvg_1/mul:z:08^batch_normalization_14/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_14/AssignMovingAvg_1?
&batch_normalization_14/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_14/batchnorm/add/y?
$batch_normalization_14/batchnorm/addAddV21batch_normalization_14/moments/Squeeze_1:output:0/batch_normalization_14/batchnorm/add/y:output:0*
T0*
_output_shapes
:2&
$batch_normalization_14/batchnorm/add?
&batch_normalization_14/batchnorm/RsqrtRsqrt(batch_normalization_14/batchnorm/add:z:0*
T0*
_output_shapes
:2(
&batch_normalization_14/batchnorm/Rsqrt?
3batch_normalization_14/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_14_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype025
3batch_normalization_14/batchnorm/mul/ReadVariableOp?
$batch_normalization_14/batchnorm/mulMul*batch_normalization_14/batchnorm/Rsqrt:y:0;batch_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2&
$batch_normalization_14/batchnorm/mul?
&batch_normalization_14/batchnorm/mul_1Muldense_21/Relu:activations:0(batch_normalization_14/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2(
&batch_normalization_14/batchnorm/mul_1?
&batch_normalization_14/batchnorm/mul_2Mul/batch_normalization_14/moments/Squeeze:output:0(batch_normalization_14/batchnorm/mul:z:0*
T0*
_output_shapes
:2(
&batch_normalization_14/batchnorm/mul_2?
/batch_normalization_14/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_14_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype021
/batch_normalization_14/batchnorm/ReadVariableOp?
$batch_normalization_14/batchnorm/subSub7batch_normalization_14/batchnorm/ReadVariableOp:value:0*batch_normalization_14/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2&
$batch_normalization_14/batchnorm/sub?
&batch_normalization_14/batchnorm/add_1AddV2*batch_normalization_14/batchnorm/mul_1:z:0(batch_normalization_14/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2(
&batch_normalization_14/batchnorm/add_1?
5batch_normalization_15/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_15/moments/mean/reduction_indices?
#batch_normalization_15/moments/meanMeandense_22/Relu:activations:0>batch_normalization_15/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2%
#batch_normalization_15/moments/mean?
+batch_normalization_15/moments/StopGradientStopGradient,batch_normalization_15/moments/mean:output:0*
T0*
_output_shapes

:2-
+batch_normalization_15/moments/StopGradient?
0batch_normalization_15/moments/SquaredDifferenceSquaredDifferencedense_22/Relu:activations:04batch_normalization_15/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????22
0batch_normalization_15/moments/SquaredDifference?
9batch_normalization_15/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_15/moments/variance/reduction_indices?
'batch_normalization_15/moments/varianceMean4batch_normalization_15/moments/SquaredDifference:z:0Bbatch_normalization_15/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2)
'batch_normalization_15/moments/variance?
&batch_normalization_15/moments/SqueezeSqueeze,batch_normalization_15/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2(
&batch_normalization_15/moments/Squeeze?
(batch_normalization_15/moments/Squeeze_1Squeeze0batch_normalization_15/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2*
(batch_normalization_15/moments/Squeeze_1?
,batch_normalization_15/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2.
,batch_normalization_15/AssignMovingAvg/decay?
5batch_normalization_15/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_15_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype027
5batch_normalization_15/AssignMovingAvg/ReadVariableOp?
*batch_normalization_15/AssignMovingAvg/subSub=batch_normalization_15/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_15/moments/Squeeze:output:0*
T0*
_output_shapes
:2,
*batch_normalization_15/AssignMovingAvg/sub?
*batch_normalization_15/AssignMovingAvg/mulMul.batch_normalization_15/AssignMovingAvg/sub:z:05batch_normalization_15/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2,
*batch_normalization_15/AssignMovingAvg/mul?
&batch_normalization_15/AssignMovingAvgAssignSubVariableOp>batch_normalization_15_assignmovingavg_readvariableop_resource.batch_normalization_15/AssignMovingAvg/mul:z:06^batch_normalization_15/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_15/AssignMovingAvg?
.batch_normalization_15/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<20
.batch_normalization_15/AssignMovingAvg_1/decay?
7batch_normalization_15/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_15_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype029
7batch_normalization_15/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_15/AssignMovingAvg_1/subSub?batch_normalization_15/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_15/moments/Squeeze_1:output:0*
T0*
_output_shapes
:2.
,batch_normalization_15/AssignMovingAvg_1/sub?
,batch_normalization_15/AssignMovingAvg_1/mulMul0batch_normalization_15/AssignMovingAvg_1/sub:z:07batch_normalization_15/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2.
,batch_normalization_15/AssignMovingAvg_1/mul?
(batch_normalization_15/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_15_assignmovingavg_1_readvariableop_resource0batch_normalization_15/AssignMovingAvg_1/mul:z:08^batch_normalization_15/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_15/AssignMovingAvg_1?
&batch_normalization_15/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_15/batchnorm/add/y?
$batch_normalization_15/batchnorm/addAddV21batch_normalization_15/moments/Squeeze_1:output:0/batch_normalization_15/batchnorm/add/y:output:0*
T0*
_output_shapes
:2&
$batch_normalization_15/batchnorm/add?
&batch_normalization_15/batchnorm/RsqrtRsqrt(batch_normalization_15/batchnorm/add:z:0*
T0*
_output_shapes
:2(
&batch_normalization_15/batchnorm/Rsqrt?
3batch_normalization_15/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_15_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype025
3batch_normalization_15/batchnorm/mul/ReadVariableOp?
$batch_normalization_15/batchnorm/mulMul*batch_normalization_15/batchnorm/Rsqrt:y:0;batch_normalization_15/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2&
$batch_normalization_15/batchnorm/mul?
&batch_normalization_15/batchnorm/mul_1Muldense_22/Relu:activations:0(batch_normalization_15/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????2(
&batch_normalization_15/batchnorm/mul_1?
&batch_normalization_15/batchnorm/mul_2Mul/batch_normalization_15/moments/Squeeze:output:0(batch_normalization_15/batchnorm/mul:z:0*
T0*
_output_shapes
:2(
&batch_normalization_15/batchnorm/mul_2?
/batch_normalization_15/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_15_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype021
/batch_normalization_15/batchnorm/ReadVariableOp?
$batch_normalization_15/batchnorm/subSub7batch_normalization_15/batchnorm/ReadVariableOp:value:0*batch_normalization_15/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2&
$batch_normalization_15/batchnorm/sub?
&batch_normalization_15/batchnorm/add_1AddV2*batch_normalization_15/batchnorm/mul_1:z:0(batch_normalization_15/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????2(
&batch_normalization_15/batchnorm/add_1x
concatenate_7/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_7/concat/axis?
concatenate_7/concatConcatV2*batch_normalization_14/batchnorm/add_1:z:0*batch_normalization_15/batchnorm/add_1:z:0"concatenate_7/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
concatenate_7/concat?
 dense_23/StatefulPartitionedCallStatefulPartitionedCallconcatenate_7/concat:output:0dense_23_82439dense_23_82441*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_814032"
 dense_23/StatefulPartitionedCall{
reshape_7/ShapeShape)dense_23/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2
reshape_7/Shape?
reshape_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_7/strided_slice/stack?
reshape_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_7/strided_slice/stack_1?
reshape_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_7/strided_slice/stack_2?
reshape_7/strided_sliceStridedSlicereshape_7/Shape:output:0&reshape_7/strided_slice/stack:output:0(reshape_7/strided_slice/stack_1:output:0(reshape_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_7/strided_slicey
reshape_7/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_7/Reshape/shape/1x
reshape_7/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@2
reshape_7/Reshape/shape/2x
reshape_7/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_7/Reshape/shape/3?
reshape_7/Reshape/shapePack reshape_7/strided_slice:output:0"reshape_7/Reshape/shape/1:output:0"reshape_7/Reshape/shape/2:output:0"reshape_7/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_7/Reshape/shape?
reshape_7/ReshapeReshape)dense_23/StatefulPartitionedCall:output:0 reshape_7/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????@2
reshape_7/Reshape?
StatefulPartitionedCallStatefulPartitionedCalldense_23_82439*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *1
f,R*
(__inference_restored_function_body_818562
StatefulPartitionedCall~
IdentityIdentityreshape_7/Reshape:output:0^NoOp*
T0*0
_output_shapes
:??????????@2

Identity?
NoOpNoOp^StatefulPartitionedCall'^batch_normalization_14/AssignMovingAvg6^batch_normalization_14/AssignMovingAvg/ReadVariableOp)^batch_normalization_14/AssignMovingAvg_18^batch_normalization_14/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_14/batchnorm/ReadVariableOp4^batch_normalization_14/batchnorm/mul/ReadVariableOp'^batch_normalization_15/AssignMovingAvg6^batch_normalization_15/AssignMovingAvg/ReadVariableOp)^batch_normalization_15/AssignMovingAvg_18^batch_normalization_15/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_15/batchnorm/ReadVariableOp4^batch_normalization_15/batchnorm/mul/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp!^dense_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:??????????@:??????????@: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall2P
&batch_normalization_14/AssignMovingAvg&batch_normalization_14/AssignMovingAvg2n
5batch_normalization_14/AssignMovingAvg/ReadVariableOp5batch_normalization_14/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_14/AssignMovingAvg_1(batch_normalization_14/AssignMovingAvg_12r
7batch_normalization_14/AssignMovingAvg_1/ReadVariableOp7batch_normalization_14/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_14/batchnorm/ReadVariableOp/batch_normalization_14/batchnorm/ReadVariableOp2j
3batch_normalization_14/batchnorm/mul/ReadVariableOp3batch_normalization_14/batchnorm/mul/ReadVariableOp2P
&batch_normalization_15/AssignMovingAvg&batch_normalization_15/AssignMovingAvg2n
5batch_normalization_15/AssignMovingAvg/ReadVariableOp5batch_normalization_15/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_15/AssignMovingAvg_1(batch_normalization_15/AssignMovingAvg_12r
7batch_normalization_15/AssignMovingAvg_1/ReadVariableOp7batch_normalization_15/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_15/batchnorm/ReadVariableOp/batch_normalization_15/batchnorm/ReadVariableOp2j
3batch_normalization_15/batchnorm/mul/ReadVariableOp3batch_normalization_15/batchnorm/mul/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:Z V
0
_output_shapes
:??????????@
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????@
"
_user_specified_name
inputs/1"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
F
input_16:
serving_default_input_16:0??????????@
F
input_17:
serving_default_input_17:0??????????@F
	reshape_79
StatefulPartitionedCall:0??????????@tensorflow/serving/predict:??
?
layer-0
layer-1
layer-2
layer-3
layer_with_weights-0
layer-4
layer_with_weights-1
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
	optimizer

signatures
#_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"
_tf_keras_network
D
#_self_saveable_object_factories"
_tf_keras_input_layer
D
#_self_saveable_object_factories"
_tf_keras_input_layer
?
#_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#_self_saveable_object_factories
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
 bias
#!_self_saveable_object_factories
"regularization_losses
#	variables
$trainable_variables
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

&kernel
'bias
#(_self_saveable_object_factories
)regularization_losses
*	variables
+trainable_variables
,	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
-axis
	.gamma
/beta
0moving_mean
1moving_variance
#2_self_saveable_object_factories
3regularization_losses
4	variables
5trainable_variables
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
7axis
	8gamma
9beta
:moving_mean
;moving_variance
#<_self_saveable_object_factories
=regularization_losses
>	variables
?trainable_variables
@	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#A_self_saveable_object_factories
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Fkernel
Gbias
#H_self_saveable_object_factories
Iregularization_losses
J	variables
Ktrainable_variables
L	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
#M_self_saveable_object_factories
Nregularization_losses
O	variables
Ptrainable_variables
Q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Riter

Sbeta_1

Tbeta_2
	Udecay
Vlearning_ratem? m?&m?'m?.m?/m?8m?9m?Fm?Gm?v? v?&v?'v?.v?/v?8v?9v?Fv?Gv?"
	optimizer
-
?serving_default"
signature_map
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
?
0
 1
&2
'3
.4
/5
06
17
88
99
:10
;11
F12
G13"
trackable_list_wrapper
f
0
 1
&2
'3
.4
/5
86
97
F8
G9"
trackable_list_wrapper
?

Wlayers
Xlayer_regularization_losses
Ymetrics
Znon_trainable_variables
[layer_metrics
regularization_losses
	variables
trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

\layers
]layer_regularization_losses
^layer_metrics
_non_trainable_variables
`metrics
regularization_losses
	variables
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

alayers
blayer_regularization_losses
clayer_metrics
dnon_trainable_variables
emetrics
regularization_losses
	variables
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_21/kernel
:2dense_21/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
?

flayers
glayer_regularization_losses
hlayer_metrics
inon_trainable_variables
jmetrics
"regularization_losses
#	variables
$trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_22/kernel
:2dense_22/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
?

klayers
llayer_regularization_losses
mlayer_metrics
nnon_trainable_variables
ometrics
)regularization_losses
*	variables
+trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_14/gamma
):'2batch_normalization_14/beta
2:0 (2"batch_normalization_14/moving_mean
6:4 (2&batch_normalization_14/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
<
.0
/1
02
13"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
?

players
qlayer_regularization_losses
rlayer_metrics
snon_trainable_variables
tmetrics
3regularization_losses
4	variables
5trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_15/gamma
):'2batch_normalization_15/beta
2:0 (2"batch_normalization_15/moving_mean
6:4 (2&batch_normalization_15/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
<
80
91
:2
;3"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
?

ulayers
vlayer_regularization_losses
wlayer_metrics
xnon_trainable_variables
ymetrics
=regularization_losses
>	variables
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

zlayers
{layer_regularization_losses
|layer_metrics
}non_trainable_variables
~metrics
Bregularization_losses
C	variables
Dtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_23/kernel
:??2dense_23/bias
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
?

layers
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?metrics
Iregularization_losses
J	variables
Ktrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
 ?layer_regularization_losses
?layer_metrics
?non_trainable_variables
?metrics
Nregularization_losses
O	variables
Ptrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
<
00
11
:2
;3"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
(:&
??2Adam/dense_21/kernel/m
 :2Adam/dense_21/bias/m
(:&
??2Adam/dense_22/kernel/m
 :2Adam/dense_22/bias/m
/:-2#Adam/batch_normalization_14/gamma/m
.:,2"Adam/batch_normalization_14/beta/m
/:-2#Adam/batch_normalization_15/gamma/m
.:,2"Adam/batch_normalization_15/beta/m
(:&
??2Adam/dense_23/kernel/m
": ??2Adam/dense_23/bias/m
(:&
??2Adam/dense_21/kernel/v
 :2Adam/dense_21/bias/v
(:&
??2Adam/dense_22/kernel/v
 :2Adam/dense_22/bias/v
/:-2#Adam/batch_normalization_14/gamma/v
.:,2"Adam/batch_normalization_14/beta/v
/:-2#Adam/batch_normalization_15/gamma/v
.:,2"Adam/batch_normalization_15/beta/v
(:&
??2Adam/dense_23/kernel/v
": ??2Adam/dense_23/bias/v
?2?
'__inference_model_7_layer_call_fn_81891
'__inference_model_7_layer_call_fn_82247
'__inference_model_7_layer_call_fn_82281
'__inference_model_7_layer_call_fn_82082?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_81420input_16input_17"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_model_7_layer_call_and_return_conditional_losses_82355
B__inference_model_7_layer_call_and_return_conditional_losses_82457
B__inference_model_7_layer_call_and_return_conditional_losses_82126
B__inference_model_7_layer_call_and_return_conditional_losses_82170?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_flatten_14_layer_call_fn_82462?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_flatten_14_layer_call_and_return_conditional_losses_82468?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_flatten_15_layer_call_fn_82473?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_flatten_15_layer_call_and_return_conditional_losses_82479?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_21_layer_call_fn_82488?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_21_layer_call_and_return_conditional_losses_82499?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_22_layer_call_fn_82508?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_22_layer_call_and_return_conditional_losses_82519?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
6__inference_batch_normalization_14_layer_call_fn_82532
6__inference_batch_normalization_14_layer_call_fn_82545?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_82565
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_82599?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
6__inference_batch_normalization_15_layer_call_fn_82612
6__inference_batch_normalization_15_layer_call_fn_82625?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_82645
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_82679?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_concatenate_7_layer_call_fn_82685?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_concatenate_7_layer_call_and_return_conditional_losses_82692?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_23_layer_call_fn_66156?
???
FullArgSpec
args?

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_23_layer_call_and_return_conditional_losses_66192?
???
FullArgSpec
args?

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_reshape_7_layer_call_fn_82698?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_reshape_7_layer_call_and_return_conditional_losses_82712?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_82213input_16input_17"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_65630?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? ?
 __inference__wrapped_model_81420?&' 1.0/;8:9FGl?i
b?_
]?Z
+?(
input_16??????????@
+?(
input_17??????????@
? ">?;
9
	reshape_7,?)
	reshape_7??????????@?
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_82565b1.0/3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_82599b01./3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ?
6__inference_batch_normalization_14_layer_call_fn_82532U1.0/3?0
)?&
 ?
inputs?????????
p 
? "???????????
6__inference_batch_normalization_14_layer_call_fn_82545U01./3?0
)?&
 ?
inputs?????????
p
? "???????????
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_82645b;8:93?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_82679b:;893?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ?
6__inference_batch_normalization_15_layer_call_fn_82612U;8:93?0
)?&
 ?
inputs?????????
p 
? "???????????
6__inference_batch_normalization_15_layer_call_fn_82625U:;893?0
)?&
 ?
inputs?????????
p
? "???????????
H__inference_concatenate_7_layer_call_and_return_conditional_losses_82692?Z?W
P?M
K?H
"?
inputs/0?????????
"?
inputs/1?????????
? "%?"
?
0?????????
? ?
-__inference_concatenate_7_layer_call_fn_82685vZ?W
P?M
K?H
"?
inputs/0?????????
"?
inputs/1?????????
? "???????????
C__inference_dense_21_layer_call_and_return_conditional_losses_82499^ 1?.
'?$
"?
inputs???????????
? "%?"
?
0?????????
? }
(__inference_dense_21_layer_call_fn_82488Q 1?.
'?$
"?
inputs???????????
? "???????????
C__inference_dense_22_layer_call_and_return_conditional_losses_82519^&'1?.
'?$
"?
inputs???????????
? "%?"
?
0?????????
? }
(__inference_dense_22_layer_call_fn_82508Q&'1?.
'?$
"?
inputs???????????
? "???????????
C__inference_dense_23_layer_call_and_return_conditional_losses_66192^FG/?,
%?"
 ?
inputs?????????
? "'?$
?
0???????????
? }
(__inference_dense_23_layer_call_fn_66156QFG/?,
%?"
 ?
inputs?????????
? "?????????????
E__inference_flatten_14_layer_call_and_return_conditional_losses_82468c8?5
.?+
)?&
inputs??????????@
? "'?$
?
0???????????
? ?
*__inference_flatten_14_layer_call_fn_82462V8?5
.?+
)?&
inputs??????????@
? "?????????????
E__inference_flatten_15_layer_call_and_return_conditional_losses_82479c8?5
.?+
)?&
inputs??????????@
? "'?$
?
0???????????
? ?
*__inference_flatten_15_layer_call_fn_82473V8?5
.?+
)?&
inputs??????????@
? "????????????:
__inference_loss_fn_0_65630F?

? 
? "? ?
B__inference_model_7_layer_call_and_return_conditional_losses_82126?&' 1.0/;8:9FGt?q
j?g
]?Z
+?(
input_16??????????@
+?(
input_17??????????@
p 

 
? ".?+
$?!
0??????????@
? ?
B__inference_model_7_layer_call_and_return_conditional_losses_82170?&' 01./:;89FGt?q
j?g
]?Z
+?(
input_16??????????@
+?(
input_17??????????@
p

 
? ".?+
$?!
0??????????@
? ?
B__inference_model_7_layer_call_and_return_conditional_losses_82355?&' 1.0/;8:9FGt?q
j?g
]?Z
+?(
inputs/0??????????@
+?(
inputs/1??????????@
p 

 
? ".?+
$?!
0??????????@
? ?
B__inference_model_7_layer_call_and_return_conditional_losses_82457?&' 01./:;89FGt?q
j?g
]?Z
+?(
inputs/0??????????@
+?(
inputs/1??????????@
p

 
? ".?+
$?!
0??????????@
? ?
'__inference_model_7_layer_call_fn_81891?&' 1.0/;8:9FGt?q
j?g
]?Z
+?(
input_16??????????@
+?(
input_17??????????@
p 

 
? "!???????????@?
'__inference_model_7_layer_call_fn_82082?&' 01./:;89FGt?q
j?g
]?Z
+?(
input_16??????????@
+?(
input_17??????????@
p

 
? "!???????????@?
'__inference_model_7_layer_call_fn_82247?&' 1.0/;8:9FGt?q
j?g
]?Z
+?(
inputs/0??????????@
+?(
inputs/1??????????@
p 

 
? "!???????????@?
'__inference_model_7_layer_call_fn_82281?&' 01./:;89FGt?q
j?g
]?Z
+?(
inputs/0??????????@
+?(
inputs/1??????????@
p

 
? "!???????????@?
D__inference_reshape_7_layer_call_and_return_conditional_losses_82712c1?.
'?$
"?
inputs???????????
? ".?+
$?!
0??????????@
? ?
)__inference_reshape_7_layer_call_fn_82698V1?.
'?$
"?
inputs???????????
? "!???????????@?
#__inference_signature_wrapper_82213?&' 1.0/;8:9FG?|
? 
u?r
7
input_16+?(
input_16??????????@
7
input_17+?(
input_17??????????@">?;
9
	reshape_7,?)
	reshape_7??????????@