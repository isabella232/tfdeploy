ô
Ţ
:
Add
x"T
y"T
z"T"
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
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
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
}
ResourceApplyGradientDescent
var

alpha"T

delta"T" 
Ttype:
2	"
use_lockingbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.14.1-dev201905212v1.12.1-2420-g4fd6e533f6ÓČ
p
dense_inputPlaceholder*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙

-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"  
   *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:

+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *ç˛˝*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 

+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *ç˛=*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
ć
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes
:	
*

seed *
T0*
_class
loc:@dense/kernel
Î
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
á
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	

Ó
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	

§
dense/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense/kernel*
_class
loc:@dense/kernel*
	container *
shape:	

i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 

dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
_class
loc:@dense/kernel*
dtype0

 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:	


dense/bias/Initializer/zerosConst*
valueB
*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
:



dense/biasVarHandleOp*
shared_name
dense/bias*
_class
loc:@dense/bias*
	container *
shape:
*
dtype0*
_output_shapes
: 
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
{
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
_class
loc:@dense/bias*
dtype0

dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:

i
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes
:	


dense/MatMulMatMuldense_inputdense/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
transpose_a( 
c
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:
*
dtype0

dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
Y
dense/SoftmaxSoftmaxdense/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


dense_targetPlaceholder*
dtype0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
v
total/Initializer/zerosConst*
valueB
 *    *
_class

loc:@total*
dtype0*
_output_shapes
: 

totalVarHandleOp*
shared_nametotal*
_class

loc:@total*
	container *
shape: *
dtype0*
_output_shapes
: 
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
g
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
_class

loc:@total*
dtype0
q
total/Read/ReadVariableOpReadVariableOptotal*
_class

loc:@total*
dtype0*
_output_shapes
: 
v
count/Initializer/zerosConst*
valueB
 *    *
_class

loc:@count*
dtype0*
_output_shapes
: 

countVarHandleOp*
dtype0*
_output_shapes
: *
shared_namecount*
_class

loc:@count*
	container *
shape: 
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
g
count/AssignAssignVariableOpcountcount/Initializer/zeros*
_class

loc:@count*
dtype0
q
count/Read/ReadVariableOpReadVariableOpcount*
_class

loc:@count*
dtype0*
_output_shapes
: 
g
metrics/acc/ArgMax/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

metrics/acc/ArgMaxArgMaxdense_targetmetrics/acc/ArgMax/dimension*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
i
metrics/acc/ArgMax_1/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

metrics/acc/ArgMax_1ArgMaxdense/Softmaxmetrics/acc/ArgMax_1/dimension*
T0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
r
metrics/acc/EqualEqualmetrics/acc/ArgMaxmetrics/acc/ArgMax_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0	
x
metrics/acc/CastCastmetrics/acc/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
[
metrics/acc/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
y
metrics/acc/SumSummetrics/acc/Castmetrics/acc/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
[
metrics/acc/AssignAddVariableOpAssignAddVariableOptotalmetrics/acc/Sum*
dtype0

metrics/acc/ReadVariableOpReadVariableOptotal ^metrics/acc/AssignAddVariableOp^metrics/acc/Sum*
dtype0*
_output_shapes
: 
[
metrics/acc/SizeSizemetrics/acc/Cast*
_output_shapes
: *
T0*
out_type0
l
metrics/acc/Cast_1Castmetrics/acc/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

!metrics/acc/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/acc/Cast_1 ^metrics/acc/AssignAddVariableOp*
dtype0
 
metrics/acc/ReadVariableOp_1ReadVariableOpcount ^metrics/acc/AssignAddVariableOp"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

%metrics/acc/div_no_nan/ReadVariableOpReadVariableOptotal"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

'metrics/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount"^metrics/acc/AssignAddVariableOp_1*
_output_shapes
: *
dtype0

metrics/acc/div_no_nanDivNoNan%metrics/acc/div_no_nan/ReadVariableOp'metrics/acc/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
Y
metrics/acc/IdentityIdentitymetrics/acc/div_no_nan*
T0*
_output_shapes
: 
Z
loss/dense_loss/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
x
6loss/dense_loss/softmax_cross_entropy_with_logits/RankConst*
value	B :*
dtype0*
_output_shapes
: 

7loss/dense_loss/softmax_cross_entropy_with_logits/ShapeShapedense/BiasAdd*
_output_shapes
:*
T0*
out_type0
z
8loss/dense_loss/softmax_cross_entropy_with_logits/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 

9loss/dense_loss/softmax_cross_entropy_with_logits/Shape_1Shapedense/BiasAdd*
_output_shapes
:*
T0*
out_type0
y
7loss/dense_loss/softmax_cross_entropy_with_logits/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
Đ
5loss/dense_loss/softmax_cross_entropy_with_logits/SubSub8loss/dense_loss/softmax_cross_entropy_with_logits/Rank_17loss/dense_loss/softmax_cross_entropy_with_logits/Sub/y*
_output_shapes
: *
T0
ś
=loss/dense_loss/softmax_cross_entropy_with_logits/Slice/beginPack5loss/dense_loss/softmax_cross_entropy_with_logits/Sub*
T0*

axis *
N*
_output_shapes
:

<loss/dense_loss/softmax_cross_entropy_with_logits/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Ş
7loss/dense_loss/softmax_cross_entropy_with_logits/SliceSlice9loss/dense_loss/softmax_cross_entropy_with_logits/Shape_1=loss/dense_loss/softmax_cross_entropy_with_logits/Slice/begin<loss/dense_loss/softmax_cross_entropy_with_logits/Slice/size*
Index0*
T0*
_output_shapes
:

Aloss/dense_loss/softmax_cross_entropy_with_logits/concat/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

=loss/dense_loss/softmax_cross_entropy_with_logits/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
š
8loss/dense_loss/softmax_cross_entropy_with_logits/concatConcatV2Aloss/dense_loss/softmax_cross_entropy_with_logits/concat/values_07loss/dense_loss/softmax_cross_entropy_with_logits/Slice=loss/dense_loss/softmax_cross_entropy_with_logits/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ö
9loss/dense_loss/softmax_cross_entropy_with_logits/ReshapeReshapedense/BiasAdd8loss/dense_loss/softmax_cross_entropy_with_logits/concat*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
z
8loss/dense_loss/softmax_cross_entropy_with_logits/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 

9loss/dense_loss/softmax_cross_entropy_with_logits/Shape_2Shapedense_target*
_output_shapes
:*
T0*
out_type0
{
9loss/dense_loss/softmax_cross_entropy_with_logits/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ô
7loss/dense_loss/softmax_cross_entropy_with_logits/Sub_1Sub8loss/dense_loss/softmax_cross_entropy_with_logits/Rank_29loss/dense_loss/softmax_cross_entropy_with_logits/Sub_1/y*
T0*
_output_shapes
: 
ş
?loss/dense_loss/softmax_cross_entropy_with_logits/Slice_1/beginPack7loss/dense_loss/softmax_cross_entropy_with_logits/Sub_1*
_output_shapes
:*
T0*

axis *
N

>loss/dense_loss/softmax_cross_entropy_with_logits/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
°
9loss/dense_loss/softmax_cross_entropy_with_logits/Slice_1Slice9loss/dense_loss/softmax_cross_entropy_with_logits/Shape_2?loss/dense_loss/softmax_cross_entropy_with_logits/Slice_1/begin>loss/dense_loss/softmax_cross_entropy_with_logits/Slice_1/size*
Index0*
T0*
_output_shapes
:

Closs/dense_loss/softmax_cross_entropy_with_logits/concat_1/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

?loss/dense_loss/softmax_cross_entropy_with_logits/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
Á
:loss/dense_loss/softmax_cross_entropy_with_logits/concat_1ConcatV2Closs/dense_loss/softmax_cross_entropy_with_logits/concat_1/values_09loss/dense_loss/softmax_cross_entropy_with_logits/Slice_1?loss/dense_loss/softmax_cross_entropy_with_logits/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ů
;loss/dense_loss/softmax_cross_entropy_with_logits/Reshape_1Reshapedense_target:loss/dense_loss/softmax_cross_entropy_with_logits/concat_1*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

1loss/dense_loss/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits9loss/dense_loss/softmax_cross_entropy_with_logits/Reshape;loss/dense_loss/softmax_cross_entropy_with_logits/Reshape_1*
T0*?
_output_shapes-
+:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
{
9loss/dense_loss/softmax_cross_entropy_with_logits/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ň
7loss/dense_loss/softmax_cross_entropy_with_logits/Sub_2Sub6loss/dense_loss/softmax_cross_entropy_with_logits/Rank9loss/dense_loss/softmax_cross_entropy_with_logits/Sub_2/y*
T0*
_output_shapes
: 

?loss/dense_loss/softmax_cross_entropy_with_logits/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
š
>loss/dense_loss/softmax_cross_entropy_with_logits/Slice_2/sizePack7loss/dense_loss/softmax_cross_entropy_with_logits/Sub_2*
T0*

axis *
N*
_output_shapes
:
Ž
9loss/dense_loss/softmax_cross_entropy_with_logits/Slice_2Slice7loss/dense_loss/softmax_cross_entropy_with_logits/Shape?loss/dense_loss/softmax_cross_entropy_with_logits/Slice_2/begin>loss/dense_loss/softmax_cross_entropy_with_logits/Slice_2/size*
Index0*
T0*
_output_shapes
:
đ
;loss/dense_loss/softmax_cross_entropy_with_logits/Reshape_2Reshape1loss/dense_loss/softmax_cross_entropy_with_logits9loss/dense_loss/softmax_cross_entropy_with_logits/Slice_2*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0
h
#loss/dense_loss/weighted_loss/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Rloss/dense_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Qloss/dense_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B : 
Ě
Qloss/dense_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShape;loss/dense_loss/softmax_cross_entropy_with_logits/Reshape_2*
T0*
out_type0*
_output_shapes
:

Ploss/dense_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
h
`loss/dense_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp

?loss/dense_loss/weighted_loss/broadcast_weights/ones_like/ShapeShape;loss/dense_loss/softmax_cross_entropy_with_logits/Reshape_2a^loss/dense_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0*
out_type0
ç
?loss/dense_loss/weighted_loss/broadcast_weights/ones_like/ConstConsta^loss/dense_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

9loss/dense_loss/weighted_loss/broadcast_weights/ones_likeFill?loss/dense_loss/weighted_loss/broadcast_weights/ones_like/Shape?loss/dense_loss/weighted_loss/broadcast_weights/ones_like/Const*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

index_type0
Ä
/loss/dense_loss/weighted_loss/broadcast_weightsMul#loss/dense_loss/weighted_loss/Const9loss/dense_loss/weighted_loss/broadcast_weights/ones_like*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ä
!loss/dense_loss/weighted_loss/MulMul;loss/dense_loss/softmax_cross_entropy_with_logits/Reshape_2/loss/dense_loss/weighted_loss/broadcast_weights*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
a
loss/dense_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_loss/SumSum!loss/dense_loss/weighted_loss/Mulloss/dense_loss/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
x
loss/dense_loss/num_elementsSize!loss/dense_loss/weighted_loss/Mul*
T0*
out_type0*
_output_shapes
: 

!loss/dense_loss/num_elements/CastCastloss/dense_loss/num_elements*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
Z
loss/dense_loss/Const_2Const*
dtype0*
_output_shapes
: *
valueB 

loss/dense_loss/Sum_1Sumloss/dense_loss/Sumloss/dense_loss/Const_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
|
loss/dense_loss/valueDivNoNanloss/dense_loss/Sum_1!loss/dense_loss/num_elements/Cast*
_output_shapes
: *
T0
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
S
loss/mulMul
loss/mul/xloss/dense_loss/value*
_output_shapes
: *
T0
\
keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 
_
training/SGD/gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
e
 training/SGD/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 

training/SGD/gradients/FillFilltraining/SGD/gradients/Shape training/SGD/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 

(training/SGD/gradients/loss/mul_grad/MulMultraining/SGD/gradients/Fillloss/dense_loss/value*
_output_shapes
: *
T0
{
*training/SGD/gradients/loss/mul_grad/Mul_1Multraining/SGD/gradients/Fill
loss/mul/x*
T0*
_output_shapes
: 
z
7training/SGD/gradients/loss/dense_loss/value_grad/ShapeConst*
_output_shapes
: *
valueB *
dtype0
|
9training/SGD/gradients/loss/dense_loss/value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 

Gtraining/SGD/gradients/loss/dense_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgs7training/SGD/gradients/loss/dense_loss/value_grad/Shape9training/SGD/gradients/loss/dense_loss/value_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
¸
<training/SGD/gradients/loss/dense_loss/value_grad/div_no_nanDivNoNan*training/SGD/gradients/loss/mul_grad/Mul_1!loss/dense_loss/num_elements/Cast*
_output_shapes
: *
T0

5training/SGD/gradients/loss/dense_loss/value_grad/SumSum<training/SGD/gradients/loss/dense_loss/value_grad/div_no_nanGtraining/SGD/gradients/loss/dense_loss/value_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
ă
9training/SGD/gradients/loss/dense_loss/value_grad/ReshapeReshape5training/SGD/gradients/loss/dense_loss/value_grad/Sum7training/SGD/gradients/loss/dense_loss/value_grad/Shape*
_output_shapes
: *
T0*
Tshape0
t
5training/SGD/gradients/loss/dense_loss/value_grad/NegNegloss/dense_loss/Sum_1*
T0*
_output_shapes
: 
Ĺ
>training/SGD/gradients/loss/dense_loss/value_grad/div_no_nan_1DivNoNan5training/SGD/gradients/loss/dense_loss/value_grad/Neg!loss/dense_loss/num_elements/Cast*
T0*
_output_shapes
: 
Î
>training/SGD/gradients/loss/dense_loss/value_grad/div_no_nan_2DivNoNan>training/SGD/gradients/loss/dense_loss/value_grad/div_no_nan_1!loss/dense_loss/num_elements/Cast*
T0*
_output_shapes
: 
É
5training/SGD/gradients/loss/dense_loss/value_grad/mulMul*training/SGD/gradients/loss/mul_grad/Mul_1>training/SGD/gradients/loss/dense_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 
ţ
7training/SGD/gradients/loss/dense_loss/value_grad/Sum_1Sum5training/SGD/gradients/loss/dense_loss/value_grad/mulItraining/SGD/gradients/loss/dense_loss/value_grad/BroadcastGradientArgs:1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
é
;training/SGD/gradients/loss/dense_loss/value_grad/Reshape_1Reshape7training/SGD/gradients/loss/dense_loss/value_grad/Sum_19training/SGD/gradients/loss/dense_loss/value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

?training/SGD/gradients/loss/dense_loss/Sum_1_grad/Reshape/shapeConst*
_output_shapes
: *
valueB *
dtype0
ď
9training/SGD/gradients/loss/dense_loss/Sum_1_grad/ReshapeReshape9training/SGD/gradients/loss/dense_loss/value_grad/Reshape?training/SGD/gradients/loss/dense_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
z
7training/SGD/gradients/loss/dense_loss/Sum_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
ĺ
6training/SGD/gradients/loss/dense_loss/Sum_1_grad/TileTile9training/SGD/gradients/loss/dense_loss/Sum_1_grad/Reshape7training/SGD/gradients/loss/dense_loss/Sum_1_grad/Const*
_output_shapes
: *

Tmultiples0*
T0

=training/SGD/gradients/loss/dense_loss/Sum_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
ě
7training/SGD/gradients/loss/dense_loss/Sum_grad/ReshapeReshape6training/SGD/gradients/loss/dense_loss/Sum_1_grad/Tile=training/SGD/gradients/loss/dense_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:

5training/SGD/gradients/loss/dense_loss/Sum_grad/ShapeShape!loss/dense_loss/weighted_loss/Mul*
out_type0*
_output_shapes
:*
T0
ě
4training/SGD/gradients/loss/dense_loss/Sum_grad/TileTile7training/SGD/gradients/loss/dense_loss/Sum_grad/Reshape5training/SGD/gradients/loss/dense_loss/Sum_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0*
T0
ž
Ctraining/SGD/gradients/loss/dense_loss/weighted_loss/Mul_grad/ShapeShape;loss/dense_loss/softmax_cross_entropy_with_logits/Reshape_2*
T0*
out_type0*
_output_shapes
:
´
Etraining/SGD/gradients/loss/dense_loss/weighted_loss/Mul_grad/Shape_1Shape/loss/dense_loss/weighted_loss/broadcast_weights*
out_type0*
_output_shapes
:*
T0
ľ
Straining/SGD/gradients/loss/dense_loss/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsCtraining/SGD/gradients/loss/dense_loss/weighted_loss/Mul_grad/ShapeEtraining/SGD/gradients/loss/dense_loss/weighted_loss/Mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Ý
Atraining/SGD/gradients/loss/dense_loss/weighted_loss/Mul_grad/MulMul4training/SGD/gradients/loss/dense_loss/Sum_grad/Tile/loss/dense_loss/weighted_loss/broadcast_weights*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
 
Atraining/SGD/gradients/loss/dense_loss/weighted_loss/Mul_grad/SumSumAtraining/SGD/gradients/loss/dense_loss/weighted_loss/Mul_grad/MulStraining/SGD/gradients/loss/dense_loss/weighted_loss/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

Etraining/SGD/gradients/loss/dense_loss/weighted_loss/Mul_grad/ReshapeReshapeAtraining/SGD/gradients/loss/dense_loss/weighted_loss/Mul_grad/SumCtraining/SGD/gradients/loss/dense_loss/weighted_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
Ctraining/SGD/gradients/loss/dense_loss/weighted_loss/Mul_grad/Mul_1Mul;loss/dense_loss/softmax_cross_entropy_with_logits/Reshape_24training/SGD/gradients/loss/dense_loss/Sum_grad/Tile*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ś
Ctraining/SGD/gradients/loss/dense_loss/weighted_loss/Mul_grad/Sum_1SumCtraining/SGD/gradients/loss/dense_loss/weighted_loss/Mul_grad/Mul_1Utraining/SGD/gradients/loss/dense_loss/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

Gtraining/SGD/gradients/loss/dense_loss/weighted_loss/Mul_grad/Reshape_1ReshapeCtraining/SGD/gradients/loss/dense_loss/weighted_loss/Mul_grad/Sum_1Etraining/SGD/gradients/loss/dense_loss/weighted_loss/Mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
]training/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape1loss/dense_loss/softmax_cross_entropy_with_logits*
_output_shapes
:*
T0*
out_type0
Ě
_training/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshapeEtraining/SGD/gradients/loss/dense_loss/weighted_loss/Mul_grad/Reshape]training/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

!training/SGD/gradients/zeros_like	ZerosLike3loss/dense_loss/softmax_cross_entropy_with_logits:1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
§
\training/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
ă
Xtraining/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDims_training/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshape\training/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
˘
Qtraining/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits_grad/mulMulXtraining/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits_grad/ExpandDims3loss/dense_loss/softmax_cross_entropy_with_logits:1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ü
Xtraining/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax9loss/dense_loss/softmax_cross_entropy_with_logits/Reshape*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
í
Qtraining/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits_grad/NegNegXtraining/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits_grad/LogSoftmax*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Š
^training/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ç
Ztraining/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDims_training/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshape^training/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tdim0
Ä
Straining/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits_grad/mul_1MulZtraining/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits_grad/ExpandDims_1Qtraining/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits_grad/Neg*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
¨
[training/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapedense/BiasAdd*
T0*
out_type0*
_output_shapes
:
Ř
]training/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshapeQtraining/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits_grad/mul[training/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ß
5training/SGD/gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad]training/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:


/training/SGD/gradients/dense/MatMul_grad/MatMulMatMul]training/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits/Reshape_grad/Reshapedense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(
÷
1training/SGD/gradients/dense/MatMul_grad/MatMul_1MatMuldense_input]training/SGD/gradients/loss/dense_loss/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*
T0*
_output_shapes
:	
*
transpose_a(*
transpose_b( 

#training/SGD/iter/Initializer/zerosConst*
value	B	 R *$
_class
loc:@training/SGD/iter*
dtype0	*
_output_shapes
: 
­
training/SGD/iterVarHandleOp*
dtype0	*
_output_shapes
: *"
shared_nametraining/SGD/iter*$
_class
loc:@training/SGD/iter*
	container *
shape: 
s
2training/SGD/iter/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/iter*
_output_shapes
: 

training/SGD/iter/AssignAssignVariableOptraining/SGD/iter#training/SGD/iter/Initializer/zeros*
dtype0	*$
_class
loc:@training/SGD/iter

%training/SGD/iter/Read/ReadVariableOpReadVariableOptraining/SGD/iter*$
_class
loc:@training/SGD/iter*
dtype0	*
_output_shapes
: 

,training/SGD/decay/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *    *%
_class
loc:@training/SGD/decay*
dtype0
°
training/SGD/decayVarHandleOp*#
shared_nametraining/SGD/decay*%
_class
loc:@training/SGD/decay*
	container *
shape: *
dtype0*
_output_shapes
: 
u
3training/SGD/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/decay*
_output_shapes
: 
Ł
training/SGD/decay/AssignAssignVariableOptraining/SGD/decay,training/SGD/decay/Initializer/initial_value*%
_class
loc:@training/SGD/decay*
dtype0

&training/SGD/decay/Read/ReadVariableOpReadVariableOptraining/SGD/decay*%
_class
loc:@training/SGD/decay*
dtype0*
_output_shapes
: 
¨
4training/SGD/learning_rate/Initializer/initial_valueConst*
_output_shapes
: *
valueB
 *
×#<*-
_class#
!loc:@training/SGD/learning_rate*
dtype0
Č
training/SGD/learning_rateVarHandleOp*+
shared_nametraining/SGD/learning_rate*-
_class#
!loc:@training/SGD/learning_rate*
	container *
shape: *
dtype0*
_output_shapes
: 

;training/SGD/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/learning_rate*
_output_shapes
: 
Ă
!training/SGD/learning_rate/AssignAssignVariableOptraining/SGD/learning_rate4training/SGD/learning_rate/Initializer/initial_value*-
_class#
!loc:@training/SGD/learning_rate*
dtype0
°
.training/SGD/learning_rate/Read/ReadVariableOpReadVariableOptraining/SGD/learning_rate*-
_class#
!loc:@training/SGD/learning_rate*
dtype0*
_output_shapes
: 

/training/SGD/momentum/Initializer/initial_valueConst*
valueB
 *    *(
_class
loc:@training/SGD/momentum*
dtype0*
_output_shapes
: 
š
training/SGD/momentumVarHandleOp*&
shared_nametraining/SGD/momentum*(
_class
loc:@training/SGD/momentum*
	container *
shape: *
dtype0*
_output_shapes
: 
{
6training/SGD/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/SGD/momentum*
_output_shapes
: 
Ż
training/SGD/momentum/AssignAssignVariableOptraining/SGD/momentum/training/SGD/momentum/Initializer/initial_value*
dtype0*(
_class
loc:@training/SGD/momentum
Ą
)training/SGD/momentum/Read/ReadVariableOpReadVariableOptraining/SGD/momentum*(
_class
loc:@training/SGD/momentum*
dtype0*
_output_shapes
: 
Ł
Ptraining/SGD/SGD/update_dense/kernel/ResourceApplyGradientDescent/ReadVariableOpReadVariableOptraining/SGD/learning_rate*
dtype0*
_output_shapes
: 

Atraining/SGD/SGD/update_dense/kernel/ResourceApplyGradientDescentResourceApplyGradientDescentdense/kernelPtraining/SGD/SGD/update_dense/kernel/ResourceApplyGradientDescent/ReadVariableOp1training/SGD/gradients/dense/MatMul_grad/MatMul_1*
use_locking(*
T0
Ą
Ntraining/SGD/SGD/update_dense/bias/ResourceApplyGradientDescent/ReadVariableOpReadVariableOptraining/SGD/learning_rate*
dtype0*
_output_shapes
: 

?training/SGD/SGD/update_dense/bias/ResourceApplyGradientDescentResourceApplyGradientDescent
dense/biasNtraining/SGD/SGD/update_dense/bias/ResourceApplyGradientDescent/ReadVariableOp5training/SGD/gradients/dense/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0
Ţ
training/SGD/SGD/ConstConst@^training/SGD/SGD/update_dense/bias/ResourceApplyGradientDescentB^training/SGD/SGD/update_dense/kernel/ResourceApplyGradientDescent*
dtype0	*
_output_shapes
: *
value	B	 R
s
$training/SGD/SGD/AssignAddVariableOpAssignAddVariableOptraining/SGD/itertraining/SGD/SGD/Const*
dtype0	

training/SGD/SGD/ReadVariableOpReadVariableOptraining/SGD/iter%^training/SGD/SGD/AssignAddVariableOp@^training/SGD/SGD/update_dense/bias/ResourceApplyGradientDescentB^training/SGD/SGD/update_dense/kernel/ResourceApplyGradientDescent*
dtype0	*
_output_shapes
: 
O
training_1/group_depsNoOp	^loss/mul%^training/SGD/SGD/AssignAddVariableOp
L
PlaceholderPlaceholder*
_output_shapes
: *
shape: *
dtype0
E
AssignVariableOpAssignVariableOptotalPlaceholder*
dtype0
_
ReadVariableOpReadVariableOptotal^AssignVariableOp*
dtype0*
_output_shapes
: 
N
Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
I
AssignVariableOp_1AssignVariableOpcountPlaceholder_1*
dtype0
c
ReadVariableOp_1ReadVariableOpcount^AssignVariableOp_1*
dtype0*
_output_shapes
: 
S
VarIsInitializedOpVarIsInitializedOptraining/SGD/iter*
_output_shapes
: 
N
VarIsInitializedOp_1VarIsInitializedOp
dense/bias*
_output_shapes
: 
V
VarIsInitializedOp_2VarIsInitializedOptraining/SGD/decay*
_output_shapes
: 
I
VarIsInitializedOp_3VarIsInitializedOptotal*
_output_shapes
: 
^
VarIsInitializedOp_4VarIsInitializedOptraining/SGD/learning_rate*
_output_shapes
: 
I
VarIsInitializedOp_5VarIsInitializedOpcount*
_output_shapes
: 
Y
VarIsInitializedOp_6VarIsInitializedOptraining/SGD/momentum*
_output_shapes
: 
P
VarIsInitializedOp_7VarIsInitializedOpdense/kernel*
_output_shapes
: 
Î
initNoOp^count/Assign^dense/bias/Assign^dense/kernel/Assign^total/Assign^training/SGD/decay/Assign^training/SGD/iter/Assign"^training/SGD/learning_rate/Assign^training/SGD/momentum/Assign
(
evaluation/group_depsNoOp	^loss/mul
r
dense_input_1Placeholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ł
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"  
   *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:

-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *ç˛˝*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 

-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *ç˛=*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
ě
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	
*

seed *
T0*!
_class
loc:@dense_1/kernel*
seed2 
Ö
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
é
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_1/kernel*
_output_shapes
:	
*
T0
Ű
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
_output_shapes
:	
*
T0
­
dense_1/kernelVarHandleOp*!
_class
loc:@dense_1/kernel*
	container *
shape:	
*
dtype0*
_output_shapes
: *
shared_namedense_1/kernel
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 

dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*!
_class
loc:@dense_1/kernel*
dtype0

"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:	


dense_1/bias/Initializer/zerosConst*
_output_shapes
:
*
valueB
*    *
_class
loc:@dense_1/bias*
dtype0
˘
dense_1/biasVarHandleOp*
shape:
*
dtype0*
_output_shapes
: *
shared_namedense_1/bias*
_class
loc:@dense_1/bias*
	container 
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 

dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
dtype0*
_class
loc:@dense_1/bias

 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:
*
_class
loc:@dense_1/bias
m
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes
:	


dense_1/MatMulMatMuldense_input_1dense_1/MatMul/ReadVariableOp*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
transpose_a( *
transpose_b( *
T0
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:


dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

]
dense_1/SoftmaxSoftmaxdense_1/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
`
Placeholder_2Placeholder*
dtype0*
_output_shapes
:	
*
shape:	

R
AssignVariableOp_2AssignVariableOpdense_1/kernelPlaceholder_2*
dtype0
u
ReadVariableOp_2ReadVariableOpdense_1/kernel^AssignVariableOp_2*
dtype0*
_output_shapes
:	

V
Placeholder_3Placeholder*
dtype0*
_output_shapes
:
*
shape:

P
AssignVariableOp_3AssignVariableOpdense_1/biasPlaceholder_3*
dtype0
n
ReadVariableOp_3ReadVariableOpdense_1/bias^AssignVariableOp_3*
dtype0*
_output_shapes
:

R
VarIsInitializedOp_8VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
P
VarIsInitializedOp_9VarIsInitializedOpdense_1/bias*
_output_shapes
: 
<
init_1NoOp^dense_1/bias/Assign^dense_1/kernel/Assign
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_7591c774c3ce4def961f16030f3439ca/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*§
valueBB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBtraining/SGD/decayBtraining/SGD/iterBtraining/SGD/learning_rateBtraining/SGD/momentum*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*#
valueBB B B B B B B B 
ź
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp&training/SGD/decay/Read/ReadVariableOp%training/SGD/iter/Read/ReadVariableOp.training/SGD/learning_rate/Read/ReadVariableOp)training/SGD/momentum/Read/ReadVariableOp"/device:CPU:0*
dtypes

2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0

save/RestoreV2/tensor_namesConst"/device:CPU:0*§
valueBB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBtraining/SGD/decayBtraining/SGD/iterBtraining/SGD/learning_rateBtraining/SGD/momentum*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*#
valueBB B B B B B B B *
dtype0*
_output_shapes
:
Â
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*4
_output_shapes"
 ::::::::*
dtypes

2	
N
save/Identity_1Identitysave/RestoreV2*
_output_shapes
:*
T0
S
save/AssignVariableOpAssignVariableOp
dense/biassave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
_output_shapes
:*
T0
W
save/AssignVariableOp_1AssignVariableOpdense/kernelsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
W
save/AssignVariableOp_2AssignVariableOpdense_1/biassave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
_output_shapes
:*
T0
Y
save/AssignVariableOp_3AssignVariableOpdense_1/kernelsave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
]
save/AssignVariableOp_4AssignVariableOptraining/SGD/decaysave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0	*
_output_shapes
:
\
save/AssignVariableOp_5AssignVariableOptraining/SGD/itersave/Identity_6*
dtype0	
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
e
save/AssignVariableOp_6AssignVariableOptraining/SGD/learning_ratesave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
_output_shapes
:*
T0
`
save/AssignVariableOp_7AssignVariableOptraining/SGD/momentumsave/Identity_8*
dtype0
č
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7
-
save/restore_allNoOp^save/restore_shard")<
save/Const:0save/Identity:0save/restore_all (5 @F8"ň
trainable_variablesÚ×
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08

dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08"Đ
	variablesÂż
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08

training/SGD/iter:0training/SGD/iter/Assign'training/SGD/iter/Read/ReadVariableOp:0(2%training/SGD/iter/Initializer/zeros:0H

training/SGD/decay:0training/SGD/decay/Assign(training/SGD/decay/Read/ReadVariableOp:0(2.training/SGD/decay/Initializer/initial_value:0H
Ż
training/SGD/learning_rate:0!training/SGD/learning_rate/Assign0training/SGD/learning_rate/Read/ReadVariableOp:0(26training/SGD/learning_rate/Initializer/initial_value:0H

training/SGD/momentum:0training/SGD/momentum/Assign+training/SGD/momentum/Read/ReadVariableOp:0(21training/SGD/momentum/Initializer/initial_value:0H

dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08*
serving_default
6
dense_input'
dense_input_1:0˙˙˙˙˙˙˙˙˙1
dense(
dense_1/Softmax:0˙˙˙˙˙˙˙˙˙
tensorflow/serving/predict