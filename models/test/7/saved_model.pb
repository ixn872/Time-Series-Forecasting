��
�'�'
:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
�
EmptyTensorList
element_shape"
shape_type
max_num_elements

handle"
element_dtypetype"

shape_typetype:
2	
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
,
Floor
x"T
y"T"
Ttype:
2
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
.
IsFinite
x"T
y
"
Ttype:
2
2
L2Loss
t"T
output"T"
Ttype:
2
,
Log
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
8
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
6
Pow
x"T
y"T
z"T"
Ttype:

2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
@
ReadVariableOp
resource
value"dtype"
dtypetype�
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( �
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
-
Sqrt
x"T
y"T"
Ttype:

2
�
StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
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
shapeshape�
9
VarIsInitializedOp
resource
is_initialized
�
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.2.02v2.2.0-rc4-8-g2b96f3662b��
_
train_inputs_0Placeholder*
_output_shapes

:*
dtype0*
shape
:
`
train_outputs_0Placeholder*
_output_shapes

:*
dtype0*
shape
:
_
train_inputs_1Placeholder*
_output_shapes

:*
dtype0*
shape
:
`
train_outputs_1Placeholder*
_output_shapes

:*
dtype0*
shape
:
_
train_inputs_2Placeholder*
_output_shapes

:*
dtype0*
shape
:
`
train_outputs_2Placeholder*
_output_shapes

:*
dtype0*
shape
:
_
train_inputs_3Placeholder*
_output_shapes

:*
dtype0*
shape
:
`
train_outputs_3Placeholder*
_output_shapes

:*
dtype0*
shape
:
_
train_inputs_4Placeholder*
_output_shapes

:*
dtype0*
shape
:
`
train_outputs_4Placeholder*
_output_shapes

:*
dtype0*
shape
:
]
DropoutWrapperInit/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
_
DropoutWrapperInit/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *��L?
_
DropoutWrapperInit/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L?
_
DropoutWrapperInit_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
a
DropoutWrapperInit_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *��L?
a
DropoutWrapperInit_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L?
_
DropoutWrapperInit_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
a
DropoutWrapperInit_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *��L?
a
DropoutWrapperInit_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *��L?
�
"w/Initializer/random_uniform/shapeConst*
_class

loc:@w*
_output_shapes
:*
dtype0*
valueB"�      
{
 w/Initializer/random_uniform/minConst*
_class

loc:@w*
_output_shapes
: *
dtype0*
valueB
 *�L�
{
 w/Initializer/random_uniform/maxConst*
_class

loc:@w*
_output_shapes
: *
dtype0*
valueB
 *�L>
�
*w/Initializer/random_uniform/RandomUniformRandomUniform"w/Initializer/random_uniform/shape*
T0*
_class

loc:@w*
_output_shapes
:	�*
dtype0*

seed *
seed2 
�
 w/Initializer/random_uniform/subSub w/Initializer/random_uniform/max w/Initializer/random_uniform/min*
T0*
_class

loc:@w*
_output_shapes
: 
�
 w/Initializer/random_uniform/mulMul*w/Initializer/random_uniform/RandomUniform w/Initializer/random_uniform/sub*
T0*
_class

loc:@w*
_output_shapes
:	�
�
w/Initializer/random_uniformAdd w/Initializer/random_uniform/mul w/Initializer/random_uniform/min*
T0*
_class

loc:@w*
_output_shapes
:	�
�
wVarHandleOp*
_class

loc:@w*
_output_shapes
: *
	container *
dtype0*
shape:	�*
shared_namew
S
"w/IsInitialized/VarIsInitializedOpVarIsInitializedOpw*
_output_shapes
: 
J
w/AssignAssignVariableOpww/Initializer/random_uniform*
dtype0
X
w/Read/ReadVariableOpReadVariableOpw*
_output_shapes
:	�*
dtype0
^
random_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB:
W
random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *��̽
W
random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *���=
�
random_uniform/RandomUniformRandomUniformrandom_uniform/shape*
T0*
_output_shapes
:*
dtype0*

seed *
seed2 
b
random_uniform/subSubrandom_uniform/maxrandom_uniform/min*
T0*
_output_shapes
: 
p
random_uniform/mulMulrandom_uniform/RandomUniformrandom_uniform/sub*
T0*
_output_shapes
:
b
random_uniformAddrandom_uniform/mulrandom_uniform/min*
T0*
_output_shapes
:
�
bVarHandleOp*
_class

loc:@b*
_output_shapes
: *
	container *
dtype0*
shape:*
shared_nameb
S
"b/IsInitialized/VarIsInitializedOpVarIsInitializedOpb*
_output_shapes
: 
<
b/AssignAssignVariableOpbrandom_uniform*
dtype0
S
b/Read/ReadVariableOpReadVariableOpb*
_output_shapes
:*
dtype0
\
zerosConst*
_output_shapes
:	�*
dtype0*
valueB	�*    
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *
	container *
dtype0*
shape:	�*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
A
Variable/AssignAssignVariableOpVariablezeros*
dtype0
f
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:	�*
dtype0
^
zeros_1Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *
	container *
dtype0*
shape:	�*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
G
Variable_1/AssignAssignVariableOp
Variable_1zeros_1*
dtype0
j
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:	�*
dtype0
^
zeros_2Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *
	container *
dtype0*
shape:	�*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
G
Variable_2/AssignAssignVariableOp
Variable_2zeros_2*
dtype0
j
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:	�*
dtype0
^
zeros_3Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *
	container *
dtype0*
shape:	�*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
G
Variable_3/AssignAssignVariableOp
Variable_3zeros_3*
dtype0
j
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
:	�*
dtype0
^
zeros_4Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *
	container *
dtype0*
shape:	�*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
G
Variable_4/AssignAssignVariableOp
Variable_4zeros_4*
dtype0
j
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
:	�*
dtype0
^
zeros_5Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *
	container *
dtype0*
shape:	�*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
G
Variable_5/AssignAssignVariableOp
Variable_5zeros_5*
dtype0
j
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes
:	�*
dtype0
P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
q

ExpandDims
ExpandDimstrain_inputs_0ExpandDims/dim*
T0*

Tdim0*"
_output_shapes
:
R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
u
ExpandDims_1
ExpandDimstrain_inputs_1ExpandDims_1/dim*
T0*

Tdim0*"
_output_shapes
:
R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 
u
ExpandDims_2
ExpandDimstrain_inputs_2ExpandDims_2/dim*
T0*

Tdim0*"
_output_shapes
:
R
ExpandDims_3/dimConst*
_output_shapes
: *
dtype0*
value	B : 
u
ExpandDims_3
ExpandDimstrain_inputs_3ExpandDims_3/dim*
T0*

Tdim0*"
_output_shapes
:
R
ExpandDims_4/dimConst*
_output_shapes
: *
dtype0*
value	B : 
u
ExpandDims_4
ExpandDimstrain_inputs_4ExpandDims_4/dim*
T0*

Tdim0*"
_output_shapes
:
M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
�
concatConcatV2
ExpandDimsExpandDims_1ExpandDims_2ExpandDims_3ExpandDims_4concat/axis*
N*
T0*

Tidx0*"
_output_shapes
:
^
	rnn/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
a
rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
c
rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
c
rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
rnn/strided_sliceStridedSlice	rnn/Shapernn/strided_slice/stackrnn/strided_slice/stack_1rnn/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
S
	rnn/ConstConst*
_output_shapes
:*
dtype0*
valueB:
V
rnn/Const_1Const*
_output_shapes
:*
dtype0*
valueB:�
Q
rnn/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
y

rnn/concatConcatV2	rnn/Constrnn/Const_1rnn/concat/axis*
N*
T0*

Tidx0*
_output_shapes
:
T
rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
j
	rnn/zerosFill
rnn/concatrnn/zeros/Const*
T0*
_output_shapes
:	�*

index_type0
J
rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : 
p
rnn/TensorArrayV2/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
rnn/TensorArrayV2TensorListReservernn/TensorArrayV2/element_shapernn/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
r
!rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
�
rnn/TensorArrayV2_1TensorListReserve!rnn/TensorArrayV2_1/element_shapernn/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
9rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
�
+rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorconcat9rnn/TensorArrayUnstack/TensorListFromTensor/element_shape*
_output_shapes
: *
element_dtype0*

shape_type0
O
rnn/Maximum/xConst*
_output_shapes
: *
dtype0*
value	B :
Y
rnn/MaximumMaximumrnn/Maximum/xrnn/strided_slice*
T0*
_output_shapes
: 
W
rnn/MinimumMinimumrnn/strided_slicernn/Maximum*
T0*
_output_shapes
: 
\
rnn/ReadVariableOpReadVariableOpVariable*
_output_shapes
:	�*
dtype0
`
rnn/ReadVariableOp_1ReadVariableOp
Variable_1*
_output_shapes
:	�*
dtype0
`
rnn/ReadVariableOp_2ReadVariableOp
Variable_2*
_output_shapes
:	�*
dtype0
`
rnn/ReadVariableOp_3ReadVariableOp
Variable_3*
_output_shapes
:	�*
dtype0
`
rnn/ReadVariableOp_4ReadVariableOp
Variable_4*
_output_shapes
:	�*
dtype0
`
rnn/ReadVariableOp_5ReadVariableOp
Variable_5*
_output_shapes
:	�*
dtype0
X
rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
�
Krnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/shapeConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
_output_shapes
:*
dtype0*
valueB"�      
�
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/minConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
_output_shapes
: *
dtype0*
valueB
 *⎞�
�
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/maxConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
_output_shapes
: *
dtype0*
valueB
 *⎞=
�
Srnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformKrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/shape*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel* 
_output_shapes
:
��*
dtype0*

seed *
seed2 
�
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/subSubIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/maxIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
_output_shapes
: 
�
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/mulMulSrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/RandomUniformIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/sub*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel* 
_output_shapes
:
��
�
Ernn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniformAddIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/mulIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel* 
_output_shapes
:
��
�
*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelVarHandleOp*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
_output_shapes
: *
	container *
dtype0*
shape:
��*;
shared_name,*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
�
Krnn/multi_rnn_cell/cell_0/lstm_cell/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
_output_shapes
: 
�
1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AssignAssignVariableOp*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelErnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform*
dtype0
�
>rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel* 
_output_shapes
:
��*
dtype0
�
8rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Read/IdentityIdentity>rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Read/ReadVariableOp*
T0* 
_output_shapes
:
��
�
:rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/zerosConst*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
(rnn/multi_rnn_cell/cell_0/lstm_cell/biasVarHandleOp*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes
: *
	container *
dtype0*
shape:�*9
shared_name*(rnn/multi_rnn_cell/cell_0/lstm_cell/bias
�
Irnn/multi_rnn_cell/cell_0/lstm_cell/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp(rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes
: 
�
/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AssignAssignVariableOp(rnn/multi_rnn_cell/cell_0/lstm_cell/bias:rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/zeros*
dtype0
�
<rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Read/ReadVariableOpReadVariableOp(rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
6rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Read/IdentityIdentity<rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Read/ReadVariableOp*
T0*
_output_shapes	
:�
�
Krnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/shapeConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
_output_shapes
:*
dtype0*
valueB"�     
�
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/minConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
_output_shapes
: *
dtype0*
valueB
 *�А�
�
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/maxConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
_output_shapes
: *
dtype0*
valueB
 *�А=
�
Srnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformKrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/shape*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel* 
_output_shapes
:
��*
dtype0*

seed *
seed2 
�
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/subSubIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/maxIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
_output_shapes
: 
�
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/mulMulSrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/RandomUniformIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/sub*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel* 
_output_shapes
:
��
�
Ernn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniformAddIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/mulIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel* 
_output_shapes
:
��
�
*rnn/multi_rnn_cell/cell_1/lstm_cell/kernelVarHandleOp*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
_output_shapes
: *
	container *
dtype0*
shape:
��*;
shared_name,*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
�
Krnn/multi_rnn_cell/cell_1/lstm_cell/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
_output_shapes
: 
�
1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/AssignAssignVariableOp*rnn/multi_rnn_cell/cell_1/lstm_cell/kernelErnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform*
dtype0
�
>rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel* 
_output_shapes
:
��*
dtype0
�
8rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Read/IdentityIdentity>rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Read/ReadVariableOp*
T0* 
_output_shapes
:
��
�
:rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Initializer/zerosConst*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
(rnn/multi_rnn_cell/cell_1/lstm_cell/biasVarHandleOp*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
_output_shapes
: *
	container *
dtype0*
shape:�*9
shared_name*(rnn/multi_rnn_cell/cell_1/lstm_cell/bias
�
Irnn/multi_rnn_cell/cell_1/lstm_cell/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp(rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
_output_shapes
: 
�
/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/AssignAssignVariableOp(rnn/multi_rnn_cell/cell_1/lstm_cell/bias:rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Initializer/zeros*
dtype0
�
<rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Read/ReadVariableOpReadVariableOp(rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
6rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Read/IdentityIdentity<rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Read/ReadVariableOp*
T0*
_output_shapes	
:�
�
Krnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Initializer/random_uniform/shapeConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/kernel*
_output_shapes
:*
dtype0*
valueB"^  X  
�
Irnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Initializer/random_uniform/minConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/kernel*
_output_shapes
: *
dtype0*
valueB
 */¢�
�
Irnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Initializer/random_uniform/maxConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/kernel*
_output_shapes
: *
dtype0*
valueB
 */¢=
�
Srnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformKrnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Initializer/random_uniform/shape*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/kernel* 
_output_shapes
:
��*
dtype0*

seed *
seed2 
�
Irnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Initializer/random_uniform/subSubIrnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Initializer/random_uniform/maxIrnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/kernel*
_output_shapes
: 
�
Irnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Initializer/random_uniform/mulMulSrnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Initializer/random_uniform/RandomUniformIrnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Initializer/random_uniform/sub*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/kernel* 
_output_shapes
:
��
�
Ernn/multi_rnn_cell/cell_2/lstm_cell/kernel/Initializer/random_uniformAddIrnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Initializer/random_uniform/mulIrnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/kernel* 
_output_shapes
:
��
�
*rnn/multi_rnn_cell/cell_2/lstm_cell/kernelVarHandleOp*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/kernel*
_output_shapes
: *
	container *
dtype0*
shape:
��*;
shared_name,*rnn/multi_rnn_cell/cell_2/lstm_cell/kernel
�
Krnn/multi_rnn_cell/cell_2/lstm_cell/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp*rnn/multi_rnn_cell/cell_2/lstm_cell/kernel*
_output_shapes
: 
�
1rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/AssignAssignVariableOp*rnn/multi_rnn_cell/cell_2/lstm_cell/kernelErnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Initializer/random_uniform*
dtype0
�
>rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp*rnn/multi_rnn_cell/cell_2/lstm_cell/kernel* 
_output_shapes
:
��*
dtype0
�
8rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Read/IdentityIdentity>rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Read/ReadVariableOp*
T0* 
_output_shapes
:
��
�
:rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Initializer/zerosConst*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
(rnn/multi_rnn_cell/cell_2/lstm_cell/biasVarHandleOp*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/bias*
_output_shapes
: *
	container *
dtype0*
shape:�*9
shared_name*(rnn/multi_rnn_cell/cell_2/lstm_cell/bias
�
Irnn/multi_rnn_cell/cell_2/lstm_cell/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp(rnn/multi_rnn_cell/cell_2/lstm_cell/bias*
_output_shapes
: 
�
/rnn/multi_rnn_cell/cell_2/lstm_cell/bias/AssignAssignVariableOp(rnn/multi_rnn_cell/cell_2/lstm_cell/bias:rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Initializer/zeros*
dtype0
�
<rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Read/ReadVariableOpReadVariableOp(rnn/multi_rnn_cell/cell_2/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
6rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Read/IdentityIdentity<rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Read/ReadVariableOp*
T0*
_output_shapes	
:�
�	
	rnn/whileWhilernn/while/loop_counterrnn/strided_slicernn/timernn/TensorArrayV2rnn/ReadVariableOprnn/ReadVariableOp_1rnn/ReadVariableOp_2rnn/ReadVariableOp_3rnn/ReadVariableOp_4rnn/ReadVariableOp_5rnn/Minimum+rnn/TensorArrayUnstack/TensorListFromTensor8rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Read/Identity6rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Read/Identity8rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Read/Identity6rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Read/Identity8rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Read/Identity6rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Read/Identity*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*�
_output_shapes�
�: : : : :	�:	�:	�:	�:	�:	�: : :
��:�:
��:�:
��:�* 
_read_only_resource_inputs
 *
bodyR
rnn_while_body_1373*
condR
rnn_while_cond_1372*�
output_shapes�
�: : : : :	�:	�:	�:	�:	�:	�: : :
��:�:
��:�:
��:�*
parallel_iterations 
J
rnn/while/IdentityIdentity	rnn/while*
T0*
_output_shapes
: 
N
rnn/while/Identity_1Identityrnn/while:1*
T0*
_output_shapes
: 
N
rnn/while/Identity_2Identityrnn/while:2*
T0*
_output_shapes
: 
N
rnn/while/Identity_3Identityrnn/while:3*
T0*
_output_shapes
: 
W
rnn/while/Identity_4Identityrnn/while:4*
T0*
_output_shapes
:	�
W
rnn/while/Identity_5Identityrnn/while:5*
T0*
_output_shapes
:	�
W
rnn/while/Identity_6Identityrnn/while:6*
T0*
_output_shapes
:	�
W
rnn/while/Identity_7Identityrnn/while:7*
T0*
_output_shapes
:	�
W
rnn/while/Identity_8Identityrnn/while:8*
T0*
_output_shapes
:	�
W
rnn/while/Identity_9Identityrnn/while:9*
T0*
_output_shapes
:	�
P
rnn/while/Identity_10Identityrnn/while:10*
T0*
_output_shapes
: 
P
rnn/while/Identity_11Identityrnn/while:11*
T0*
_output_shapes
: 
Z
rnn/while/Identity_12Identityrnn/while:12*
T0* 
_output_shapes
:
��
U
rnn/while/Identity_13Identityrnn/while:13*
T0*
_output_shapes	
:�
Z
rnn/while/Identity_14Identityrnn/while:14*
T0* 
_output_shapes
:
��
U
rnn/while/Identity_15Identityrnn/while:15*
T0*
_output_shapes	
:�
Z
rnn/while/Identity_16Identityrnn/while:16*
T0* 
_output_shapes
:
��
U
rnn/while/Identity_17Identityrnn/while:17*
T0*
_output_shapes	
:�
�
4rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
&rnn/TensorArrayV2Stack/TensorListStackTensorListStackrnn/while/Identity_34rnn/TensorArrayV2Stack/TensorListStack/element_shape*#
_output_shapes
:�*
element_dtype0*
num_elements���������
\
rnn/Const_2Const*
_output_shapes
:*
dtype0*
valueB"      
V
rnn/Const_3Const*
_output_shapes
:*
dtype0*
valueB:�
^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"
   �   
�
ReshapeReshape&rnn/TensorArrayV2Stack/TensorListStackReshape/shape*
T0*
Tshape0*
_output_shapes
:	
�
[
xw_plus_b/ReadVariableOpReadVariableOpw*
_output_shapes
:	�*
dtype0
X
xw_plus_b/ReadVariableOp_1ReadVariableOpb*
_output_shapes
:*
dtype0
�
xw_plus_b/MatMulMatMulReshapexw_plus_b/ReadVariableOp*
T0*
_output_shapes

:
*
transpose_a( *
transpose_b( 
�
	xw_plus_bBiasAddxw_plus_b/MatMulxw_plus_b/ReadVariableOp_1*
T0*
_output_shapes

:
*
data_formatNHWC
G
ConstConst*
_output_shapes
: *
dtype0*
value	B :
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
splitSplitsplit/split_dim	xw_plus_b*
T0*F
_output_shapes4
2:::::*
	num_split
^
zeros_6Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *
	container *
dtype0*
shape:	�*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
G
Variable_6/AssignAssignVariableOp
Variable_6zeros_6*
dtype0
j
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes
:	�*
dtype0
^
zeros_7Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *
	container *
dtype0*
shape:	�*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
G
Variable_7/AssignAssignVariableOp
Variable_7zeros_7*
dtype0
j
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes
:	�*
dtype0
^
zeros_8Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *
	container *
dtype0*
shape:	�*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
G
Variable_8/AssignAssignVariableOp
Variable_8zeros_8*
dtype0
j
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes
:	�*
dtype0
^
zeros_9Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�

Variable_9VarHandleOp*
_class
loc:@Variable_9*
_output_shapes
: *
	container *
dtype0*
shape:	�*
shared_name
Variable_9
e
+Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_9*
_output_shapes
: 
G
Variable_9/AssignAssignVariableOp
Variable_9zeros_9*
dtype0
j
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*
_output_shapes
:	�*
dtype0
_
zeros_10Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�
Variable_10VarHandleOp*
_class
loc:@Variable_10*
_output_shapes
: *
	container *
dtype0*
shape:	�*
shared_nameVariable_10
g
,Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_10*
_output_shapes
: 
J
Variable_10/AssignAssignVariableOpVariable_10zeros_10*
dtype0
l
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*
_output_shapes
:	�*
dtype0
_
zeros_11Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�
Variable_11VarHandleOp*
_class
loc:@Variable_11*
_output_shapes
: *
	container *
dtype0*
shape:	�*
shared_nameVariable_11
g
,Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_11*
_output_shapes
: 
J
Variable_11/AssignAssignVariableOpVariable_11zeros_11*
dtype0
l
Variable_11/Read/ReadVariableOpReadVariableOpVariable_11*
_output_shapes
:	�*
dtype0
R
ExpandDims_5/dimConst*
_output_shapes
: *
dtype0*
value	B : 
u
ExpandDims_5
ExpandDimstrain_inputs_0ExpandDims_5/dim*
T0*

Tdim0*"
_output_shapes
:
R
ExpandDims_6/dimConst*
_output_shapes
: *
dtype0*
value	B : 
u
ExpandDims_6
ExpandDimstrain_inputs_1ExpandDims_6/dim*
T0*

Tdim0*"
_output_shapes
:
R
ExpandDims_7/dimConst*
_output_shapes
: *
dtype0*
value	B : 
u
ExpandDims_7
ExpandDimstrain_inputs_2ExpandDims_7/dim*
T0*

Tdim0*"
_output_shapes
:
R
ExpandDims_8/dimConst*
_output_shapes
: *
dtype0*
value	B : 
u
ExpandDims_8
ExpandDimstrain_inputs_3ExpandDims_8/dim*
T0*

Tdim0*"
_output_shapes
:
R
ExpandDims_9/dimConst*
_output_shapes
: *
dtype0*
value	B : 
u
ExpandDims_9
ExpandDimstrain_inputs_4ExpandDims_9/dim*
T0*

Tdim0*"
_output_shapes
:
O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
�
concat_1ConcatV2ExpandDims_5ExpandDims_6ExpandDims_7ExpandDims_8ExpandDims_9concat_1/axis*
N*
T0*

Tidx0*"
_output_shapes
:
`
rnn_1/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
c
rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
e
rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
e
rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
rnn_1/strided_sliceStridedSlicernn_1/Shapernn_1/strided_slice/stackrnn_1/strided_slice/stack_1rnn_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
U
rnn_1/ConstConst*
_output_shapes
:*
dtype0*
valueB:
X
rnn_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB:�
S
rnn_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
�
rnn_1/concatConcatV2rnn_1/Constrnn_1/Const_1rnn_1/concat/axis*
N*
T0*

Tidx0*
_output_shapes
:
V
rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
p
rnn_1/zerosFillrnn_1/concatrnn_1/zeros/Const*
T0*
_output_shapes
:	�*

index_type0
L

rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 
r
!rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
rnn_1/TensorArrayV2TensorListReserve!rnn_1/TensorArrayV2/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
t
#rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
�
rnn_1/TensorArrayV2_1TensorListReserve#rnn_1/TensorArrayV2_1/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
;rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
�
-rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorconcat_1;rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape*
_output_shapes
: *
element_dtype0*

shape_type0
Q
rnn_1/Maximum/xConst*
_output_shapes
: *
dtype0*
value	B :
_
rnn_1/MaximumMaximumrnn_1/Maximum/xrnn_1/strided_slice*
T0*
_output_shapes
: 
]
rnn_1/MinimumMinimumrnn_1/strided_slicernn_1/Maximum*
T0*
_output_shapes
: 
`
rnn_1/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes
:	�*
dtype0
b
rnn_1/ReadVariableOp_1ReadVariableOp
Variable_7*
_output_shapes
:	�*
dtype0
b
rnn_1/ReadVariableOp_2ReadVariableOp
Variable_8*
_output_shapes
:	�*
dtype0
b
rnn_1/ReadVariableOp_3ReadVariableOp
Variable_9*
_output_shapes
:	�*
dtype0
c
rnn_1/ReadVariableOp_4ReadVariableOpVariable_10*
_output_shapes
:	�*
dtype0
c
rnn_1/ReadVariableOp_5ReadVariableOpVariable_11*
_output_shapes
:	�*
dtype0
Z
rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
�"
rnn_1/whileWhilernn_1/while/loop_counterrnn_1/strided_slice
rnn_1/timernn_1/TensorArrayV2rnn_1/ReadVariableOprnn_1/ReadVariableOp_1rnn_1/ReadVariableOp_2rnn_1/ReadVariableOp_3rnn_1/ReadVariableOp_4rnn_1/ReadVariableOp_5rnn_1/Minimum-rnn_1/TensorArrayUnstack/TensorListFromTensor8rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Read/Identity6rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Read/Identity8rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Read/Identity6rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Read/Identity8rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Read/Identity6rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Read/Identity4gradients/rnn_1/while_grad/Placeholder_0/accumulatorOgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/dropout/Cast_0/accumulatorNgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/dropout/Mul_0/accumulatorOgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/dropout/Cast_0/accumulatorNgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/dropout/Mul_0/accumulatorOgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/dropout/Cast_0/accumulatorNgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/dropout/Mul_0/accumulatorQgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/dropout_1/Cast_0/accumulatorPgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_0/accumulatorRgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_0/accumulatorRgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_0/accumulatorRgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_0/accumulatorSgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_1_0/accumulatorVgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_2_0/accumulator6gradients/rnn_1/while_grad/Placeholder_6_0/accumulatorTgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_0/accumulatorQgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_0/accumulatorVgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_1_0/accumulatorSgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_0/accumulatorQgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/dropout_1/Cast_0/accumulatorPgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_0/accumulatorSgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1_0/accumulatorVgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2_0/accumulator6gradients/rnn_1/while_grad/Placeholder_4_0/accumulatorTgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_0/accumulatorQgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_0/accumulatorVgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1_0/accumulatorSgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_0/accumulatorQgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/dropout_1/Cast_0/accumulatorPgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_0/accumulatorSgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1_0/accumulatorVgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2_0/accumulator6gradients/rnn_1/while_grad/Placeholder_2_0/accumulatorTgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_0/accumulatorQgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_0/accumulatorVgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1_0/accumulatorSgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_0/accumulator*@
T;
927*
_lower_using_switch_merge(*
_num_original_outputs7*�
_output_shapes�
�: : : : :	�:	�:	�:	�:	�:	�: : :
��:�:
��:�:
��:�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : * 
_read_only_resource_inputs
 *+
body#R!
rnn_1_while_body_1699_rewritten*+
cond#R!
rnn_1_while_cond_1698_rewritten*�
output_shapes�
�: : : : :	�:	�:	�:	�:	�:	�: : :
��:�:
��:�:
��:�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : *
parallel_iterations 
N
rnn_1/while/IdentityIdentityrnn_1/while*
T0*
_output_shapes
: 
R
rnn_1/while/Identity_1Identityrnn_1/while:1*
T0*
_output_shapes
: 
R
rnn_1/while/Identity_2Identityrnn_1/while:2*
T0*
_output_shapes
: 
R
rnn_1/while/Identity_3Identityrnn_1/while:3*
T0*
_output_shapes
: 
[
rnn_1/while/Identity_4Identityrnn_1/while:4*
T0*
_output_shapes
:	�
[
rnn_1/while/Identity_5Identityrnn_1/while:5*
T0*
_output_shapes
:	�
[
rnn_1/while/Identity_6Identityrnn_1/while:6*
T0*
_output_shapes
:	�
[
rnn_1/while/Identity_7Identityrnn_1/while:7*
T0*
_output_shapes
:	�
[
rnn_1/while/Identity_8Identityrnn_1/while:8*
T0*
_output_shapes
:	�
[
rnn_1/while/Identity_9Identityrnn_1/while:9*
T0*
_output_shapes
:	�
T
rnn_1/while/Identity_10Identityrnn_1/while:10*
T0*
_output_shapes
: 
T
rnn_1/while/Identity_11Identityrnn_1/while:11*
T0*
_output_shapes
: 
^
rnn_1/while/Identity_12Identityrnn_1/while:12*
T0* 
_output_shapes
:
��
Y
rnn_1/while/Identity_13Identityrnn_1/while:13*
T0*
_output_shapes	
:�
^
rnn_1/while/Identity_14Identityrnn_1/while:14*
T0* 
_output_shapes
:
��
Y
rnn_1/while/Identity_15Identityrnn_1/while:15*
T0*
_output_shapes	
:�
^
rnn_1/while/Identity_16Identityrnn_1/while:16*
T0* 
_output_shapes
:
��
Y
rnn_1/while/Identity_17Identityrnn_1/while:17*
T0*
_output_shapes	
:�
�
6rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
(rnn_1/TensorArrayV2Stack/TensorListStackTensorListStackrnn_1/while/Identity_36rnn_1/TensorArrayV2Stack/TensorListStack/element_shape*#
_output_shapes
:�*
element_dtype0*
num_elements���������
^
rnn_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB"      
X
rnn_1/Const_3Const*
_output_shapes
:*
dtype0*
valueB:�
`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"
   �   
�
	Reshape_1Reshape(rnn_1/TensorArrayV2Stack/TensorListStackReshape_1/shape*
T0*
Tshape0*
_output_shapes
:	
�
]
xw_plus_b_1/ReadVariableOpReadVariableOpw*
_output_shapes
:	�*
dtype0
Z
xw_plus_b_1/ReadVariableOp_1ReadVariableOpb*
_output_shapes
:*
dtype0
�
xw_plus_b_1/MatMulMatMul	Reshape_1xw_plus_b_1/ReadVariableOp*
T0*
_output_shapes

:
*
transpose_a( *
transpose_b( 
�
xw_plus_b_1BiasAddxw_plus_b_1/MatMulxw_plus_b_1/ReadVariableOp_1*
T0*
_output_shapes

:
*
data_formatNHWC
I
Const_1Const*
_output_shapes
: *
dtype0*
value	B :
S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
split_1Splitsplit_1/split_dimxw_plus_b_1*
T0*F
_output_shapes4
2:::::*
	num_split
U
AssignVariableOpAssignVariableOp
Variable_6rnn_1/while/Identity_4*
dtype0
m
ReadVariableOpReadVariableOp
Variable_6^AssignVariableOp*
_output_shapes
:	�*
dtype0
W
AssignVariableOp_1AssignVariableOp
Variable_8rnn_1/while/Identity_6*
dtype0
q
ReadVariableOp_1ReadVariableOp
Variable_8^AssignVariableOp_1*
_output_shapes
:	�*
dtype0
X
AssignVariableOp_2AssignVariableOpVariable_10rnn_1/while/Identity_8*
dtype0
r
ReadVariableOp_2ReadVariableOpVariable_10^AssignVariableOp_2*
_output_shapes
:	�*
dtype0
W
AssignVariableOp_3AssignVariableOp
Variable_7rnn_1/while/Identity_5*
dtype0
q
ReadVariableOp_3ReadVariableOp
Variable_7^AssignVariableOp_3*
_output_shapes
:	�*
dtype0
W
AssignVariableOp_4AssignVariableOp
Variable_9rnn_1/while/Identity_7*
dtype0
q
ReadVariableOp_4ReadVariableOp
Variable_9^AssignVariableOp_4*
_output_shapes
:	�*
dtype0
X
AssignVariableOp_5AssignVariableOpVariable_11rnn_1/while/Identity_9*
dtype0
r
ReadVariableOp_5ReadVariableOpVariable_11^AssignVariableOp_5*
_output_shapes
:	�*
dtype0
�
subSubsplit_1train_outputs_0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
T0*
_output_shapes

:
�
pow/yConst^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
_output_shapes
: *
dtype0*
valueB
 *   @
?
powPowsubpow/y*
T0*
_output_shapes

:
�
mul/xConst^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
_output_shapes
: *
dtype0*
valueB
 *   ?
?
mulMulmul/xpow*
T0*
_output_shapes

:
�
Const_2Const^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
_output_shapes
:*
dtype0*
valueB"       
X
MeanMeanmulConst_2*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
add/xConst^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
_output_shapes
: *
dtype0*
valueB
 *    
:
addAddV2add/xMean*
T0*
_output_shapes
: 
�
sub_1Sub	split_1:1train_outputs_1^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
T0*
_output_shapes

:
�
pow_1/yConst^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
_output_shapes
: *
dtype0*
valueB
 *   @
E
pow_1Powsub_1pow_1/y*
T0*
_output_shapes

:
�
mul_1/xConst^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
_output_shapes
: *
dtype0*
valueB
 *   ?
E
mul_1Mulmul_1/xpow_1*
T0*
_output_shapes

:
�
Const_3Const^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
_output_shapes
:*
dtype0*
valueB"       
\
Mean_1Meanmul_1Const_3*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
<
add_1AddV2addMean_1*
T0*
_output_shapes
: 
�
sub_2Sub	split_1:2train_outputs_2^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
T0*
_output_shapes

:
�
pow_2/yConst^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
_output_shapes
: *
dtype0*
valueB
 *   @
E
pow_2Powsub_2pow_2/y*
T0*
_output_shapes

:
�
mul_2/xConst^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
_output_shapes
: *
dtype0*
valueB
 *   ?
E
mul_2Mulmul_2/xpow_2*
T0*
_output_shapes

:
�
Const_4Const^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
_output_shapes
:*
dtype0*
valueB"       
\
Mean_2Meanmul_2Const_4*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
>
add_2AddV2add_1Mean_2*
T0*
_output_shapes
: 
�
sub_3Sub	split_1:3train_outputs_3^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
T0*
_output_shapes

:
�
pow_3/yConst^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
_output_shapes
: *
dtype0*
valueB
 *   @
E
pow_3Powsub_3pow_3/y*
T0*
_output_shapes

:
�
mul_3/xConst^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
_output_shapes
: *
dtype0*
valueB
 *   ?
E
mul_3Mulmul_3/xpow_3*
T0*
_output_shapes

:
�
Const_5Const^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
_output_shapes
:*
dtype0*
valueB"       
\
Mean_3Meanmul_3Const_5*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
>
add_3AddV2add_2Mean_3*
T0*
_output_shapes
: 
�
sub_4Sub	split_1:4train_outputs_4^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
T0*
_output_shapes

:
�
pow_4/yConst^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
_output_shapes
: *
dtype0*
valueB
 *   @
E
pow_4Powsub_4pow_4/y*
T0*
_output_shapes

:
�
mul_4/xConst^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
_output_shapes
: *
dtype0*
valueB
 *   ?
E
mul_4Mulmul_4/xpow_4*
T0*
_output_shapes

:
�
Const_6Const^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
_output_shapes
:*
dtype0*
valueB"       
\
Mean_4Meanmul_4Const_6*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
>
add_4AddV2add_3Mean_4*
T0*
_output_shapes
: 
�
%Variable_12/Initializer/initial_valueConst*
_class
loc:@Variable_12*
_output_shapes
: *
dtype0*
value	B : 
�
Variable_12VarHandleOp*
_class
loc:@Variable_12*
_output_shapes
: *
	container *
dtype0*
shape: *
shared_nameVariable_12
g
,Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_12*
_output_shapes
: 
g
Variable_12/AssignAssignVariableOpVariable_12%Variable_12/Initializer/initial_value*
dtype0
c
Variable_12/Read/ReadVariableOpReadVariableOpVariable_12*
_output_shapes
: *
dtype0
T
ReadVariableOp_6ReadVariableOpVariable_12*
_output_shapes
: *
dtype0
I
add_5/yConst*
_output_shapes
: *
dtype0*
value	B :
J
add_5AddV2ReadVariableOp_6add_5/y*
T0*
_output_shapes
: 
G
AssignVariableOp_6AssignVariableOpVariable_12add_5*
dtype0
i
ReadVariableOp_7ReadVariableOpVariable_12^AssignVariableOp_6*
_output_shapes
: *
dtype0
P
PlaceholderPlaceholder*
_output_shapes
:*
dtype0*
shape:
R
Placeholder_1Placeholder*
_output_shapes
:*
dtype0*
shape:
Y
ExponentialDecay/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
v
ExponentialDecay/CastCastExponentialDecay/Cast/x*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
^
ExponentialDecay/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
j
&ExponentialDecay/Cast_2/ReadVariableOpReadVariableOpVariable_12*
_output_shapes
: *
dtype0
�
ExponentialDecay/Cast_2Cast&ExponentialDecay/Cast_2/ReadVariableOp*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
t
ExponentialDecay/truedivRealDivExponentialDecay/Cast_2ExponentialDecay/Cast*
T0*
_output_shapes
: 
Z
ExponentialDecay/FloorFloorExponentialDecay/truediv*
T0*
_output_shapes
: 
o
ExponentialDecay/PowPowExponentialDecay/Cast_1/xExponentialDecay/Floor*
T0*
_output_shapes
: 
]
ExponentialDecayMulPlaceholderExponentialDecay/Pow*
T0*
_output_shapes
:
V
MaximumMaximumExponentialDecayPlaceholder_1*
T0*
_output_shapes
:
R
gradients/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
X
gradients/grad_ys_0Const*
_output_shapes
: *
dtype0*
valueB
 *  �?
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*
_output_shapes
: *

index_type0
>
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/Fill
�
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/Fill&^gradients/add_4_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
�
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/Fill&^gradients/add_4_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
]
%gradients/add_3_grad/tuple/group_depsNoOp.^gradients/add_4_grad/tuple/control_dependency
�
-gradients/add_3_grad/tuple/control_dependencyIdentity-gradients/add_4_grad/tuple/control_dependency&^gradients/add_3_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
�
/gradients/add_3_grad/tuple/control_dependency_1Identity-gradients/add_4_grad/tuple/control_dependency&^gradients/add_3_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
t
#gradients/Mean_4_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
�
gradients/Mean_4_grad/ReshapeReshape/gradients/add_4_grad/tuple/control_dependency_1#gradients/Mean_4_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
l
gradients/Mean_4_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
�
gradients/Mean_4_grad/TileTilegradients/Mean_4_grad/Reshapegradients/Mean_4_grad/Const*
T0*

Tmultiples0*
_output_shapes

:
b
gradients/Mean_4_grad/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   @
�
gradients/Mean_4_grad/truedivRealDivgradients/Mean_4_grad/Tilegradients/Mean_4_grad/Const_1*
T0*
_output_shapes

:
]
%gradients/add_2_grad/tuple/group_depsNoOp.^gradients/add_3_grad/tuple/control_dependency
�
-gradients/add_2_grad/tuple/control_dependencyIdentity-gradients/add_3_grad/tuple/control_dependency&^gradients/add_2_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
�
/gradients/add_2_grad/tuple/control_dependency_1Identity-gradients/add_3_grad/tuple/control_dependency&^gradients/add_2_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
t
#gradients/Mean_3_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
�
gradients/Mean_3_grad/ReshapeReshape/gradients/add_3_grad/tuple/control_dependency_1#gradients/Mean_3_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
l
gradients/Mean_3_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
�
gradients/Mean_3_grad/TileTilegradients/Mean_3_grad/Reshapegradients/Mean_3_grad/Const*
T0*

Tmultiples0*
_output_shapes

:
b
gradients/Mean_3_grad/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   @
�
gradients/Mean_3_grad/truedivRealDivgradients/Mean_3_grad/Tilegradients/Mean_3_grad/Const_1*
T0*
_output_shapes

:
p
-gradients/mul_4_grad/BroadcastGradientArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 
~
-gradients/mul_4_grad/BroadcastGradientArgs/s1Const*
_output_shapes
:*
dtype0*
valueB"      
�
*gradients/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/mul_4_grad/BroadcastGradientArgs/s0-gradients/mul_4_grad/BroadcastGradientArgs/s1*
T0*2
_output_shapes 
:���������:���������
n
gradients/mul_4_grad/MulMulgradients/Mean_4_grad/truedivpow_4*
T0*
_output_shapes

:
{
*gradients/mul_4_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
�
gradients/mul_4_grad/SumSumgradients/mul_4_grad/Mul*gradients/mul_4_grad/Sum/reduction_indices*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
e
"gradients/mul_4_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 
�
gradients/mul_4_grad/ReshapeReshapegradients/mul_4_grad/Sum"gradients/mul_4_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
r
gradients/mul_4_grad/Mul_1Mulmul_4/xgradients/Mean_4_grad/truediv*
T0*
_output_shapes

:
i
%gradients/mul_4_grad/tuple/group_depsNoOp^gradients/mul_4_grad/Mul_1^gradients/mul_4_grad/Reshape
�
-gradients/mul_4_grad/tuple/control_dependencyIdentitygradients/mul_4_grad/Reshape&^gradients/mul_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_4_grad/Reshape*
_output_shapes
: 
�
/gradients/mul_4_grad/tuple/control_dependency_1Identitygradients/mul_4_grad/Mul_1&^gradients/mul_4_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_4_grad/Mul_1*
_output_shapes

:
]
%gradients/add_1_grad/tuple/group_depsNoOp.^gradients/add_2_grad/tuple/control_dependency
�
-gradients/add_1_grad/tuple/control_dependencyIdentity-gradients/add_2_grad/tuple/control_dependency&^gradients/add_1_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
�
/gradients/add_1_grad/tuple/control_dependency_1Identity-gradients/add_2_grad/tuple/control_dependency&^gradients/add_1_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
t
#gradients/Mean_2_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
�
gradients/Mean_2_grad/ReshapeReshape/gradients/add_2_grad/tuple/control_dependency_1#gradients/Mean_2_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
l
gradients/Mean_2_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
�
gradients/Mean_2_grad/TileTilegradients/Mean_2_grad/Reshapegradients/Mean_2_grad/Const*
T0*

Tmultiples0*
_output_shapes

:
b
gradients/Mean_2_grad/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   @
�
gradients/Mean_2_grad/truedivRealDivgradients/Mean_2_grad/Tilegradients/Mean_2_grad/Const_1*
T0*
_output_shapes

:
n
gradients/mul_3_grad/MulMulgradients/Mean_3_grad/truedivpow_3*
T0*
_output_shapes

:
{
*gradients/mul_3_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
�
gradients/mul_3_grad/SumSumgradients/mul_3_grad/Mul*gradients/mul_3_grad/Sum/reduction_indices*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
e
"gradients/mul_3_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 
�
gradients/mul_3_grad/ReshapeReshapegradients/mul_3_grad/Sum"gradients/mul_3_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
r
gradients/mul_3_grad/Mul_1Mulmul_3/xgradients/Mean_3_grad/truediv*
T0*
_output_shapes

:
i
%gradients/mul_3_grad/tuple/group_depsNoOp^gradients/mul_3_grad/Mul_1^gradients/mul_3_grad/Reshape
�
-gradients/mul_3_grad/tuple/control_dependencyIdentitygradients/mul_3_grad/Reshape&^gradients/mul_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_3_grad/Reshape*
_output_shapes
: 
�
/gradients/mul_3_grad/tuple/control_dependency_1Identitygradients/mul_3_grad/Mul_1&^gradients/mul_3_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_3_grad/Mul_1*
_output_shapes

:
~
-gradients/pow_4_grad/BroadcastGradientArgs/s0Const*
_output_shapes
:*
dtype0*
valueB"      
p
-gradients/pow_4_grad/BroadcastGradientArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 
�
*gradients/pow_4_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/pow_4_grad/BroadcastGradientArgs/s0-gradients/pow_4_grad/BroadcastGradientArgs/s1*
T0*2
_output_shapes 
:���������:���������
�
gradients/pow_4_grad/mulMul/gradients/mul_4_grad/tuple/control_dependency_1pow_4/y*
T0*
_output_shapes

:
_
gradients/pow_4_grad/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
e
gradients/pow_4_grad/subSubpow_4/ygradients/pow_4_grad/sub/y*
T0*
_output_shapes
: 
i
gradients/pow_4_grad/PowPowsub_4gradients/pow_4_grad/sub*
T0*
_output_shapes

:
~
gradients/pow_4_grad/mul_1Mulgradients/pow_4_grad/mulgradients/pow_4_grad/Pow*
T0*
_output_shapes

:
c
gradients/pow_4_grad/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
w
gradients/pow_4_grad/GreaterGreatersub_4gradients/pow_4_grad/Greater/y*
T0*
_output_shapes

:
u
$gradients/pow_4_grad/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      
i
$gradients/pow_4_grad/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
gradients/pow_4_grad/ones_likeFill$gradients/pow_4_grad/ones_like/Shape$gradients/pow_4_grad/ones_like/Const*
T0*
_output_shapes

:*

index_type0
�
gradients/pow_4_grad/SelectSelectgradients/pow_4_grad/Greatersub_4gradients/pow_4_grad/ones_like*
T0*
_output_shapes

:
e
gradients/pow_4_grad/LogLoggradients/pow_4_grad/Select*
T0*
_output_shapes

:
t
gradients/pow_4_grad/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    
�
gradients/pow_4_grad/Select_1Selectgradients/pow_4_grad/Greatergradients/pow_4_grad/Loggradients/pow_4_grad/zeros_like*
T0*
_output_shapes

:
�
gradients/pow_4_grad/mul_2Mul/gradients/mul_4_grad/tuple/control_dependency_1pow_4*
T0*
_output_shapes

:
�
gradients/pow_4_grad/mul_3Mulgradients/pow_4_grad/mul_2gradients/pow_4_grad/Select_1*
T0*
_output_shapes

:
{
*gradients/pow_4_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
�
gradients/pow_4_grad/SumSumgradients/pow_4_grad/mul_3*gradients/pow_4_grad/Sum/reduction_indices*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
e
"gradients/pow_4_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 
�
gradients/pow_4_grad/ReshapeReshapegradients/pow_4_grad/Sum"gradients/pow_4_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
i
%gradients/pow_4_grad/tuple/group_depsNoOp^gradients/pow_4_grad/Reshape^gradients/pow_4_grad/mul_1
�
-gradients/pow_4_grad/tuple/control_dependencyIdentitygradients/pow_4_grad/mul_1&^gradients/pow_4_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/pow_4_grad/mul_1*
_output_shapes

:
�
/gradients/pow_4_grad/tuple/control_dependency_1Identitygradients/pow_4_grad/Reshape&^gradients/pow_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/pow_4_grad/Reshape*
_output_shapes
: 
[
#gradients/add_grad/tuple/group_depsNoOp.^gradients/add_1_grad/tuple/control_dependency
�
+gradients/add_grad/tuple/control_dependencyIdentity-gradients/add_1_grad/tuple/control_dependency$^gradients/add_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
�
-gradients/add_grad/tuple/control_dependency_1Identity-gradients/add_1_grad/tuple/control_dependency$^gradients/add_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
t
#gradients/Mean_1_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
�
gradients/Mean_1_grad/ReshapeReshape/gradients/add_1_grad/tuple/control_dependency_1#gradients/Mean_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
l
gradients/Mean_1_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
�
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Const*
T0*

Tmultiples0*
_output_shapes

:
b
gradients/Mean_1_grad/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   @
�
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Const_1*
T0*
_output_shapes

:
n
gradients/mul_2_grad/MulMulgradients/Mean_2_grad/truedivpow_2*
T0*
_output_shapes

:
{
*gradients/mul_2_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
�
gradients/mul_2_grad/SumSumgradients/mul_2_grad/Mul*gradients/mul_2_grad/Sum/reduction_indices*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
e
"gradients/mul_2_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 
�
gradients/mul_2_grad/ReshapeReshapegradients/mul_2_grad/Sum"gradients/mul_2_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
r
gradients/mul_2_grad/Mul_1Mulmul_2/xgradients/Mean_2_grad/truediv*
T0*
_output_shapes

:
i
%gradients/mul_2_grad/tuple/group_depsNoOp^gradients/mul_2_grad/Mul_1^gradients/mul_2_grad/Reshape
�
-gradients/mul_2_grad/tuple/control_dependencyIdentitygradients/mul_2_grad/Reshape&^gradients/mul_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_2_grad/Reshape*
_output_shapes
: 
�
/gradients/mul_2_grad/tuple/control_dependency_1Identitygradients/mul_2_grad/Mul_1&^gradients/mul_2_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_2_grad/Mul_1*
_output_shapes

:
�
gradients/pow_3_grad/mulMul/gradients/mul_3_grad/tuple/control_dependency_1pow_3/y*
T0*
_output_shapes

:
_
gradients/pow_3_grad/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
e
gradients/pow_3_grad/subSubpow_3/ygradients/pow_3_grad/sub/y*
T0*
_output_shapes
: 
i
gradients/pow_3_grad/PowPowsub_3gradients/pow_3_grad/sub*
T0*
_output_shapes

:
~
gradients/pow_3_grad/mul_1Mulgradients/pow_3_grad/mulgradients/pow_3_grad/Pow*
T0*
_output_shapes

:
c
gradients/pow_3_grad/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
w
gradients/pow_3_grad/GreaterGreatersub_3gradients/pow_3_grad/Greater/y*
T0*
_output_shapes

:
u
$gradients/pow_3_grad/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      
i
$gradients/pow_3_grad/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
gradients/pow_3_grad/ones_likeFill$gradients/pow_3_grad/ones_like/Shape$gradients/pow_3_grad/ones_like/Const*
T0*
_output_shapes

:*

index_type0
�
gradients/pow_3_grad/SelectSelectgradients/pow_3_grad/Greatersub_3gradients/pow_3_grad/ones_like*
T0*
_output_shapes

:
e
gradients/pow_3_grad/LogLoggradients/pow_3_grad/Select*
T0*
_output_shapes

:
t
gradients/pow_3_grad/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    
�
gradients/pow_3_grad/Select_1Selectgradients/pow_3_grad/Greatergradients/pow_3_grad/Loggradients/pow_3_grad/zeros_like*
T0*
_output_shapes

:
�
gradients/pow_3_grad/mul_2Mul/gradients/mul_3_grad/tuple/control_dependency_1pow_3*
T0*
_output_shapes

:
�
gradients/pow_3_grad/mul_3Mulgradients/pow_3_grad/mul_2gradients/pow_3_grad/Select_1*
T0*
_output_shapes

:
{
*gradients/pow_3_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
�
gradients/pow_3_grad/SumSumgradients/pow_3_grad/mul_3*gradients/pow_3_grad/Sum/reduction_indices*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
e
"gradients/pow_3_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 
�
gradients/pow_3_grad/ReshapeReshapegradients/pow_3_grad/Sum"gradients/pow_3_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
i
%gradients/pow_3_grad/tuple/group_depsNoOp^gradients/pow_3_grad/Reshape^gradients/pow_3_grad/mul_1
�
-gradients/pow_3_grad/tuple/control_dependencyIdentitygradients/pow_3_grad/mul_1&^gradients/pow_3_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/pow_3_grad/mul_1*
_output_shapes

:
�
/gradients/pow_3_grad/tuple/control_dependency_1Identitygradients/pow_3_grad/Reshape&^gradients/pow_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/pow_3_grad/Reshape*
_output_shapes
: 
w
gradients/sub_4_grad/NegNeg-gradients/pow_4_grad/tuple/control_dependency*
T0*
_output_shapes

:
x
%gradients/sub_4_grad/tuple/group_depsNoOp.^gradients/pow_4_grad/tuple/control_dependency^gradients/sub_4_grad/Neg
�
-gradients/sub_4_grad/tuple/control_dependencyIdentity-gradients/pow_4_grad/tuple/control_dependency&^gradients/sub_4_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/pow_4_grad/mul_1*
_output_shapes

:
�
/gradients/sub_4_grad/tuple/control_dependency_1Identitygradients/sub_4_grad/Neg&^gradients/sub_4_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/sub_4_grad/Neg*
_output_shapes

:
r
!gradients/Mean_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
�
gradients/Mean_grad/ReshapeReshape-gradients/add_grad/tuple/control_dependency_1!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
j
gradients/Mean_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB"      
�
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Const*
T0*

Tmultiples0*
_output_shapes

:
`
gradients/Mean_grad/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   @
�
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Const_1*
T0*
_output_shapes

:
n
gradients/mul_1_grad/MulMulgradients/Mean_1_grad/truedivpow_1*
T0*
_output_shapes

:
{
*gradients/mul_1_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
�
gradients/mul_1_grad/SumSumgradients/mul_1_grad/Mul*gradients/mul_1_grad/Sum/reduction_indices*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
e
"gradients/mul_1_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 
�
gradients/mul_1_grad/ReshapeReshapegradients/mul_1_grad/Sum"gradients/mul_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
r
gradients/mul_1_grad/Mul_1Mulmul_1/xgradients/Mean_1_grad/truediv*
T0*
_output_shapes

:
i
%gradients/mul_1_grad/tuple/group_depsNoOp^gradients/mul_1_grad/Mul_1^gradients/mul_1_grad/Reshape
�
-gradients/mul_1_grad/tuple/control_dependencyIdentitygradients/mul_1_grad/Reshape&^gradients/mul_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_1_grad/Reshape*
_output_shapes
: 
�
/gradients/mul_1_grad/tuple/control_dependency_1Identitygradients/mul_1_grad/Mul_1&^gradients/mul_1_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_1_grad/Mul_1*
_output_shapes

:
�
gradients/pow_2_grad/mulMul/gradients/mul_2_grad/tuple/control_dependency_1pow_2/y*
T0*
_output_shapes

:
_
gradients/pow_2_grad/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
e
gradients/pow_2_grad/subSubpow_2/ygradients/pow_2_grad/sub/y*
T0*
_output_shapes
: 
i
gradients/pow_2_grad/PowPowsub_2gradients/pow_2_grad/sub*
T0*
_output_shapes

:
~
gradients/pow_2_grad/mul_1Mulgradients/pow_2_grad/mulgradients/pow_2_grad/Pow*
T0*
_output_shapes

:
c
gradients/pow_2_grad/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
w
gradients/pow_2_grad/GreaterGreatersub_2gradients/pow_2_grad/Greater/y*
T0*
_output_shapes

:
u
$gradients/pow_2_grad/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      
i
$gradients/pow_2_grad/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
gradients/pow_2_grad/ones_likeFill$gradients/pow_2_grad/ones_like/Shape$gradients/pow_2_grad/ones_like/Const*
T0*
_output_shapes

:*

index_type0
�
gradients/pow_2_grad/SelectSelectgradients/pow_2_grad/Greatersub_2gradients/pow_2_grad/ones_like*
T0*
_output_shapes

:
e
gradients/pow_2_grad/LogLoggradients/pow_2_grad/Select*
T0*
_output_shapes

:
t
gradients/pow_2_grad/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    
�
gradients/pow_2_grad/Select_1Selectgradients/pow_2_grad/Greatergradients/pow_2_grad/Loggradients/pow_2_grad/zeros_like*
T0*
_output_shapes

:
�
gradients/pow_2_grad/mul_2Mul/gradients/mul_2_grad/tuple/control_dependency_1pow_2*
T0*
_output_shapes

:
�
gradients/pow_2_grad/mul_3Mulgradients/pow_2_grad/mul_2gradients/pow_2_grad/Select_1*
T0*
_output_shapes

:
{
*gradients/pow_2_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
�
gradients/pow_2_grad/SumSumgradients/pow_2_grad/mul_3*gradients/pow_2_grad/Sum/reduction_indices*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
e
"gradients/pow_2_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 
�
gradients/pow_2_grad/ReshapeReshapegradients/pow_2_grad/Sum"gradients/pow_2_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
i
%gradients/pow_2_grad/tuple/group_depsNoOp^gradients/pow_2_grad/Reshape^gradients/pow_2_grad/mul_1
�
-gradients/pow_2_grad/tuple/control_dependencyIdentitygradients/pow_2_grad/mul_1&^gradients/pow_2_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/pow_2_grad/mul_1*
_output_shapes

:
�
/gradients/pow_2_grad/tuple/control_dependency_1Identitygradients/pow_2_grad/Reshape&^gradients/pow_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/pow_2_grad/Reshape*
_output_shapes
: 
w
gradients/sub_3_grad/NegNeg-gradients/pow_3_grad/tuple/control_dependency*
T0*
_output_shapes

:
x
%gradients/sub_3_grad/tuple/group_depsNoOp.^gradients/pow_3_grad/tuple/control_dependency^gradients/sub_3_grad/Neg
�
-gradients/sub_3_grad/tuple/control_dependencyIdentity-gradients/pow_3_grad/tuple/control_dependency&^gradients/sub_3_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/pow_3_grad/mul_1*
_output_shapes

:
�
/gradients/sub_3_grad/tuple/control_dependency_1Identitygradients/sub_3_grad/Neg&^gradients/sub_3_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/sub_3_grad/Neg*
_output_shapes

:
h
gradients/mul_grad/MulMulgradients/Mean_grad/truedivpow*
T0*
_output_shapes

:
y
(gradients/mul_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
�
gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/Sum/reduction_indices*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
c
 gradients/mul_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 
�
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sum gradients/mul_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
l
gradients/mul_grad/Mul_1Mulmul/xgradients/Mean_grad/truediv*
T0*
_output_shapes

:
c
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Mul_1^gradients/mul_grad/Reshape
�
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape*
_output_shapes
: 
�
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Mul_1$^gradients/mul_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_grad/Mul_1*
_output_shapes

:
�
gradients/pow_1_grad/mulMul/gradients/mul_1_grad/tuple/control_dependency_1pow_1/y*
T0*
_output_shapes

:
_
gradients/pow_1_grad/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
e
gradients/pow_1_grad/subSubpow_1/ygradients/pow_1_grad/sub/y*
T0*
_output_shapes
: 
i
gradients/pow_1_grad/PowPowsub_1gradients/pow_1_grad/sub*
T0*
_output_shapes

:
~
gradients/pow_1_grad/mul_1Mulgradients/pow_1_grad/mulgradients/pow_1_grad/Pow*
T0*
_output_shapes

:
c
gradients/pow_1_grad/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
w
gradients/pow_1_grad/GreaterGreatersub_1gradients/pow_1_grad/Greater/y*
T0*
_output_shapes

:
u
$gradients/pow_1_grad/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      
i
$gradients/pow_1_grad/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
gradients/pow_1_grad/ones_likeFill$gradients/pow_1_grad/ones_like/Shape$gradients/pow_1_grad/ones_like/Const*
T0*
_output_shapes

:*

index_type0
�
gradients/pow_1_grad/SelectSelectgradients/pow_1_grad/Greatersub_1gradients/pow_1_grad/ones_like*
T0*
_output_shapes

:
e
gradients/pow_1_grad/LogLoggradients/pow_1_grad/Select*
T0*
_output_shapes

:
t
gradients/pow_1_grad/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    
�
gradients/pow_1_grad/Select_1Selectgradients/pow_1_grad/Greatergradients/pow_1_grad/Loggradients/pow_1_grad/zeros_like*
T0*
_output_shapes

:
�
gradients/pow_1_grad/mul_2Mul/gradients/mul_1_grad/tuple/control_dependency_1pow_1*
T0*
_output_shapes

:
�
gradients/pow_1_grad/mul_3Mulgradients/pow_1_grad/mul_2gradients/pow_1_grad/Select_1*
T0*
_output_shapes

:
{
*gradients/pow_1_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
�
gradients/pow_1_grad/SumSumgradients/pow_1_grad/mul_3*gradients/pow_1_grad/Sum/reduction_indices*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
e
"gradients/pow_1_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 
�
gradients/pow_1_grad/ReshapeReshapegradients/pow_1_grad/Sum"gradients/pow_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
i
%gradients/pow_1_grad/tuple/group_depsNoOp^gradients/pow_1_grad/Reshape^gradients/pow_1_grad/mul_1
�
-gradients/pow_1_grad/tuple/control_dependencyIdentitygradients/pow_1_grad/mul_1&^gradients/pow_1_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/pow_1_grad/mul_1*
_output_shapes

:
�
/gradients/pow_1_grad/tuple/control_dependency_1Identitygradients/pow_1_grad/Reshape&^gradients/pow_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/pow_1_grad/Reshape*
_output_shapes
: 
w
gradients/sub_2_grad/NegNeg-gradients/pow_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
x
%gradients/sub_2_grad/tuple/group_depsNoOp.^gradients/pow_2_grad/tuple/control_dependency^gradients/sub_2_grad/Neg
�
-gradients/sub_2_grad/tuple/control_dependencyIdentity-gradients/pow_2_grad/tuple/control_dependency&^gradients/sub_2_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/pow_2_grad/mul_1*
_output_shapes

:
�
/gradients/sub_2_grad/tuple/control_dependency_1Identitygradients/sub_2_grad/Neg&^gradients/sub_2_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/sub_2_grad/Neg*
_output_shapes

:
|
gradients/pow_grad/mulMul-gradients/mul_grad/tuple/control_dependency_1pow/y*
T0*
_output_shapes

:
]
gradients/pow_grad/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
_
gradients/pow_grad/subSubpow/ygradients/pow_grad/sub/y*
T0*
_output_shapes
: 
c
gradients/pow_grad/PowPowsubgradients/pow_grad/sub*
T0*
_output_shapes

:
x
gradients/pow_grad/mul_1Mulgradients/pow_grad/mulgradients/pow_grad/Pow*
T0*
_output_shapes

:
a
gradients/pow_grad/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
q
gradients/pow_grad/GreaterGreatersubgradients/pow_grad/Greater/y*
T0*
_output_shapes

:
s
"gradients/pow_grad/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      
g
"gradients/pow_grad/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
gradients/pow_grad/ones_likeFill"gradients/pow_grad/ones_like/Shape"gradients/pow_grad/ones_like/Const*
T0*
_output_shapes

:*

index_type0
�
gradients/pow_grad/SelectSelectgradients/pow_grad/Greatersubgradients/pow_grad/ones_like*
T0*
_output_shapes

:
a
gradients/pow_grad/LogLoggradients/pow_grad/Select*
T0*
_output_shapes

:
r
gradients/pow_grad/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    
�
gradients/pow_grad/Select_1Selectgradients/pow_grad/Greatergradients/pow_grad/Loggradients/pow_grad/zeros_like*
T0*
_output_shapes

:
|
gradients/pow_grad/mul_2Mul-gradients/mul_grad/tuple/control_dependency_1pow*
T0*
_output_shapes

:

gradients/pow_grad/mul_3Mulgradients/pow_grad/mul_2gradients/pow_grad/Select_1*
T0*
_output_shapes

:
y
(gradients/pow_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
�
gradients/pow_grad/SumSumgradients/pow_grad/mul_3(gradients/pow_grad/Sum/reduction_indices*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
c
 gradients/pow_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 
�
gradients/pow_grad/ReshapeReshapegradients/pow_grad/Sum gradients/pow_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
c
#gradients/pow_grad/tuple/group_depsNoOp^gradients/pow_grad/Reshape^gradients/pow_grad/mul_1
�
+gradients/pow_grad/tuple/control_dependencyIdentitygradients/pow_grad/mul_1$^gradients/pow_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/pow_grad/mul_1*
_output_shapes

:
�
-gradients/pow_grad/tuple/control_dependency_1Identitygradients/pow_grad/Reshape$^gradients/pow_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/pow_grad/Reshape*
_output_shapes
: 
w
gradients/sub_1_grad/NegNeg-gradients/pow_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
x
%gradients/sub_1_grad/tuple/group_depsNoOp.^gradients/pow_1_grad/tuple/control_dependency^gradients/sub_1_grad/Neg
�
-gradients/sub_1_grad/tuple/control_dependencyIdentity-gradients/pow_1_grad/tuple/control_dependency&^gradients/sub_1_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/pow_1_grad/mul_1*
_output_shapes

:
�
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Neg&^gradients/sub_1_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/sub_1_grad/Neg*
_output_shapes

:
s
gradients/sub_grad/NegNeg+gradients/pow_grad/tuple/control_dependency*
T0*
_output_shapes

:
r
#gradients/sub_grad/tuple/group_depsNoOp,^gradients/pow_grad/tuple/control_dependency^gradients/sub_grad/Neg
�
+gradients/sub_grad/tuple/control_dependencyIdentity+gradients/pow_grad/tuple/control_dependency$^gradients/sub_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/pow_grad/mul_1*
_output_shapes

:
�
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Neg$^gradients/sub_grad/tuple/group_deps*
T0*)
_class
loc:@gradients/sub_grad/Neg*
_output_shapes

:
�
gradients/split_1_grad/concatConcatV2+gradients/sub_grad/tuple/control_dependency-gradients/sub_1_grad/tuple/control_dependency-gradients/sub_2_grad/tuple/control_dependency-gradients/sub_3_grad/tuple/control_dependency-gradients/sub_4_grad/tuple/control_dependencysplit_1/split_dim*
N*
T0*

Tidx0*
_output_shapes

:

�
&gradients/xw_plus_b_1_grad/BiasAddGradBiasAddGradgradients/split_1_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
|
+gradients/xw_plus_b_1_grad/tuple/group_depsNoOp^gradients/split_1_grad/concat'^gradients/xw_plus_b_1_grad/BiasAddGrad
�
3gradients/xw_plus_b_1_grad/tuple/control_dependencyIdentitygradients/split_1_grad/concat,^gradients/xw_plus_b_1_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/split_1_grad/concat*
_output_shapes

:

�
5gradients/xw_plus_b_1_grad/tuple/control_dependency_1Identity&gradients/xw_plus_b_1_grad/BiasAddGrad,^gradients/xw_plus_b_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/xw_plus_b_1_grad/BiasAddGrad*
_output_shapes
:
�
(gradients/xw_plus_b_1/MatMul_grad/MatMulMatMul3gradients/xw_plus_b_1_grad/tuple/control_dependencyxw_plus_b_1/ReadVariableOp*
T0*
_output_shapes
:	
�*
transpose_a( *
transpose_b(
�
*gradients/xw_plus_b_1/MatMul_grad/MatMul_1MatMul	Reshape_13gradients/xw_plus_b_1_grad/tuple/control_dependency*
T0*
_output_shapes
:	�*
transpose_a(*
transpose_b( 
�
2gradients/xw_plus_b_1/MatMul_grad/tuple/group_depsNoOp)^gradients/xw_plus_b_1/MatMul_grad/MatMul+^gradients/xw_plus_b_1/MatMul_grad/MatMul_1
�
:gradients/xw_plus_b_1/MatMul_grad/tuple/control_dependencyIdentity(gradients/xw_plus_b_1/MatMul_grad/MatMul3^gradients/xw_plus_b_1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/xw_plus_b_1/MatMul_grad/MatMul*
_output_shapes
:	
�
�
<gradients/xw_plus_b_1/MatMul_grad/tuple/control_dependency_1Identity*gradients/xw_plus_b_1/MatMul_grad/MatMul_13^gradients/xw_plus_b_1/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/xw_plus_b_1/MatMul_grad/MatMul_1*
_output_shapes
:	�
s
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      �   
�
 gradients/Reshape_1_grad/ReshapeReshape:gradients/xw_plus_b_1/MatMul_grad/tuple/control_dependencygradients/Reshape_1_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
Zgradients/rnn_1/TensorArrayV2Stack/TensorListStack_grad/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Lgradients/rnn_1/TensorArrayV2Stack/TensorListStack_grad/TensorListFromTensorTensorListFromTensor gradients/Reshape_1_grad/ReshapeZgradients/rnn_1/TensorArrayV2Stack/TensorListStack_grad/TensorListFromTensor/element_shape*
_output_shapes
: *
element_dtype0*

shape_type0
Z
gradients/zeros_like	ZerosLikernn_1/while:4*
T0*
_output_shapes
:	�
\
gradients/zeros_like_1	ZerosLikernn_1/while:5*
T0*
_output_shapes
:	�
\
gradients/zeros_like_2	ZerosLikernn_1/while:6*
T0*
_output_shapes
:	�
\
gradients/zeros_like_3	ZerosLikernn_1/while:7*
T0*
_output_shapes
:	�
\
gradients/zeros_like_4	ZerosLikernn_1/while:8*
T0*
_output_shapes
:	�
\
gradients/zeros_like_5	ZerosLikernn_1/while:9*
T0*
_output_shapes
:	�
T
gradients/zeros_like_6	ZerosLikernn_1/while:11*
T0*
_output_shapes
: 
^
gradients/zeros_like_7	ZerosLikernn_1/while:12*
T0* 
_output_shapes
:
��
Y
gradients/zeros_like_8	ZerosLikernn_1/while:13*
T0*
_output_shapes	
:�
^
gradients/zeros_like_9	ZerosLikernn_1/while:14*
T0* 
_output_shapes
:
��
Z
gradients/zeros_like_10	ZerosLikernn_1/while:15*
T0*
_output_shapes	
:�
_
gradients/zeros_like_11	ZerosLikernn_1/while:16*
T0* 
_output_shapes
:
��
Z
gradients/zeros_like_12	ZerosLikernn_1/while:17*
T0*
_output_shapes	
:�
i
'gradients/rnn_1/while_grad/grad_counterConst*
_output_shapes
: *
dtype0*
value	B : 
c
 gradients/rnn_1/while_grad/ConstConst*
_output_shapes
: *
dtype0*
valueB 
�
4gradients/rnn_1/while_grad/Placeholder_0/accumulatorEmptyTensorList gradients/rnn_1/while_grad/Constrnn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
]gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/dropout/Cast_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Ogradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/dropout/Cast_0/accumulatorEmptyTensorList]gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/dropout/Cast_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
\gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/dropout/Mul_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Ngradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/dropout/Mul_0/accumulatorEmptyTensorList\gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/dropout/Mul_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
]gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/dropout/Cast_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Ogradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/dropout/Cast_0/accumulatorEmptyTensorList]gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/dropout/Cast_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
\gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/dropout/Mul_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Ngradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/dropout/Mul_0/accumulatorEmptyTensorList\gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/dropout/Mul_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
]gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/dropout/Cast_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Ogradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/dropout/Cast_0/accumulatorEmptyTensorList]gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/dropout/Cast_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
\gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/dropout/Mul_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Ngradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/dropout/Mul_0/accumulatorEmptyTensorList\gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/dropout/Mul_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
_gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/dropout_1/Cast_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Qgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/dropout_1/Cast_0/accumulatorEmptyTensorList_gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/dropout_1/Cast_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
^gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Pgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_0/accumulatorEmptyTensorList^gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
`gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Rgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_0/accumulatorEmptyTensorList`gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
`gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Rgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_0/accumulatorEmptyTensorList`gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
`gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Rgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_0/accumulatorEmptyTensorList`gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
agradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_1_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Sgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_1_0/accumulatorEmptyTensorListagradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_1_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
dgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_2_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Vgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_2_0/accumulatorEmptyTensorListdgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_2_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
Dgradients/rnn_1/while_grad/Placeholder_6_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
6gradients/rnn_1/while_grad/Placeholder_6_0/accumulatorEmptyTensorListDgradients/rnn_1/while_grad/Placeholder_6_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
bgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Tgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_0/accumulatorEmptyTensorListbgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
_gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Qgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_0/accumulatorEmptyTensorList_gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
dgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_1_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Vgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_1_0/accumulatorEmptyTensorListdgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_1_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
agradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   ^  
�
Sgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_0/accumulatorEmptyTensorListagradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
_gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/dropout_1/Cast_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Qgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/dropout_1/Cast_0/accumulatorEmptyTensorList_gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/dropout_1/Cast_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
^gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Pgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_0/accumulatorEmptyTensorList^gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
agradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Sgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1_0/accumulatorEmptyTensorListagradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
dgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Vgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2_0/accumulatorEmptyTensorListdgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
Dgradients/rnn_1/while_grad/Placeholder_4_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
6gradients/rnn_1/while_grad/Placeholder_4_0/accumulatorEmptyTensorListDgradients/rnn_1/while_grad/Placeholder_4_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
bgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Tgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_0/accumulatorEmptyTensorListbgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
_gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Qgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_0/accumulatorEmptyTensorList_gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
dgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Vgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1_0/accumulatorEmptyTensorListdgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
agradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �  
�
Sgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_0/accumulatorEmptyTensorListagradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
_gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/dropout_1/Cast_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Qgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/dropout_1/Cast_0/accumulatorEmptyTensorList_gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/dropout_1/Cast_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
^gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Pgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_0/accumulatorEmptyTensorList^gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
agradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Sgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1_0/accumulatorEmptyTensorListagradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
dgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Vgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2_0/accumulatorEmptyTensorListdgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
Dgradients/rnn_1/while_grad/Placeholder_2_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
6gradients/rnn_1/while_grad/Placeholder_2_0/accumulatorEmptyTensorListDgradients/rnn_1/while_grad/Placeholder_2_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
bgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Tgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_0/accumulatorEmptyTensorListbgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
_gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Qgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_0/accumulatorEmptyTensorList_gradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
dgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Vgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1_0/accumulatorEmptyTensorListdgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
agradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
Sgradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_0/accumulatorEmptyTensorListagradients/rnn_1/while_grad/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_0/accumulator/element_shapernn_1/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
+gradients/rnn_1/while_grad/rnn_1/while_gradStatelessWhile'gradients/rnn_1/while_grad/grad_counterrnn_1/strided_slicernn_1/whileLgradients/rnn_1/TensorArrayV2Stack/TensorListStack_grad/TensorListFromTensorgradients/zeros_likegradients/zeros_like_1gradients/zeros_like_2gradients/zeros_like_3gradients/zeros_like_4gradients/zeros_like_5gradients/zeros_like_6gradients/zeros_like_7gradients/zeros_like_8gradients/zeros_like_9gradients/zeros_like_10gradients/zeros_like_11gradients/zeros_like_12rnn_1/while:18rnn_1/while:19rnn_1/while:20rnn_1/while:21rnn_1/while:22rnn_1/while:23rnn_1/while:24rnn_1/while:25rnn_1/while:26rnn_1/while:27rnn_1/while:28rnn_1/while:29rnn_1/while:30rnn_1/while:31rnn_1/while:32rnn_1/while:33rnn_1/while:34rnn_1/while:35rnn_1/while:16rnn_1/while:36rnn_1/while:37rnn_1/while:38rnn_1/while:39rnn_1/while:40rnn_1/while:41rnn_1/while:42rnn_1/while:43rnn_1/while:44rnn_1/while:14rnn_1/while:45rnn_1/while:46rnn_1/while:47rnn_1/while:48rnn_1/while:49rnn_1/while:50rnn_1/while:51rnn_1/while:52rnn_1/while:53rnn_1/while:12rnn_1/while:54rnn_1/while:11*C
T>
<2:*
_lower_using_switch_merge(*�
_output_shapes�
�: : : : :	�:	�:	�:	�:	�:	�: :
��:�:
��:�:
��:�: : : : : : : : : : : : : : : : : : :
��: : : : : : : : : :
��: : : : : : : : : :
��: : * 
_read_only_resource_inputs
 *+
body#R!
rnn_1_while_body_1699_grad_2221*5
cond-R+
)rnn_1_while_cond_1698_rewritten_grad_2818*�
output_shapes�
�: : : : :	�:	�:	�:	�:	�:	�: :
��:�:
��:�:
��:�: : : : : : : : : : : : : : : : : : :
��: : : : : : : : : :
��: : : : : : : : : :
��: : *
parallel_iterations 
}
#gradients/rnn_1/while_grad/IdentityIdentity+gradients/rnn_1/while_grad/rnn_1/while_grad*
T0*
_output_shapes
: 
�
%gradients/rnn_1/while_grad/Identity_1Identity-gradients/rnn_1/while_grad/rnn_1/while_grad:1*
T0*
_output_shapes
: 
�
%gradients/rnn_1/while_grad/Identity_2Identity-gradients/rnn_1/while_grad/rnn_1/while_grad:2*
T0*
_output_shapes
: 
�
%gradients/rnn_1/while_grad/Identity_3Identity-gradients/rnn_1/while_grad/rnn_1/while_grad:3*
T0*
_output_shapes
: 
�
%gradients/rnn_1/while_grad/Identity_4Identity-gradients/rnn_1/while_grad/rnn_1/while_grad:4*
T0*
_output_shapes
:	�
�
%gradients/rnn_1/while_grad/Identity_5Identity-gradients/rnn_1/while_grad/rnn_1/while_grad:5*
T0*
_output_shapes
:	�
�
%gradients/rnn_1/while_grad/Identity_6Identity-gradients/rnn_1/while_grad/rnn_1/while_grad:6*
T0*
_output_shapes
:	�
�
%gradients/rnn_1/while_grad/Identity_7Identity-gradients/rnn_1/while_grad/rnn_1/while_grad:7*
T0*
_output_shapes
:	�
�
%gradients/rnn_1/while_grad/Identity_8Identity-gradients/rnn_1/while_grad/rnn_1/while_grad:8*
T0*
_output_shapes
:	�
�
%gradients/rnn_1/while_grad/Identity_9Identity-gradients/rnn_1/while_grad/rnn_1/while_grad:9*
T0*
_output_shapes
:	�
�
&gradients/rnn_1/while_grad/Identity_10Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:10*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_11Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:11*
T0* 
_output_shapes
:
��
�
&gradients/rnn_1/while_grad/Identity_12Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:12*
T0*
_output_shapes	
:�
�
&gradients/rnn_1/while_grad/Identity_13Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:13*
T0* 
_output_shapes
:
��
�
&gradients/rnn_1/while_grad/Identity_14Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:14*
T0*
_output_shapes	
:�
�
&gradients/rnn_1/while_grad/Identity_15Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:15*
T0* 
_output_shapes
:
��
�
&gradients/rnn_1/while_grad/Identity_16Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:16*
T0*
_output_shapes	
:�
�
&gradients/rnn_1/while_grad/Identity_17Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:17*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_18Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:18*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_19Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:19*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_20Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:20*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_21Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:21*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_22Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:22*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_23Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:23*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_24Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:24*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_25Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:25*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_26Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:26*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_27Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:27*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_28Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:28*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_29Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:29*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_30Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:30*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_31Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:31*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_32Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:32*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_33Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:33*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_34Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:34*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_35Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:35*
T0* 
_output_shapes
:
��
�
&gradients/rnn_1/while_grad/Identity_36Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:36*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_37Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:37*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_38Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:38*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_39Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:39*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_40Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:40*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_41Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:41*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_42Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:42*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_43Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:43*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_44Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:44*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_45Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:45*
T0* 
_output_shapes
:
��
�
&gradients/rnn_1/while_grad/Identity_46Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:46*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_47Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:47*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_48Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:48*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_49Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:49*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_50Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:50*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_51Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:51*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_52Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:52*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_53Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:53*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_54Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:54*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_55Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:55*
T0* 
_output_shapes
:
��
�
&gradients/rnn_1/while_grad/Identity_56Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:56*
T0*
_output_shapes
: 
�
&gradients/rnn_1/while_grad/Identity_57Identity.gradients/rnn_1/while_grad/rnn_1/while_grad:57*
T0*
_output_shapes
: 
�
+gradients/rnn_1/while_grad/tuple/group_depsNoOp'^gradients/rnn_1/while_grad/Identity_10'^gradients/rnn_1/while_grad/Identity_11'^gradients/rnn_1/while_grad/Identity_12'^gradients/rnn_1/while_grad/Identity_13'^gradients/rnn_1/while_grad/Identity_14'^gradients/rnn_1/while_grad/Identity_15'^gradients/rnn_1/while_grad/Identity_16&^gradients/rnn_1/while_grad/Identity_3&^gradients/rnn_1/while_grad/Identity_4&^gradients/rnn_1/while_grad/Identity_5&^gradients/rnn_1/while_grad/Identity_6&^gradients/rnn_1/while_grad/Identity_7&^gradients/rnn_1/while_grad/Identity_8&^gradients/rnn_1/while_grad/Identity_9
�
3gradients/rnn_1/while_grad/tuple/control_dependencyIdentity%gradients/rnn_1/while_grad/Identity_3,^gradients/rnn_1/while_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/rnn_1/while_grad/Identity_3*
_output_shapes
: 
�
5gradients/rnn_1/while_grad/tuple/control_dependency_1Identity%gradients/rnn_1/while_grad/Identity_4,^gradients/rnn_1/while_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/rnn_1/while_grad/Identity_4*
_output_shapes
:	�
�
5gradients/rnn_1/while_grad/tuple/control_dependency_2Identity%gradients/rnn_1/while_grad/Identity_5,^gradients/rnn_1/while_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/rnn_1/while_grad/Identity_5*
_output_shapes
:	�
�
5gradients/rnn_1/while_grad/tuple/control_dependency_3Identity%gradients/rnn_1/while_grad/Identity_6,^gradients/rnn_1/while_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/rnn_1/while_grad/Identity_6*
_output_shapes
:	�
�
5gradients/rnn_1/while_grad/tuple/control_dependency_4Identity%gradients/rnn_1/while_grad/Identity_7,^gradients/rnn_1/while_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/rnn_1/while_grad/Identity_7*
_output_shapes
:	�
�
5gradients/rnn_1/while_grad/tuple/control_dependency_5Identity%gradients/rnn_1/while_grad/Identity_8,^gradients/rnn_1/while_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/rnn_1/while_grad/Identity_8*
_output_shapes
:	�
�
5gradients/rnn_1/while_grad/tuple/control_dependency_6Identity%gradients/rnn_1/while_grad/Identity_9,^gradients/rnn_1/while_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/rnn_1/while_grad/Identity_9*
_output_shapes
:	�
�
5gradients/rnn_1/while_grad/tuple/control_dependency_7Identity&gradients/rnn_1/while_grad/Identity_10,^gradients/rnn_1/while_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_10*
_output_shapes
: 
�
5gradients/rnn_1/while_grad/tuple/control_dependency_8Identity&gradients/rnn_1/while_grad/Identity_11,^gradients/rnn_1/while_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_11* 
_output_shapes
:
��
�
5gradients/rnn_1/while_grad/tuple/control_dependency_9Identity&gradients/rnn_1/while_grad/Identity_12,^gradients/rnn_1/while_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_12*
_output_shapes	
:�
�
6gradients/rnn_1/while_grad/tuple/control_dependency_10Identity&gradients/rnn_1/while_grad/Identity_13,^gradients/rnn_1/while_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_13* 
_output_shapes
:
��
�
6gradients/rnn_1/while_grad/tuple/control_dependency_11Identity&gradients/rnn_1/while_grad/Identity_14,^gradients/rnn_1/while_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_14*
_output_shapes	
:�
�
6gradients/rnn_1/while_grad/tuple/control_dependency_12Identity&gradients/rnn_1/while_grad/Identity_15,^gradients/rnn_1/while_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_15* 
_output_shapes
:
��
�
6gradients/rnn_1/while_grad/tuple/control_dependency_13Identity&gradients/rnn_1/while_grad/Identity_16,^gradients/rnn_1/while_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_16*
_output_shapes	
:�
�
global_norm/L2LossL2Loss<gradients/xw_plus_b_1/MatMul_grad/tuple/control_dependency_1*
T0*=
_class3
1/loc:@gradients/xw_plus_b_1/MatMul_grad/MatMul_1*
_output_shapes
: 
�
global_norm/L2Loss_1L2Loss5gradients/xw_plus_b_1_grad/tuple/control_dependency_1*
T0*9
_class/
-+loc:@gradients/xw_plus_b_1_grad/BiasAddGrad*
_output_shapes
: 
�
global_norm/L2Loss_2L2Loss5gradients/rnn_1/while_grad/tuple/control_dependency_8*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_11*
_output_shapes
: 
�
global_norm/L2Loss_3L2Loss5gradients/rnn_1/while_grad/tuple/control_dependency_9*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_12*
_output_shapes
: 
�
global_norm/L2Loss_4L2Loss6gradients/rnn_1/while_grad/tuple/control_dependency_10*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_13*
_output_shapes
: 
�
global_norm/L2Loss_5L2Loss6gradients/rnn_1/while_grad/tuple/control_dependency_11*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_14*
_output_shapes
: 
�
global_norm/L2Loss_6L2Loss6gradients/rnn_1/while_grad/tuple/control_dependency_12*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_15*
_output_shapes
: 
�
global_norm/L2Loss_7L2Loss6gradients/rnn_1/while_grad/tuple/control_dependency_13*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_16*
_output_shapes
: 
�
global_norm/stackPackglobal_norm/L2Lossglobal_norm/L2Loss_1global_norm/L2Loss_2global_norm/L2Loss_3global_norm/L2Loss_4global_norm/L2Loss_5global_norm/L2Loss_6global_norm/L2Loss_7*
N*
T0*
_output_shapes
:*

axis 
[
global_norm/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
z
global_norm/SumSumglobal_norm/stackglobal_norm/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
X
global_norm/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   @
]
global_norm/mulMulglobal_norm/Sumglobal_norm/Const_1*
T0*
_output_shapes
: 
Q
global_norm/global_normSqrtglobal_norm/mul*
T0*
_output_shapes
: 
b
clip_by_global_norm/truediv/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?

clip_by_global_norm/truedivRealDivclip_by_global_norm/truediv/xglobal_norm/global_norm*
T0*
_output_shapes
: 
^
clip_by_global_norm/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
d
clip_by_global_norm/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �@
�
clip_by_global_norm/truediv_1RealDivclip_by_global_norm/Constclip_by_global_norm/truediv_1/y*
T0*
_output_shapes
: 
�
clip_by_global_norm/MinimumMinimumclip_by_global_norm/truedivclip_by_global_norm/truediv_1*
T0*
_output_shapes
: 
^
clip_by_global_norm/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �@
w
clip_by_global_norm/mulMulclip_by_global_norm/mul/xclip_by_global_norm/Minimum*
T0*
_output_shapes
: 
b
clip_by_global_norm/IsFiniteIsFiniteglobal_norm/global_norm*
T0*
_output_shapes
: 
`
clip_by_global_norm/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �
�
clip_by_global_norm/SelectSelectclip_by_global_norm/IsFiniteclip_by_global_norm/mulclip_by_global_norm/Const_1*
T0*
_output_shapes
: 
�
clip_by_global_norm/mul_1Mul<gradients/xw_plus_b_1/MatMul_grad/tuple/control_dependency_1clip_by_global_norm/Select*
T0*=
_class3
1/loc:@gradients/xw_plus_b_1/MatMul_grad/MatMul_1*
_output_shapes
:	�
�
*clip_by_global_norm/clip_by_global_norm/_0Identityclip_by_global_norm/mul_1*
T0*=
_class3
1/loc:@gradients/xw_plus_b_1/MatMul_grad/MatMul_1*
_output_shapes
:	�
�
clip_by_global_norm/mul_2Mul5gradients/xw_plus_b_1_grad/tuple/control_dependency_1clip_by_global_norm/Select*
T0*9
_class/
-+loc:@gradients/xw_plus_b_1_grad/BiasAddGrad*
_output_shapes
:
�
*clip_by_global_norm/clip_by_global_norm/_1Identityclip_by_global_norm/mul_2*
T0*9
_class/
-+loc:@gradients/xw_plus_b_1_grad/BiasAddGrad*
_output_shapes
:
�
clip_by_global_norm/mul_3Mul5gradients/rnn_1/while_grad/tuple/control_dependency_8clip_by_global_norm/Select*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_11* 
_output_shapes
:
��
�
*clip_by_global_norm/clip_by_global_norm/_2Identityclip_by_global_norm/mul_3*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_11* 
_output_shapes
:
��
�
clip_by_global_norm/mul_4Mul5gradients/rnn_1/while_grad/tuple/control_dependency_9clip_by_global_norm/Select*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_12*
_output_shapes	
:�
�
*clip_by_global_norm/clip_by_global_norm/_3Identityclip_by_global_norm/mul_4*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_12*
_output_shapes	
:�
�
clip_by_global_norm/mul_5Mul6gradients/rnn_1/while_grad/tuple/control_dependency_10clip_by_global_norm/Select*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_13* 
_output_shapes
:
��
�
*clip_by_global_norm/clip_by_global_norm/_4Identityclip_by_global_norm/mul_5*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_13* 
_output_shapes
:
��
�
clip_by_global_norm/mul_6Mul6gradients/rnn_1/while_grad/tuple/control_dependency_11clip_by_global_norm/Select*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_14*
_output_shapes	
:�
�
*clip_by_global_norm/clip_by_global_norm/_5Identityclip_by_global_norm/mul_6*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_14*
_output_shapes	
:�
�
clip_by_global_norm/mul_7Mul6gradients/rnn_1/while_grad/tuple/control_dependency_12clip_by_global_norm/Select*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_15* 
_output_shapes
:
��
�
*clip_by_global_norm/clip_by_global_norm/_6Identityclip_by_global_norm/mul_7*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_15* 
_output_shapes
:
��
�
clip_by_global_norm/mul_8Mul6gradients/rnn_1/while_grad/tuple/control_dependency_13clip_by_global_norm/Select*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_16*
_output_shapes	
:�
�
*clip_by_global_norm/clip_by_global_norm/_7Identityclip_by_global_norm/mul_8*
T0*9
_class/
-+loc:@gradients/rnn_1/while_grad/Identity_16*
_output_shapes	
:�
�
%beta1_power/Initializer/initial_valueConst*
_class

loc:@b*
_output_shapes
: *
dtype0*
valueB
 *fff?
�
beta1_powerVarHandleOp*
_class

loc:@b*
_output_shapes
: *
	container *
dtype0*
shape: *
shared_namebeta1_power
}
,beta1_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta1_power*
_class

loc:@b*
_output_shapes
: 
g
beta1_power/AssignAssignVariableOpbeta1_power%beta1_power/Initializer/initial_value*
dtype0
y
beta1_power/Read/ReadVariableOpReadVariableOpbeta1_power*
_class

loc:@b*
_output_shapes
: *
dtype0
�
%beta2_power/Initializer/initial_valueConst*
_class

loc:@b*
_output_shapes
: *
dtype0*
valueB
 *w�?
�
beta2_powerVarHandleOp*
_class

loc:@b*
_output_shapes
: *
	container *
dtype0*
shape: *
shared_namebeta2_power
}
,beta2_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta2_power*
_class

loc:@b*
_output_shapes
: 
g
beta2_power/AssignAssignVariableOpbeta2_power%beta2_power/Initializer/initial_value*
dtype0
y
beta2_power/Read/ReadVariableOpReadVariableOpbeta2_power*
_class

loc:@b*
_output_shapes
: *
dtype0
�
w/Adam/Initializer/zerosConst*
_class

loc:@w*
_output_shapes
:	�*
dtype0*
valueB	�*    
�
w/AdamVarHandleOp*
_class

loc:@w*
_output_shapes
: *
	container *
dtype0*
shape:	�*
shared_namew/Adam
s
'w/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpw/Adam*
_class

loc:@w*
_output_shapes
: 
P
w/Adam/AssignAssignVariableOpw/Adamw/Adam/Initializer/zeros*
dtype0
x
w/Adam/Read/ReadVariableOpReadVariableOpw/Adam*
_class

loc:@w*
_output_shapes
:	�*
dtype0
�
w/Adam_1/Initializer/zerosConst*
_class

loc:@w*
_output_shapes
:	�*
dtype0*
valueB	�*    
�
w/Adam_1VarHandleOp*
_class

loc:@w*
_output_shapes
: *
	container *
dtype0*
shape:	�*
shared_name
w/Adam_1
w
)w/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpw/Adam_1*
_class

loc:@w*
_output_shapes
: 
V
w/Adam_1/AssignAssignVariableOpw/Adam_1w/Adam_1/Initializer/zeros*
dtype0
|
w/Adam_1/Read/ReadVariableOpReadVariableOpw/Adam_1*
_class

loc:@w*
_output_shapes
:	�*
dtype0
{
b/Adam/Initializer/zerosConst*
_class

loc:@b*
_output_shapes
:*
dtype0*
valueB*    
�
b/AdamVarHandleOp*
_class

loc:@b*
_output_shapes
: *
	container *
dtype0*
shape:*
shared_nameb/Adam
s
'b/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpb/Adam*
_class

loc:@b*
_output_shapes
: 
P
b/Adam/AssignAssignVariableOpb/Adamb/Adam/Initializer/zeros*
dtype0
s
b/Adam/Read/ReadVariableOpReadVariableOpb/Adam*
_class

loc:@b*
_output_shapes
:*
dtype0
}
b/Adam_1/Initializer/zerosConst*
_class

loc:@b*
_output_shapes
:*
dtype0*
valueB*    
�
b/Adam_1VarHandleOp*
_class

loc:@b*
_output_shapes
: *
	container *
dtype0*
shape:*
shared_name
b/Adam_1
w
)b/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpb/Adam_1*
_class

loc:@b*
_output_shapes
: 
V
b/Adam_1/AssignAssignVariableOpb/Adam_1b/Adam_1/Initializer/zeros*
dtype0
w
b/Adam_1/Read/ReadVariableOpReadVariableOpb/Adam_1*
_class

loc:@b*
_output_shapes
:*
dtype0
�
Qrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
_output_shapes
:*
dtype0*
valueB"�      
�
Grnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Initializer/zeros/ConstConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
Arnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Initializer/zerosFillQrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorGrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Initializer/zeros/Const*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel* 
_output_shapes
:
��*

index_type0
�
/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdamVarHandleOp*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
_output_shapes
: *
	container *
dtype0*
shape:
��*@
shared_name1/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam
�
Prnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
_output_shapes
: 
�
6rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/AssignAssignVariableOp/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdamArnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Initializer/zeros*
dtype0
�
Crnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Read/ReadVariableOpReadVariableOp/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel* 
_output_shapes
:
��*
dtype0
�
Srnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
_output_shapes
:*
dtype0*
valueB"�      
�
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Initializer/zeros/ConstConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
Crnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Initializer/zerosFillSrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Initializer/zeros/Const*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel* 
_output_shapes
:
��*

index_type0
�
1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1VarHandleOp*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
_output_shapes
: *
	container *
dtype0*
shape:
��*B
shared_name31rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1
�
Rrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
_output_shapes
: 
�
8rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/AssignAssignVariableOp1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1Crnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Initializer/zeros*
dtype0
�
Ernn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Read/ReadVariableOpReadVariableOp1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel* 
_output_shapes
:
��*
dtype0
�
?rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/Initializer/zerosConst*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AdamVarHandleOp*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes
: *
	container *
dtype0*
shape:�*>
shared_name/-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam
�
Nrnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes
: 
�
4rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/AssignAssignVariableOp-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam?rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/Initializer/zeros*
dtype0
�
Arnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/Read/ReadVariableOpReadVariableOp-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
Arnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/Initializer/zerosConst*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1VarHandleOp*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes
: *
	container *
dtype0*
shape:�*@
shared_name1/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1
�
Prnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes
: 
�
6rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/AssignAssignVariableOp/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1Arnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/Initializer/zeros*
dtype0
�
Crnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/Read/ReadVariableOpReadVariableOp/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
Qrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
_output_shapes
:*
dtype0*
valueB"�     
�
Grnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/Initializer/zeros/ConstConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
Arnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/Initializer/zerosFillQrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorGrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/Initializer/zeros/Const*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel* 
_output_shapes
:
��*

index_type0
�
/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/AdamVarHandleOp*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
_output_shapes
: *
	container *
dtype0*
shape:
��*@
shared_name1/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam
�
Prnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
_output_shapes
: 
�
6rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/AssignAssignVariableOp/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/AdamArnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/Initializer/zeros*
dtype0
�
Crnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/Read/ReadVariableOpReadVariableOp/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel* 
_output_shapes
:
��*
dtype0
�
Srnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
_output_shapes
:*
dtype0*
valueB"�     
�
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/Initializer/zeros/ConstConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
Crnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/Initializer/zerosFillSrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/Initializer/zeros/Const*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel* 
_output_shapes
:
��*

index_type0
�
1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1VarHandleOp*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
_output_shapes
: *
	container *
dtype0*
shape:
��*B
shared_name31rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1
�
Rrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
_output_shapes
: 
�
8rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/AssignAssignVariableOp1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1Crnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/Initializer/zeros*
dtype0
�
Ernn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/Read/ReadVariableOpReadVariableOp1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel* 
_output_shapes
:
��*
dtype0
�
?rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/Initializer/zerosConst*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/AdamVarHandleOp*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
_output_shapes
: *
	container *
dtype0*
shape:�*>
shared_name/-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam
�
Nrnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
_output_shapes
: 
�
4rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/AssignAssignVariableOp-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam?rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/Initializer/zeros*
dtype0
�
Arnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/Read/ReadVariableOpReadVariableOp-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
Arnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1/Initializer/zerosConst*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1VarHandleOp*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
_output_shapes
: *
	container *
dtype0*
shape:�*@
shared_name1/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1
�
Prnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
_output_shapes
: 
�
6rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1/AssignAssignVariableOp/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1Arnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1/Initializer/zeros*
dtype0
�
Crnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1/Read/ReadVariableOpReadVariableOp/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
Qrnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/kernel*
_output_shapes
:*
dtype0*
valueB"^  X  
�
Grnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam/Initializer/zeros/ConstConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
Arnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam/Initializer/zerosFillQrnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorGrnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam/Initializer/zeros/Const*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/kernel* 
_output_shapes
:
��*

index_type0
�
/rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/AdamVarHandleOp*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/kernel*
_output_shapes
: *
	container *
dtype0*
shape:
��*@
shared_name1/rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam
�
Prnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp/rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/kernel*
_output_shapes
: 
�
6rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam/AssignAssignVariableOp/rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/AdamArnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam/Initializer/zeros*
dtype0
�
Crnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam/Read/ReadVariableOpReadVariableOp/rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/kernel* 
_output_shapes
:
��*
dtype0
�
Srnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/kernel*
_output_shapes
:*
dtype0*
valueB"^  X  
�
Irnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1/Initializer/zeros/ConstConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
�
Crnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1/Initializer/zerosFillSrnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorIrnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1/Initializer/zeros/Const*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/kernel* 
_output_shapes
:
��*

index_type0
�
1rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1VarHandleOp*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/kernel*
_output_shapes
: *
	container *
dtype0*
shape:
��*B
shared_name31rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1
�
Rrnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp1rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/kernel*
_output_shapes
: 
�
8rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1/AssignAssignVariableOp1rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1Crnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1/Initializer/zeros*
dtype0
�
Ernn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1/Read/ReadVariableOpReadVariableOp1rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/kernel* 
_output_shapes
:
��*
dtype0
�
?rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam/Initializer/zerosConst*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
-rnn/multi_rnn_cell/cell_2/lstm_cell/bias/AdamVarHandleOp*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/bias*
_output_shapes
: *
	container *
dtype0*
shape:�*>
shared_name/-rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam
�
Nrnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOp-rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/bias*
_output_shapes
: 
�
4rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam/AssignAssignVariableOp-rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam?rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam/Initializer/zeros*
dtype0
�
Arnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam/Read/ReadVariableOpReadVariableOp-rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
Arnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam_1/Initializer/zerosConst*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/bias*
_output_shapes	
:�*
dtype0*
valueB�*    
�
/rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam_1VarHandleOp*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/bias*
_output_shapes
: *
	container *
dtype0*
shape:�*@
shared_name1/rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam_1
�
Prnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp/rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam_1*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/bias*
_output_shapes
: 
�
6rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam_1/AssignAssignVariableOp/rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam_1Arnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam_1/Initializer/zeros*
dtype0
�
Crnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam_1/Read/ReadVariableOpReadVariableOp/rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam_1*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/bias*
_output_shapes	
:�*
dtype0
O

Adam/beta1Const*
_output_shapes
: *
dtype0*
valueB
 *fff?
O

Adam/beta2Const*
_output_shapes
: *
dtype0*
valueB
 *w�?
Q
Adam/epsilonConst*
_output_shapes
: *
dtype0*
valueB
 *w�+2
r
.Adam/update_w/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
t
0Adam/update_w/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
�
Adam/update_w/ResourceApplyAdamResourceApplyAdamww/Adamw/Adam_1.Adam/update_w/ResourceApplyAdam/ReadVariableOp0Adam/update_w/ResourceApplyAdam/ReadVariableOp_1Maximum
Adam/beta1
Adam/beta2Adam/epsilon*clip_by_global_norm/clip_by_global_norm/_0*
T0*
_class

loc:@w*
use_locking( *
use_nesterov( 
r
.Adam/update_b/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
t
0Adam/update_b/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
�
Adam/update_b/ResourceApplyAdamResourceApplyAdambb/Adamb/Adam_1.Adam/update_b/ResourceApplyAdam/ReadVariableOp0Adam/update_b/ResourceApplyAdam/ReadVariableOp_1Maximum
Adam/beta1
Adam/beta2Adam/epsilon*clip_by_global_norm/clip_by_global_norm/_1*
T0*
_class

loc:@b*
use_locking( *
use_nesterov( 
�
WAdam/update_rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
�
YAdam/update_rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
�
HAdam/update_rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ResourceApplyAdamResourceApplyAdam*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1WAdam/update_rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ResourceApplyAdam/ReadVariableOpYAdam/update_rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ResourceApplyAdam/ReadVariableOp_1Maximum
Adam/beta1
Adam/beta2Adam/epsilon*clip_by_global_norm/clip_by_global_norm/_2*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
use_locking( *
use_nesterov( 
�
UAdam/update_rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
�
WAdam/update_rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
�
FAdam/update_rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ResourceApplyAdamResourceApplyAdam(rnn/multi_rnn_cell/cell_0/lstm_cell/bias-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1UAdam/update_rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ResourceApplyAdam/ReadVariableOpWAdam/update_rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ResourceApplyAdam/ReadVariableOp_1Maximum
Adam/beta1
Adam/beta2Adam/epsilon*clip_by_global_norm/clip_by_global_norm/_3*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
use_locking( *
use_nesterov( 
�
WAdam/update_rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
�
YAdam/update_rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
�
HAdam/update_rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/ResourceApplyAdamResourceApplyAdam*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1WAdam/update_rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/ResourceApplyAdam/ReadVariableOpYAdam/update_rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/ResourceApplyAdam/ReadVariableOp_1Maximum
Adam/beta1
Adam/beta2Adam/epsilon*clip_by_global_norm/clip_by_global_norm/_4*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
use_locking( *
use_nesterov( 
�
UAdam/update_rnn/multi_rnn_cell/cell_1/lstm_cell/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
�
WAdam/update_rnn/multi_rnn_cell/cell_1/lstm_cell/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
�
FAdam/update_rnn/multi_rnn_cell/cell_1/lstm_cell/bias/ResourceApplyAdamResourceApplyAdam(rnn/multi_rnn_cell/cell_1/lstm_cell/bias-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1UAdam/update_rnn/multi_rnn_cell/cell_1/lstm_cell/bias/ResourceApplyAdam/ReadVariableOpWAdam/update_rnn/multi_rnn_cell/cell_1/lstm_cell/bias/ResourceApplyAdam/ReadVariableOp_1Maximum
Adam/beta1
Adam/beta2Adam/epsilon*clip_by_global_norm/clip_by_global_norm/_5*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
use_locking( *
use_nesterov( 
�
WAdam/update_rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
�
YAdam/update_rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
�
HAdam/update_rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/ResourceApplyAdamResourceApplyAdam*rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam1rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1WAdam/update_rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/ResourceApplyAdam/ReadVariableOpYAdam/update_rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/ResourceApplyAdam/ReadVariableOp_1Maximum
Adam/beta1
Adam/beta2Adam/epsilon*clip_by_global_norm/clip_by_global_norm/_6*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/kernel*
use_locking( *
use_nesterov( 
�
UAdam/update_rnn/multi_rnn_cell/cell_2/lstm_cell/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
�
WAdam/update_rnn/multi_rnn_cell/cell_2/lstm_cell/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
�
FAdam/update_rnn/multi_rnn_cell/cell_2/lstm_cell/bias/ResourceApplyAdamResourceApplyAdam(rnn/multi_rnn_cell/cell_2/lstm_cell/bias-rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam/rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam_1UAdam/update_rnn/multi_rnn_cell/cell_2/lstm_cell/bias/ResourceApplyAdam/ReadVariableOpWAdam/update_rnn/multi_rnn_cell/cell_2/lstm_cell/bias/ResourceApplyAdam/ReadVariableOp_1Maximum
Adam/beta1
Adam/beta2Adam/epsilon*clip_by_global_norm/clip_by_global_norm/_7*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_2/lstm_cell/bias*
use_locking( *
use_nesterov( 
�
Adam/ReadVariableOpReadVariableOpbeta1_power ^Adam/update_b/ResourceApplyAdamG^Adam/update_rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ResourceApplyAdamI^Adam/update_rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ResourceApplyAdamG^Adam/update_rnn/multi_rnn_cell/cell_1/lstm_cell/bias/ResourceApplyAdamI^Adam/update_rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/ResourceApplyAdamG^Adam/update_rnn/multi_rnn_cell/cell_2/lstm_cell/bias/ResourceApplyAdamI^Adam/update_rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/ResourceApplyAdam ^Adam/update_w/ResourceApplyAdam*
_output_shapes
: *
dtype0
g
Adam/mulMulAdam/ReadVariableOp
Adam/beta1*
T0*
_class

loc:@b*
_output_shapes
: 
c
Adam/AssignVariableOpAssignVariableOpbeta1_powerAdam/mul*
_class

loc:@b*
dtype0
�
Adam/ReadVariableOp_1ReadVariableOpbeta1_power^Adam/AssignVariableOp ^Adam/update_b/ResourceApplyAdamG^Adam/update_rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ResourceApplyAdamI^Adam/update_rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ResourceApplyAdamG^Adam/update_rnn/multi_rnn_cell/cell_1/lstm_cell/bias/ResourceApplyAdamI^Adam/update_rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/ResourceApplyAdamG^Adam/update_rnn/multi_rnn_cell/cell_2/lstm_cell/bias/ResourceApplyAdamI^Adam/update_rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/ResourceApplyAdam ^Adam/update_w/ResourceApplyAdam*
_class

loc:@b*
_output_shapes
: *
dtype0
�
Adam/ReadVariableOp_2ReadVariableOpbeta2_power ^Adam/update_b/ResourceApplyAdamG^Adam/update_rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ResourceApplyAdamI^Adam/update_rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ResourceApplyAdamG^Adam/update_rnn/multi_rnn_cell/cell_1/lstm_cell/bias/ResourceApplyAdamI^Adam/update_rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/ResourceApplyAdamG^Adam/update_rnn/multi_rnn_cell/cell_2/lstm_cell/bias/ResourceApplyAdamI^Adam/update_rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/ResourceApplyAdam ^Adam/update_w/ResourceApplyAdam*
_output_shapes
: *
dtype0
k

Adam/mul_1MulAdam/ReadVariableOp_2
Adam/beta2*
T0*
_class

loc:@b*
_output_shapes
: 
g
Adam/AssignVariableOp_1AssignVariableOpbeta2_power
Adam/mul_1*
_class

loc:@b*
dtype0
�
Adam/ReadVariableOp_3ReadVariableOpbeta2_power^Adam/AssignVariableOp_1 ^Adam/update_b/ResourceApplyAdamG^Adam/update_rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ResourceApplyAdamI^Adam/update_rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ResourceApplyAdamG^Adam/update_rnn/multi_rnn_cell/cell_1/lstm_cell/bias/ResourceApplyAdamI^Adam/update_rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/ResourceApplyAdamG^Adam/update_rnn/multi_rnn_cell/cell_2/lstm_cell/bias/ResourceApplyAdamI^Adam/update_rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/ResourceApplyAdam ^Adam/update_w/ResourceApplyAdam*
_class

loc:@b*
_output_shapes
: *
dtype0
�
AdamNoOp^Adam/AssignVariableOp^Adam/AssignVariableOp_1 ^Adam/update_b/ResourceApplyAdamG^Adam/update_rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ResourceApplyAdamI^Adam/update_rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ResourceApplyAdamG^Adam/update_rnn/multi_rnn_cell/cell_1/lstm_cell/bias/ResourceApplyAdamI^Adam/update_rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/ResourceApplyAdamG^Adam/update_rnn/multi_rnn_cell/cell_2/lstm_cell/bias/ResourceApplyAdamI^Adam/update_rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/ResourceApplyAdam ^Adam/update_w/ResourceApplyAdam
^
Placeholder_2Placeholder*
_output_shapes

:*
dtype0*
shape
:
_
zeros_12Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�
Variable_13VarHandleOp*
_class
loc:@Variable_13*
_output_shapes
: *
	container *
dtype0*
shape:	�*
shared_nameVariable_13
g
,Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_13*
_output_shapes
: 
J
Variable_13/AssignAssignVariableOpVariable_13zeros_12*
dtype0
l
Variable_13/Read/ReadVariableOpReadVariableOpVariable_13*
_output_shapes
:	�*
dtype0
_
zeros_13Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�
Variable_14VarHandleOp*
_class
loc:@Variable_14*
_output_shapes
: *
	container *
dtype0*
shape:	�*
shared_nameVariable_14
g
,Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_14*
_output_shapes
: 
J
Variable_14/AssignAssignVariableOpVariable_14zeros_13*
dtype0
l
Variable_14/Read/ReadVariableOpReadVariableOpVariable_14*
_output_shapes
:	�*
dtype0
_
zeros_14Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�
Variable_15VarHandleOp*
_class
loc:@Variable_15*
_output_shapes
: *
	container *
dtype0*
shape:	�*
shared_nameVariable_15
g
,Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_15*
_output_shapes
: 
J
Variable_15/AssignAssignVariableOpVariable_15zeros_14*
dtype0
l
Variable_15/Read/ReadVariableOpReadVariableOpVariable_15*
_output_shapes
:	�*
dtype0
_
zeros_15Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�
Variable_16VarHandleOp*
_class
loc:@Variable_16*
_output_shapes
: *
	container *
dtype0*
shape:	�*
shared_nameVariable_16
g
,Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_16*
_output_shapes
: 
J
Variable_16/AssignAssignVariableOpVariable_16zeros_15*
dtype0
l
Variable_16/Read/ReadVariableOpReadVariableOpVariable_16*
_output_shapes
:	�*
dtype0
_
zeros_16Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�
Variable_17VarHandleOp*
_class
loc:@Variable_17*
_output_shapes
: *
	container *
dtype0*
shape:	�*
shared_nameVariable_17
g
,Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_17*
_output_shapes
: 
J
Variable_17/AssignAssignVariableOpVariable_17zeros_16*
dtype0
l
Variable_17/Read/ReadVariableOpReadVariableOpVariable_17*
_output_shapes
:	�*
dtype0
_
zeros_17Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
�
Variable_18VarHandleOp*
_class
loc:@Variable_18*
_output_shapes
: *
	container *
dtype0*
shape:	�*
shared_nameVariable_18
g
,Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_18*
_output_shapes
: 
J
Variable_18/AssignAssignVariableOpVariable_18zeros_17*
dtype0
l
Variable_18/Read/ReadVariableOpReadVariableOpVariable_18*
_output_shapes
:	�*
dtype0
_
zeros_18Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
J
AssignVariableOp_7AssignVariableOpVariable_13zeros_18*
dtype0
r
ReadVariableOp_8ReadVariableOpVariable_13^AssignVariableOp_7*
_output_shapes
:	�*
dtype0
_
zeros_19Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
J
AssignVariableOp_8AssignVariableOpVariable_15zeros_19*
dtype0
r
ReadVariableOp_9ReadVariableOpVariable_15^AssignVariableOp_8*
_output_shapes
:	�*
dtype0
_
zeros_20Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
J
AssignVariableOp_9AssignVariableOpVariable_17zeros_20*
dtype0
s
ReadVariableOp_10ReadVariableOpVariable_17^AssignVariableOp_9*
_output_shapes
:	�*
dtype0
_
zeros_21Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
K
AssignVariableOp_10AssignVariableOpVariable_14zeros_21*
dtype0
t
ReadVariableOp_11ReadVariableOpVariable_14^AssignVariableOp_10*
_output_shapes
:	�*
dtype0
_
zeros_22Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
K
AssignVariableOp_11AssignVariableOpVariable_16zeros_22*
dtype0
t
ReadVariableOp_12ReadVariableOpVariable_16^AssignVariableOp_11*
_output_shapes
:	�*
dtype0
_
zeros_23Const*
_output_shapes
:	�*
dtype0*
valueB	�*    
K
AssignVariableOp_12AssignVariableOpVariable_18zeros_23*
dtype0
t
ReadVariableOp_13ReadVariableOpVariable_18^AssignVariableOp_12*
_output_shapes
:	�*
dtype0
�

group_depsNoOp^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9
S
ExpandDims_10/dimConst*
_output_shapes
: *
dtype0*
value	B : 
v
ExpandDims_10
ExpandDimsPlaceholder_2ExpandDims_10/dim*
T0*

Tdim0*"
_output_shapes
:
`
rnn_2/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
c
rnn_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
e
rnn_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
e
rnn_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
rnn_2/strided_sliceStridedSlicernn_2/Shapernn_2/strided_slice/stackrnn_2/strided_slice/stack_1rnn_2/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
U
rnn_2/ConstConst*
_output_shapes
:*
dtype0*
valueB:
X
rnn_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB:�
S
rnn_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
�
rnn_2/concatConcatV2rnn_2/Constrnn_2/Const_1rnn_2/concat/axis*
N*
T0*

Tidx0*
_output_shapes
:
V
rnn_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
p
rnn_2/zerosFillrnn_2/concatrnn_2/zeros/Const*
T0*
_output_shapes
:	�*

index_type0
L

rnn_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 
r
!rnn_2/TensorArrayV2/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
rnn_2/TensorArrayV2TensorListReserve!rnn_2/TensorArrayV2/element_shapernn_2/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
t
#rnn_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
�
rnn_2/TensorArrayV2_1TensorListReserve#rnn_2/TensorArrayV2_1/element_shapernn_2/strided_slice*
_output_shapes
: *
element_dtype0*

shape_type0
�
;rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
�
-rnn_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorExpandDims_10;rnn_2/TensorArrayUnstack/TensorListFromTensor/element_shape*
_output_shapes
: *
element_dtype0*

shape_type0
Q
rnn_2/Maximum/xConst*
_output_shapes
: *
dtype0*
value	B :
_
rnn_2/MaximumMaximumrnn_2/Maximum/xrnn_2/strided_slice*
T0*
_output_shapes
: 
]
rnn_2/MinimumMinimumrnn_2/strided_slicernn_2/Maximum*
T0*
_output_shapes
: 
a
rnn_2/ReadVariableOpReadVariableOpVariable_13*
_output_shapes
:	�*
dtype0
c
rnn_2/ReadVariableOp_1ReadVariableOpVariable_14*
_output_shapes
:	�*
dtype0
c
rnn_2/ReadVariableOp_2ReadVariableOpVariable_15*
_output_shapes
:	�*
dtype0
c
rnn_2/ReadVariableOp_3ReadVariableOpVariable_16*
_output_shapes
:	�*
dtype0
c
rnn_2/ReadVariableOp_4ReadVariableOpVariable_17*
_output_shapes
:	�*
dtype0
c
rnn_2/ReadVariableOp_5ReadVariableOpVariable_18*
_output_shapes
:	�*
dtype0
Z
rnn_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
�	
rnn_2/whileStatelessWhilernn_2/while/loop_counterrnn_2/strided_slice
rnn_2/timernn_2/TensorArrayV2rnn_2/ReadVariableOprnn_2/ReadVariableOp_1rnn_2/ReadVariableOp_2rnn_2/ReadVariableOp_3rnn_2/ReadVariableOp_4rnn_2/ReadVariableOp_5rnn_2/Minimum-rnn_2/TensorArrayUnstack/TensorListFromTensor8rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Read/Identity6rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Read/Identity8rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Read/Identity6rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Read/Identity8rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Read/Identity6rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Read/Identity*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*�
_output_shapes�
�: : : : :	�:	�:	�:	�:	�:	�: : :
��:�:
��:�:
��:�* 
_read_only_resource_inputs
 *!
bodyR
rnn_2_while_body_3227*!
condR
rnn_2_while_cond_3226*�
output_shapes�
�: : : : :	�:	�:	�:	�:	�:	�: : :
��:�:
��:�:
��:�*
parallel_iterations 
N
rnn_2/while/IdentityIdentityrnn_2/while*
T0*
_output_shapes
: 
R
rnn_2/while/Identity_1Identityrnn_2/while:1*
T0*
_output_shapes
: 
R
rnn_2/while/Identity_2Identityrnn_2/while:2*
T0*
_output_shapes
: 
R
rnn_2/while/Identity_3Identityrnn_2/while:3*
T0*
_output_shapes
: 
[
rnn_2/while/Identity_4Identityrnn_2/while:4*
T0*
_output_shapes
:	�
[
rnn_2/while/Identity_5Identityrnn_2/while:5*
T0*
_output_shapes
:	�
[
rnn_2/while/Identity_6Identityrnn_2/while:6*
T0*
_output_shapes
:	�
[
rnn_2/while/Identity_7Identityrnn_2/while:7*
T0*
_output_shapes
:	�
[
rnn_2/while/Identity_8Identityrnn_2/while:8*
T0*
_output_shapes
:	�
[
rnn_2/while/Identity_9Identityrnn_2/while:9*
T0*
_output_shapes
:	�
T
rnn_2/while/Identity_10Identityrnn_2/while:10*
T0*
_output_shapes
: 
T
rnn_2/while/Identity_11Identityrnn_2/while:11*
T0*
_output_shapes
: 
^
rnn_2/while/Identity_12Identityrnn_2/while:12*
T0* 
_output_shapes
:
��
Y
rnn_2/while/Identity_13Identityrnn_2/while:13*
T0*
_output_shapes	
:�
^
rnn_2/while/Identity_14Identityrnn_2/while:14*
T0* 
_output_shapes
:
��
Y
rnn_2/while/Identity_15Identityrnn_2/while:15*
T0*
_output_shapes	
:�
^
rnn_2/while/Identity_16Identityrnn_2/while:16*
T0* 
_output_shapes
:
��
Y
rnn_2/while/Identity_17Identityrnn_2/while:17*
T0*
_output_shapes	
:�
�
6rnn_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   �   
�
(rnn_2/TensorArrayV2Stack/TensorListStackTensorListStackrnn_2/while/Identity_36rnn_2/TensorArrayV2Stack/TensorListStack/element_shape*#
_output_shapes
:�*
element_dtype0*
num_elements���������
^
rnn_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB"      
X
rnn_2/Const_3Const*
_output_shapes
:*
dtype0*
valueB:�
Y
AssignVariableOp_13AssignVariableOpVariable_13rnn_2/while/Identity_4*
dtype0
t
ReadVariableOp_14ReadVariableOpVariable_13^AssignVariableOp_13*
_output_shapes
:	�*
dtype0
Y
AssignVariableOp_14AssignVariableOpVariable_15rnn_2/while/Identity_6*
dtype0
t
ReadVariableOp_15ReadVariableOpVariable_15^AssignVariableOp_14*
_output_shapes
:	�*
dtype0
Y
AssignVariableOp_15AssignVariableOpVariable_17rnn_2/while/Identity_8*
dtype0
t
ReadVariableOp_16ReadVariableOpVariable_17^AssignVariableOp_15*
_output_shapes
:	�*
dtype0
Y
AssignVariableOp_16AssignVariableOpVariable_14rnn_2/while/Identity_5*
dtype0
t
ReadVariableOp_17ReadVariableOpVariable_14^AssignVariableOp_16*
_output_shapes
:	�*
dtype0
Y
AssignVariableOp_17AssignVariableOpVariable_16rnn_2/while/Identity_7*
dtype0
t
ReadVariableOp_18ReadVariableOpVariable_16^AssignVariableOp_17*
_output_shapes
:	�*
dtype0
Y
AssignVariableOp_18AssignVariableOpVariable_18rnn_2/while/Identity_9*
dtype0
t
ReadVariableOp_19ReadVariableOpVariable_18^AssignVariableOp_18*
_output_shapes
:	�*
dtype0
�
Reshape_2/shapeConst^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18*
_output_shapes
:*
dtype0*
valueB"   ����
�
	Reshape_2Reshape(rnn_2/TensorArrayV2Stack/TensorListStackReshape_2/shape*
T0*
Tshape0*
_output_shapes
:	�
�
xw_plus_b_2/ReadVariableOpReadVariableOpw^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18*
_output_shapes
:	�*
dtype0
�
xw_plus_b_2/ReadVariableOp_1ReadVariableOpb^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18*
_output_shapes
:*
dtype0
�
xw_plus_b_2/MatMulMatMul	Reshape_2xw_plus_b_2/ReadVariableOp*
T0*
_output_shapes

:*
transpose_a( *
transpose_b( 
�
xw_plus_b_2BiasAddxw_plus_b_2/MatMulxw_plus_b_2/ReadVariableOp_1*
T0*
_output_shapes

:*
data_formatNHWC
�
initNoOp^Variable/Assign^Variable_1/Assign^Variable_10/Assign^Variable_11/Assign^Variable_12/Assign^Variable_13/Assign^Variable_14/Assign^Variable_15/Assign^Variable_16/Assign^Variable_17/Assign^Variable_18/Assign^Variable_2/Assign^Variable_3/Assign^Variable_4/Assign^Variable_5/Assign^Variable_6/Assign^Variable_7/Assign^Variable_8/Assign^Variable_9/Assign^b/Adam/Assign^b/Adam_1/Assign	^b/Assign^beta1_power/Assign^beta2_power/Assign5^rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/Assign7^rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/Assign0^rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Assign7^rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Assign9^rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Assign2^rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Assign5^rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/Assign7^rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1/Assign0^rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Assign7^rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/Assign9^rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/Assign2^rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Assign5^rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam/Assign7^rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam_1/Assign0^rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Assign7^rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam/Assign9^rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1/Assign2^rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Assign^w/Adam/Assign^w/Adam_1/Assign	^w/Assign
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
l
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const*
_output_shapes
: *
pattern
^s3://.*
R
save/Const_1Const*
_output_shapes
: *
dtype0*
valueB B.part
x
save/Const_2Const*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_0f05da82d5fe45b09314544f26fd87f6/part
m
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2*
T0*
_output_shapes
: 
h
save/StringJoin
StringJoin
save/Constsave/Select*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
\
save/ShardedFilename/shardConst*
_output_shapes
: *
dtype0*
value	B : 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
�	
save/SaveV2/tensor_namesConst*
_output_shapes
:-*
dtype0*�	
value�	B�	-BVariableB
Variable_1BVariable_10BVariable_11BVariable_12BVariable_13BVariable_14BVariable_15BVariable_16BVariable_17BVariable_18B
Variable_2B
Variable_3B
Variable_4B
Variable_5B
Variable_6B
Variable_7B
Variable_8B
Variable_9BbBb/AdamBb/Adam_1Bbeta1_powerBbeta2_powerB(rnn/multi_rnn_cell/cell_0/lstm_cell/biasB-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AdamB/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1B*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdamB1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1B(rnn/multi_rnn_cell/cell_1/lstm_cell/biasB-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/AdamB/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1B*rnn/multi_rnn_cell/cell_1/lstm_cell/kernelB/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/AdamB1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1B(rnn/multi_rnn_cell/cell_2/lstm_cell/biasB-rnn/multi_rnn_cell/cell_2/lstm_cell/bias/AdamB/rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam_1B*rnn/multi_rnn_cell/cell_2/lstm_cell/kernelB/rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/AdamB1rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1BwBw/AdamBw/Adam_1
�
save/SaveV2/shape_and_slicesConst*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOpVariable_10/Read/ReadVariableOpVariable_11/Read/ReadVariableOpVariable_12/Read/ReadVariableOpVariable_13/Read/ReadVariableOpVariable_14/Read/ReadVariableOpVariable_15/Read/ReadVariableOpVariable_16/Read/ReadVariableOpVariable_17/Read/ReadVariableOpVariable_18/Read/ReadVariableOpVariable_2/Read/ReadVariableOpVariable_3/Read/ReadVariableOpVariable_4/Read/ReadVariableOpVariable_5/Read/ReadVariableOpVariable_6/Read/ReadVariableOpVariable_7/Read/ReadVariableOpVariable_8/Read/ReadVariableOpVariable_9/Read/ReadVariableOpb/Read/ReadVariableOpb/Adam/Read/ReadVariableOpb/Adam_1/Read/ReadVariableOpbeta1_power/Read/ReadVariableOpbeta2_power/Read/ReadVariableOp<rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Read/ReadVariableOpArnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/Read/ReadVariableOpCrnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/Read/ReadVariableOp>rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Read/ReadVariableOpCrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Read/ReadVariableOpErnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Read/ReadVariableOp<rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Read/ReadVariableOpArnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/Read/ReadVariableOpCrnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1/Read/ReadVariableOp>rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Read/ReadVariableOpCrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/Read/ReadVariableOpErnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/Read/ReadVariableOp<rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Read/ReadVariableOpArnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam/Read/ReadVariableOpCrnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam_1/Read/ReadVariableOp>rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Read/ReadVariableOpCrnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam/Read/ReadVariableOpErnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1/Read/ReadVariableOpw/Read/ReadVariableOpw/Adam/Read/ReadVariableOpw/Adam_1/Read/ReadVariableOp*;
dtypes1
/2-
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*
T0*
_output_shapes
:*

axis 
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
�	
save/RestoreV2/tensor_namesConst*
_output_shapes
:-*
dtype0*�	
value�	B�	-BVariableB
Variable_1BVariable_10BVariable_11BVariable_12BVariable_13BVariable_14BVariable_15BVariable_16BVariable_17BVariable_18B
Variable_2B
Variable_3B
Variable_4B
Variable_5B
Variable_6B
Variable_7B
Variable_8B
Variable_9BbBb/AdamBb/Adam_1Bbeta1_powerBbeta2_powerB(rnn/multi_rnn_cell/cell_0/lstm_cell/biasB-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AdamB/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1B*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdamB1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1B(rnn/multi_rnn_cell/cell_1/lstm_cell/biasB-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/AdamB/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1B*rnn/multi_rnn_cell/cell_1/lstm_cell/kernelB/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/AdamB1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1B(rnn/multi_rnn_cell/cell_2/lstm_cell/biasB-rnn/multi_rnn_cell/cell_2/lstm_cell/bias/AdamB/rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam_1B*rnn/multi_rnn_cell/cell_2/lstm_cell/kernelB/rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/AdamB1rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1BwBw/AdamBw/Adam_1
�
save/RestoreV2/shape_and_slicesConst*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::*;
dtypes1
/2-
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
Q
save/AssignVariableOpAssignVariableOpVariablesave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
U
save/AssignVariableOp_1AssignVariableOp
Variable_1save/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
V
save/AssignVariableOp_2AssignVariableOpVariable_10save/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
V
save/AssignVariableOp_3AssignVariableOpVariable_11save/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
V
save/AssignVariableOp_4AssignVariableOpVariable_12save/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
V
save/AssignVariableOp_5AssignVariableOpVariable_13save/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
V
save/AssignVariableOp_6AssignVariableOpVariable_14save/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
V
save/AssignVariableOp_7AssignVariableOpVariable_15save/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
V
save/AssignVariableOp_8AssignVariableOpVariable_16save/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
W
save/AssignVariableOp_9AssignVariableOpVariable_17save/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
X
save/AssignVariableOp_10AssignVariableOpVariable_18save/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
W
save/AssignVariableOp_11AssignVariableOp
Variable_2save/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
W
save/AssignVariableOp_12AssignVariableOp
Variable_3save/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
W
save/AssignVariableOp_13AssignVariableOp
Variable_4save/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
W
save/AssignVariableOp_14AssignVariableOp
Variable_5save/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
W
save/AssignVariableOp_15AssignVariableOp
Variable_6save/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
W
save/AssignVariableOp_16AssignVariableOp
Variable_7save/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
W
save/AssignVariableOp_17AssignVariableOp
Variable_8save/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
W
save/AssignVariableOp_18AssignVariableOp
Variable_9save/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
N
save/AssignVariableOp_19AssignVariableOpbsave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
S
save/AssignVariableOp_20AssignVariableOpb/Adamsave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
T0*
_output_shapes
:
U
save/AssignVariableOp_21AssignVariableOpb/Adam_1save/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
X
save/AssignVariableOp_22AssignVariableOpbeta1_powersave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
X
save/AssignVariableOp_23AssignVariableOpbeta2_powersave/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
T0*
_output_shapes
:
u
save/AssignVariableOp_24AssignVariableOp(rnn/multi_rnn_cell/cell_0/lstm_cell/biassave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:25*
T0*
_output_shapes
:
z
save/AssignVariableOp_25AssignVariableOp-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adamsave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:26*
T0*
_output_shapes
:
|
save/AssignVariableOp_26AssignVariableOp/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1save/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
T0*
_output_shapes
:
w
save/AssignVariableOp_27AssignVariableOp*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelsave/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:28*
T0*
_output_shapes
:
|
save/AssignVariableOp_28AssignVariableOp/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adamsave/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:29*
T0*
_output_shapes
:
~
save/AssignVariableOp_29AssignVariableOp1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1save/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:30*
T0*
_output_shapes
:
u
save/AssignVariableOp_30AssignVariableOp(rnn/multi_rnn_cell/cell_1/lstm_cell/biassave/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:31*
T0*
_output_shapes
:
z
save/AssignVariableOp_31AssignVariableOp-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adamsave/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:32*
T0*
_output_shapes
:
|
save/AssignVariableOp_32AssignVariableOp/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1save/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:33*
T0*
_output_shapes
:
w
save/AssignVariableOp_33AssignVariableOp*rnn/multi_rnn_cell/cell_1/lstm_cell/kernelsave/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:34*
T0*
_output_shapes
:
|
save/AssignVariableOp_34AssignVariableOp/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adamsave/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:35*
T0*
_output_shapes
:
~
save/AssignVariableOp_35AssignVariableOp1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1save/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:36*
T0*
_output_shapes
:
u
save/AssignVariableOp_36AssignVariableOp(rnn/multi_rnn_cell/cell_2/lstm_cell/biassave/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:37*
T0*
_output_shapes
:
z
save/AssignVariableOp_37AssignVariableOp-rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adamsave/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:38*
T0*
_output_shapes
:
|
save/AssignVariableOp_38AssignVariableOp/rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam_1save/Identity_39*
dtype0
R
save/Identity_40Identitysave/RestoreV2:39*
T0*
_output_shapes
:
w
save/AssignVariableOp_39AssignVariableOp*rnn/multi_rnn_cell/cell_2/lstm_cell/kernelsave/Identity_40*
dtype0
R
save/Identity_41Identitysave/RestoreV2:40*
T0*
_output_shapes
:
|
save/AssignVariableOp_40AssignVariableOp/rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adamsave/Identity_41*
dtype0
R
save/Identity_42Identitysave/RestoreV2:41*
T0*
_output_shapes
:
~
save/AssignVariableOp_41AssignVariableOp1rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1save/Identity_42*
dtype0
R
save/Identity_43Identitysave/RestoreV2:42*
T0*
_output_shapes
:
N
save/AssignVariableOp_42AssignVariableOpwsave/Identity_43*
dtype0
R
save/Identity_44Identitysave/RestoreV2:43*
T0*
_output_shapes
:
S
save/AssignVariableOp_43AssignVariableOpw/Adamsave/Identity_44*
dtype0
R
save/Identity_45Identitysave/RestoreV2:44*
T0*
_output_shapes
:
U
save/AssignVariableOp_44AssignVariableOpw/Adam_1save/Identity_45*
dtype0
�	
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_39^save/AssignVariableOp_4^save/AssignVariableOp_40^save/AssignVariableOp_41^save/AssignVariableOp_42^save/AssignVariableOp_43^save/AssignVariableOp_44^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard�
�
�
rnn_while_cond_1372
rnn_while_loop_counter
rnn_strided_slice
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4
placeholder_5
placeholder_6
placeholder_7
less_rnn_minimum0
,rnn_while_cond_1372___redundant_placeholder00
,rnn_while_cond_1372___redundant_placeholder10
,rnn_while_cond_1372___redundant_placeholder20
,rnn_while_cond_1372___redundant_placeholder30
,rnn_while_cond_1372___redundant_placeholder40
,rnn_while_cond_1372___redundant_placeholder50
,rnn_while_cond_1372___redundant_placeholder6

logicaland
T
LessLessplaceholderless_rnn_minimum*
T0*
_output_shapes
: 2
Lessd
Less_1Lessrnn_while_loop_counterrnn_strided_slice*
T0*
_output_shapes
: 2
Less_1T

LogicalAnd
LogicalAnd
Less_1:z:0Less:z:0*
_output_shapes
: 2

LogicalAnd"

logicalandLogicalAnd:z:0*{
_input_shapesj
h: : : : :	�:	�:	�:	�:	�:	�: :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%	!

_output_shapes
:	�:


_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
:
�
�F
rnn_1_while_body_1699_grad_2221
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4
placeholder_5
placeholder_6
placeholder_7
placeholder_8
placeholder_9
placeholder_10
placeholder_11
placeholder_12
placeholder_13
placeholder_14
placeholder_15
placeholder_16U
Qgradients_tensorarrayv2write_tensorlistsetitem_grad_tensorlistsetitem_placeholdere
agradients_rnn_multi_rnn_cell_cell_0_dropout_mul_1_grad_mul_rnn_multi_rnn_cell_cell_0_dropout_castf
bgradients_rnn_multi_rnn_cell_cell_0_dropout_mul_1_grad_mul_1_rnn_multi_rnn_cell_cell_0_dropout_mule
agradients_rnn_multi_rnn_cell_cell_1_dropout_mul_1_grad_mul_rnn_multi_rnn_cell_cell_1_dropout_castf
bgradients_rnn_multi_rnn_cell_cell_1_dropout_mul_1_grad_mul_1_rnn_multi_rnn_cell_cell_1_dropout_mule
agradients_rnn_multi_rnn_cell_cell_2_dropout_mul_1_grad_mul_rnn_multi_rnn_cell_cell_2_dropout_castf
bgradients_rnn_multi_rnn_cell_cell_2_dropout_mul_1_grad_mul_1_rnn_multi_rnn_cell_cell_2_dropout_muli
egradients_rnn_multi_rnn_cell_cell_2_dropout_1_mul_1_grad_mul_rnn_multi_rnn_cell_cell_2_dropout_1_castj
fgradients_rnn_multi_rnn_cell_cell_2_dropout_1_mul_1_grad_mul_1_rnn_multi_rnn_cell_cell_2_dropout_1_mulh
dgradients_rnn_multi_rnn_cell_cell_0_dropout_mul_grad_mul_1_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_2h
dgradients_rnn_multi_rnn_cell_cell_1_dropout_mul_grad_mul_1_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_2h
dgradients_rnn_multi_rnn_cell_cell_2_dropout_mul_grad_mul_1_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_2k
ggradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_2_grad_mul_rnn_multi_rnn_cell_cell_2_lstm_cell_tanh_1p
lgradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_2_grad_mul_1_rnn_multi_rnn_cell_cell_2_lstm_cell_sigmoid_2L
Hgradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_grad_mul_placeholder_6l
hgradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_grad_mul_1_rnn_multi_rnn_cell_cell_2_lstm_cell_sigmoidi
egradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_1_grad_mul_rnn_multi_rnn_cell_cell_2_lstm_cell_tanhp
lgradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_1_grad_mul_1_rnn_multi_rnn_cell_cell_2_lstm_cell_sigmoid_1�
�gradients_rnn_multi_rnn_cell_cell_2_lstm_cell_matmul_grad_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identity_0q
mgradients_rnn_multi_rnn_cell_cell_2_lstm_cell_matmul_grad_matmul_1_rnn_multi_rnn_cell_cell_2_lstm_cell_concati
egradients_rnn_multi_rnn_cell_cell_1_dropout_1_mul_1_grad_mul_rnn_multi_rnn_cell_cell_1_dropout_1_castj
fgradients_rnn_multi_rnn_cell_cell_1_dropout_1_mul_1_grad_mul_1_rnn_multi_rnn_cell_cell_1_dropout_1_mulk
ggradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_2_grad_mul_rnn_multi_rnn_cell_cell_1_lstm_cell_tanh_1p
lgradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_2_grad_mul_1_rnn_multi_rnn_cell_cell_1_lstm_cell_sigmoid_2L
Hgradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_grad_mul_placeholder_4l
hgradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_grad_mul_1_rnn_multi_rnn_cell_cell_1_lstm_cell_sigmoidi
egradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_1_grad_mul_rnn_multi_rnn_cell_cell_1_lstm_cell_tanhp
lgradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_1_grad_mul_1_rnn_multi_rnn_cell_cell_1_lstm_cell_sigmoid_1�
�gradients_rnn_multi_rnn_cell_cell_1_lstm_cell_matmul_grad_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identity_0q
mgradients_rnn_multi_rnn_cell_cell_1_lstm_cell_matmul_grad_matmul_1_rnn_multi_rnn_cell_cell_1_lstm_cell_concati
egradients_rnn_multi_rnn_cell_cell_0_dropout_1_mul_1_grad_mul_rnn_multi_rnn_cell_cell_0_dropout_1_castj
fgradients_rnn_multi_rnn_cell_cell_0_dropout_1_mul_1_grad_mul_1_rnn_multi_rnn_cell_cell_0_dropout_1_mulk
ggradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_2_grad_mul_rnn_multi_rnn_cell_cell_0_lstm_cell_tanh_1p
lgradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_2_grad_mul_1_rnn_multi_rnn_cell_cell_0_lstm_cell_sigmoid_2L
Hgradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_grad_mul_placeholder_2l
hgradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_grad_mul_1_rnn_multi_rnn_cell_cell_0_lstm_cell_sigmoidi
egradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_1_grad_mul_rnn_multi_rnn_cell_cell_0_lstm_cell_tanhp
lgradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_1_grad_mul_1_rnn_multi_rnn_cell_cell_0_lstm_cell_sigmoid_1�
�gradients_rnn_multi_rnn_cell_cell_0_lstm_cell_matmul_grad_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identity_0q
mgradients_rnn_multi_rnn_cell_cell_0_lstm_cell_matmul_grad_matmul_1_rnn_multi_rnn_cell_cell_0_lstm_cell_concat�
�gradients_tensorarrayv2read_tensorlistgetitem_grad_tensorlistlength_tensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensor_0
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16[
Wgradients_tensorarrayv2write_tensorlistsetitem_grad_tensorlistsetitem_tensorlistpopbackP
Lgradients_rnn_multi_rnn_cell_cell_0_dropout_mul_1_grad_mul_tensorlistpopbackR
Ngradients_rnn_multi_rnn_cell_cell_0_dropout_mul_1_grad_mul_1_tensorlistpopbackP
Lgradients_rnn_multi_rnn_cell_cell_1_dropout_mul_1_grad_mul_tensorlistpopbackR
Ngradients_rnn_multi_rnn_cell_cell_1_dropout_mul_1_grad_mul_1_tensorlistpopbackP
Lgradients_rnn_multi_rnn_cell_cell_2_dropout_mul_1_grad_mul_tensorlistpopbackR
Ngradients_rnn_multi_rnn_cell_cell_2_dropout_mul_1_grad_mul_1_tensorlistpopbackR
Ngradients_rnn_multi_rnn_cell_cell_2_dropout_1_mul_1_grad_mul_tensorlistpopbackT
Pgradients_rnn_multi_rnn_cell_cell_2_dropout_1_mul_1_grad_mul_1_tensorlistpopbackP
Lgradients_rnn_multi_rnn_cell_cell_0_dropout_mul_grad_mul_1_tensorlistpopbackP
Lgradients_rnn_multi_rnn_cell_cell_1_dropout_mul_grad_mul_1_tensorlistpopbackP
Lgradients_rnn_multi_rnn_cell_cell_2_dropout_mul_grad_mul_1_tensorlistpopbackR
Ngradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_2_grad_mul_tensorlistpopbackT
Pgradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_2_grad_mul_1_tensorlistpopbackP
Lgradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_grad_mul_tensorlistpopbackR
Ngradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_grad_mul_1_tensorlistpopbackR
Ngradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_1_grad_mul_tensorlistpopbackT
Pgradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_1_grad_mul_1_tensorlistpopback�
�gradients_rnn_multi_rnn_cell_cell_2_lstm_cell_matmul_grad_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identityX
Tgradients_rnn_multi_rnn_cell_cell_2_lstm_cell_matmul_grad_matmul_1_tensorlistpopbackR
Ngradients_rnn_multi_rnn_cell_cell_1_dropout_1_mul_1_grad_mul_tensorlistpopbackT
Pgradients_rnn_multi_rnn_cell_cell_1_dropout_1_mul_1_grad_mul_1_tensorlistpopbackR
Ngradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_2_grad_mul_tensorlistpopbackT
Pgradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_2_grad_mul_1_tensorlistpopbackP
Lgradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_grad_mul_tensorlistpopbackR
Ngradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_grad_mul_1_tensorlistpopbackR
Ngradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_1_grad_mul_tensorlistpopbackT
Pgradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_1_grad_mul_1_tensorlistpopback�
�gradients_rnn_multi_rnn_cell_cell_1_lstm_cell_matmul_grad_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identityX
Tgradients_rnn_multi_rnn_cell_cell_1_lstm_cell_matmul_grad_matmul_1_tensorlistpopbackR
Ngradients_rnn_multi_rnn_cell_cell_0_dropout_1_mul_1_grad_mul_tensorlistpopbackT
Pgradients_rnn_multi_rnn_cell_cell_0_dropout_1_mul_1_grad_mul_1_tensorlistpopbackR
Ngradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_2_grad_mul_tensorlistpopbackT
Pgradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_2_grad_mul_1_tensorlistpopbackP
Lgradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_grad_mul_tensorlistpopbackR
Ngradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_grad_mul_1_tensorlistpopbackR
Ngradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_1_grad_mul_tensorlistpopbackT
Pgradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_1_grad_mul_1_tensorlistpopback�
�gradients_rnn_multi_rnn_cell_cell_0_lstm_cell_matmul_grad_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identityX
Tgradients_rnn_multi_rnn_cell_cell_0_lstm_cell_matmul_grad_matmul_1_tensorlistpopback�
�gradients_tensorarrayv2read_tensorlistgetitem_grad_tensorlistlength_tensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensorf
gradients/grad_ys_0Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_0o
gradients/grad_ys_1Identityplaceholder_4*
T0*
_output_shapes
:	�2
gradients/grad_ys_1o
gradients/grad_ys_2Identityplaceholder_5*
T0*
_output_shapes
:	�2
gradients/grad_ys_2o
gradients/grad_ys_3Identityplaceholder_6*
T0*
_output_shapes
:	�2
gradients/grad_ys_3o
gradients/grad_ys_4Identityplaceholder_7*
T0*
_output_shapes
:	�2
gradients/grad_ys_4o
gradients/grad_ys_5Identityplaceholder_8*
T0*
_output_shapes
:	�2
gradients/grad_ys_5o
gradients/grad_ys_6Identityplaceholder_9*
T0*
_output_shapes
:	�2
gradients/grad_ys_6g
gradients/grad_ys_7Identityplaceholder_10*
T0*
_output_shapes
: 2
gradients/grad_ys_7q
gradients/grad_ys_8Identityplaceholder_11*
T0* 
_output_shapes
:
��2
gradients/grad_ys_8l
gradients/grad_ys_9Identityplaceholder_12*
T0*
_output_shapes	
:�2
gradients/grad_ys_9s
gradients/grad_ys_10Identityplaceholder_13*
T0* 
_output_shapes
:
��2
gradients/grad_ys_10n
gradients/grad_ys_11Identityplaceholder_14*
T0*
_output_shapes	
:�2
gradients/grad_ys_11s
gradients/grad_ys_12Identityplaceholder_15*
T0* 
_output_shapes
:
��2
gradients/grad_ys_12n
gradients/grad_ys_13Identityplaceholder_16*
T0*
_output_shapes	
:�2
gradients/grad_ys_13�
>gradients/TensorArrayV2Write/TensorListSetItem_grad/zeros_likeConst*
_output_shapes
:	�*
dtype0*
valueB	�*    2@
>gradients/TensorArrayV2Write/TensorListSetItem_grad/zeros_like�
egradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2g
egradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBack/element_shape�
Wgradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBackTensorListPopBackQgradients_tensorarrayv2write_tensorlistsetitem_grad_tensorlistsetitem_placeholderngradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBack/element_shape:output:0*
_output_shapes
: : *
element_dtype02Y
Wgradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBack�
Egradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItemTensorListSetItemgradients/grad_ys_0:output:0`gradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBack:tensor:0Ggradients/TensorArrayV2Write/TensorListSetItem_grad/zeros_like:output:0*
_output_shapes
: *
element_dtype02G
Egradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem�
9gradients/TensorArrayV2Write/TensorListSetItem_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   2;
9gradients/TensorArrayV2Write/TensorListSetItem_grad/Shape�
Egradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListGetItemTensorListGetItemgradients/grad_ys_0:output:0`gradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBack:tensor:0Bgradients/TensorArrayV2Write/TensorListSetItem_grad/Shape:output:0*
_output_shapes
:	�*
element_dtype02G
Egradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListGetItem�
Zgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_1_grad/Mul/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2\
Zgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_1_grad/Mul/TensorListPopBack/element_shape�
Lgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_1_grad/Mul/TensorListPopBackTensorListPopBackagradients_rnn_multi_rnn_cell_cell_0_dropout_mul_1_grad_mul_rnn_multi_rnn_cell_cell_0_dropout_castcgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_1_grad/Mul/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02N
Lgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_1_grad/Mul/TensorListPopBack�
:gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_1_grad/MulMulgradients/grad_ys_2:output:0Ugradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_1_grad/Mul/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2<
:gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_1_grad/Mul�
\gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_1_grad/Mul_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2^
\gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_1_grad/Mul_1/TensorListPopBack/element_shape�
Ngradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_1_grad/Mul_1/TensorListPopBackTensorListPopBackbgradients_rnn_multi_rnn_cell_cell_0_dropout_mul_1_grad_mul_1_rnn_multi_rnn_cell_cell_0_dropout_mulegradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_1_grad/Mul_1/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02P
Ngradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_1_grad/Mul_1/TensorListPopBack�
<gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_1_grad/Mul_1Mulgradients/grad_ys_2:output:0Wgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_1_grad/Mul_1/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2>
<gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_1_grad/Mul_1�
Zgradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_1_grad/Mul/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2\
Zgradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_1_grad/Mul/TensorListPopBack/element_shape�
Lgradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_1_grad/Mul/TensorListPopBackTensorListPopBackagradients_rnn_multi_rnn_cell_cell_1_dropout_mul_1_grad_mul_rnn_multi_rnn_cell_cell_1_dropout_castcgradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_1_grad/Mul/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02N
Lgradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_1_grad/Mul/TensorListPopBack�
:gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_1_grad/MulMulgradients/grad_ys_4:output:0Ugradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_1_grad/Mul/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2<
:gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_1_grad/Mul�
\gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_1_grad/Mul_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2^
\gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_1_grad/Mul_1/TensorListPopBack/element_shape�
Ngradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_1_grad/Mul_1/TensorListPopBackTensorListPopBackbgradients_rnn_multi_rnn_cell_cell_1_dropout_mul_1_grad_mul_1_rnn_multi_rnn_cell_cell_1_dropout_mulegradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_1_grad/Mul_1/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02P
Ngradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_1_grad/Mul_1/TensorListPopBack�
<gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_1_grad/Mul_1Mulgradients/grad_ys_4:output:0Wgradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_1_grad/Mul_1/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2>
<gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_1_grad/Mul_1�
Zgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_1_grad/Mul/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2\
Zgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_1_grad/Mul/TensorListPopBack/element_shape�
Lgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_1_grad/Mul/TensorListPopBackTensorListPopBackagradients_rnn_multi_rnn_cell_cell_2_dropout_mul_1_grad_mul_rnn_multi_rnn_cell_cell_2_dropout_castcgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_1_grad/Mul/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02N
Lgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_1_grad/Mul/TensorListPopBack�
:gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_1_grad/MulMulgradients/grad_ys_6:output:0Ugradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_1_grad/Mul/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2<
:gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_1_grad/Mul�
\gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_1_grad/Mul_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2^
\gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_1_grad/Mul_1/TensorListPopBack/element_shape�
Ngradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_1_grad/Mul_1/TensorListPopBackTensorListPopBackbgradients_rnn_multi_rnn_cell_cell_2_dropout_mul_1_grad_mul_1_rnn_multi_rnn_cell_cell_2_dropout_mulegradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_1_grad/Mul_1/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02P
Ngradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_1_grad/Mul_1/TensorListPopBack�
<gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_1_grad/Mul_1Mulgradients/grad_ys_6:output:0Wgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_1_grad/Mul_1/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2>
<gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_1_grad/Mul_1�
\gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1_grad/Mul/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2^
\gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1_grad/Mul/TensorListPopBack/element_shape�
Ngradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1_grad/Mul/TensorListPopBackTensorListPopBackegradients_rnn_multi_rnn_cell_cell_2_dropout_1_mul_1_grad_mul_rnn_multi_rnn_cell_cell_2_dropout_1_castegradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1_grad/Mul/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02P
Ngradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1_grad/Mul/TensorListPopBack�
<gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1_grad/MulMulLgradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListGetItem:item:0Wgradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1_grad/Mul/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2>
<gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1_grad/Mul�
^gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1_grad/Mul_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2`
^gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1_grad/Mul_1/TensorListPopBack/element_shape�
Pgradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1_grad/Mul_1/TensorListPopBackTensorListPopBackfgradients_rnn_multi_rnn_cell_cell_2_dropout_1_mul_1_grad_mul_1_rnn_multi_rnn_cell_cell_2_dropout_1_mulggradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1_grad/Mul_1/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02R
Pgradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1_grad/Mul_1/TensorListPopBack�
>gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1_grad/Mul_1MulLgradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListGetItem:item:0Ygradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1_grad/Mul_1/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2@
>gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1_grad/Mul_1�
Mgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/BroadcastGradientArgs/s0Const*
_output_shapes
:*
dtype0*
valueB"   �   2O
Mgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/BroadcastGradientArgs/s0�
Mgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/BroadcastGradientArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2O
Mgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/BroadcastGradientArgs/s1�
Jgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsVgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/BroadcastGradientArgs/s0:output:0Vgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/BroadcastGradientArgs/s1:output:0*
T0*2
_output_shapes 
:���������:���������2L
Jgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/BroadcastGradientArgs�
>gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Mul/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2@
>gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Mul/Const�
8gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/MulMul>gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_1_grad/Mul:z:0Ggradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Mul/Const:output:0*
T0*
_output_shapes
:	�2:
8gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Mul�
Zgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Mul_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2\
Zgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Mul_1/TensorListPopBack/element_shape�
Lgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Mul_1/TensorListPopBackTensorListPopBackdgradients_rnn_multi_rnn_cell_cell_0_dropout_mul_grad_mul_1_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_2cgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Mul_1/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02N
Lgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Mul_1/TensorListPopBack�
:gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Mul_1MulUgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Mul_1/TensorListPopBack:tensor:0>gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_1_grad/Mul:z:0*
T0*
_output_shapes
:	�2<
:gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Mul_1�
Jgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2L
Jgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Sum/reduction_indices�
8gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/SumSum>gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Mul_1:z:0Sgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Sum/reduction_indices:output:0*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 2:
8gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Sum�
Bgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2D
Bgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Reshape/shape�
<gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/ReshapeReshapeAgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Sum:output:0Kgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Reshape/shape:output:0*
T0*
Tshape0*
_output_shapes
: 2>
<gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Reshape�
>gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Mul/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2@
>gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Mul/Const�
8gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/MulMul>gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_1_grad/Mul:z:0Ggradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Mul/Const:output:0*
T0*
_output_shapes
:	�2:
8gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Mul�
Zgradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Mul_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2\
Zgradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Mul_1/TensorListPopBack/element_shape�
Lgradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Mul_1/TensorListPopBackTensorListPopBackdgradients_rnn_multi_rnn_cell_cell_1_dropout_mul_grad_mul_1_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_2cgradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Mul_1/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02N
Lgradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Mul_1/TensorListPopBack�
:gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Mul_1MulUgradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Mul_1/TensorListPopBack:tensor:0>gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_1_grad/Mul:z:0*
T0*
_output_shapes
:	�2<
:gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Mul_1�
Jgradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2L
Jgradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Sum/reduction_indices�
8gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/SumSum>gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Mul_1:z:0Sgradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Sum/reduction_indices:output:0*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 2:
8gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Sum�
Bgradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2D
Bgradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Reshape/shape�
<gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/ReshapeReshapeAgradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Sum:output:0Kgradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Reshape/shape:output:0*
T0*
Tshape0*
_output_shapes
: 2>
<gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Reshape�
Mgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/BroadcastGradientArgs/s0Const*
_output_shapes
:*
dtype0*
valueB"   �   2O
Mgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/BroadcastGradientArgs/s0�
Mgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/BroadcastGradientArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2O
Mgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/BroadcastGradientArgs/s1�
Jgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsVgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/BroadcastGradientArgs/s0:output:0Vgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/BroadcastGradientArgs/s1:output:0*
T0*2
_output_shapes 
:���������:���������2L
Jgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/BroadcastGradientArgs�
>gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Mul/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2@
>gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Mul/Const�
8gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/MulMul>gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_1_grad/Mul:z:0Ggradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Mul/Const:output:0*
T0*
_output_shapes
:	�2:
8gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Mul�
Zgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Mul_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2\
Zgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Mul_1/TensorListPopBack/element_shape�
Lgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Mul_1/TensorListPopBackTensorListPopBackdgradients_rnn_multi_rnn_cell_cell_2_dropout_mul_grad_mul_1_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_2cgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Mul_1/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02N
Lgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Mul_1/TensorListPopBack�
:gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Mul_1MulUgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Mul_1/TensorListPopBack:tensor:0>gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_1_grad/Mul:z:0*
T0*
_output_shapes
:	�2<
:gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Mul_1�
Jgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2L
Jgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Sum/reduction_indices�
8gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/SumSum>gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Mul_1:z:0Sgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Sum/reduction_indices:output:0*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 2:
8gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Sum�
Bgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2D
Bgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Reshape/shape�
<gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/ReshapeReshapeAgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Sum:output:0Kgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Reshape/shape:output:0*
T0*
Tshape0*
_output_shapes
: 2>
<gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Reshape�
@gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_grad/Mul/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2B
@gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_grad/Mul/Const�
:gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_grad/MulMul@gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1_grad/Mul:z:0Igradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_grad/Mul/Const:output:0*
T0*
_output_shapes
:	�2<
:gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_grad/Mul�
<gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_grad/Mul_1MulUgradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Mul_1/TensorListPopBack:tensor:0@gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1_grad/Mul:z:0*
T0*
_output_shapes
:	�2>
<gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_grad/Mul_1�
Lgradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2N
Lgradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_grad/Sum/reduction_indices�
:gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_grad/SumSum@gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_grad/Mul_1:z:0Ugradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_grad/Sum/reduction_indices:output:0*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 2<
:gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_grad/Sum�
Dgradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2F
Dgradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_grad/Reshape/shape�
>gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_grad/ReshapeReshapeCgradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_grad/Sum:output:0Mgradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_grad/Reshape/shape:output:0*
T0*
Tshape0*
_output_shapes
: 2@
>gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_grad/Reshape�
gradients/AddNAddN<gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Mul:z:0>gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_grad/Mul:z:0*
N*
T0*K
_classA
?=loc:@gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Mul*
_output_shapes
:	�2
gradients/AddN�
\gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/Mul/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2^
\gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/Mul/TensorListPopBack/element_shape�
Ngradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/Mul/TensorListPopBackTensorListPopBackggradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_2_grad_mul_rnn_multi_rnn_cell_cell_2_lstm_cell_tanh_1egradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/Mul/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02P
Ngradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/Mul/TensorListPopBack�
<gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/MulMulgradients/AddN:sum:0Wgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/Mul/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2>
<gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/Mul�
^gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/Mul_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2`
^gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/Mul_1/TensorListPopBack/element_shape�
Pgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/Mul_1/TensorListPopBackTensorListPopBacklgradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_2_grad_mul_1_rnn_multi_rnn_cell_cell_2_lstm_cell_sigmoid_2ggradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/Mul_1/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02R
Pgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/Mul_1/TensorListPopBack�
>gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/Mul_1Mulgradients/AddN:sum:0Ygradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/Mul_1/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2@
>gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/Mul_1�
Hgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradYgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/Mul_1/TensorListPopBack:tensor:0@gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/Mul:z:0*
T0*
_output_shapes
:	�2J
Hgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_2_grad/SigmoidGrad�
Bgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_1_grad/TanhGradTanhGradWgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/Mul/TensorListPopBack:tensor:0Bgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/Mul_1:z:0*
T0*
_output_shapes
:	�2D
Bgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_1_grad/TanhGrad�
gradients/AddN_1AddNgradients/grad_ys_5:output:0Fgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_1_grad/TanhGrad:z:0*
N*
T0*&
_class
loc:@gradients/grad_ys_5*
_output_shapes
:	�2
gradients/AddN_1�
Zgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_grad/Mul/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2\
Zgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_grad/Mul/TensorListPopBack/element_shape�
Lgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_grad/Mul/TensorListPopBackTensorListPopBackHgradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_grad_mul_placeholder_6cgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_grad/Mul/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02N
Lgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_grad/Mul/TensorListPopBack�
:gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_grad/MulMulgradients/AddN_1:sum:0Ugradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_grad/Mul/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2<
:gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_grad/Mul�
\gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_grad/Mul_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2^
\gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_grad/Mul_1/TensorListPopBack/element_shape�
Ngradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_grad/Mul_1/TensorListPopBackTensorListPopBackhgradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_grad_mul_1_rnn_multi_rnn_cell_cell_2_lstm_cell_sigmoidegradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_grad/Mul_1/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02P
Ngradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_grad/Mul_1/TensorListPopBack�
<gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_grad/Mul_1Mulgradients/AddN_1:sum:0Wgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_grad/Mul_1/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2>
<gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_grad/Mul_1�
\gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/Mul/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2^
\gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/Mul/TensorListPopBack/element_shape�
Ngradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/Mul/TensorListPopBackTensorListPopBackegradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_1_grad_mul_rnn_multi_rnn_cell_cell_2_lstm_cell_tanhegradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/Mul/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02P
Ngradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/Mul/TensorListPopBack�
<gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/MulMulgradients/AddN_1:sum:0Wgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/Mul/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2>
<gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/Mul�
^gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/Mul_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2`
^gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/Mul_1/TensorListPopBack/element_shape�
Pgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/Mul_1/TensorListPopBackTensorListPopBacklgradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_1_grad_mul_1_rnn_multi_rnn_cell_cell_2_lstm_cell_sigmoid_1ggradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/Mul_1/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02R
Pgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/Mul_1/TensorListPopBack�
>gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/Mul_1Mulgradients/AddN_1:sum:0Ygradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/Mul_1/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2@
>gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/Mul_1�
Fgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradWgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_grad/Mul_1/TensorListPopBack:tensor:0>gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_grad/Mul:z:0*
T0*
_output_shapes
:	�2H
Fgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_grad/SigmoidGrad�
Hgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradYgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/Mul_1/TensorListPopBack:tensor:0@gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/Mul:z:0*
T0*
_output_shapes
:	�2J
Hgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_1_grad/SigmoidGrad�
@gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_grad/TanhGradTanhGradWgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/Mul/TensorListPopBack:tensor:0Bgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/Mul_1:z:0*
T0*
_output_shapes
:	�2B
@gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_grad/TanhGrad�
Lgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/add_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2N
Lgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/add_grad/Sum/reduction_indices�
:gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/add_grad/SumSumJgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_grad/SigmoidGrad:z:0Ugradients/rnn/multi_rnn_cell/cell_2/lstm_cell/add_grad/Sum/reduction_indices:output:0*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 2<
:gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/add_grad/Sum�
Dgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/add_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2F
Dgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/add_grad/Reshape/shape�
>gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/add_grad/ReshapeReshapeCgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/add_grad/Sum:output:0Mgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/add_grad/Reshape/shape:output:0*
T0*
Tshape0*
_output_shapes
: 2@
>gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/add_grad/Reshape�
Egradients/rnn/multi_rnn_cell/cell_2/lstm_cell/split_grad/concat/ConstConst*
_output_shapes
: *
dtype0*
value	B :2G
Egradients/rnn/multi_rnn_cell/cell_2/lstm_cell/split_grad/concat/Const�
?gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/split_grad/concatConcatV2Lgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_1_grad/SigmoidGrad:z:0Dgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_grad/TanhGrad:z:0Jgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_grad/SigmoidGrad:z:0Lgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_2_grad/SigmoidGrad:z:0Ngradients/rnn/multi_rnn_cell/cell_2/lstm_cell/split_grad/concat/Const:output:0*
N*
T0*

Tidx0*
_output_shapes
:	�2A
?gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/split_grad/concat�
Fgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradHgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/split_grad/concat:output:0*
T0*
_output_shapes	
:�*
data_formatNHWC2H
Fgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/BiasAdd_grad/BiasAddGrad�
@gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul_grad/MatMulMatMulHgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/split_grad/concat:output:0�gradients_rnn_multi_rnn_cell_cell_2_lstm_cell_matmul_grad_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identity_0*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b(2B
@gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul_grad/MatMul�
bgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2d
bgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack/element_shape�
Tgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul_grad/MatMul_1/TensorListPopBackTensorListPopBackmgradients_rnn_multi_rnn_cell_cell_2_lstm_cell_matmul_grad_matmul_1_rnn_multi_rnn_cell_cell_2_lstm_cell_concatkgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02V
Tgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack�
Bgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul_grad/MatMul_1MatMul]gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack:tensor:0Hgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/split_grad/concat:output:0*
T0* 
_output_shapes
:
��*
transpose_a(*
transpose_b( 2D
Bgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul_grad/MatMul_1�
gradients/AddN_2AddNgradients/grad_ys_13:output:0Ogradients/rnn/multi_rnn_cell/cell_2/lstm_cell/BiasAdd_grad/BiasAddGrad:output:0*
N*
T0*'
_class
loc:@gradients/grad_ys_13*
_output_shapes	
:�2
gradients/AddN_2�
>gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2@
>gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/Rank�
Cgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/mod/ConstConst*
_output_shapes
: *
dtype0*
value	B :2E
Cgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/mod/Const�
=gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/modFloorModLgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/mod/Const:output:0Ggradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2?
=gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/mod�
?gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   2A
?gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/Shape�
Agradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"   �   2C
Agradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/Shape_1�
Fgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/ConcatOffsetConcatOffsetAgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/mod:z:0Hgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/Shape:output:0Jgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2H
Fgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/ConcatOffset�
?gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/SliceSliceJgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul_grad/MatMul:product:0Ogradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/ConcatOffset:offset:0Hgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:	�2A
?gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/Slice�
Agradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/Slice_1SliceJgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul_grad/MatMul:product:0Ogradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/ConcatOffset:offset:1Jgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:	�2C
Agradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/Slice_1�
gradients/AddN_3AddNgradients/grad_ys_12:output:0Lgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul_grad/MatMul_1:product:0*
N*
T0*'
_class
loc:@gradients/grad_ys_12* 
_output_shapes
:
��2
gradients/AddN_3�
\gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1_grad/Mul/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2^
\gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1_grad/Mul/TensorListPopBack/element_shape�
Ngradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1_grad/Mul/TensorListPopBackTensorListPopBackegradients_rnn_multi_rnn_cell_cell_1_dropout_1_mul_1_grad_mul_rnn_multi_rnn_cell_cell_1_dropout_1_castegradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1_grad/Mul/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02P
Ngradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1_grad/Mul/TensorListPopBack�
<gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1_grad/MulMulHgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/Slice:output:0Wgradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1_grad/Mul/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2>
<gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1_grad/Mul�
^gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1_grad/Mul_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2`
^gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1_grad/Mul_1/TensorListPopBack/element_shape�
Pgradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1_grad/Mul_1/TensorListPopBackTensorListPopBackfgradients_rnn_multi_rnn_cell_cell_1_dropout_1_mul_1_grad_mul_1_rnn_multi_rnn_cell_cell_1_dropout_1_mulggradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1_grad/Mul_1/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02R
Pgradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1_grad/Mul_1/TensorListPopBack�
>gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1_grad/Mul_1MulHgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/Slice:output:0Ygradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1_grad/Mul_1/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2@
>gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1_grad/Mul_1�
@gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_grad/Mul/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2B
@gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_grad/Mul/Const�
:gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_grad/MulMul@gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1_grad/Mul:z:0Igradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_grad/Mul/Const:output:0*
T0*
_output_shapes
:	�2<
:gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_grad/Mul�
<gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_grad/Mul_1MulUgradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Mul_1/TensorListPopBack:tensor:0@gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1_grad/Mul:z:0*
T0*
_output_shapes
:	�2>
<gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_grad/Mul_1�
Lgradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2N
Lgradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_grad/Sum/reduction_indices�
:gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_grad/SumSum@gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_grad/Mul_1:z:0Ugradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_grad/Sum/reduction_indices:output:0*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 2<
:gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_grad/Sum�
Dgradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2F
Dgradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_grad/Reshape/shape�
>gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_grad/ReshapeReshapeCgradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_grad/Sum:output:0Mgradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_grad/Reshape/shape:output:0*
T0*
Tshape0*
_output_shapes
: 2@
>gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_grad/Reshape�
gradients/AddN_4AddN<gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Mul:z:0>gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_grad/Mul:z:0*
N*
T0*K
_classA
?=loc:@gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Mul*
_output_shapes
:	�2
gradients/AddN_4�
\gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2^
\gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/TensorListPopBack/element_shape�
Ngradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/TensorListPopBackTensorListPopBackggradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_2_grad_mul_rnn_multi_rnn_cell_cell_1_lstm_cell_tanh_1egradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02P
Ngradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/TensorListPopBack�
<gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/MulMulgradients/AddN_4:sum:0Wgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2>
<gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul�
^gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2`
^gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/TensorListPopBack/element_shape�
Pgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/TensorListPopBackTensorListPopBacklgradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_2_grad_mul_1_rnn_multi_rnn_cell_cell_1_lstm_cell_sigmoid_2ggradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02R
Pgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/TensorListPopBack�
>gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1Mulgradients/AddN_4:sum:0Ygradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2@
>gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1�
Hgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradYgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/TensorListPopBack:tensor:0@gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul:z:0*
T0*
_output_shapes
:	�2J
Hgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2_grad/SigmoidGrad�
Bgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1_grad/TanhGradTanhGradWgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/TensorListPopBack:tensor:0Bgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1:z:0*
T0*
_output_shapes
:	�2D
Bgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1_grad/TanhGrad�
gradients/AddN_5AddNgradients/grad_ys_3:output:0Fgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1_grad/TanhGrad:z:0*
N*
T0*&
_class
loc:@gradients/grad_ys_3*
_output_shapes
:	�2
gradients/AddN_5�
Zgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2\
Zgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul/TensorListPopBack/element_shape�
Lgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul/TensorListPopBackTensorListPopBackHgradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_grad_mul_placeholder_4cgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02N
Lgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul/TensorListPopBack�
:gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/MulMulgradients/AddN_5:sum:0Ugradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2<
:gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul�
\gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2^
\gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/TensorListPopBack/element_shape�
Ngradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/TensorListPopBackTensorListPopBackhgradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_grad_mul_1_rnn_multi_rnn_cell_cell_1_lstm_cell_sigmoidegradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02P
Ngradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/TensorListPopBack�
<gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1Mulgradients/AddN_5:sum:0Wgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2>
<gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1�
\gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2^
\gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/TensorListPopBack/element_shape�
Ngradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/TensorListPopBackTensorListPopBackegradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_1_grad_mul_rnn_multi_rnn_cell_cell_1_lstm_cell_tanhegradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02P
Ngradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/TensorListPopBack�
<gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/MulMulgradients/AddN_5:sum:0Wgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2>
<gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul�
^gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2`
^gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/TensorListPopBack/element_shape�
Pgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/TensorListPopBackTensorListPopBacklgradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_1_grad_mul_1_rnn_multi_rnn_cell_cell_1_lstm_cell_sigmoid_1ggradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02R
Pgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/TensorListPopBack�
>gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1Mulgradients/AddN_5:sum:0Ygradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2@
>gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1�
Fgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradWgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/TensorListPopBack:tensor:0>gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul:z:0*
T0*
_output_shapes
:	�2H
Fgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_grad/SigmoidGrad�
Hgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradYgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/TensorListPopBack:tensor:0@gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul:z:0*
T0*
_output_shapes
:	�2J
Hgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1_grad/SigmoidGrad�
@gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_grad/TanhGradTanhGradWgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/TensorListPopBack:tensor:0Bgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1:z:0*
T0*
_output_shapes
:	�2B
@gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_grad/TanhGrad�
Lgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2N
Lgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Sum/reduction_indices�
:gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/SumSumJgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_grad/SigmoidGrad:z:0Ugradients/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Sum/reduction_indices:output:0*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 2<
:gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Sum�
Dgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2F
Dgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Reshape/shape�
>gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/ReshapeReshapeCgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Sum:output:0Mgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Reshape/shape:output:0*
T0*
Tshape0*
_output_shapes
: 2@
>gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Reshape�
Egradients/rnn/multi_rnn_cell/cell_1/lstm_cell/split_grad/concat/ConstConst*
_output_shapes
: *
dtype0*
value	B :2G
Egradients/rnn/multi_rnn_cell/cell_1/lstm_cell/split_grad/concat/Const�
?gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/split_grad/concatConcatV2Lgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1_grad/SigmoidGrad:z:0Dgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_grad/TanhGrad:z:0Jgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_grad/SigmoidGrad:z:0Lgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2_grad/SigmoidGrad:z:0Ngradients/rnn/multi_rnn_cell/cell_1/lstm_cell/split_grad/concat/Const:output:0*
N*
T0*

Tidx0*
_output_shapes
:	�2A
?gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/split_grad/concat�
Fgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradHgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/split_grad/concat:output:0*
T0*
_output_shapes	
:�*
data_formatNHWC2H
Fgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd_grad/BiasAddGrad�
@gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMulMatMulHgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/split_grad/concat:output:0�gradients_rnn_multi_rnn_cell_cell_1_lstm_cell_matmul_grad_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identity_0*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b(2B
@gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul�
bgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2d
bgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack/element_shape�
Tgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/TensorListPopBackTensorListPopBackmgradients_rnn_multi_rnn_cell_cell_1_lstm_cell_matmul_grad_matmul_1_rnn_multi_rnn_cell_cell_1_lstm_cell_concatkgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02V
Tgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack�
Bgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1MatMul]gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack:tensor:0Hgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/split_grad/concat:output:0*
T0* 
_output_shapes
:
��*
transpose_a(*
transpose_b( 2D
Bgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1�
gradients/AddN_6AddNgradients/grad_ys_11:output:0Ogradients/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd_grad/BiasAddGrad:output:0*
N*
T0*'
_class
loc:@gradients/grad_ys_11*
_output_shapes	
:�2
gradients/AddN_6�
>gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2@
>gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Rank�
Cgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/mod/ConstConst*
_output_shapes
: *
dtype0*
value	B :2E
Cgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/mod/Const�
=gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/modFloorModLgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/mod/Const:output:0Ggradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2?
=gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/mod�
?gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   2A
?gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Shape�
Agradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"   �   2C
Agradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Shape_1�
Fgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ConcatOffsetConcatOffsetAgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/mod:z:0Hgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Shape:output:0Jgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2H
Fgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ConcatOffset�
?gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/SliceSliceJgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul:product:0Ogradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ConcatOffset:offset:0Hgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:	�2A
?gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Slice�
Agradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Slice_1SliceJgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul:product:0Ogradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ConcatOffset:offset:1Jgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:	�2C
Agradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Slice_1�
gradients/AddN_7AddNgradients/grad_ys_10:output:0Lgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1:product:0*
N*
T0*'
_class
loc:@gradients/grad_ys_10* 
_output_shapes
:
��2
gradients/AddN_7�
\gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1_grad/Mul/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2^
\gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1_grad/Mul/TensorListPopBack/element_shape�
Ngradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1_grad/Mul/TensorListPopBackTensorListPopBackegradients_rnn_multi_rnn_cell_cell_0_dropout_1_mul_1_grad_mul_rnn_multi_rnn_cell_cell_0_dropout_1_castegradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1_grad/Mul/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02P
Ngradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1_grad/Mul/TensorListPopBack�
<gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1_grad/MulMulHgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Slice:output:0Wgradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1_grad/Mul/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2>
<gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1_grad/Mul�
^gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1_grad/Mul_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2`
^gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1_grad/Mul_1/TensorListPopBack/element_shape�
Pgradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1_grad/Mul_1/TensorListPopBackTensorListPopBackfgradients_rnn_multi_rnn_cell_cell_0_dropout_1_mul_1_grad_mul_1_rnn_multi_rnn_cell_cell_0_dropout_1_mulggradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1_grad/Mul_1/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02R
Pgradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1_grad/Mul_1/TensorListPopBack�
>gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1_grad/Mul_1MulHgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Slice:output:0Ygradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1_grad/Mul_1/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2@
>gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1_grad/Mul_1�
@gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_grad/Mul/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2B
@gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_grad/Mul/Const�
:gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_grad/MulMul@gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1_grad/Mul:z:0Igradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_grad/Mul/Const:output:0*
T0*
_output_shapes
:	�2<
:gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_grad/Mul�
<gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_grad/Mul_1MulUgradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Mul_1/TensorListPopBack:tensor:0@gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1_grad/Mul:z:0*
T0*
_output_shapes
:	�2>
<gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_grad/Mul_1�
Lgradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2N
Lgradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_grad/Sum/reduction_indices�
:gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_grad/SumSum@gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_grad/Mul_1:z:0Ugradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_grad/Sum/reduction_indices:output:0*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 2<
:gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_grad/Sum�
Dgradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2F
Dgradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_grad/Reshape/shape�
>gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_grad/ReshapeReshapeCgradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_grad/Sum:output:0Mgradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_grad/Reshape/shape:output:0*
T0*
Tshape0*
_output_shapes
: 2@
>gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_grad/Reshape�
gradients/AddN_8AddN<gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Mul:z:0>gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_grad/Mul:z:0*
N*
T0*K
_classA
?=loc:@gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Mul*
_output_shapes
:	�2
gradients/AddN_8�
\gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2^
\gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/TensorListPopBack/element_shape�
Ngradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/TensorListPopBackTensorListPopBackggradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_2_grad_mul_rnn_multi_rnn_cell_cell_0_lstm_cell_tanh_1egradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02P
Ngradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/TensorListPopBack�
<gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/MulMulgradients/AddN_8:sum:0Wgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2>
<gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul�
^gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2`
^gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/TensorListPopBack/element_shape�
Pgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/TensorListPopBackTensorListPopBacklgradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_2_grad_mul_1_rnn_multi_rnn_cell_cell_0_lstm_cell_sigmoid_2ggradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02R
Pgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/TensorListPopBack�
>gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1Mulgradients/AddN_8:sum:0Ygradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2@
>gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1�
Hgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradYgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/TensorListPopBack:tensor:0@gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul:z:0*
T0*
_output_shapes
:	�2J
Hgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2_grad/SigmoidGrad�
Bgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1_grad/TanhGradTanhGradWgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/TensorListPopBack:tensor:0Bgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1:z:0*
T0*
_output_shapes
:	�2D
Bgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1_grad/TanhGrad�
gradients/AddN_9AddNgradients/grad_ys_1:output:0Fgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1_grad/TanhGrad:z:0*
N*
T0*&
_class
loc:@gradients/grad_ys_1*
_output_shapes
:	�2
gradients/AddN_9�
Zgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2\
Zgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul/TensorListPopBack/element_shape�
Lgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul/TensorListPopBackTensorListPopBackHgradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_grad_mul_placeholder_2cgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02N
Lgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul/TensorListPopBack�
:gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/MulMulgradients/AddN_9:sum:0Ugradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2<
:gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul�
\gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2^
\gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/TensorListPopBack/element_shape�
Ngradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/TensorListPopBackTensorListPopBackhgradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_grad_mul_1_rnn_multi_rnn_cell_cell_0_lstm_cell_sigmoidegradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02P
Ngradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/TensorListPopBack�
<gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1Mulgradients/AddN_9:sum:0Wgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2>
<gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1�
\gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2^
\gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/TensorListPopBack/element_shape�
Ngradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/TensorListPopBackTensorListPopBackegradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_1_grad_mul_rnn_multi_rnn_cell_cell_0_lstm_cell_tanhegradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02P
Ngradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/TensorListPopBack�
<gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/MulMulgradients/AddN_9:sum:0Wgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2>
<gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul�
^gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2`
^gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/TensorListPopBack/element_shape�
Pgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/TensorListPopBackTensorListPopBacklgradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_1_grad_mul_1_rnn_multi_rnn_cell_cell_0_lstm_cell_sigmoid_1ggradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02R
Pgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/TensorListPopBack�
>gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1Mulgradients/AddN_9:sum:0Ygradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/TensorListPopBack:tensor:0*
T0*
_output_shapes
:	�2@
>gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1�
Fgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradWgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/TensorListPopBack:tensor:0>gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul:z:0*
T0*
_output_shapes
:	�2H
Fgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_grad/SigmoidGrad�
Hgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradYgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/TensorListPopBack:tensor:0@gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul:z:0*
T0*
_output_shapes
:	�2J
Hgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1_grad/SigmoidGrad�
@gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_grad/TanhGradTanhGradWgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/TensorListPopBack:tensor:0Bgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1:z:0*
T0*
_output_shapes
:	�2B
@gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_grad/TanhGrad�
Lgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2N
Lgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Sum/reduction_indices�
:gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/SumSumJgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_grad/SigmoidGrad:z:0Ugradients/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Sum/reduction_indices:output:0*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 2<
:gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Sum�
Dgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2F
Dgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Reshape/shape�
>gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/ReshapeReshapeCgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Sum:output:0Mgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Reshape/shape:output:0*
T0*
Tshape0*
_output_shapes
: 2@
>gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Reshape�
Egradients/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concat/ConstConst*
_output_shapes
: *
dtype0*
value	B :2G
Egradients/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concat/Const�
?gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concatConcatV2Lgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1_grad/SigmoidGrad:z:0Dgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_grad/TanhGrad:z:0Jgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_grad/SigmoidGrad:z:0Lgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2_grad/SigmoidGrad:z:0Ngradients/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concat/Const:output:0*
N*
T0*

Tidx0*
_output_shapes
:	�2A
?gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concat�
Fgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradHgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concat:output:0*
T0*
_output_shapes	
:�*
data_formatNHWC2H
Fgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_grad/BiasAddGrad�
@gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMulMatMulHgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concat:output:0�gradients_rnn_multi_rnn_cell_cell_0_lstm_cell_matmul_grad_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identity_0*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b(2B
@gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul�
bgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2d
bgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack/element_shape�
Tgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/TensorListPopBackTensorListPopBackmgradients_rnn_multi_rnn_cell_cell_0_lstm_cell_matmul_grad_matmul_1_rnn_multi_rnn_cell_cell_0_lstm_cell_concatkgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack/element_shape:output:0*!
_output_shapes
: :	�*
element_dtype02V
Tgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack�
Bgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1MatMul]gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack:tensor:0Hgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concat:output:0*
T0* 
_output_shapes
:
��*
transpose_a(*
transpose_b( 2D
Bgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1�
gradients/AddN_10AddNgradients/grad_ys_9:output:0Ogradients/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_grad/BiasAddGrad:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_9*
_output_shapes	
:�2
gradients/AddN_10�
>gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2@
>gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Rank�
Cgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/mod/ConstConst*
_output_shapes
: *
dtype0*
value	B :2E
Cgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/mod/Const�
=gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/modFloorModLgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/mod/Const:output:0Ggradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2?
=gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/mod�
?gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2A
?gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Shape�
Agradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"   �   2C
Agradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Shape_1�
Fgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ConcatOffsetConcatOffsetAgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/mod:z:0Hgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Shape:output:0Jgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2H
Fgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ConcatOffset�
?gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/SliceSliceJgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul:product:0Ogradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ConcatOffset:offset:0Hgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:2A
?gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Slice�
Agradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Slice_1SliceJgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul:product:0Ogradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ConcatOffset:offset:1Jgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:	�2C
Agradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Slice_1�
gradients/AddN_11AddNgradients/grad_ys_8:output:0Lgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1:product:0*
N*
T0*&
_class
loc:@gradients/grad_ys_8* 
_output_shapes
:
��2
gradients/AddN_11�
Cgradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListLengthTensorListLength�gradients_tensorarrayv2read_tensorlistgetitem_grad_tensorlistlength_tensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*
_output_shapes
: 2E
Cgradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListLength�
Igradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListElementShapeTensorListElementShape�gradients_tensorarrayv2read_tensorlistgetitem_grad_tensorlistlength_tensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*
_output_shapes
:*

shape_type02K
Igradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListElementShape�
Dgradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListReserveTensorListReserveYgradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListElementShape:element_shape:0Lgradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListLength:length:0*
_output_shapes
: *
element_dtype0*

shape_type02F
Dgradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListReserve�
Dgradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListSetItemTensorListSetItemMgradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListReserve:handle:0`gradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBack:tensor:0Hgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Slice:output:0*
_output_shapes
: *
element_dtype02F
Dgradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListSetItem�
gradients/AddN_12AddNgradients/grad_ys_7:output:0Tgradients/TensorArrayV2Read/TensorListGetItem_grad/TensorListSetItem:output_handle:0*
N*
T0*&
_class
loc:@gradients/grad_ys_7*
_output_shapes
: 2
gradients/AddN_12P
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/yQ
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: 2
addJ
IdentityIdentityadd:z:0*
T0*
_output_shapes
: 2

IdentityT

Identity_1Identityplaceholder_1*
T0*
_output_shapes
: 2

Identity_1T

Identity_2Identityplaceholder_2*
T0*
_output_shapes
: 2

Identity_2�

Identity_3IdentityUgradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2

Identity_3�

Identity_4Identity@gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1:z:0*
T0*
_output_shapes
:	�2

Identity_4�

Identity_5IdentityJgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:	�2

Identity_5�

Identity_6Identity@gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1:z:0*
T0*
_output_shapes
:	�2

Identity_6�

Identity_7IdentityJgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:	�2

Identity_7�

Identity_8Identity@gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_grad/Mul_1:z:0*
T0*
_output_shapes
:	�2

Identity_8�

Identity_9IdentityJgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:	�2

Identity_9`
Identity_10Identitygradients/AddN_12:sum:0*
T0*
_output_shapes
: 2
Identity_10j
Identity_11Identitygradients/AddN_11:sum:0*
T0* 
_output_shapes
:
��2
Identity_11e
Identity_12Identitygradients/AddN_10:sum:0*
T0*
_output_shapes	
:�2
Identity_12i
Identity_13Identitygradients/AddN_7:sum:0*
T0* 
_output_shapes
:
��2
Identity_13d
Identity_14Identitygradients/AddN_6:sum:0*
T0*
_output_shapes	
:�2
Identity_14i
Identity_15Identitygradients/AddN_3:sum:0*
T0* 
_output_shapes
:
��2
Identity_15d
Identity_16Identitygradients/AddN_2:sum:0*
T0*
_output_shapes	
:�2
Identity_16"�
Pgradients_rnn_multi_rnn_cell_cell_0_dropout_1_mul_1_grad_mul_1_tensorlistpopback`gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1_grad/Mul_1/TensorListPopBack:output_handle:0"�
Ngradients_rnn_multi_rnn_cell_cell_0_dropout_1_mul_1_grad_mul_tensorlistpopback^gradients/rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1_grad/Mul/TensorListPopBack:output_handle:0"�
Ngradients_rnn_multi_rnn_cell_cell_0_dropout_mul_1_grad_mul_1_tensorlistpopback^gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_1_grad/Mul_1/TensorListPopBack:output_handle:0"�
Lgradients_rnn_multi_rnn_cell_cell_0_dropout_mul_1_grad_mul_tensorlistpopback\gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_1_grad/Mul/TensorListPopBack:output_handle:0"�
Lgradients_rnn_multi_rnn_cell_cell_0_dropout_mul_grad_mul_1_tensorlistpopback\gradients/rnn/multi_rnn_cell/cell_0/dropout/Mul_grad/Mul_1/TensorListPopBack:output_handle:0"�
Tgradients_rnn_multi_rnn_cell_cell_0_lstm_cell_matmul_grad_matmul_1_tensorlistpopbackdgradients/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack:output_handle:0"�
�gradients_rnn_multi_rnn_cell_cell_0_lstm_cell_matmul_grad_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identity�gradients_rnn_multi_rnn_cell_cell_0_lstm_cell_matmul_grad_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identity_0"�
Pgradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_1_grad_mul_1_tensorlistpopback`gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/TensorListPopBack:output_handle:0"�
Ngradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_1_grad_mul_tensorlistpopback^gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/TensorListPopBack:output_handle:0"�
Pgradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_2_grad_mul_1_tensorlistpopback`gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/TensorListPopBack:output_handle:0"�
Ngradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_2_grad_mul_tensorlistpopback^gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/TensorListPopBack:output_handle:0"�
Ngradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_grad_mul_1_tensorlistpopback^gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/TensorListPopBack:output_handle:0"�
Lgradients_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_grad_mul_tensorlistpopback\gradients/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul/TensorListPopBack:output_handle:0"�
Pgradients_rnn_multi_rnn_cell_cell_1_dropout_1_mul_1_grad_mul_1_tensorlistpopback`gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1_grad/Mul_1/TensorListPopBack:output_handle:0"�
Ngradients_rnn_multi_rnn_cell_cell_1_dropout_1_mul_1_grad_mul_tensorlistpopback^gradients/rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1_grad/Mul/TensorListPopBack:output_handle:0"�
Ngradients_rnn_multi_rnn_cell_cell_1_dropout_mul_1_grad_mul_1_tensorlistpopback^gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_1_grad/Mul_1/TensorListPopBack:output_handle:0"�
Lgradients_rnn_multi_rnn_cell_cell_1_dropout_mul_1_grad_mul_tensorlistpopback\gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_1_grad/Mul/TensorListPopBack:output_handle:0"�
Lgradients_rnn_multi_rnn_cell_cell_1_dropout_mul_grad_mul_1_tensorlistpopback\gradients/rnn/multi_rnn_cell/cell_1/dropout/Mul_grad/Mul_1/TensorListPopBack:output_handle:0"�
Tgradients_rnn_multi_rnn_cell_cell_1_lstm_cell_matmul_grad_matmul_1_tensorlistpopbackdgradients/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack:output_handle:0"�
�gradients_rnn_multi_rnn_cell_cell_1_lstm_cell_matmul_grad_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identity�gradients_rnn_multi_rnn_cell_cell_1_lstm_cell_matmul_grad_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identity_0"�
Pgradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_1_grad_mul_1_tensorlistpopback`gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/TensorListPopBack:output_handle:0"�
Ngradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_1_grad_mul_tensorlistpopback^gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/TensorListPopBack:output_handle:0"�
Pgradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_2_grad_mul_1_tensorlistpopback`gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/TensorListPopBack:output_handle:0"�
Ngradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_2_grad_mul_tensorlistpopback^gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/TensorListPopBack:output_handle:0"�
Ngradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_grad_mul_1_tensorlistpopback^gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/TensorListPopBack:output_handle:0"�
Lgradients_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_grad_mul_tensorlistpopback\gradients/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul/TensorListPopBack:output_handle:0"�
Pgradients_rnn_multi_rnn_cell_cell_2_dropout_1_mul_1_grad_mul_1_tensorlistpopback`gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1_grad/Mul_1/TensorListPopBack:output_handle:0"�
Ngradients_rnn_multi_rnn_cell_cell_2_dropout_1_mul_1_grad_mul_tensorlistpopback^gradients/rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1_grad/Mul/TensorListPopBack:output_handle:0"�
Ngradients_rnn_multi_rnn_cell_cell_2_dropout_mul_1_grad_mul_1_tensorlistpopback^gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_1_grad/Mul_1/TensorListPopBack:output_handle:0"�
Lgradients_rnn_multi_rnn_cell_cell_2_dropout_mul_1_grad_mul_tensorlistpopback\gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_1_grad/Mul/TensorListPopBack:output_handle:0"�
Lgradients_rnn_multi_rnn_cell_cell_2_dropout_mul_grad_mul_1_tensorlistpopback\gradients/rnn/multi_rnn_cell/cell_2/dropout/Mul_grad/Mul_1/TensorListPopBack:output_handle:0"�
Tgradients_rnn_multi_rnn_cell_cell_2_lstm_cell_matmul_grad_matmul_1_tensorlistpopbackdgradients/rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul_grad/MatMul_1/TensorListPopBack:output_handle:0"�
�gradients_rnn_multi_rnn_cell_cell_2_lstm_cell_matmul_grad_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identity�gradients_rnn_multi_rnn_cell_cell_2_lstm_cell_matmul_grad_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identity_0"�
Pgradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_1_grad_mul_1_tensorlistpopback`gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/Mul_1/TensorListPopBack:output_handle:0"�
Ngradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_1_grad_mul_tensorlistpopback^gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1_grad/Mul/TensorListPopBack:output_handle:0"�
Pgradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_2_grad_mul_1_tensorlistpopback`gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/Mul_1/TensorListPopBack:output_handle:0"�
Ngradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_2_grad_mul_tensorlistpopback^gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2_grad/Mul/TensorListPopBack:output_handle:0"�
Ngradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_grad_mul_1_tensorlistpopback^gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_grad/Mul_1/TensorListPopBack:output_handle:0"�
Lgradients_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_grad_mul_tensorlistpopback\gradients/rnn/multi_rnn_cell/cell_2/lstm_cell/mul_grad/Mul/TensorListPopBack:output_handle:0"�
�gradients_tensorarrayv2read_tensorlistgetitem_grad_tensorlistlength_tensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensor�gradients_tensorarrayv2read_tensorlistgetitem_grad_tensorlistlength_tensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensor_0"�
Wgradients_tensorarrayv2write_tensorlistsetitem_grad_tensorlistsetitem_tensorlistpopbackggradients/TensorArrayV2Write/TensorListSetItem_grad/TensorListSetItem/TensorListPopBack:output_handle:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*�
_input_shapes�
�: : : : :	�:	�:	�:	�:	�:	�: :
��:�:
��:�:
��:�: : : : : : : : : : : : : : : : : : :
��: : : : : : : : : :
��: : : : : : : : : :
��: : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%	!

_output_shapes
:	�:


_output_shapes
: :&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :&#"
 
_output_shapes
:
��:$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :&-"
 
_output_shapes
:
��:.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :&7"
 
_output_shapes
:
��:8

_output_shapes
: :9

_output_shapes
: 
�
�
rnn_2_while_body_3227
rnn_2_while_loop_counter
rnn_2_strided_slice_0
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4
placeholder_5
placeholder_6
placeholder_7
rnn_2_minimum_0W
Stensorarrayv2read_tensorlistgetitem_rnn_2_tensorarrayunstack_tensorlistfromtensor_0i
ernn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identity_0h
drnn_multi_rnn_cell_cell_0_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_lstm_cell_bias_read_identity_0i
ernn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identity_0h
drnn_multi_rnn_cell_cell_1_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_1_lstm_cell_bias_read_identity_0i
ernn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identity_0h
drnn_multi_rnn_cell_cell_2_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_2_lstm_cell_bias_read_identity_0	
add_1
rnn_2_strided_slice
add(
$tensorarrayv2write_tensorlistsetitem-
)rnn_multi_rnn_cell_cell_0_lstm_cell_add_1-
)rnn_multi_rnn_cell_cell_0_lstm_cell_mul_2-
)rnn_multi_rnn_cell_cell_1_lstm_cell_add_1-
)rnn_multi_rnn_cell_cell_1_lstm_cell_mul_2-
)rnn_multi_rnn_cell_cell_2_lstm_cell_add_1-
)rnn_multi_rnn_cell_cell_2_lstm_cell_mul_2
rnn_2_minimumU
Qtensorarrayv2read_tensorlistgetitem_rnn_2_tensorarrayunstack_tensorlistfromtensorg
crnn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identityf
brnn_multi_rnn_cell_cell_0_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_lstm_cell_bias_read_identityg
crnn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identityf
brnn_multi_rnn_cell_cell_1_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_1_lstm_cell_bias_read_identityg
crnn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identityf
brnn_multi_rnn_cell_cell_2_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_2_lstm_cell_bias_read_identity�
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      23
1TensorArrayV2Read/TensorListGetItem/element_shape�
#TensorArrayV2Read/TensorListGetItemTensorListGetItemStensorarrayv2read_tensorlistgetitem_rnn_2_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype02%
#TensorArrayV2Read/TensorListGetItem�
/rnn/multi_rnn_cell/cell_0/lstm_cell/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :21
/rnn/multi_rnn_cell/cell_0/lstm_cell/concat/axis�
*rnn/multi_rnn_cell/cell_0/lstm_cell/concatConcatV2*TensorArrayV2Read/TensorListGetItem:item:0placeholder_38rnn/multi_rnn_cell/cell_0/lstm_cell/concat/axis:output:0*
N*
T0*

Tidx0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_0/lstm_cell/concat�
*rnn/multi_rnn_cell/cell_0/lstm_cell/MatMulMatMul3rnn/multi_rnn_cell/cell_0/lstm_cell/concat:output:0ernn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identity_0*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b( 2,
*rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul�
+rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAddBiasAdd4rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul:product:0drnn_multi_rnn_cell_cell_0_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_lstm_cell_bias_read_identity_0*
T0*
_output_shapes
:	�*
data_formatNHWC2-
+rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd�
)rnn/multi_rnn_cell/cell_0/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/Const�
3rnn/multi_rnn_cell/cell_0/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :25
3rnn/multi_rnn_cell/cell_0/lstm_cell/split/split_dim�
)rnn/multi_rnn_cell/cell_0/lstm_cell/splitSplit<rnn/multi_rnn_cell/cell_0/lstm_cell/split/split_dim:output:04rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd:output:0*
T0*@
_output_shapes.
,:	�:	�:	�:	�*
	num_split2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/split�
)rnn/multi_rnn_cell/cell_0/lstm_cell/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/add/y�
'rnn/multi_rnn_cell/cell_0/lstm_cell/addAddV22rnn/multi_rnn_cell/cell_0/lstm_cell/split:output:22rnn/multi_rnn_cell/cell_0/lstm_cell/add/y:output:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_0/lstm_cell/add�
+rnn/multi_rnn_cell/cell_0/lstm_cell/SigmoidSigmoid+rnn/multi_rnn_cell/cell_0/lstm_cell/add:z:0*
T0*
_output_shapes
:	�2-
+rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid�
'rnn/multi_rnn_cell/cell_0/lstm_cell/mulMul/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid:y:0placeholder_2*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_0/lstm_cell/mul�
-rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1Sigmoid2rnn/multi_rnn_cell/cell_0/lstm_cell/split:output:0*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1�
(rnn/multi_rnn_cell/cell_0/lstm_cell/TanhTanh2rnn/multi_rnn_cell/cell_0/lstm_cell/split:output:1*
T0*
_output_shapes
:	�2*
(rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh�
)rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1Mul1rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1:y:0,rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1�
)rnn/multi_rnn_cell/cell_0/lstm_cell/add_1AddV2+rnn/multi_rnn_cell/cell_0/lstm_cell/mul:z:0-rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1:z:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/add_1�
-rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2Sigmoid2rnn/multi_rnn_cell/cell_0/lstm_cell/split:output:3*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2�
*rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1Tanh-rnn/multi_rnn_cell/cell_0/lstm_cell/add_1:z:0*
T0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1�
)rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2Mul1rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2:y:0.rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2�
/rnn/multi_rnn_cell/cell_1/lstm_cell/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :21
/rnn/multi_rnn_cell/cell_1/lstm_cell/concat/axis�
*rnn/multi_rnn_cell/cell_1/lstm_cell/concatConcatV2-rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2:z:0placeholder_58rnn/multi_rnn_cell/cell_1/lstm_cell/concat/axis:output:0*
N*
T0*

Tidx0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_1/lstm_cell/concat�
*rnn/multi_rnn_cell/cell_1/lstm_cell/MatMulMatMul3rnn/multi_rnn_cell/cell_1/lstm_cell/concat:output:0ernn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identity_0*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b( 2,
*rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul�
+rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAddBiasAdd4rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul:product:0drnn_multi_rnn_cell_cell_1_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_1_lstm_cell_bias_read_identity_0*
T0*
_output_shapes
:	�*
data_formatNHWC2-
+rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd�
)rnn/multi_rnn_cell/cell_1/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/Const�
3rnn/multi_rnn_cell/cell_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :25
3rnn/multi_rnn_cell/cell_1/lstm_cell/split/split_dim�
)rnn/multi_rnn_cell/cell_1/lstm_cell/splitSplit<rnn/multi_rnn_cell/cell_1/lstm_cell/split/split_dim:output:04rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd:output:0*
T0*@
_output_shapes.
,:	�:	�:	�:	�*
	num_split2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/split�
)rnn/multi_rnn_cell/cell_1/lstm_cell/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/add/y�
'rnn/multi_rnn_cell/cell_1/lstm_cell/addAddV22rnn/multi_rnn_cell/cell_1/lstm_cell/split:output:22rnn/multi_rnn_cell/cell_1/lstm_cell/add/y:output:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_1/lstm_cell/add�
+rnn/multi_rnn_cell/cell_1/lstm_cell/SigmoidSigmoid+rnn/multi_rnn_cell/cell_1/lstm_cell/add:z:0*
T0*
_output_shapes
:	�2-
+rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid�
'rnn/multi_rnn_cell/cell_1/lstm_cell/mulMul/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid:y:0placeholder_4*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_1/lstm_cell/mul�
-rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1Sigmoid2rnn/multi_rnn_cell/cell_1/lstm_cell/split:output:0*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1�
(rnn/multi_rnn_cell/cell_1/lstm_cell/TanhTanh2rnn/multi_rnn_cell/cell_1/lstm_cell/split:output:1*
T0*
_output_shapes
:	�2*
(rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh�
)rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1Mul1rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1:y:0,rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1�
)rnn/multi_rnn_cell/cell_1/lstm_cell/add_1AddV2+rnn/multi_rnn_cell/cell_1/lstm_cell/mul:z:0-rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1:z:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/add_1�
-rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2Sigmoid2rnn/multi_rnn_cell/cell_1/lstm_cell/split:output:3*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2�
*rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1Tanh-rnn/multi_rnn_cell/cell_1/lstm_cell/add_1:z:0*
T0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1�
)rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2Mul1rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2:y:0.rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2�
/rnn/multi_rnn_cell/cell_2/lstm_cell/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :21
/rnn/multi_rnn_cell/cell_2/lstm_cell/concat/axis�
*rnn/multi_rnn_cell/cell_2/lstm_cell/concatConcatV2-rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2:z:0placeholder_78rnn/multi_rnn_cell/cell_2/lstm_cell/concat/axis:output:0*
N*
T0*

Tidx0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_2/lstm_cell/concat�
*rnn/multi_rnn_cell/cell_2/lstm_cell/MatMulMatMul3rnn/multi_rnn_cell/cell_2/lstm_cell/concat:output:0ernn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identity_0*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b( 2,
*rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul�
+rnn/multi_rnn_cell/cell_2/lstm_cell/BiasAddBiasAdd4rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul:product:0drnn_multi_rnn_cell_cell_2_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_2_lstm_cell_bias_read_identity_0*
T0*
_output_shapes
:	�*
data_formatNHWC2-
+rnn/multi_rnn_cell/cell_2/lstm_cell/BiasAdd�
)rnn/multi_rnn_cell/cell_2/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/Const�
3rnn/multi_rnn_cell/cell_2/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :25
3rnn/multi_rnn_cell/cell_2/lstm_cell/split/split_dim�
)rnn/multi_rnn_cell/cell_2/lstm_cell/splitSplit<rnn/multi_rnn_cell/cell_2/lstm_cell/split/split_dim:output:04rnn/multi_rnn_cell/cell_2/lstm_cell/BiasAdd:output:0*
T0*@
_output_shapes.
,:	�:	�:	�:	�*
	num_split2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/split�
)rnn/multi_rnn_cell/cell_2/lstm_cell/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/add/y�
'rnn/multi_rnn_cell/cell_2/lstm_cell/addAddV22rnn/multi_rnn_cell/cell_2/lstm_cell/split:output:22rnn/multi_rnn_cell/cell_2/lstm_cell/add/y:output:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_2/lstm_cell/add�
+rnn/multi_rnn_cell/cell_2/lstm_cell/SigmoidSigmoid+rnn/multi_rnn_cell/cell_2/lstm_cell/add:z:0*
T0*
_output_shapes
:	�2-
+rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid�
'rnn/multi_rnn_cell/cell_2/lstm_cell/mulMul/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid:y:0placeholder_6*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_2/lstm_cell/mul�
-rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_1Sigmoid2rnn/multi_rnn_cell/cell_2/lstm_cell/split:output:0*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_1�
(rnn/multi_rnn_cell/cell_2/lstm_cell/TanhTanh2rnn/multi_rnn_cell/cell_2/lstm_cell/split:output:1*
T0*
_output_shapes
:	�2*
(rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh�
)rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1Mul1rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_1:y:0,rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1�
)rnn/multi_rnn_cell/cell_2/lstm_cell/add_1AddV2+rnn/multi_rnn_cell/cell_2/lstm_cell/mul:z:0-rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1:z:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/add_1�
-rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_2Sigmoid2rnn/multi_rnn_cell/cell_2/lstm_cell/split:output:3*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_2�
*rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_1Tanh-rnn/multi_rnn_cell/cell_2/lstm_cell/add_1:z:0*
T0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_1�
)rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2Mul1rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_2:y:0.rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_1:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2�
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholder-rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype02&
$TensorArrayV2Write/TensorListSetItemP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/y;
add_0AddV2placeholderadd/y:output:0*
T02
addT
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
add_1/yN
add_1_0AddV2rnn_2_while_loop_counteradd_1/y:output:0*
T02
add_1"
add	add_0:z:0"
add_1add_1_0:z:0" 
rnn_2_minimumrnn_2_minimum_0",
rnn_2_strided_slicernn_2_strided_slice_0"Z
)rnn_multi_rnn_cell_cell_0_lstm_cell_add_1-rnn/multi_rnn_cell/cell_0/lstm_cell/add_1:z:0"�
brnn_multi_rnn_cell_cell_0_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_lstm_cell_bias_read_identitydrnn_multi_rnn_cell_cell_0_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_lstm_cell_bias_read_identity_0"�
crnn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identityernn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identity_0"Z
)rnn_multi_rnn_cell_cell_0_lstm_cell_mul_2-rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2:z:0"Z
)rnn_multi_rnn_cell_cell_1_lstm_cell_add_1-rnn/multi_rnn_cell/cell_1/lstm_cell/add_1:z:0"�
brnn_multi_rnn_cell_cell_1_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_1_lstm_cell_bias_read_identitydrnn_multi_rnn_cell_cell_1_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_1_lstm_cell_bias_read_identity_0"�
crnn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identityernn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identity_0"Z
)rnn_multi_rnn_cell_cell_1_lstm_cell_mul_2-rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2:z:0"Z
)rnn_multi_rnn_cell_cell_2_lstm_cell_add_1-rnn/multi_rnn_cell/cell_2/lstm_cell/add_1:z:0"�
brnn_multi_rnn_cell_cell_2_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_2_lstm_cell_bias_read_identitydrnn_multi_rnn_cell_cell_2_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_2_lstm_cell_bias_read_identity_0"�
crnn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identityernn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identity_0"Z
)rnn_multi_rnn_cell_cell_2_lstm_cell_mul_2-rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2:z:0"�
Qtensorarrayv2read_tensorlistgetitem_rnn_2_tensorarrayunstack_tensorlistfromtensorStensorarrayv2read_tensorlistgetitem_rnn_2_tensorarrayunstack_tensorlistfromtensor_0"\
$tensorarrayv2write_tensorlistsetitem4TensorArrayV2Write/TensorListSetItem:output_handle:0*�
_input_shapes�
�: : : : :	�:	�:	�:	�:	�:	�: : :
��:�:
��:�:
��:�: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%	!

_output_shapes
:	�:


_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�
�
�
rnn_2_while_cond_3226
rnn_2_while_loop_counter
rnn_2_strided_slice
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4
placeholder_5
placeholder_6
placeholder_7
less_rnn_2_minimum2
.rnn_2_while_cond_3226___redundant_placeholder02
.rnn_2_while_cond_3226___redundant_placeholder12
.rnn_2_while_cond_3226___redundant_placeholder22
.rnn_2_while_cond_3226___redundant_placeholder32
.rnn_2_while_cond_3226___redundant_placeholder42
.rnn_2_while_cond_3226___redundant_placeholder52
.rnn_2_while_cond_3226___redundant_placeholder6

logicaland
V
LessLessplaceholderless_rnn_2_minimum*
T0*
_output_shapes
: 2
Lessh
Less_1Lessrnn_2_while_loop_counterrnn_2_strided_slice*
T0*
_output_shapes
: 2
Less_1T

LogicalAnd
LogicalAnd
Less_1:z:0Less:z:0*
_output_shapes
: 2

LogicalAnd"

logicalandLogicalAnd:z:0*{
_input_shapesj
h: : : : :	�:	�:	�:	�:	�:	�: :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%	!

_output_shapes
:	�:


_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
:
�
�
rnn_1_while_cond_1698
rnn_1_while_loop_counter
rnn_1_strided_slice
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4
placeholder_5
placeholder_6
placeholder_7
less_rnn_1_minimum2
.rnn_1_while_cond_1698___redundant_placeholder02
.rnn_1_while_cond_1698___redundant_placeholder12
.rnn_1_while_cond_1698___redundant_placeholder22
.rnn_1_while_cond_1698___redundant_placeholder32
.rnn_1_while_cond_1698___redundant_placeholder42
.rnn_1_while_cond_1698___redundant_placeholder52
.rnn_1_while_cond_1698___redundant_placeholder6

logicaland
V
LessLessplaceholderless_rnn_1_minimum*
T0*
_output_shapes
: 2
Lessh
Less_1Lessrnn_1_while_loop_counterrnn_1_strided_slice*
T0*
_output_shapes
: 2
Less_1T

LogicalAnd
LogicalAnd
Less_1:z:0Less:z:0*
_output_shapes
: 2

LogicalAnd"

logicalandLogicalAnd:z:0*{
_input_shapesj
h: : : : :	�:	�:	�:	�:	�:	�: :::::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%	!

_output_shapes
:	�:


_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
:
�
�	
)rnn_1_while_cond_1698_rewritten_grad_2818
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4
placeholder_5
placeholder_6
placeholder_7
placeholder_8
placeholder_9
placeholder_10
placeholder_11
placeholder_12
placeholder_13
placeholder_14
placeholder_15
placeholder_16
placeholder_17
placeholder_18
placeholder_19
placeholder_20
placeholder_21
placeholder_22
placeholder_23
placeholder_24
placeholder_25
placeholder_26
placeholder_27
placeholder_28
placeholder_29
placeholder_30
placeholder_31
placeholder_32
placeholder_33
placeholder_34
placeholder_35
placeholder_36
placeholder_37
placeholder_38
placeholder_39
placeholder_40
placeholder_41
placeholder_42
placeholder_43
placeholder_44
placeholder_45
placeholder_46
placeholder_47
placeholder_48
placeholder_49
placeholder_50
placeholder_51
placeholder_52
placeholder_53
placeholder_54
placeholder_55
placeholder_56
placeholder_57
identity
Q
LessLessplaceholderplaceholder_2*
T0*
_output_shapes
: 2
LessK
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0*�
_input_shapes�
�: : : : :	�:	�:	�:	�:	�:	�: :
��:�:
��:�:
��:�: : : : : : : : : : : : : : : : : : :
��: : : : : : : : : :
��: : : : : : : : : :
��: : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%	!

_output_shapes
:	�:


_output_shapes
: :&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :&#"
 
_output_shapes
:
��:$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :&-"
 
_output_shapes
:
��:.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :&7"
 
_output_shapes
:
��:8

_output_shapes
: :9

_output_shapes
: 
��
�6
rnn_1_while_body_1699_rewritten
rnn_1_while_loop_counter
rnn_1_strided_slice_0
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4
placeholder_5
placeholder_6
placeholder_7
rnn_1_minimum_0W
Stensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensor_0i
ernn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identity_0h
drnn_multi_rnn_cell_cell_0_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_lstm_cell_bias_read_identity_0i
ernn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identity_0h
drnn_multi_rnn_cell_cell_1_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_1_lstm_cell_bias_read_identity_0i
ernn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identity_0h
drnn_multi_rnn_cell_cell_2_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_2_lstm_cell_bias_read_identity_0K
Gtensorlistpushback_gradients_rnn_1_while_grad_placeholder_0_accumulatorh
dtensorlistpushback_1_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_dropout_cast_0_accumulatorg
ctensorlistpushback_2_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_dropout_mul_0_accumulatorh
dtensorlistpushback_3_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_dropout_cast_0_accumulatorg
ctensorlistpushback_4_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_dropout_mul_0_accumulatorh
dtensorlistpushback_5_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_dropout_cast_0_accumulatorg
ctensorlistpushback_6_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_dropout_mul_0_accumulatorj
ftensorlistpushback_7_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_dropout_1_cast_0_accumulatori
etensorlistpushback_8_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_dropout_1_mul_0_accumulatork
gtensorlistpushback_9_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_2_0_accumulatorl
htensorlistpushback_10_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_2_0_accumulatorl
htensorlistpushback_11_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_2_0_accumulatorm
itensorlistpushback_12_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_lstm_cell_tanh_1_0_accumulatorp
ltensorlistpushback_13_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_lstm_cell_sigmoid_2_0_accumulatorP
Ltensorlistpushback_14_gradients_rnn_1_while_grad_placeholder_6_0_accumulatorn
jtensorlistpushback_15_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_lstm_cell_sigmoid_0_accumulatork
gtensorlistpushback_16_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_lstm_cell_tanh_0_accumulatorp
ltensorlistpushback_17_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_lstm_cell_sigmoid_1_0_accumulatorm
itensorlistpushback_18_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_lstm_cell_concat_0_accumulatork
gtensorlistpushback_19_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_dropout_1_cast_0_accumulatorj
ftensorlistpushback_20_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_dropout_1_mul_0_accumulatorm
itensorlistpushback_21_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_lstm_cell_tanh_1_0_accumulatorp
ltensorlistpushback_22_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_lstm_cell_sigmoid_2_0_accumulatorP
Ltensorlistpushback_23_gradients_rnn_1_while_grad_placeholder_4_0_accumulatorn
jtensorlistpushback_24_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_lstm_cell_sigmoid_0_accumulatork
gtensorlistpushback_25_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_lstm_cell_tanh_0_accumulatorp
ltensorlistpushback_26_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_lstm_cell_sigmoid_1_0_accumulatorm
itensorlistpushback_27_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_lstm_cell_concat_0_accumulatork
gtensorlistpushback_28_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_dropout_1_cast_0_accumulatorj
ftensorlistpushback_29_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_dropout_1_mul_0_accumulatorm
itensorlistpushback_30_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_lstm_cell_tanh_1_0_accumulatorp
ltensorlistpushback_31_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_lstm_cell_sigmoid_2_0_accumulatorP
Ltensorlistpushback_32_gradients_rnn_1_while_grad_placeholder_2_0_accumulatorn
jtensorlistpushback_33_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_lstm_cell_sigmoid_0_accumulatork
gtensorlistpushback_34_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_lstm_cell_tanh_0_accumulatorp
ltensorlistpushback_35_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_lstm_cell_sigmoid_1_0_accumulatorm
itensorlistpushback_36_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_lstm_cell_concat_0_accumulator	
add_1
rnn_1_strided_slice
add(
$tensorarrayv2write_tensorlistsetitem-
)rnn_multi_rnn_cell_cell_0_lstm_cell_add_1+
'rnn_multi_rnn_cell_cell_0_dropout_mul_1-
)rnn_multi_rnn_cell_cell_1_lstm_cell_add_1+
'rnn_multi_rnn_cell_cell_1_dropout_mul_1-
)rnn_multi_rnn_cell_cell_2_lstm_cell_add_1+
'rnn_multi_rnn_cell_cell_2_dropout_mul_1
rnn_1_minimumU
Qtensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensorg
crnn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identityf
brnn_multi_rnn_cell_cell_0_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_lstm_cell_bias_read_identityg
crnn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identityf
brnn_multi_rnn_cell_cell_1_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_1_lstm_cell_bias_read_identityg
crnn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identityf
brnn_multi_rnn_cell_cell_2_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_2_lstm_cell_bias_read_identity
tensorlistpushback
tensorlistpushback_1
tensorlistpushback_2
tensorlistpushback_3
tensorlistpushback_4
tensorlistpushback_5
tensorlistpushback_6
tensorlistpushback_7
tensorlistpushback_8
tensorlistpushback_9
tensorlistpushback_10
tensorlistpushback_11
tensorlistpushback_12
tensorlistpushback_13
tensorlistpushback_14
tensorlistpushback_15
tensorlistpushback_16
tensorlistpushback_17
tensorlistpushback_18
tensorlistpushback_19
tensorlistpushback_20
tensorlistpushback_21
tensorlistpushback_22
tensorlistpushback_23
tensorlistpushback_24
tensorlistpushback_25
tensorlistpushback_26
tensorlistpushback_27
tensorlistpushback_28
tensorlistpushback_29
tensorlistpushback_30
tensorlistpushback_31
tensorlistpushback_32
tensorlistpushback_33
tensorlistpushback_34
tensorlistpushback_35
tensorlistpushback_36��
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      23
1TensorArrayV2Read/TensorListGetItem/element_shape�
#TensorArrayV2Read/TensorListGetItemTensorListGetItemStensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype02%
#TensorArrayV2Read/TensorListGetItem�
/rnn/multi_rnn_cell/cell_0/lstm_cell/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :21
/rnn/multi_rnn_cell/cell_0/lstm_cell/concat/axis�
*rnn/multi_rnn_cell/cell_0/lstm_cell/concatConcatV2*TensorArrayV2Read/TensorListGetItem:item:0placeholder_38rnn/multi_rnn_cell/cell_0/lstm_cell/concat/axis:output:0*
N*
T0*

Tidx0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_0/lstm_cell/concat�
*rnn/multi_rnn_cell/cell_0/lstm_cell/MatMulMatMul3rnn/multi_rnn_cell/cell_0/lstm_cell/concat:output:0ernn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identity_0*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b( 2,
*rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul�
+rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAddBiasAdd4rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul:product:0drnn_multi_rnn_cell_cell_0_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_lstm_cell_bias_read_identity_0*
T0*
_output_shapes
:	�*
data_formatNHWC2-
+rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd�
)rnn/multi_rnn_cell/cell_0/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/Const�
3rnn/multi_rnn_cell/cell_0/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :25
3rnn/multi_rnn_cell/cell_0/lstm_cell/split/split_dim�
)rnn/multi_rnn_cell/cell_0/lstm_cell/splitSplit<rnn/multi_rnn_cell/cell_0/lstm_cell/split/split_dim:output:04rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd:output:0*
T0*@
_output_shapes.
,:	�:	�:	�:	�*
	num_split2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/split�
)rnn/multi_rnn_cell/cell_0/lstm_cell/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/add/y�
'rnn/multi_rnn_cell/cell_0/lstm_cell/addAddV22rnn/multi_rnn_cell/cell_0/lstm_cell/split:output:22rnn/multi_rnn_cell/cell_0/lstm_cell/add/y:output:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_0/lstm_cell/add�
+rnn/multi_rnn_cell/cell_0/lstm_cell/SigmoidSigmoid+rnn/multi_rnn_cell/cell_0/lstm_cell/add:z:0*
T0*
_output_shapes
:	�2-
+rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid�
'rnn/multi_rnn_cell/cell_0/lstm_cell/mulMul/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid:y:0placeholder_2*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_0/lstm_cell/mul�
-rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1Sigmoid2rnn/multi_rnn_cell/cell_0/lstm_cell/split:output:0*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1�
(rnn/multi_rnn_cell/cell_0/lstm_cell/TanhTanh2rnn/multi_rnn_cell/cell_0/lstm_cell/split:output:1*
T0*
_output_shapes
:	�2*
(rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh�
)rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1Mul1rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1:y:0,rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1�
)rnn/multi_rnn_cell/cell_0/lstm_cell/add_1AddV2+rnn/multi_rnn_cell/cell_0/lstm_cell/mul:z:0-rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1:z:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/add_1�
-rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2Sigmoid2rnn/multi_rnn_cell/cell_0/lstm_cell/split:output:3*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2�
*rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1Tanh-rnn/multi_rnn_cell/cell_0/lstm_cell/add_1:z:0*
T0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1�
)rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2Mul1rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2:y:0.rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2�
'rnn/multi_rnn_cell/cell_0/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2)
'rnn/multi_rnn_cell/cell_0/dropout/Const�
%rnn/multi_rnn_cell/cell_0/dropout/MulMul-rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2:z:00rnn/multi_rnn_cell/cell_0/dropout/Const:output:0*
T0*
_output_shapes
:	�2'
%rnn/multi_rnn_cell/cell_0/dropout/Mul�
'rnn/multi_rnn_cell/cell_0/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   2)
'rnn/multi_rnn_cell/cell_0/dropout/Shape�
>rnn/multi_rnn_cell/cell_0/dropout/random_uniform/RandomUniformRandomUniform0rnn/multi_rnn_cell/cell_0/dropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype0*

seed *
seed2 2@
>rnn/multi_rnn_cell/cell_0/dropout/random_uniform/RandomUniform�
0rnn/multi_rnn_cell/cell_0/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>22
0rnn/multi_rnn_cell/cell_0/dropout/GreaterEqual/y�
.rnn/multi_rnn_cell/cell_0/dropout/GreaterEqualGreaterEqualGrnn/multi_rnn_cell/cell_0/dropout/random_uniform/RandomUniform:output:09rnn/multi_rnn_cell/cell_0/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�20
.rnn/multi_rnn_cell/cell_0/dropout/GreaterEqual�
&rnn/multi_rnn_cell/cell_0/dropout/CastCast2rnn/multi_rnn_cell/cell_0/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
:	�2(
&rnn/multi_rnn_cell/cell_0/dropout/Cast�
'rnn/multi_rnn_cell/cell_0/dropout/Mul_1Mul)rnn/multi_rnn_cell/cell_0/dropout/Mul:z:0*rnn/multi_rnn_cell/cell_0/dropout/Cast:y:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_0/dropout/Mul_1�
)rnn/multi_rnn_cell/cell_0/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)rnn/multi_rnn_cell/cell_0/dropout_1/Const�
'rnn/multi_rnn_cell/cell_0/dropout_1/MulMul-rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2:z:02rnn/multi_rnn_cell/cell_0/dropout_1/Const:output:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_0/dropout_1/Mul�
)rnn/multi_rnn_cell/cell_0/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   2+
)rnn/multi_rnn_cell/cell_0/dropout_1/Shape�
@rnn/multi_rnn_cell/cell_0/dropout_1/random_uniform/RandomUniformRandomUniform2rnn/multi_rnn_cell/cell_0/dropout_1/Shape:output:0*
T0*
_output_shapes
:	�*
dtype0*

seed *
seed2 2B
@rnn/multi_rnn_cell/cell_0/dropout_1/random_uniform/RandomUniform�
2rnn/multi_rnn_cell/cell_0/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>24
2rnn/multi_rnn_cell/cell_0/dropout_1/GreaterEqual/y�
0rnn/multi_rnn_cell/cell_0/dropout_1/GreaterEqualGreaterEqualIrnn/multi_rnn_cell/cell_0/dropout_1/random_uniform/RandomUniform:output:0;rnn/multi_rnn_cell/cell_0/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�22
0rnn/multi_rnn_cell/cell_0/dropout_1/GreaterEqual�
(rnn/multi_rnn_cell/cell_0/dropout_1/CastCast4rnn/multi_rnn_cell/cell_0/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
:	�2*
(rnn/multi_rnn_cell/cell_0/dropout_1/Cast�
)rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1Mul+rnn/multi_rnn_cell/cell_0/dropout_1/Mul:z:0,rnn/multi_rnn_cell/cell_0/dropout_1/Cast:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1�
/rnn/multi_rnn_cell/cell_1/lstm_cell/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :21
/rnn/multi_rnn_cell/cell_1/lstm_cell/concat/axis�
*rnn/multi_rnn_cell/cell_1/lstm_cell/concatConcatV2-rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1:z:0placeholder_58rnn/multi_rnn_cell/cell_1/lstm_cell/concat/axis:output:0*
N*
T0*

Tidx0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_1/lstm_cell/concat�
*rnn/multi_rnn_cell/cell_1/lstm_cell/MatMulMatMul3rnn/multi_rnn_cell/cell_1/lstm_cell/concat:output:0ernn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identity_0*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b( 2,
*rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul�
+rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAddBiasAdd4rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul:product:0drnn_multi_rnn_cell_cell_1_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_1_lstm_cell_bias_read_identity_0*
T0*
_output_shapes
:	�*
data_formatNHWC2-
+rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd�
)rnn/multi_rnn_cell/cell_1/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/Const�
3rnn/multi_rnn_cell/cell_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :25
3rnn/multi_rnn_cell/cell_1/lstm_cell/split/split_dim�
)rnn/multi_rnn_cell/cell_1/lstm_cell/splitSplit<rnn/multi_rnn_cell/cell_1/lstm_cell/split/split_dim:output:04rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd:output:0*
T0*@
_output_shapes.
,:	�:	�:	�:	�*
	num_split2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/split�
)rnn/multi_rnn_cell/cell_1/lstm_cell/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/add/y�
'rnn/multi_rnn_cell/cell_1/lstm_cell/addAddV22rnn/multi_rnn_cell/cell_1/lstm_cell/split:output:22rnn/multi_rnn_cell/cell_1/lstm_cell/add/y:output:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_1/lstm_cell/add�
+rnn/multi_rnn_cell/cell_1/lstm_cell/SigmoidSigmoid+rnn/multi_rnn_cell/cell_1/lstm_cell/add:z:0*
T0*
_output_shapes
:	�2-
+rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid�
'rnn/multi_rnn_cell/cell_1/lstm_cell/mulMul/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid:y:0placeholder_4*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_1/lstm_cell/mul�
-rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1Sigmoid2rnn/multi_rnn_cell/cell_1/lstm_cell/split:output:0*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1�
(rnn/multi_rnn_cell/cell_1/lstm_cell/TanhTanh2rnn/multi_rnn_cell/cell_1/lstm_cell/split:output:1*
T0*
_output_shapes
:	�2*
(rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh�
)rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1Mul1rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1:y:0,rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1�
)rnn/multi_rnn_cell/cell_1/lstm_cell/add_1AddV2+rnn/multi_rnn_cell/cell_1/lstm_cell/mul:z:0-rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1:z:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/add_1�
-rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2Sigmoid2rnn/multi_rnn_cell/cell_1/lstm_cell/split:output:3*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2�
*rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1Tanh-rnn/multi_rnn_cell/cell_1/lstm_cell/add_1:z:0*
T0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1�
)rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2Mul1rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2:y:0.rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2�
'rnn/multi_rnn_cell/cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2)
'rnn/multi_rnn_cell/cell_1/dropout/Const�
%rnn/multi_rnn_cell/cell_1/dropout/MulMul-rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2:z:00rnn/multi_rnn_cell/cell_1/dropout/Const:output:0*
T0*
_output_shapes
:	�2'
%rnn/multi_rnn_cell/cell_1/dropout/Mul�
'rnn/multi_rnn_cell/cell_1/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   2)
'rnn/multi_rnn_cell/cell_1/dropout/Shape�
>rnn/multi_rnn_cell/cell_1/dropout/random_uniform/RandomUniformRandomUniform0rnn/multi_rnn_cell/cell_1/dropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype0*

seed *
seed2 2@
>rnn/multi_rnn_cell/cell_1/dropout/random_uniform/RandomUniform�
0rnn/multi_rnn_cell/cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>22
0rnn/multi_rnn_cell/cell_1/dropout/GreaterEqual/y�
.rnn/multi_rnn_cell/cell_1/dropout/GreaterEqualGreaterEqualGrnn/multi_rnn_cell/cell_1/dropout/random_uniform/RandomUniform:output:09rnn/multi_rnn_cell/cell_1/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�20
.rnn/multi_rnn_cell/cell_1/dropout/GreaterEqual�
&rnn/multi_rnn_cell/cell_1/dropout/CastCast2rnn/multi_rnn_cell/cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
:	�2(
&rnn/multi_rnn_cell/cell_1/dropout/Cast�
'rnn/multi_rnn_cell/cell_1/dropout/Mul_1Mul)rnn/multi_rnn_cell/cell_1/dropout/Mul:z:0*rnn/multi_rnn_cell/cell_1/dropout/Cast:y:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_1/dropout/Mul_1�
)rnn/multi_rnn_cell/cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)rnn/multi_rnn_cell/cell_1/dropout_1/Const�
'rnn/multi_rnn_cell/cell_1/dropout_1/MulMul-rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2:z:02rnn/multi_rnn_cell/cell_1/dropout_1/Const:output:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_1/dropout_1/Mul�
)rnn/multi_rnn_cell/cell_1/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   2+
)rnn/multi_rnn_cell/cell_1/dropout_1/Shape�
@rnn/multi_rnn_cell/cell_1/dropout_1/random_uniform/RandomUniformRandomUniform2rnn/multi_rnn_cell/cell_1/dropout_1/Shape:output:0*
T0*
_output_shapes
:	�*
dtype0*

seed *
seed2 2B
@rnn/multi_rnn_cell/cell_1/dropout_1/random_uniform/RandomUniform�
2rnn/multi_rnn_cell/cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>24
2rnn/multi_rnn_cell/cell_1/dropout_1/GreaterEqual/y�
0rnn/multi_rnn_cell/cell_1/dropout_1/GreaterEqualGreaterEqualIrnn/multi_rnn_cell/cell_1/dropout_1/random_uniform/RandomUniform:output:0;rnn/multi_rnn_cell/cell_1/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�22
0rnn/multi_rnn_cell/cell_1/dropout_1/GreaterEqual�
(rnn/multi_rnn_cell/cell_1/dropout_1/CastCast4rnn/multi_rnn_cell/cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
:	�2*
(rnn/multi_rnn_cell/cell_1/dropout_1/Cast�
)rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1Mul+rnn/multi_rnn_cell/cell_1/dropout_1/Mul:z:0,rnn/multi_rnn_cell/cell_1/dropout_1/Cast:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1�
/rnn/multi_rnn_cell/cell_2/lstm_cell/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :21
/rnn/multi_rnn_cell/cell_2/lstm_cell/concat/axis�
*rnn/multi_rnn_cell/cell_2/lstm_cell/concatConcatV2-rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1:z:0placeholder_78rnn/multi_rnn_cell/cell_2/lstm_cell/concat/axis:output:0*
N*
T0*

Tidx0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_2/lstm_cell/concat�
*rnn/multi_rnn_cell/cell_2/lstm_cell/MatMulMatMul3rnn/multi_rnn_cell/cell_2/lstm_cell/concat:output:0ernn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identity_0*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b( 2,
*rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul�
+rnn/multi_rnn_cell/cell_2/lstm_cell/BiasAddBiasAdd4rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul:product:0drnn_multi_rnn_cell_cell_2_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_2_lstm_cell_bias_read_identity_0*
T0*
_output_shapes
:	�*
data_formatNHWC2-
+rnn/multi_rnn_cell/cell_2/lstm_cell/BiasAdd�
)rnn/multi_rnn_cell/cell_2/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/Const�
3rnn/multi_rnn_cell/cell_2/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :25
3rnn/multi_rnn_cell/cell_2/lstm_cell/split/split_dim�
)rnn/multi_rnn_cell/cell_2/lstm_cell/splitSplit<rnn/multi_rnn_cell/cell_2/lstm_cell/split/split_dim:output:04rnn/multi_rnn_cell/cell_2/lstm_cell/BiasAdd:output:0*
T0*@
_output_shapes.
,:	�:	�:	�:	�*
	num_split2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/split�
)rnn/multi_rnn_cell/cell_2/lstm_cell/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/add/y�
'rnn/multi_rnn_cell/cell_2/lstm_cell/addAddV22rnn/multi_rnn_cell/cell_2/lstm_cell/split:output:22rnn/multi_rnn_cell/cell_2/lstm_cell/add/y:output:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_2/lstm_cell/add�
+rnn/multi_rnn_cell/cell_2/lstm_cell/SigmoidSigmoid+rnn/multi_rnn_cell/cell_2/lstm_cell/add:z:0*
T0*
_output_shapes
:	�2-
+rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid�
'rnn/multi_rnn_cell/cell_2/lstm_cell/mulMul/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid:y:0placeholder_6*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_2/lstm_cell/mul�
-rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_1Sigmoid2rnn/multi_rnn_cell/cell_2/lstm_cell/split:output:0*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_1�
(rnn/multi_rnn_cell/cell_2/lstm_cell/TanhTanh2rnn/multi_rnn_cell/cell_2/lstm_cell/split:output:1*
T0*
_output_shapes
:	�2*
(rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh�
)rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1Mul1rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_1:y:0,rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1�
)rnn/multi_rnn_cell/cell_2/lstm_cell/add_1AddV2+rnn/multi_rnn_cell/cell_2/lstm_cell/mul:z:0-rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1:z:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/add_1�
-rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_2Sigmoid2rnn/multi_rnn_cell/cell_2/lstm_cell/split:output:3*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_2�
*rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_1Tanh-rnn/multi_rnn_cell/cell_2/lstm_cell/add_1:z:0*
T0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_1�
)rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2Mul1rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_2:y:0.rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_1:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2�
'rnn/multi_rnn_cell/cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2)
'rnn/multi_rnn_cell/cell_2/dropout/Const�
%rnn/multi_rnn_cell/cell_2/dropout/MulMul-rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2:z:00rnn/multi_rnn_cell/cell_2/dropout/Const:output:0*
T0*
_output_shapes
:	�2'
%rnn/multi_rnn_cell/cell_2/dropout/Mul�
'rnn/multi_rnn_cell/cell_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   2)
'rnn/multi_rnn_cell/cell_2/dropout/Shape�
>rnn/multi_rnn_cell/cell_2/dropout/random_uniform/RandomUniformRandomUniform0rnn/multi_rnn_cell/cell_2/dropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype0*

seed *
seed2 2@
>rnn/multi_rnn_cell/cell_2/dropout/random_uniform/RandomUniform�
0rnn/multi_rnn_cell/cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>22
0rnn/multi_rnn_cell/cell_2/dropout/GreaterEqual/y�
.rnn/multi_rnn_cell/cell_2/dropout/GreaterEqualGreaterEqualGrnn/multi_rnn_cell/cell_2/dropout/random_uniform/RandomUniform:output:09rnn/multi_rnn_cell/cell_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�20
.rnn/multi_rnn_cell/cell_2/dropout/GreaterEqual�
&rnn/multi_rnn_cell/cell_2/dropout/CastCast2rnn/multi_rnn_cell/cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
:	�2(
&rnn/multi_rnn_cell/cell_2/dropout/Cast�
'rnn/multi_rnn_cell/cell_2/dropout/Mul_1Mul)rnn/multi_rnn_cell/cell_2/dropout/Mul:z:0*rnn/multi_rnn_cell/cell_2/dropout/Cast:y:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_2/dropout/Mul_1�
)rnn/multi_rnn_cell/cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)rnn/multi_rnn_cell/cell_2/dropout_1/Const�
'rnn/multi_rnn_cell/cell_2/dropout_1/MulMul-rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2:z:02rnn/multi_rnn_cell/cell_2/dropout_1/Const:output:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_2/dropout_1/Mul�
)rnn/multi_rnn_cell/cell_2/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   2+
)rnn/multi_rnn_cell/cell_2/dropout_1/Shape�
@rnn/multi_rnn_cell/cell_2/dropout_1/random_uniform/RandomUniformRandomUniform2rnn/multi_rnn_cell/cell_2/dropout_1/Shape:output:0*
T0*
_output_shapes
:	�*
dtype0*

seed *
seed2 2B
@rnn/multi_rnn_cell/cell_2/dropout_1/random_uniform/RandomUniform�
2rnn/multi_rnn_cell/cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>24
2rnn/multi_rnn_cell/cell_2/dropout_1/GreaterEqual/y�
0rnn/multi_rnn_cell/cell_2/dropout_1/GreaterEqualGreaterEqualIrnn/multi_rnn_cell/cell_2/dropout_1/random_uniform/RandomUniform:output:0;rnn/multi_rnn_cell/cell_2/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�22
0rnn/multi_rnn_cell/cell_2/dropout_1/GreaterEqual�
(rnn/multi_rnn_cell/cell_2/dropout_1/CastCast4rnn/multi_rnn_cell/cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
:	�2*
(rnn/multi_rnn_cell/cell_2/dropout_1/Cast�
)rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1Mul+rnn/multi_rnn_cell/cell_2/dropout_1/Mul:z:0,rnn/multi_rnn_cell/cell_2/dropout_1/Cast:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1�
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholder-rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1:z:0*
_output_shapes
: *
element_dtype02&
$TensorArrayV2Write/TensorListSetItemP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/y;
add_0AddV2placeholderadd/y:output:0*
T02
addT
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
add_1/yN
add_1_0AddV2rnn_1_while_loop_counteradd_1/y:output:0*
T02
add_1�
TensorListPushBackTensorListPushBackGtensorlistpushback_gradients_rnn_1_while_grad_placeholder_0_accumulatorplaceholder*
_output_shapes
: *
element_dtype02
TensorListPushBack�
TensorListPushBack_1TensorListPushBackdtensorlistpushback_1_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_dropout_cast_0_accumulator*rnn/multi_rnn_cell/cell_0/dropout/Cast:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_1�
TensorListPushBack_2TensorListPushBackctensorlistpushback_2_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_dropout_mul_0_accumulator)rnn/multi_rnn_cell/cell_0/dropout/Mul:z:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_2�
TensorListPushBack_3TensorListPushBackdtensorlistpushback_3_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_dropout_cast_0_accumulator*rnn/multi_rnn_cell/cell_1/dropout/Cast:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_3�
TensorListPushBack_4TensorListPushBackctensorlistpushback_4_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_dropout_mul_0_accumulator)rnn/multi_rnn_cell/cell_1/dropout/Mul:z:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_4�
TensorListPushBack_5TensorListPushBackdtensorlistpushback_5_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_dropout_cast_0_accumulator*rnn/multi_rnn_cell/cell_2/dropout/Cast:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_5�
TensorListPushBack_6TensorListPushBackctensorlistpushback_6_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_dropout_mul_0_accumulator)rnn/multi_rnn_cell/cell_2/dropout/Mul:z:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_6�
TensorListPushBack_7TensorListPushBackftensorlistpushback_7_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_dropout_1_cast_0_accumulator,rnn/multi_rnn_cell/cell_2/dropout_1/Cast:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_7�
TensorListPushBack_8TensorListPushBacketensorlistpushback_8_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_dropout_1_mul_0_accumulator+rnn/multi_rnn_cell/cell_2/dropout_1/Mul:z:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_8�
TensorListPushBack_9TensorListPushBackgtensorlistpushback_9_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_2_0_accumulator-rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_9�
TensorListPushBack_10TensorListPushBackhtensorlistpushback_10_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_2_0_accumulator-rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_10�
TensorListPushBack_11TensorListPushBackhtensorlistpushback_11_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_2_0_accumulator-rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_11�
TensorListPushBack_12TensorListPushBackitensorlistpushback_12_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_lstm_cell_tanh_1_0_accumulator.rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_1:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_12�
TensorListPushBack_13TensorListPushBackltensorlistpushback_13_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_lstm_cell_sigmoid_2_0_accumulator1rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_2:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_13�
TensorListPushBack_14TensorListPushBackLtensorlistpushback_14_gradients_rnn_1_while_grad_placeholder_6_0_accumulatorplaceholder_6*
_output_shapes
: *
element_dtype02
TensorListPushBack_14�
TensorListPushBack_15TensorListPushBackjtensorlistpushback_15_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_lstm_cell_sigmoid_0_accumulator/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_15�
TensorListPushBack_16TensorListPushBackgtensorlistpushback_16_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_lstm_cell_tanh_0_accumulator,rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_16�
TensorListPushBack_17TensorListPushBackltensorlistpushback_17_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_lstm_cell_sigmoid_1_0_accumulator1rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_1:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_17�
TensorListPushBack_18TensorListPushBackitensorlistpushback_18_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_lstm_cell_concat_0_accumulator3rnn/multi_rnn_cell/cell_2/lstm_cell/concat:output:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_18�
TensorListPushBack_19TensorListPushBackgtensorlistpushback_19_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_dropout_1_cast_0_accumulator,rnn/multi_rnn_cell/cell_1/dropout_1/Cast:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_19�
TensorListPushBack_20TensorListPushBackftensorlistpushback_20_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_dropout_1_mul_0_accumulator+rnn/multi_rnn_cell/cell_1/dropout_1/Mul:z:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_20�
TensorListPushBack_21TensorListPushBackitensorlistpushback_21_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_lstm_cell_tanh_1_0_accumulator.rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_21�
TensorListPushBack_22TensorListPushBackltensorlistpushback_22_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_lstm_cell_sigmoid_2_0_accumulator1rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_22�
TensorListPushBack_23TensorListPushBackLtensorlistpushback_23_gradients_rnn_1_while_grad_placeholder_4_0_accumulatorplaceholder_4*
_output_shapes
: *
element_dtype02
TensorListPushBack_23�
TensorListPushBack_24TensorListPushBackjtensorlistpushback_24_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_lstm_cell_sigmoid_0_accumulator/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_24�
TensorListPushBack_25TensorListPushBackgtensorlistpushback_25_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_lstm_cell_tanh_0_accumulator,rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_25�
TensorListPushBack_26TensorListPushBackltensorlistpushback_26_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_lstm_cell_sigmoid_1_0_accumulator1rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_26�
TensorListPushBack_27TensorListPushBackitensorlistpushback_27_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_lstm_cell_concat_0_accumulator3rnn/multi_rnn_cell/cell_1/lstm_cell/concat:output:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_27�
TensorListPushBack_28TensorListPushBackgtensorlistpushback_28_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_dropout_1_cast_0_accumulator,rnn/multi_rnn_cell/cell_0/dropout_1/Cast:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_28�
TensorListPushBack_29TensorListPushBackftensorlistpushback_29_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_dropout_1_mul_0_accumulator+rnn/multi_rnn_cell/cell_0/dropout_1/Mul:z:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_29�
TensorListPushBack_30TensorListPushBackitensorlistpushback_30_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_lstm_cell_tanh_1_0_accumulator.rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_30�
TensorListPushBack_31TensorListPushBackltensorlistpushback_31_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_lstm_cell_sigmoid_2_0_accumulator1rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_31�
TensorListPushBack_32TensorListPushBackLtensorlistpushback_32_gradients_rnn_1_while_grad_placeholder_2_0_accumulatorplaceholder_2*
_output_shapes
: *
element_dtype02
TensorListPushBack_32�
TensorListPushBack_33TensorListPushBackjtensorlistpushback_33_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_lstm_cell_sigmoid_0_accumulator/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_33�
TensorListPushBack_34TensorListPushBackgtensorlistpushback_34_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_lstm_cell_tanh_0_accumulator,rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_34�
TensorListPushBack_35TensorListPushBackltensorlistpushback_35_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_lstm_cell_sigmoid_1_0_accumulator1rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_35�
TensorListPushBack_36TensorListPushBackitensorlistpushback_36_gradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_lstm_cell_concat_0_accumulator3rnn/multi_rnn_cell/cell_0/lstm_cell/concat:output:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_36"
add	add_0:z:0"
add_1add_1_0:z:0" 
rnn_1_minimumrnn_1_minimum_0",
rnn_1_strided_slicernn_1_strided_slice_0"V
'rnn_multi_rnn_cell_cell_0_dropout_mul_1+rnn/multi_rnn_cell/cell_0/dropout/Mul_1:z:0"Z
)rnn_multi_rnn_cell_cell_0_lstm_cell_add_1-rnn/multi_rnn_cell/cell_0/lstm_cell/add_1:z:0"�
brnn_multi_rnn_cell_cell_0_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_lstm_cell_bias_read_identitydrnn_multi_rnn_cell_cell_0_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_lstm_cell_bias_read_identity_0"�
crnn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identityernn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identity_0"V
'rnn_multi_rnn_cell_cell_1_dropout_mul_1+rnn/multi_rnn_cell/cell_1/dropout/Mul_1:z:0"Z
)rnn_multi_rnn_cell_cell_1_lstm_cell_add_1-rnn/multi_rnn_cell/cell_1/lstm_cell/add_1:z:0"�
brnn_multi_rnn_cell_cell_1_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_1_lstm_cell_bias_read_identitydrnn_multi_rnn_cell_cell_1_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_1_lstm_cell_bias_read_identity_0"�
crnn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identityernn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identity_0"V
'rnn_multi_rnn_cell_cell_2_dropout_mul_1+rnn/multi_rnn_cell/cell_2/dropout/Mul_1:z:0"Z
)rnn_multi_rnn_cell_cell_2_lstm_cell_add_1-rnn/multi_rnn_cell/cell_2/lstm_cell/add_1:z:0"�
brnn_multi_rnn_cell_cell_2_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_2_lstm_cell_bias_read_identitydrnn_multi_rnn_cell_cell_2_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_2_lstm_cell_bias_read_identity_0"�
crnn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identityernn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identity_0"�
Qtensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensorStensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensor_0"\
$tensorarrayv2write_tensorlistsetitem4TensorArrayV2Write/TensorListSetItem:output_handle:0"8
tensorlistpushback"TensorListPushBack:output_handle:0"<
tensorlistpushback_1$TensorListPushBack_1:output_handle:0">
tensorlistpushback_10%TensorListPushBack_10:output_handle:0">
tensorlistpushback_11%TensorListPushBack_11:output_handle:0">
tensorlistpushback_12%TensorListPushBack_12:output_handle:0">
tensorlistpushback_13%TensorListPushBack_13:output_handle:0">
tensorlistpushback_14%TensorListPushBack_14:output_handle:0">
tensorlistpushback_15%TensorListPushBack_15:output_handle:0">
tensorlistpushback_16%TensorListPushBack_16:output_handle:0">
tensorlistpushback_17%TensorListPushBack_17:output_handle:0">
tensorlistpushback_18%TensorListPushBack_18:output_handle:0">
tensorlistpushback_19%TensorListPushBack_19:output_handle:0"<
tensorlistpushback_2$TensorListPushBack_2:output_handle:0">
tensorlistpushback_20%TensorListPushBack_20:output_handle:0">
tensorlistpushback_21%TensorListPushBack_21:output_handle:0">
tensorlistpushback_22%TensorListPushBack_22:output_handle:0">
tensorlistpushback_23%TensorListPushBack_23:output_handle:0">
tensorlistpushback_24%TensorListPushBack_24:output_handle:0">
tensorlistpushback_25%TensorListPushBack_25:output_handle:0">
tensorlistpushback_26%TensorListPushBack_26:output_handle:0">
tensorlistpushback_27%TensorListPushBack_27:output_handle:0">
tensorlistpushback_28%TensorListPushBack_28:output_handle:0">
tensorlistpushback_29%TensorListPushBack_29:output_handle:0"<
tensorlistpushback_3$TensorListPushBack_3:output_handle:0">
tensorlistpushback_30%TensorListPushBack_30:output_handle:0">
tensorlistpushback_31%TensorListPushBack_31:output_handle:0">
tensorlistpushback_32%TensorListPushBack_32:output_handle:0">
tensorlistpushback_33%TensorListPushBack_33:output_handle:0">
tensorlistpushback_34%TensorListPushBack_34:output_handle:0">
tensorlistpushback_35%TensorListPushBack_35:output_handle:0">
tensorlistpushback_36%TensorListPushBack_36:output_handle:0"<
tensorlistpushback_4$TensorListPushBack_4:output_handle:0"<
tensorlistpushback_5$TensorListPushBack_5:output_handle:0"<
tensorlistpushback_6$TensorListPushBack_6:output_handle:0"<
tensorlistpushback_7$TensorListPushBack_7:output_handle:0"<
tensorlistpushback_8$TensorListPushBack_8:output_handle:0"<
tensorlistpushback_9$TensorListPushBack_9:output_handle:0*�
_input_shapes�
�: : : : :	�:	�:	�:	�:	�:	�: : :
��:�:
��:�:
��:�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%	!

_output_shapes
:	�:


_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: 
��
�
rnn_while_body_1373
rnn_while_loop_counter
rnn_strided_slice_0
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4
placeholder_5
placeholder_6
placeholder_7
rnn_minimum_0U
Qtensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0i
ernn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identity_0h
drnn_multi_rnn_cell_cell_0_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_lstm_cell_bias_read_identity_0i
ernn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identity_0h
drnn_multi_rnn_cell_cell_1_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_1_lstm_cell_bias_read_identity_0i
ernn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identity_0h
drnn_multi_rnn_cell_cell_2_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_2_lstm_cell_bias_read_identity_0	
add_1
rnn_strided_slice
add(
$tensorarrayv2write_tensorlistsetitem-
)rnn_multi_rnn_cell_cell_0_lstm_cell_add_1+
'rnn_multi_rnn_cell_cell_0_dropout_mul_1-
)rnn_multi_rnn_cell_cell_1_lstm_cell_add_1+
'rnn_multi_rnn_cell_cell_1_dropout_mul_1-
)rnn_multi_rnn_cell_cell_2_lstm_cell_add_1+
'rnn_multi_rnn_cell_cell_2_dropout_mul_1
rnn_minimumS
Otensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensorg
crnn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identityf
brnn_multi_rnn_cell_cell_0_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_lstm_cell_bias_read_identityg
crnn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identityf
brnn_multi_rnn_cell_cell_1_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_1_lstm_cell_bias_read_identityg
crnn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identityf
brnn_multi_rnn_cell_cell_2_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_2_lstm_cell_bias_read_identity��
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      23
1TensorArrayV2Read/TensorListGetItem/element_shape�
#TensorArrayV2Read/TensorListGetItemTensorListGetItemQtensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype02%
#TensorArrayV2Read/TensorListGetItem�
/rnn/multi_rnn_cell/cell_0/lstm_cell/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :21
/rnn/multi_rnn_cell/cell_0/lstm_cell/concat/axis�
*rnn/multi_rnn_cell/cell_0/lstm_cell/concatConcatV2*TensorArrayV2Read/TensorListGetItem:item:0placeholder_38rnn/multi_rnn_cell/cell_0/lstm_cell/concat/axis:output:0*
N*
T0*

Tidx0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_0/lstm_cell/concat�
*rnn/multi_rnn_cell/cell_0/lstm_cell/MatMulMatMul3rnn/multi_rnn_cell/cell_0/lstm_cell/concat:output:0ernn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identity_0*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b( 2,
*rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul�
+rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAddBiasAdd4rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul:product:0drnn_multi_rnn_cell_cell_0_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_lstm_cell_bias_read_identity_0*
T0*
_output_shapes
:	�*
data_formatNHWC2-
+rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd�
)rnn/multi_rnn_cell/cell_0/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/Const�
3rnn/multi_rnn_cell/cell_0/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :25
3rnn/multi_rnn_cell/cell_0/lstm_cell/split/split_dim�
)rnn/multi_rnn_cell/cell_0/lstm_cell/splitSplit<rnn/multi_rnn_cell/cell_0/lstm_cell/split/split_dim:output:04rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd:output:0*
T0*@
_output_shapes.
,:	�:	�:	�:	�*
	num_split2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/split�
)rnn/multi_rnn_cell/cell_0/lstm_cell/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/add/y�
'rnn/multi_rnn_cell/cell_0/lstm_cell/addAddV22rnn/multi_rnn_cell/cell_0/lstm_cell/split:output:22rnn/multi_rnn_cell/cell_0/lstm_cell/add/y:output:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_0/lstm_cell/add�
+rnn/multi_rnn_cell/cell_0/lstm_cell/SigmoidSigmoid+rnn/multi_rnn_cell/cell_0/lstm_cell/add:z:0*
T0*
_output_shapes
:	�2-
+rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid�
'rnn/multi_rnn_cell/cell_0/lstm_cell/mulMul/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid:y:0placeholder_2*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_0/lstm_cell/mul�
-rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1Sigmoid2rnn/multi_rnn_cell/cell_0/lstm_cell/split:output:0*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1�
(rnn/multi_rnn_cell/cell_0/lstm_cell/TanhTanh2rnn/multi_rnn_cell/cell_0/lstm_cell/split:output:1*
T0*
_output_shapes
:	�2*
(rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh�
)rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1Mul1rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1:y:0,rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1�
)rnn/multi_rnn_cell/cell_0/lstm_cell/add_1AddV2+rnn/multi_rnn_cell/cell_0/lstm_cell/mul:z:0-rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1:z:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/add_1�
-rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2Sigmoid2rnn/multi_rnn_cell/cell_0/lstm_cell/split:output:3*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2�
*rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1Tanh-rnn/multi_rnn_cell/cell_0/lstm_cell/add_1:z:0*
T0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1�
)rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2Mul1rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2:y:0.rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2�
'rnn/multi_rnn_cell/cell_0/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2)
'rnn/multi_rnn_cell/cell_0/dropout/Const�
%rnn/multi_rnn_cell/cell_0/dropout/MulMul-rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2:z:00rnn/multi_rnn_cell/cell_0/dropout/Const:output:0*
T0*
_output_shapes
:	�2'
%rnn/multi_rnn_cell/cell_0/dropout/Mul�
'rnn/multi_rnn_cell/cell_0/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   2)
'rnn/multi_rnn_cell/cell_0/dropout/Shape�
>rnn/multi_rnn_cell/cell_0/dropout/random_uniform/RandomUniformRandomUniform0rnn/multi_rnn_cell/cell_0/dropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype0*

seed *
seed2 2@
>rnn/multi_rnn_cell/cell_0/dropout/random_uniform/RandomUniform�
0rnn/multi_rnn_cell/cell_0/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>22
0rnn/multi_rnn_cell/cell_0/dropout/GreaterEqual/y�
.rnn/multi_rnn_cell/cell_0/dropout/GreaterEqualGreaterEqualGrnn/multi_rnn_cell/cell_0/dropout/random_uniform/RandomUniform:output:09rnn/multi_rnn_cell/cell_0/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�20
.rnn/multi_rnn_cell/cell_0/dropout/GreaterEqual�
&rnn/multi_rnn_cell/cell_0/dropout/CastCast2rnn/multi_rnn_cell/cell_0/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
:	�2(
&rnn/multi_rnn_cell/cell_0/dropout/Cast�
'rnn/multi_rnn_cell/cell_0/dropout/Mul_1Mul)rnn/multi_rnn_cell/cell_0/dropout/Mul:z:0*rnn/multi_rnn_cell/cell_0/dropout/Cast:y:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_0/dropout/Mul_1�
)rnn/multi_rnn_cell/cell_0/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)rnn/multi_rnn_cell/cell_0/dropout_1/Const�
'rnn/multi_rnn_cell/cell_0/dropout_1/MulMul-rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2:z:02rnn/multi_rnn_cell/cell_0/dropout_1/Const:output:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_0/dropout_1/Mul�
)rnn/multi_rnn_cell/cell_0/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   2+
)rnn/multi_rnn_cell/cell_0/dropout_1/Shape�
@rnn/multi_rnn_cell/cell_0/dropout_1/random_uniform/RandomUniformRandomUniform2rnn/multi_rnn_cell/cell_0/dropout_1/Shape:output:0*
T0*
_output_shapes
:	�*
dtype0*

seed *
seed2 2B
@rnn/multi_rnn_cell/cell_0/dropout_1/random_uniform/RandomUniform�
2rnn/multi_rnn_cell/cell_0/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>24
2rnn/multi_rnn_cell/cell_0/dropout_1/GreaterEqual/y�
0rnn/multi_rnn_cell/cell_0/dropout_1/GreaterEqualGreaterEqualIrnn/multi_rnn_cell/cell_0/dropout_1/random_uniform/RandomUniform:output:0;rnn/multi_rnn_cell/cell_0/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�22
0rnn/multi_rnn_cell/cell_0/dropout_1/GreaterEqual�
(rnn/multi_rnn_cell/cell_0/dropout_1/CastCast4rnn/multi_rnn_cell/cell_0/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
:	�2*
(rnn/multi_rnn_cell/cell_0/dropout_1/Cast�
)rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1Mul+rnn/multi_rnn_cell/cell_0/dropout_1/Mul:z:0,rnn/multi_rnn_cell/cell_0/dropout_1/Cast:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1�
/rnn/multi_rnn_cell/cell_1/lstm_cell/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :21
/rnn/multi_rnn_cell/cell_1/lstm_cell/concat/axis�
*rnn/multi_rnn_cell/cell_1/lstm_cell/concatConcatV2-rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1:z:0placeholder_58rnn/multi_rnn_cell/cell_1/lstm_cell/concat/axis:output:0*
N*
T0*

Tidx0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_1/lstm_cell/concat�
*rnn/multi_rnn_cell/cell_1/lstm_cell/MatMulMatMul3rnn/multi_rnn_cell/cell_1/lstm_cell/concat:output:0ernn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identity_0*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b( 2,
*rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul�
+rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAddBiasAdd4rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul:product:0drnn_multi_rnn_cell_cell_1_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_1_lstm_cell_bias_read_identity_0*
T0*
_output_shapes
:	�*
data_formatNHWC2-
+rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd�
)rnn/multi_rnn_cell/cell_1/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/Const�
3rnn/multi_rnn_cell/cell_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :25
3rnn/multi_rnn_cell/cell_1/lstm_cell/split/split_dim�
)rnn/multi_rnn_cell/cell_1/lstm_cell/splitSplit<rnn/multi_rnn_cell/cell_1/lstm_cell/split/split_dim:output:04rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd:output:0*
T0*@
_output_shapes.
,:	�:	�:	�:	�*
	num_split2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/split�
)rnn/multi_rnn_cell/cell_1/lstm_cell/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/add/y�
'rnn/multi_rnn_cell/cell_1/lstm_cell/addAddV22rnn/multi_rnn_cell/cell_1/lstm_cell/split:output:22rnn/multi_rnn_cell/cell_1/lstm_cell/add/y:output:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_1/lstm_cell/add�
+rnn/multi_rnn_cell/cell_1/lstm_cell/SigmoidSigmoid+rnn/multi_rnn_cell/cell_1/lstm_cell/add:z:0*
T0*
_output_shapes
:	�2-
+rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid�
'rnn/multi_rnn_cell/cell_1/lstm_cell/mulMul/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid:y:0placeholder_4*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_1/lstm_cell/mul�
-rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1Sigmoid2rnn/multi_rnn_cell/cell_1/lstm_cell/split:output:0*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1�
(rnn/multi_rnn_cell/cell_1/lstm_cell/TanhTanh2rnn/multi_rnn_cell/cell_1/lstm_cell/split:output:1*
T0*
_output_shapes
:	�2*
(rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh�
)rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1Mul1rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1:y:0,rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1�
)rnn/multi_rnn_cell/cell_1/lstm_cell/add_1AddV2+rnn/multi_rnn_cell/cell_1/lstm_cell/mul:z:0-rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1:z:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/add_1�
-rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2Sigmoid2rnn/multi_rnn_cell/cell_1/lstm_cell/split:output:3*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2�
*rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1Tanh-rnn/multi_rnn_cell/cell_1/lstm_cell/add_1:z:0*
T0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1�
)rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2Mul1rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2:y:0.rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2�
'rnn/multi_rnn_cell/cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2)
'rnn/multi_rnn_cell/cell_1/dropout/Const�
%rnn/multi_rnn_cell/cell_1/dropout/MulMul-rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2:z:00rnn/multi_rnn_cell/cell_1/dropout/Const:output:0*
T0*
_output_shapes
:	�2'
%rnn/multi_rnn_cell/cell_1/dropout/Mul�
'rnn/multi_rnn_cell/cell_1/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   2)
'rnn/multi_rnn_cell/cell_1/dropout/Shape�
>rnn/multi_rnn_cell/cell_1/dropout/random_uniform/RandomUniformRandomUniform0rnn/multi_rnn_cell/cell_1/dropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype0*

seed *
seed2 2@
>rnn/multi_rnn_cell/cell_1/dropout/random_uniform/RandomUniform�
0rnn/multi_rnn_cell/cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>22
0rnn/multi_rnn_cell/cell_1/dropout/GreaterEqual/y�
.rnn/multi_rnn_cell/cell_1/dropout/GreaterEqualGreaterEqualGrnn/multi_rnn_cell/cell_1/dropout/random_uniform/RandomUniform:output:09rnn/multi_rnn_cell/cell_1/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�20
.rnn/multi_rnn_cell/cell_1/dropout/GreaterEqual�
&rnn/multi_rnn_cell/cell_1/dropout/CastCast2rnn/multi_rnn_cell/cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
:	�2(
&rnn/multi_rnn_cell/cell_1/dropout/Cast�
'rnn/multi_rnn_cell/cell_1/dropout/Mul_1Mul)rnn/multi_rnn_cell/cell_1/dropout/Mul:z:0*rnn/multi_rnn_cell/cell_1/dropout/Cast:y:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_1/dropout/Mul_1�
)rnn/multi_rnn_cell/cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)rnn/multi_rnn_cell/cell_1/dropout_1/Const�
'rnn/multi_rnn_cell/cell_1/dropout_1/MulMul-rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2:z:02rnn/multi_rnn_cell/cell_1/dropout_1/Const:output:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_1/dropout_1/Mul�
)rnn/multi_rnn_cell/cell_1/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   2+
)rnn/multi_rnn_cell/cell_1/dropout_1/Shape�
@rnn/multi_rnn_cell/cell_1/dropout_1/random_uniform/RandomUniformRandomUniform2rnn/multi_rnn_cell/cell_1/dropout_1/Shape:output:0*
T0*
_output_shapes
:	�*
dtype0*

seed *
seed2 2B
@rnn/multi_rnn_cell/cell_1/dropout_1/random_uniform/RandomUniform�
2rnn/multi_rnn_cell/cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>24
2rnn/multi_rnn_cell/cell_1/dropout_1/GreaterEqual/y�
0rnn/multi_rnn_cell/cell_1/dropout_1/GreaterEqualGreaterEqualIrnn/multi_rnn_cell/cell_1/dropout_1/random_uniform/RandomUniform:output:0;rnn/multi_rnn_cell/cell_1/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�22
0rnn/multi_rnn_cell/cell_1/dropout_1/GreaterEqual�
(rnn/multi_rnn_cell/cell_1/dropout_1/CastCast4rnn/multi_rnn_cell/cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
:	�2*
(rnn/multi_rnn_cell/cell_1/dropout_1/Cast�
)rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1Mul+rnn/multi_rnn_cell/cell_1/dropout_1/Mul:z:0,rnn/multi_rnn_cell/cell_1/dropout_1/Cast:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1�
/rnn/multi_rnn_cell/cell_2/lstm_cell/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :21
/rnn/multi_rnn_cell/cell_2/lstm_cell/concat/axis�
*rnn/multi_rnn_cell/cell_2/lstm_cell/concatConcatV2-rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1:z:0placeholder_78rnn/multi_rnn_cell/cell_2/lstm_cell/concat/axis:output:0*
N*
T0*

Tidx0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_2/lstm_cell/concat�
*rnn/multi_rnn_cell/cell_2/lstm_cell/MatMulMatMul3rnn/multi_rnn_cell/cell_2/lstm_cell/concat:output:0ernn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identity_0*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b( 2,
*rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul�
+rnn/multi_rnn_cell/cell_2/lstm_cell/BiasAddBiasAdd4rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul:product:0drnn_multi_rnn_cell_cell_2_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_2_lstm_cell_bias_read_identity_0*
T0*
_output_shapes
:	�*
data_formatNHWC2-
+rnn/multi_rnn_cell/cell_2/lstm_cell/BiasAdd�
)rnn/multi_rnn_cell/cell_2/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/Const�
3rnn/multi_rnn_cell/cell_2/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :25
3rnn/multi_rnn_cell/cell_2/lstm_cell/split/split_dim�
)rnn/multi_rnn_cell/cell_2/lstm_cell/splitSplit<rnn/multi_rnn_cell/cell_2/lstm_cell/split/split_dim:output:04rnn/multi_rnn_cell/cell_2/lstm_cell/BiasAdd:output:0*
T0*@
_output_shapes.
,:	�:	�:	�:	�*
	num_split2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/split�
)rnn/multi_rnn_cell/cell_2/lstm_cell/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/add/y�
'rnn/multi_rnn_cell/cell_2/lstm_cell/addAddV22rnn/multi_rnn_cell/cell_2/lstm_cell/split:output:22rnn/multi_rnn_cell/cell_2/lstm_cell/add/y:output:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_2/lstm_cell/add�
+rnn/multi_rnn_cell/cell_2/lstm_cell/SigmoidSigmoid+rnn/multi_rnn_cell/cell_2/lstm_cell/add:z:0*
T0*
_output_shapes
:	�2-
+rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid�
'rnn/multi_rnn_cell/cell_2/lstm_cell/mulMul/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid:y:0placeholder_6*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_2/lstm_cell/mul�
-rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_1Sigmoid2rnn/multi_rnn_cell/cell_2/lstm_cell/split:output:0*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_1�
(rnn/multi_rnn_cell/cell_2/lstm_cell/TanhTanh2rnn/multi_rnn_cell/cell_2/lstm_cell/split:output:1*
T0*
_output_shapes
:	�2*
(rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh�
)rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1Mul1rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_1:y:0,rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1�
)rnn/multi_rnn_cell/cell_2/lstm_cell/add_1AddV2+rnn/multi_rnn_cell/cell_2/lstm_cell/mul:z:0-rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1:z:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/add_1�
-rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_2Sigmoid2rnn/multi_rnn_cell/cell_2/lstm_cell/split:output:3*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_2�
*rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_1Tanh-rnn/multi_rnn_cell/cell_2/lstm_cell/add_1:z:0*
T0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_1�
)rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2Mul1rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_2:y:0.rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_1:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2�
'rnn/multi_rnn_cell/cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2)
'rnn/multi_rnn_cell/cell_2/dropout/Const�
%rnn/multi_rnn_cell/cell_2/dropout/MulMul-rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2:z:00rnn/multi_rnn_cell/cell_2/dropout/Const:output:0*
T0*
_output_shapes
:	�2'
%rnn/multi_rnn_cell/cell_2/dropout/Mul�
'rnn/multi_rnn_cell/cell_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   2)
'rnn/multi_rnn_cell/cell_2/dropout/Shape�
>rnn/multi_rnn_cell/cell_2/dropout/random_uniform/RandomUniformRandomUniform0rnn/multi_rnn_cell/cell_2/dropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype0*

seed *
seed2 2@
>rnn/multi_rnn_cell/cell_2/dropout/random_uniform/RandomUniform�
0rnn/multi_rnn_cell/cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>22
0rnn/multi_rnn_cell/cell_2/dropout/GreaterEqual/y�
.rnn/multi_rnn_cell/cell_2/dropout/GreaterEqualGreaterEqualGrnn/multi_rnn_cell/cell_2/dropout/random_uniform/RandomUniform:output:09rnn/multi_rnn_cell/cell_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�20
.rnn/multi_rnn_cell/cell_2/dropout/GreaterEqual�
&rnn/multi_rnn_cell/cell_2/dropout/CastCast2rnn/multi_rnn_cell/cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
:	�2(
&rnn/multi_rnn_cell/cell_2/dropout/Cast�
'rnn/multi_rnn_cell/cell_2/dropout/Mul_1Mul)rnn/multi_rnn_cell/cell_2/dropout/Mul:z:0*rnn/multi_rnn_cell/cell_2/dropout/Cast:y:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_2/dropout/Mul_1�
)rnn/multi_rnn_cell/cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)rnn/multi_rnn_cell/cell_2/dropout_1/Const�
'rnn/multi_rnn_cell/cell_2/dropout_1/MulMul-rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2:z:02rnn/multi_rnn_cell/cell_2/dropout_1/Const:output:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_2/dropout_1/Mul�
)rnn/multi_rnn_cell/cell_2/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   2+
)rnn/multi_rnn_cell/cell_2/dropout_1/Shape�
@rnn/multi_rnn_cell/cell_2/dropout_1/random_uniform/RandomUniformRandomUniform2rnn/multi_rnn_cell/cell_2/dropout_1/Shape:output:0*
T0*
_output_shapes
:	�*
dtype0*

seed *
seed2 2B
@rnn/multi_rnn_cell/cell_2/dropout_1/random_uniform/RandomUniform�
2rnn/multi_rnn_cell/cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>24
2rnn/multi_rnn_cell/cell_2/dropout_1/GreaterEqual/y�
0rnn/multi_rnn_cell/cell_2/dropout_1/GreaterEqualGreaterEqualIrnn/multi_rnn_cell/cell_2/dropout_1/random_uniform/RandomUniform:output:0;rnn/multi_rnn_cell/cell_2/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�22
0rnn/multi_rnn_cell/cell_2/dropout_1/GreaterEqual�
(rnn/multi_rnn_cell/cell_2/dropout_1/CastCast4rnn/multi_rnn_cell/cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
:	�2*
(rnn/multi_rnn_cell/cell_2/dropout_1/Cast�
)rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1Mul+rnn/multi_rnn_cell/cell_2/dropout_1/Mul:z:0,rnn/multi_rnn_cell/cell_2/dropout_1/Cast:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1�
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholder-rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1:z:0*
_output_shapes
: *
element_dtype02&
$TensorArrayV2Write/TensorListSetItemP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/y;
add_0AddV2placeholderadd/y:output:0*
T02
addT
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
add_1/yL
add_1_0AddV2rnn_while_loop_counteradd_1/y:output:0*
T02
add_1"
add	add_0:z:0"
add_1add_1_0:z:0"
rnn_minimumrnn_minimum_0"V
'rnn_multi_rnn_cell_cell_0_dropout_mul_1+rnn/multi_rnn_cell/cell_0/dropout/Mul_1:z:0"Z
)rnn_multi_rnn_cell_cell_0_lstm_cell_add_1-rnn/multi_rnn_cell/cell_0/lstm_cell/add_1:z:0"�
brnn_multi_rnn_cell_cell_0_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_lstm_cell_bias_read_identitydrnn_multi_rnn_cell_cell_0_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_lstm_cell_bias_read_identity_0"�
crnn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identityernn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identity_0"V
'rnn_multi_rnn_cell_cell_1_dropout_mul_1+rnn/multi_rnn_cell/cell_1/dropout/Mul_1:z:0"Z
)rnn_multi_rnn_cell_cell_1_lstm_cell_add_1-rnn/multi_rnn_cell/cell_1/lstm_cell/add_1:z:0"�
brnn_multi_rnn_cell_cell_1_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_1_lstm_cell_bias_read_identitydrnn_multi_rnn_cell_cell_1_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_1_lstm_cell_bias_read_identity_0"�
crnn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identityernn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identity_0"V
'rnn_multi_rnn_cell_cell_2_dropout_mul_1+rnn/multi_rnn_cell/cell_2/dropout/Mul_1:z:0"Z
)rnn_multi_rnn_cell_cell_2_lstm_cell_add_1-rnn/multi_rnn_cell/cell_2/lstm_cell/add_1:z:0"�
brnn_multi_rnn_cell_cell_2_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_2_lstm_cell_bias_read_identitydrnn_multi_rnn_cell_cell_2_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_2_lstm_cell_bias_read_identity_0"�
crnn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identityernn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identity_0"(
rnn_strided_slicernn_strided_slice_0"�
Otensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensorQtensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0"\
$tensorarrayv2write_tensorlistsetitem4TensorArrayV2Write/TensorListSetItem:output_handle:0*�
_input_shapes�
�: : : : :	�:	�:	�:	�:	�:	�: : :
��:�:
��:�:
��:�: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%	!

_output_shapes
:	�:


_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�
�/
�
rnn_1_while_cond_1698_rewritten
rnn_1_while_loop_counter
rnn_1_strided_slice
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4
placeholder_5
placeholder_6
placeholder_7
less_rnn_1_minimum2
.rnn_1_while_cond_1698___redundant_placeholder02
.rnn_1_while_cond_1698___redundant_placeholder12
.rnn_1_while_cond_1698___redundant_placeholder22
.rnn_1_while_cond_1698___redundant_placeholder32
.rnn_1_while_cond_1698___redundant_placeholder42
.rnn_1_while_cond_1698___redundant_placeholder52
.rnn_1_while_cond_1698___redundant_placeholder68
4gradients_rnn_1_while_grad_placeholder_0_accumulatorS
Ogradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_dropout_cast_0_accumulatorR
Ngradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_dropout_mul_0_accumulatorS
Ogradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_dropout_cast_0_accumulatorR
Ngradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_dropout_mul_0_accumulatorS
Ogradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_dropout_cast_0_accumulatorR
Ngradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_dropout_mul_0_accumulatorU
Qgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_dropout_1_cast_0_accumulatorT
Pgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_dropout_1_mul_0_accumulatorV
Rgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_lstm_cell_mul_2_0_accumulatorV
Rgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_lstm_cell_mul_2_0_accumulatorV
Rgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_lstm_cell_mul_2_0_accumulatorW
Sgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_lstm_cell_tanh_1_0_accumulatorZ
Vgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_lstm_cell_sigmoid_2_0_accumulator:
6gradients_rnn_1_while_grad_placeholder_6_0_accumulatorX
Tgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_lstm_cell_sigmoid_0_accumulatorU
Qgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_lstm_cell_tanh_0_accumulatorZ
Vgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_lstm_cell_sigmoid_1_0_accumulatorW
Sgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_2_lstm_cell_concat_0_accumulatorU
Qgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_dropout_1_cast_0_accumulatorT
Pgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_dropout_1_mul_0_accumulatorW
Sgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_lstm_cell_tanh_1_0_accumulatorZ
Vgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_lstm_cell_sigmoid_2_0_accumulator:
6gradients_rnn_1_while_grad_placeholder_4_0_accumulatorX
Tgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_lstm_cell_sigmoid_0_accumulatorU
Qgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_lstm_cell_tanh_0_accumulatorZ
Vgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_lstm_cell_sigmoid_1_0_accumulatorW
Sgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_1_lstm_cell_concat_0_accumulatorU
Qgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_dropout_1_cast_0_accumulatorT
Pgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_dropout_1_mul_0_accumulatorW
Sgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_lstm_cell_tanh_1_0_accumulatorZ
Vgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_lstm_cell_sigmoid_2_0_accumulator:
6gradients_rnn_1_while_grad_placeholder_2_0_accumulatorX
Tgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_lstm_cell_sigmoid_0_accumulatorU
Qgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_lstm_cell_tanh_0_accumulatorZ
Vgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_lstm_cell_sigmoid_1_0_accumulatorW
Sgradients_rnn_1_while_grad_rnn_multi_rnn_cell_cell_0_lstm_cell_concat_0_accumulator

logicaland
V
LessLessplaceholderless_rnn_1_minimum*
T0*
_output_shapes
: 2
Lessh
Less_1Lessrnn_1_while_loop_counterrnn_1_strided_slice*
T0*
_output_shapes
: 2
Less_1T

LogicalAnd
LogicalAnd
Less_1:z:0Less:z:0*
_output_shapes
: 2

LogicalAnd"

logicalandLogicalAnd:z:0*�
_input_shapes�
�: : : : :	�:	�:	�:	�:	�:	�: :::::::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%	!

_output_shapes
:	�:


_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: 
��
�
rnn_1_while_body_1699
rnn_1_while_loop_counter
rnn_1_strided_slice_0
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4
placeholder_5
placeholder_6
placeholder_7
rnn_1_minimum_0W
Stensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensor_0i
ernn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identity_0h
drnn_multi_rnn_cell_cell_0_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_lstm_cell_bias_read_identity_0i
ernn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identity_0h
drnn_multi_rnn_cell_cell_1_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_1_lstm_cell_bias_read_identity_0i
ernn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identity_0h
drnn_multi_rnn_cell_cell_2_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_2_lstm_cell_bias_read_identity_0	
add_1
rnn_1_strided_slice
add(
$tensorarrayv2write_tensorlistsetitem-
)rnn_multi_rnn_cell_cell_0_lstm_cell_add_1+
'rnn_multi_rnn_cell_cell_0_dropout_mul_1-
)rnn_multi_rnn_cell_cell_1_lstm_cell_add_1+
'rnn_multi_rnn_cell_cell_1_dropout_mul_1-
)rnn_multi_rnn_cell_cell_2_lstm_cell_add_1+
'rnn_multi_rnn_cell_cell_2_dropout_mul_1
rnn_1_minimumU
Qtensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensorg
crnn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identityf
brnn_multi_rnn_cell_cell_0_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_lstm_cell_bias_read_identityg
crnn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identityf
brnn_multi_rnn_cell_cell_1_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_1_lstm_cell_bias_read_identityg
crnn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identityf
brnn_multi_rnn_cell_cell_2_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_2_lstm_cell_bias_read_identity��
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      23
1TensorArrayV2Read/TensorListGetItem/element_shape�
#TensorArrayV2Read/TensorListGetItemTensorListGetItemStensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype02%
#TensorArrayV2Read/TensorListGetItem�
/rnn/multi_rnn_cell/cell_0/lstm_cell/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :21
/rnn/multi_rnn_cell/cell_0/lstm_cell/concat/axis�
*rnn/multi_rnn_cell/cell_0/lstm_cell/concatConcatV2*TensorArrayV2Read/TensorListGetItem:item:0placeholder_38rnn/multi_rnn_cell/cell_0/lstm_cell/concat/axis:output:0*
N*
T0*

Tidx0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_0/lstm_cell/concat�
*rnn/multi_rnn_cell/cell_0/lstm_cell/MatMulMatMul3rnn/multi_rnn_cell/cell_0/lstm_cell/concat:output:0ernn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identity_0*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b( 2,
*rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul�
+rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAddBiasAdd4rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul:product:0drnn_multi_rnn_cell_cell_0_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_lstm_cell_bias_read_identity_0*
T0*
_output_shapes
:	�*
data_formatNHWC2-
+rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd�
)rnn/multi_rnn_cell/cell_0/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/Const�
3rnn/multi_rnn_cell/cell_0/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :25
3rnn/multi_rnn_cell/cell_0/lstm_cell/split/split_dim�
)rnn/multi_rnn_cell/cell_0/lstm_cell/splitSplit<rnn/multi_rnn_cell/cell_0/lstm_cell/split/split_dim:output:04rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd:output:0*
T0*@
_output_shapes.
,:	�:	�:	�:	�*
	num_split2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/split�
)rnn/multi_rnn_cell/cell_0/lstm_cell/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/add/y�
'rnn/multi_rnn_cell/cell_0/lstm_cell/addAddV22rnn/multi_rnn_cell/cell_0/lstm_cell/split:output:22rnn/multi_rnn_cell/cell_0/lstm_cell/add/y:output:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_0/lstm_cell/add�
+rnn/multi_rnn_cell/cell_0/lstm_cell/SigmoidSigmoid+rnn/multi_rnn_cell/cell_0/lstm_cell/add:z:0*
T0*
_output_shapes
:	�2-
+rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid�
'rnn/multi_rnn_cell/cell_0/lstm_cell/mulMul/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid:y:0placeholder_2*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_0/lstm_cell/mul�
-rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1Sigmoid2rnn/multi_rnn_cell/cell_0/lstm_cell/split:output:0*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1�
(rnn/multi_rnn_cell/cell_0/lstm_cell/TanhTanh2rnn/multi_rnn_cell/cell_0/lstm_cell/split:output:1*
T0*
_output_shapes
:	�2*
(rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh�
)rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1Mul1rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1:y:0,rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1�
)rnn/multi_rnn_cell/cell_0/lstm_cell/add_1AddV2+rnn/multi_rnn_cell/cell_0/lstm_cell/mul:z:0-rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1:z:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/add_1�
-rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2Sigmoid2rnn/multi_rnn_cell/cell_0/lstm_cell/split:output:3*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2�
*rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1Tanh-rnn/multi_rnn_cell/cell_0/lstm_cell/add_1:z:0*
T0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1�
)rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2Mul1rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2:y:0.rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2�
'rnn/multi_rnn_cell/cell_0/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2)
'rnn/multi_rnn_cell/cell_0/dropout/Const�
%rnn/multi_rnn_cell/cell_0/dropout/MulMul-rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2:z:00rnn/multi_rnn_cell/cell_0/dropout/Const:output:0*
T0*
_output_shapes
:	�2'
%rnn/multi_rnn_cell/cell_0/dropout/Mul�
'rnn/multi_rnn_cell/cell_0/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   2)
'rnn/multi_rnn_cell/cell_0/dropout/Shape�
>rnn/multi_rnn_cell/cell_0/dropout/random_uniform/RandomUniformRandomUniform0rnn/multi_rnn_cell/cell_0/dropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype0*

seed *
seed2 2@
>rnn/multi_rnn_cell/cell_0/dropout/random_uniform/RandomUniform�
0rnn/multi_rnn_cell/cell_0/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>22
0rnn/multi_rnn_cell/cell_0/dropout/GreaterEqual/y�
.rnn/multi_rnn_cell/cell_0/dropout/GreaterEqualGreaterEqualGrnn/multi_rnn_cell/cell_0/dropout/random_uniform/RandomUniform:output:09rnn/multi_rnn_cell/cell_0/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�20
.rnn/multi_rnn_cell/cell_0/dropout/GreaterEqual�
&rnn/multi_rnn_cell/cell_0/dropout/CastCast2rnn/multi_rnn_cell/cell_0/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
:	�2(
&rnn/multi_rnn_cell/cell_0/dropout/Cast�
'rnn/multi_rnn_cell/cell_0/dropout/Mul_1Mul)rnn/multi_rnn_cell/cell_0/dropout/Mul:z:0*rnn/multi_rnn_cell/cell_0/dropout/Cast:y:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_0/dropout/Mul_1�
)rnn/multi_rnn_cell/cell_0/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)rnn/multi_rnn_cell/cell_0/dropout_1/Const�
'rnn/multi_rnn_cell/cell_0/dropout_1/MulMul-rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2:z:02rnn/multi_rnn_cell/cell_0/dropout_1/Const:output:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_0/dropout_1/Mul�
)rnn/multi_rnn_cell/cell_0/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   2+
)rnn/multi_rnn_cell/cell_0/dropout_1/Shape�
@rnn/multi_rnn_cell/cell_0/dropout_1/random_uniform/RandomUniformRandomUniform2rnn/multi_rnn_cell/cell_0/dropout_1/Shape:output:0*
T0*
_output_shapes
:	�*
dtype0*

seed *
seed2 2B
@rnn/multi_rnn_cell/cell_0/dropout_1/random_uniform/RandomUniform�
2rnn/multi_rnn_cell/cell_0/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>24
2rnn/multi_rnn_cell/cell_0/dropout_1/GreaterEqual/y�
0rnn/multi_rnn_cell/cell_0/dropout_1/GreaterEqualGreaterEqualIrnn/multi_rnn_cell/cell_0/dropout_1/random_uniform/RandomUniform:output:0;rnn/multi_rnn_cell/cell_0/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�22
0rnn/multi_rnn_cell/cell_0/dropout_1/GreaterEqual�
(rnn/multi_rnn_cell/cell_0/dropout_1/CastCast4rnn/multi_rnn_cell/cell_0/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
:	�2*
(rnn/multi_rnn_cell/cell_0/dropout_1/Cast�
)rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1Mul+rnn/multi_rnn_cell/cell_0/dropout_1/Mul:z:0,rnn/multi_rnn_cell/cell_0/dropout_1/Cast:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1�
/rnn/multi_rnn_cell/cell_1/lstm_cell/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :21
/rnn/multi_rnn_cell/cell_1/lstm_cell/concat/axis�
*rnn/multi_rnn_cell/cell_1/lstm_cell/concatConcatV2-rnn/multi_rnn_cell/cell_0/dropout_1/Mul_1:z:0placeholder_58rnn/multi_rnn_cell/cell_1/lstm_cell/concat/axis:output:0*
N*
T0*

Tidx0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_1/lstm_cell/concat�
*rnn/multi_rnn_cell/cell_1/lstm_cell/MatMulMatMul3rnn/multi_rnn_cell/cell_1/lstm_cell/concat:output:0ernn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identity_0*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b( 2,
*rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul�
+rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAddBiasAdd4rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul:product:0drnn_multi_rnn_cell_cell_1_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_1_lstm_cell_bias_read_identity_0*
T0*
_output_shapes
:	�*
data_formatNHWC2-
+rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd�
)rnn/multi_rnn_cell/cell_1/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/Const�
3rnn/multi_rnn_cell/cell_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :25
3rnn/multi_rnn_cell/cell_1/lstm_cell/split/split_dim�
)rnn/multi_rnn_cell/cell_1/lstm_cell/splitSplit<rnn/multi_rnn_cell/cell_1/lstm_cell/split/split_dim:output:04rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd:output:0*
T0*@
_output_shapes.
,:	�:	�:	�:	�*
	num_split2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/split�
)rnn/multi_rnn_cell/cell_1/lstm_cell/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/add/y�
'rnn/multi_rnn_cell/cell_1/lstm_cell/addAddV22rnn/multi_rnn_cell/cell_1/lstm_cell/split:output:22rnn/multi_rnn_cell/cell_1/lstm_cell/add/y:output:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_1/lstm_cell/add�
+rnn/multi_rnn_cell/cell_1/lstm_cell/SigmoidSigmoid+rnn/multi_rnn_cell/cell_1/lstm_cell/add:z:0*
T0*
_output_shapes
:	�2-
+rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid�
'rnn/multi_rnn_cell/cell_1/lstm_cell/mulMul/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid:y:0placeholder_4*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_1/lstm_cell/mul�
-rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1Sigmoid2rnn/multi_rnn_cell/cell_1/lstm_cell/split:output:0*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1�
(rnn/multi_rnn_cell/cell_1/lstm_cell/TanhTanh2rnn/multi_rnn_cell/cell_1/lstm_cell/split:output:1*
T0*
_output_shapes
:	�2*
(rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh�
)rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1Mul1rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1:y:0,rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1�
)rnn/multi_rnn_cell/cell_1/lstm_cell/add_1AddV2+rnn/multi_rnn_cell/cell_1/lstm_cell/mul:z:0-rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1:z:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/add_1�
-rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2Sigmoid2rnn/multi_rnn_cell/cell_1/lstm_cell/split:output:3*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2�
*rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1Tanh-rnn/multi_rnn_cell/cell_1/lstm_cell/add_1:z:0*
T0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1�
)rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2Mul1rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2:y:0.rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2�
'rnn/multi_rnn_cell/cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2)
'rnn/multi_rnn_cell/cell_1/dropout/Const�
%rnn/multi_rnn_cell/cell_1/dropout/MulMul-rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2:z:00rnn/multi_rnn_cell/cell_1/dropout/Const:output:0*
T0*
_output_shapes
:	�2'
%rnn/multi_rnn_cell/cell_1/dropout/Mul�
'rnn/multi_rnn_cell/cell_1/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   2)
'rnn/multi_rnn_cell/cell_1/dropout/Shape�
>rnn/multi_rnn_cell/cell_1/dropout/random_uniform/RandomUniformRandomUniform0rnn/multi_rnn_cell/cell_1/dropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype0*

seed *
seed2 2@
>rnn/multi_rnn_cell/cell_1/dropout/random_uniform/RandomUniform�
0rnn/multi_rnn_cell/cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>22
0rnn/multi_rnn_cell/cell_1/dropout/GreaterEqual/y�
.rnn/multi_rnn_cell/cell_1/dropout/GreaterEqualGreaterEqualGrnn/multi_rnn_cell/cell_1/dropout/random_uniform/RandomUniform:output:09rnn/multi_rnn_cell/cell_1/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�20
.rnn/multi_rnn_cell/cell_1/dropout/GreaterEqual�
&rnn/multi_rnn_cell/cell_1/dropout/CastCast2rnn/multi_rnn_cell/cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
:	�2(
&rnn/multi_rnn_cell/cell_1/dropout/Cast�
'rnn/multi_rnn_cell/cell_1/dropout/Mul_1Mul)rnn/multi_rnn_cell/cell_1/dropout/Mul:z:0*rnn/multi_rnn_cell/cell_1/dropout/Cast:y:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_1/dropout/Mul_1�
)rnn/multi_rnn_cell/cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)rnn/multi_rnn_cell/cell_1/dropout_1/Const�
'rnn/multi_rnn_cell/cell_1/dropout_1/MulMul-rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2:z:02rnn/multi_rnn_cell/cell_1/dropout_1/Const:output:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_1/dropout_1/Mul�
)rnn/multi_rnn_cell/cell_1/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   2+
)rnn/multi_rnn_cell/cell_1/dropout_1/Shape�
@rnn/multi_rnn_cell/cell_1/dropout_1/random_uniform/RandomUniformRandomUniform2rnn/multi_rnn_cell/cell_1/dropout_1/Shape:output:0*
T0*
_output_shapes
:	�*
dtype0*

seed *
seed2 2B
@rnn/multi_rnn_cell/cell_1/dropout_1/random_uniform/RandomUniform�
2rnn/multi_rnn_cell/cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>24
2rnn/multi_rnn_cell/cell_1/dropout_1/GreaterEqual/y�
0rnn/multi_rnn_cell/cell_1/dropout_1/GreaterEqualGreaterEqualIrnn/multi_rnn_cell/cell_1/dropout_1/random_uniform/RandomUniform:output:0;rnn/multi_rnn_cell/cell_1/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�22
0rnn/multi_rnn_cell/cell_1/dropout_1/GreaterEqual�
(rnn/multi_rnn_cell/cell_1/dropout_1/CastCast4rnn/multi_rnn_cell/cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
:	�2*
(rnn/multi_rnn_cell/cell_1/dropout_1/Cast�
)rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1Mul+rnn/multi_rnn_cell/cell_1/dropout_1/Mul:z:0,rnn/multi_rnn_cell/cell_1/dropout_1/Cast:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1�
/rnn/multi_rnn_cell/cell_2/lstm_cell/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :21
/rnn/multi_rnn_cell/cell_2/lstm_cell/concat/axis�
*rnn/multi_rnn_cell/cell_2/lstm_cell/concatConcatV2-rnn/multi_rnn_cell/cell_1/dropout_1/Mul_1:z:0placeholder_78rnn/multi_rnn_cell/cell_2/lstm_cell/concat/axis:output:0*
N*
T0*

Tidx0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_2/lstm_cell/concat�
*rnn/multi_rnn_cell/cell_2/lstm_cell/MatMulMatMul3rnn/multi_rnn_cell/cell_2/lstm_cell/concat:output:0ernn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identity_0*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b( 2,
*rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul�
+rnn/multi_rnn_cell/cell_2/lstm_cell/BiasAddBiasAdd4rnn/multi_rnn_cell/cell_2/lstm_cell/MatMul:product:0drnn_multi_rnn_cell_cell_2_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_2_lstm_cell_bias_read_identity_0*
T0*
_output_shapes
:	�*
data_formatNHWC2-
+rnn/multi_rnn_cell/cell_2/lstm_cell/BiasAdd�
)rnn/multi_rnn_cell/cell_2/lstm_cell/ConstConst*
_output_shapes
: *
dtype0*
value	B :2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/Const�
3rnn/multi_rnn_cell/cell_2/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :25
3rnn/multi_rnn_cell/cell_2/lstm_cell/split/split_dim�
)rnn/multi_rnn_cell/cell_2/lstm_cell/splitSplit<rnn/multi_rnn_cell/cell_2/lstm_cell/split/split_dim:output:04rnn/multi_rnn_cell/cell_2/lstm_cell/BiasAdd:output:0*
T0*@
_output_shapes.
,:	�:	�:	�:	�*
	num_split2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/split�
)rnn/multi_rnn_cell/cell_2/lstm_cell/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/add/y�
'rnn/multi_rnn_cell/cell_2/lstm_cell/addAddV22rnn/multi_rnn_cell/cell_2/lstm_cell/split:output:22rnn/multi_rnn_cell/cell_2/lstm_cell/add/y:output:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_2/lstm_cell/add�
+rnn/multi_rnn_cell/cell_2/lstm_cell/SigmoidSigmoid+rnn/multi_rnn_cell/cell_2/lstm_cell/add:z:0*
T0*
_output_shapes
:	�2-
+rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid�
'rnn/multi_rnn_cell/cell_2/lstm_cell/mulMul/rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid:y:0placeholder_6*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_2/lstm_cell/mul�
-rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_1Sigmoid2rnn/multi_rnn_cell/cell_2/lstm_cell/split:output:0*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_1�
(rnn/multi_rnn_cell/cell_2/lstm_cell/TanhTanh2rnn/multi_rnn_cell/cell_2/lstm_cell/split:output:1*
T0*
_output_shapes
:	�2*
(rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh�
)rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1Mul1rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_1:y:0,rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1�
)rnn/multi_rnn_cell/cell_2/lstm_cell/add_1AddV2+rnn/multi_rnn_cell/cell_2/lstm_cell/mul:z:0-rnn/multi_rnn_cell/cell_2/lstm_cell/mul_1:z:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/add_1�
-rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_2Sigmoid2rnn/multi_rnn_cell/cell_2/lstm_cell/split:output:3*
T0*
_output_shapes
:	�2/
-rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_2�
*rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_1Tanh-rnn/multi_rnn_cell/cell_2/lstm_cell/add_1:z:0*
T0*
_output_shapes
:	�2,
*rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_1�
)rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2Mul1rnn/multi_rnn_cell/cell_2/lstm_cell/Sigmoid_2:y:0.rnn/multi_rnn_cell/cell_2/lstm_cell/Tanh_1:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2�
'rnn/multi_rnn_cell/cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2)
'rnn/multi_rnn_cell/cell_2/dropout/Const�
%rnn/multi_rnn_cell/cell_2/dropout/MulMul-rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2:z:00rnn/multi_rnn_cell/cell_2/dropout/Const:output:0*
T0*
_output_shapes
:	�2'
%rnn/multi_rnn_cell/cell_2/dropout/Mul�
'rnn/multi_rnn_cell/cell_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   2)
'rnn/multi_rnn_cell/cell_2/dropout/Shape�
>rnn/multi_rnn_cell/cell_2/dropout/random_uniform/RandomUniformRandomUniform0rnn/multi_rnn_cell/cell_2/dropout/Shape:output:0*
T0*
_output_shapes
:	�*
dtype0*

seed *
seed2 2@
>rnn/multi_rnn_cell/cell_2/dropout/random_uniform/RandomUniform�
0rnn/multi_rnn_cell/cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>22
0rnn/multi_rnn_cell/cell_2/dropout/GreaterEqual/y�
.rnn/multi_rnn_cell/cell_2/dropout/GreaterEqualGreaterEqualGrnn/multi_rnn_cell/cell_2/dropout/random_uniform/RandomUniform:output:09rnn/multi_rnn_cell/cell_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�20
.rnn/multi_rnn_cell/cell_2/dropout/GreaterEqual�
&rnn/multi_rnn_cell/cell_2/dropout/CastCast2rnn/multi_rnn_cell/cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
:	�2(
&rnn/multi_rnn_cell/cell_2/dropout/Cast�
'rnn/multi_rnn_cell/cell_2/dropout/Mul_1Mul)rnn/multi_rnn_cell/cell_2/dropout/Mul:z:0*rnn/multi_rnn_cell/cell_2/dropout/Cast:y:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_2/dropout/Mul_1�
)rnn/multi_rnn_cell/cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)rnn/multi_rnn_cell/cell_2/dropout_1/Const�
'rnn/multi_rnn_cell/cell_2/dropout_1/MulMul-rnn/multi_rnn_cell/cell_2/lstm_cell/mul_2:z:02rnn/multi_rnn_cell/cell_2/dropout_1/Const:output:0*
T0*
_output_shapes
:	�2)
'rnn/multi_rnn_cell/cell_2/dropout_1/Mul�
)rnn/multi_rnn_cell/cell_2/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �   2+
)rnn/multi_rnn_cell/cell_2/dropout_1/Shape�
@rnn/multi_rnn_cell/cell_2/dropout_1/random_uniform/RandomUniformRandomUniform2rnn/multi_rnn_cell/cell_2/dropout_1/Shape:output:0*
T0*
_output_shapes
:	�*
dtype0*

seed *
seed2 2B
@rnn/multi_rnn_cell/cell_2/dropout_1/random_uniform/RandomUniform�
2rnn/multi_rnn_cell/cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>24
2rnn/multi_rnn_cell/cell_2/dropout_1/GreaterEqual/y�
0rnn/multi_rnn_cell/cell_2/dropout_1/GreaterEqualGreaterEqualIrnn/multi_rnn_cell/cell_2/dropout_1/random_uniform/RandomUniform:output:0;rnn/multi_rnn_cell/cell_2/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	�22
0rnn/multi_rnn_cell/cell_2/dropout_1/GreaterEqual�
(rnn/multi_rnn_cell/cell_2/dropout_1/CastCast4rnn/multi_rnn_cell/cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
:	�2*
(rnn/multi_rnn_cell/cell_2/dropout_1/Cast�
)rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1Mul+rnn/multi_rnn_cell/cell_2/dropout_1/Mul:z:0,rnn/multi_rnn_cell/cell_2/dropout_1/Cast:y:0*
T0*
_output_shapes
:	�2+
)rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1�
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholder-rnn/multi_rnn_cell/cell_2/dropout_1/Mul_1:z:0*
_output_shapes
: *
element_dtype02&
$TensorArrayV2Write/TensorListSetItemP
add/yConst*
_output_shapes
: *
dtype0*
value	B :2
add/y;
add_0AddV2placeholderadd/y:output:0*
T02
addT
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
add_1/yN
add_1_0AddV2rnn_1_while_loop_counteradd_1/y:output:0*
T02
add_1"
add	add_0:z:0"
add_1add_1_0:z:0" 
rnn_1_minimumrnn_1_minimum_0",
rnn_1_strided_slicernn_1_strided_slice_0"V
'rnn_multi_rnn_cell_cell_0_dropout_mul_1+rnn/multi_rnn_cell/cell_0/dropout/Mul_1:z:0"Z
)rnn_multi_rnn_cell_cell_0_lstm_cell_add_1-rnn/multi_rnn_cell/cell_0/lstm_cell/add_1:z:0"�
brnn_multi_rnn_cell_cell_0_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_lstm_cell_bias_read_identitydrnn_multi_rnn_cell_cell_0_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_0_lstm_cell_bias_read_identity_0"�
crnn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identityernn_multi_rnn_cell_cell_0_lstm_cell_matmul_rnn_multi_rnn_cell_cell_0_lstm_cell_kernel_read_identity_0"V
'rnn_multi_rnn_cell_cell_1_dropout_mul_1+rnn/multi_rnn_cell/cell_1/dropout/Mul_1:z:0"Z
)rnn_multi_rnn_cell_cell_1_lstm_cell_add_1-rnn/multi_rnn_cell/cell_1/lstm_cell/add_1:z:0"�
brnn_multi_rnn_cell_cell_1_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_1_lstm_cell_bias_read_identitydrnn_multi_rnn_cell_cell_1_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_1_lstm_cell_bias_read_identity_0"�
crnn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identityernn_multi_rnn_cell_cell_1_lstm_cell_matmul_rnn_multi_rnn_cell_cell_1_lstm_cell_kernel_read_identity_0"V
'rnn_multi_rnn_cell_cell_2_dropout_mul_1+rnn/multi_rnn_cell/cell_2/dropout/Mul_1:z:0"Z
)rnn_multi_rnn_cell_cell_2_lstm_cell_add_1-rnn/multi_rnn_cell/cell_2/lstm_cell/add_1:z:0"�
brnn_multi_rnn_cell_cell_2_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_2_lstm_cell_bias_read_identitydrnn_multi_rnn_cell_cell_2_lstm_cell_biasadd_rnn_multi_rnn_cell_cell_2_lstm_cell_bias_read_identity_0"�
crnn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identityernn_multi_rnn_cell_cell_2_lstm_cell_matmul_rnn_multi_rnn_cell_cell_2_lstm_cell_kernel_read_identity_0"�
Qtensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensorStensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensor_0"\
$tensorarrayv2write_tensorlistsetitem4TensorArrayV2Write/TensorListSetItem:output_handle:0*�
_input_shapes�
�: : : : :	�:	�:	�:	�:	�:	�: : :
��:�:
��:�:
��:�: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%!

_output_shapes
:	�:%	!

_output_shapes
:	�:


_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�"�<
save/Const:0save/Identity:0save/restore_all (5 @F8"
train_op

Adam"�
trainable_variables��
L
w:0w/Assignw/Read/ReadVariableOp:0(2w/Initializer/random_uniform:08
>
b:0b/Assignb/Read/ReadVariableOp:0(2random_uniform:08
�
,rnn/multi_rnn_cell/cell_0/lstm_cell/kernel:01rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Assign:rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Read/Identity:0(2Grnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform:08
�
*rnn/multi_rnn_cell/cell_0/lstm_cell/bias:0/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Assign8rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Read/Identity:0(2<rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/zeros:08
�
,rnn/multi_rnn_cell/cell_1/lstm_cell/kernel:01rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Assign:rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Read/Identity:0(2Grnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform:08
�
*rnn/multi_rnn_cell/cell_1/lstm_cell/bias:0/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Assign8rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Read/Identity:0(2<rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Initializer/zeros:08
�
,rnn/multi_rnn_cell/cell_2/lstm_cell/kernel:01rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Assign:rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Read/Identity:0(2Grnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Initializer/random_uniform:08
�
*rnn/multi_rnn_cell/cell_2/lstm_cell/bias:0/rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Assign8rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Read/Identity:0(2<rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Initializer/zeros:08"�4
	variables�4�4
L
w:0w/Assignw/Read/ReadVariableOp:0(2w/Initializer/random_uniform:08
>
b:0b/Assignb/Read/ReadVariableOp:0(2random_uniform:08
H

Variable:0Variable/AssignVariable/Read/ReadVariableOp:0(2zeros:0
P
Variable_1:0Variable_1/Assign Variable_1/Read/ReadVariableOp:0(2	zeros_1:0
P
Variable_2:0Variable_2/Assign Variable_2/Read/ReadVariableOp:0(2	zeros_2:0
P
Variable_3:0Variable_3/Assign Variable_3/Read/ReadVariableOp:0(2	zeros_3:0
P
Variable_4:0Variable_4/Assign Variable_4/Read/ReadVariableOp:0(2	zeros_4:0
P
Variable_5:0Variable_5/Assign Variable_5/Read/ReadVariableOp:0(2	zeros_5:0
�
,rnn/multi_rnn_cell/cell_0/lstm_cell/kernel:01rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Assign:rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Read/Identity:0(2Grnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform:08
�
*rnn/multi_rnn_cell/cell_0/lstm_cell/bias:0/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Assign8rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Read/Identity:0(2<rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/zeros:08
�
,rnn/multi_rnn_cell/cell_1/lstm_cell/kernel:01rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Assign:rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Read/Identity:0(2Grnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform:08
�
*rnn/multi_rnn_cell/cell_1/lstm_cell/bias:0/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Assign8rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Read/Identity:0(2<rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Initializer/zeros:08
�
,rnn/multi_rnn_cell/cell_2/lstm_cell/kernel:01rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Assign:rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Read/Identity:0(2Grnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Initializer/random_uniform:08
�
*rnn/multi_rnn_cell/cell_2/lstm_cell/bias:0/rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Assign8rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Read/Identity:0(2<rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Initializer/zeros:08
P
Variable_6:0Variable_6/Assign Variable_6/Read/ReadVariableOp:0(2	zeros_6:0
P
Variable_7:0Variable_7/Assign Variable_7/Read/ReadVariableOp:0(2	zeros_7:0
P
Variable_8:0Variable_8/Assign Variable_8/Read/ReadVariableOp:0(2	zeros_8:0
P
Variable_9:0Variable_9/Assign Variable_9/Read/ReadVariableOp:0(2	zeros_9:0
T
Variable_10:0Variable_10/Assign!Variable_10/Read/ReadVariableOp:0(2
zeros_10:0
T
Variable_11:0Variable_11/Assign!Variable_11/Read/ReadVariableOp:0(2
zeros_11:0
q
Variable_12:0Variable_12/Assign!Variable_12/Read/ReadVariableOp:0(2'Variable_12/Initializer/initial_value:0
q
beta1_power:0beta1_power/Assign!beta1_power/Read/ReadVariableOp:0(2'beta1_power/Initializer/initial_value:0
q
beta2_power:0beta2_power/Assign!beta2_power/Read/ReadVariableOp:0(2'beta2_power/Initializer/initial_value:0
U
w/Adam:0w/Adam/Assignw/Adam/Read/ReadVariableOp:0(2w/Adam/Initializer/zeros:0
]

w/Adam_1:0w/Adam_1/Assignw/Adam_1/Read/ReadVariableOp:0(2w/Adam_1/Initializer/zeros:0
U
b/Adam:0b/Adam/Assignb/Adam/Read/ReadVariableOp:0(2b/Adam/Initializer/zeros:0
]

b/Adam_1:0b/Adam_1/Assignb/Adam_1/Read/ReadVariableOp:0(2b/Adam_1/Initializer/zeros:0
�
1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam:06rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/AssignErnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Read/ReadVariableOp:0(2Crnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam/Initializer/zeros:0
�
3rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1:08rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/AssignGrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Read/ReadVariableOp:0(2Ernn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adam_1/Initializer/zeros:0
�
/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam:04rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/AssignCrnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/Read/ReadVariableOp:0(2Arnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam/Initializer/zeros:0
�
1rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1:06rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/AssignErnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/Read/ReadVariableOp:0(2Crnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adam_1/Initializer/zeros:0
�
1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam:06rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/AssignErnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/Read/ReadVariableOp:0(2Crnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam/Initializer/zeros:0
�
3rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1:08rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/AssignGrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/Read/ReadVariableOp:0(2Ernn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adam_1/Initializer/zeros:0
�
/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam:04rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/AssignCrnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/Read/ReadVariableOp:0(2Arnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam/Initializer/zeros:0
�
1rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1:06rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1/AssignErnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1/Read/ReadVariableOp:0(2Crnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adam_1/Initializer/zeros:0
�
1rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam:06rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam/AssignErnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam/Read/ReadVariableOp:0(2Crnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam/Initializer/zeros:0
�
3rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1:08rnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1/AssignGrnn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1/Read/ReadVariableOp:0(2Ernn/multi_rnn_cell/cell_2/lstm_cell/kernel/Adam_1/Initializer/zeros:0
�
/rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam:04rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam/AssignCrnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam/Read/ReadVariableOp:0(2Arnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam/Initializer/zeros:0
�
1rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam_1:06rnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam_1/AssignErnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam_1/Read/ReadVariableOp:0(2Crnn/multi_rnn_cell/cell_2/lstm_cell/bias/Adam_1/Initializer/zeros:0
T
Variable_13:0Variable_13/Assign!Variable_13/Read/ReadVariableOp:0(2
zeros_12:0
T
Variable_14:0Variable_14/Assign!Variable_14/Read/ReadVariableOp:0(2
zeros_13:0
T
Variable_15:0Variable_15/Assign!Variable_15/Read/ReadVariableOp:0(2
zeros_14:0
T
Variable_16:0Variable_16/Assign!Variable_16/Read/ReadVariableOp:0(2
zeros_15:0
T
Variable_17:0Variable_17/Assign!Variable_17/Read/ReadVariableOp:0(2
zeros_16:0
T
Variable_18:0Variable_18/Assign!Variable_18/Read/ReadVariableOp:0(2
zeros_17:0*�
serving_defaultm
%
text
Placeholder_2:0(
	embedding
xw_plus_b_2:0tensorflow/serving/predict