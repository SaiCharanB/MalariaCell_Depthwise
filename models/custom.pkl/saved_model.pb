┤╝
Ь├
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Џ
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

І
DepthwiseConv2dNative

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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
ѓ
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ
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
dtypetypeѕ
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
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
0
Sigmoid
x"T
y"T"
Ttype:

2
Й
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
executor_typestring ѕ
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.4.12v2.4.0-49-g85c8b2a817f8┴┐
ё
conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_22/kernel
}
$conv2d_22/kernel/Read/ReadVariableOpReadVariableOpconv2d_22/kernel*&
_output_shapes
:*
dtype0
t
conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_22/bias
m
"conv2d_22/bias/Read/ReadVariableOpReadVariableOpconv2d_22/bias*
_output_shapes
:*
dtype0
ё
conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_23/kernel
}
$conv2d_23/kernel/Read/ReadVariableOpReadVariableOpconv2d_23/kernel*&
_output_shapes
: *
dtype0
t
conv2d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_23/bias
m
"conv2d_23/bias/Read/ReadVariableOpReadVariableOpconv2d_23/bias*
_output_shapes
: *
dtype0
г
$separable_conv2d_22/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$separable_conv2d_22/depthwise_kernel
Ц
8separable_conv2d_22/depthwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_22/depthwise_kernel*&
_output_shapes
: *
dtype0
г
$separable_conv2d_22/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*5
shared_name&$separable_conv2d_22/pointwise_kernel
Ц
8separable_conv2d_22/pointwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_22/pointwise_kernel*&
_output_shapes
: @*
dtype0
ѕ
separable_conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameseparable_conv2d_22/bias
Ђ
,separable_conv2d_22/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_22/bias*
_output_shapes
:@*
dtype0
г
$separable_conv2d_23/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$separable_conv2d_23/depthwise_kernel
Ц
8separable_conv2d_23/depthwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_23/depthwise_kernel*&
_output_shapes
:@*
dtype0
г
$separable_conv2d_23/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*5
shared_name&$separable_conv2d_23/pointwise_kernel
Ц
8separable_conv2d_23/pointwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_23/pointwise_kernel*&
_output_shapes
:@@*
dtype0
ѕ
separable_conv2d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameseparable_conv2d_23/bias
Ђ
,separable_conv2d_23/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_23/bias*
_output_shapes
:@*
dtype0
{
dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ@* 
shared_namedense_22/kernel
t
#dense_22/kernel/Read/ReadVariableOpReadVariableOpdense_22/kernel*
_output_shapes
:	ђ@*
dtype0
r
dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_22/bias
k
!dense_22/bias/Read/ReadVariableOpReadVariableOpdense_22/bias*
_output_shapes
:@*
dtype0
z
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_23/kernel
s
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel*
_output_shapes

:@*
dtype0
r
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_23/bias
k
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
_output_shapes
:*
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
њ
Adam/conv2d_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_22/kernel/m
І
+Adam/conv2d_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/kernel/m*&
_output_shapes
:*
dtype0
ѓ
Adam/conv2d_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_22/bias/m
{
)Adam/conv2d_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/bias/m*
_output_shapes
:*
dtype0
њ
Adam/conv2d_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_23/kernel/m
І
+Adam/conv2d_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/kernel/m*&
_output_shapes
: *
dtype0
ѓ
Adam/conv2d_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_23/bias/m
{
)Adam/conv2d_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/bias/m*
_output_shapes
: *
dtype0
║
+Adam/separable_conv2d_22/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *<
shared_name-+Adam/separable_conv2d_22/depthwise_kernel/m
│
?Adam/separable_conv2d_22/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_22/depthwise_kernel/m*&
_output_shapes
: *
dtype0
║
+Adam/separable_conv2d_22/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*<
shared_name-+Adam/separable_conv2d_22/pointwise_kernel/m
│
?Adam/separable_conv2d_22/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_22/pointwise_kernel/m*&
_output_shapes
: @*
dtype0
ќ
Adam/separable_conv2d_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/separable_conv2d_22/bias/m
Ј
3Adam/separable_conv2d_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_22/bias/m*
_output_shapes
:@*
dtype0
║
+Adam/separable_conv2d_23/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*<
shared_name-+Adam/separable_conv2d_23/depthwise_kernel/m
│
?Adam/separable_conv2d_23/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_23/depthwise_kernel/m*&
_output_shapes
:@*
dtype0
║
+Adam/separable_conv2d_23/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*<
shared_name-+Adam/separable_conv2d_23/pointwise_kernel/m
│
?Adam/separable_conv2d_23/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_23/pointwise_kernel/m*&
_output_shapes
:@@*
dtype0
ќ
Adam/separable_conv2d_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/separable_conv2d_23/bias/m
Ј
3Adam/separable_conv2d_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_23/bias/m*
_output_shapes
:@*
dtype0
Ѕ
Adam/dense_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ@*'
shared_nameAdam/dense_22/kernel/m
ѓ
*Adam/dense_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/m*
_output_shapes
:	ђ@*
dtype0
ђ
Adam/dense_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_22/bias/m
y
(Adam/dense_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/m*
_output_shapes
:@*
dtype0
ѕ
Adam/dense_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_23/kernel/m
Ђ
*Adam/dense_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/m*
_output_shapes

:@*
dtype0
ђ
Adam/dense_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_23/bias/m
y
(Adam/dense_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/m*
_output_shapes
:*
dtype0
њ
Adam/conv2d_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_22/kernel/v
І
+Adam/conv2d_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/kernel/v*&
_output_shapes
:*
dtype0
ѓ
Adam/conv2d_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_22/bias/v
{
)Adam/conv2d_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/bias/v*
_output_shapes
:*
dtype0
њ
Adam/conv2d_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_23/kernel/v
І
+Adam/conv2d_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/kernel/v*&
_output_shapes
: *
dtype0
ѓ
Adam/conv2d_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_23/bias/v
{
)Adam/conv2d_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/bias/v*
_output_shapes
: *
dtype0
║
+Adam/separable_conv2d_22/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *<
shared_name-+Adam/separable_conv2d_22/depthwise_kernel/v
│
?Adam/separable_conv2d_22/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_22/depthwise_kernel/v*&
_output_shapes
: *
dtype0
║
+Adam/separable_conv2d_22/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*<
shared_name-+Adam/separable_conv2d_22/pointwise_kernel/v
│
?Adam/separable_conv2d_22/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_22/pointwise_kernel/v*&
_output_shapes
: @*
dtype0
ќ
Adam/separable_conv2d_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/separable_conv2d_22/bias/v
Ј
3Adam/separable_conv2d_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_22/bias/v*
_output_shapes
:@*
dtype0
║
+Adam/separable_conv2d_23/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*<
shared_name-+Adam/separable_conv2d_23/depthwise_kernel/v
│
?Adam/separable_conv2d_23/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_23/depthwise_kernel/v*&
_output_shapes
:@*
dtype0
║
+Adam/separable_conv2d_23/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*<
shared_name-+Adam/separable_conv2d_23/pointwise_kernel/v
│
?Adam/separable_conv2d_23/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/separable_conv2d_23/pointwise_kernel/v*&
_output_shapes
:@@*
dtype0
ќ
Adam/separable_conv2d_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/separable_conv2d_23/bias/v
Ј
3Adam/separable_conv2d_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_23/bias/v*
_output_shapes
:@*
dtype0
Ѕ
Adam/dense_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ@*'
shared_nameAdam/dense_22/kernel/v
ѓ
*Adam/dense_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/v*
_output_shapes
:	ђ@*
dtype0
ђ
Adam/dense_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_22/bias/v
y
(Adam/dense_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/v*
_output_shapes
:@*
dtype0
ѕ
Adam/dense_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_23/kernel/v
Ђ
*Adam/dense_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/v*
_output_shapes

:@*
dtype0
ђ
Adam/dense_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_23/bias/v
y
(Adam/dense_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ёb
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*┐a
valueхaB▓a BФa
с
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
layer-11
layer-12
layer_with_weights-4
layer-13
layer-14
layer_with_weights-5
layer-15
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
 	keras_api
R
!	variables
"trainable_variables
#regularization_losses
$	keras_api
h

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
R
+	variables
,trainable_variables
-regularization_losses
.	keras_api
R
/	variables
0trainable_variables
1regularization_losses
2	keras_api
ѕ
3depthwise_kernel
4pointwise_kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
R
:	variables
;trainable_variables
<regularization_losses
=	keras_api
R
>	variables
?trainable_variables
@regularization_losses
A	keras_api
ѕ
Bdepthwise_kernel
Cpointwise_kernel
Dbias
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
R
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
R
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
R
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
h

Ukernel
Vbias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
R
[	variables
\trainable_variables
]regularization_losses
^	keras_api
h

_kernel
`bias
a	variables
btrainable_variables
cregularization_losses
d	keras_api
п
eiter

fbeta_1

gbeta_2
	hdecay
ilearning_ratem╩m╦%m╠&m═3m╬4m¤5mлBmЛCmмDmМUmнVmН_mо`mОvпv┘%v┌&v█3v▄4vП5vяBv▀CvЯDvрUvРVvс_vС`vт
f
0
1
%2
&3
34
45
56
B7
C8
D9
U10
V11
_12
`13
f
0
1
%2
&3
34
45
56
B7
C8
D9
U10
V11
_12
`13
 
Г
	variables
jlayer_regularization_losses

klayers
llayer_metrics
mmetrics
trainable_variables
regularization_losses
nnon_trainable_variables
 
\Z
VARIABLE_VALUEconv2d_22/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_22/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
Г
	variables
olayer_regularization_losses

players
qlayer_metrics
rmetrics
trainable_variables
regularization_losses
snon_trainable_variables
 
 
 
Г
	variables
tlayer_regularization_losses

ulayers
vlayer_metrics
wmetrics
trainable_variables
regularization_losses
xnon_trainable_variables
 
 
 
Г
!	variables
ylayer_regularization_losses

zlayers
{layer_metrics
|metrics
"trainable_variables
#regularization_losses
}non_trainable_variables
\Z
VARIABLE_VALUEconv2d_23/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_23/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1

%0
&1
 
░
'	variables
~layer_regularization_losses

layers
ђlayer_metrics
Ђmetrics
(trainable_variables
)regularization_losses
ѓnon_trainable_variables
 
 
 
▓
+	variables
 Ѓlayer_regularization_losses
ёlayers
Ёlayer_metrics
єmetrics
,trainable_variables
-regularization_losses
Єnon_trainable_variables
 
 
 
▓
/	variables
 ѕlayer_regularization_losses
Ѕlayers
іlayer_metrics
Іmetrics
0trainable_variables
1regularization_losses
їnon_trainable_variables
zx
VARIABLE_VALUE$separable_conv2d_22/depthwise_kernel@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE$separable_conv2d_22/pointwise_kernel@layer_with_weights-2/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEseparable_conv2d_22/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

30
41
52

30
41
52
 
▓
6	variables
 Їlayer_regularization_losses
јlayers
Јlayer_metrics
љmetrics
7trainable_variables
8regularization_losses
Љnon_trainable_variables
 
 
 
▓
:	variables
 њlayer_regularization_losses
Њlayers
ћlayer_metrics
Ћmetrics
;trainable_variables
<regularization_losses
ќnon_trainable_variables
 
 
 
▓
>	variables
 Ќlayer_regularization_losses
ўlayers
Ўlayer_metrics
џmetrics
?trainable_variables
@regularization_losses
Џnon_trainable_variables
zx
VARIABLE_VALUE$separable_conv2d_23/depthwise_kernel@layer_with_weights-3/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE$separable_conv2d_23/pointwise_kernel@layer_with_weights-3/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEseparable_conv2d_23/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

B0
C1
D2

B0
C1
D2
 
▓
E	variables
 юlayer_regularization_losses
Юlayers
ъlayer_metrics
Ъmetrics
Ftrainable_variables
Gregularization_losses
аnon_trainable_variables
 
 
 
▓
I	variables
 Аlayer_regularization_losses
бlayers
Бlayer_metrics
цmetrics
Jtrainable_variables
Kregularization_losses
Цnon_trainable_variables
 
 
 
▓
M	variables
 дlayer_regularization_losses
Дlayers
еlayer_metrics
Еmetrics
Ntrainable_variables
Oregularization_losses
фnon_trainable_variables
 
 
 
▓
Q	variables
 Фlayer_regularization_losses
гlayers
Гlayer_metrics
«metrics
Rtrainable_variables
Sregularization_losses
»non_trainable_variables
[Y
VARIABLE_VALUEdense_22/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_22/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

U0
V1

U0
V1
 
▓
W	variables
 ░layer_regularization_losses
▒layers
▓layer_metrics
│metrics
Xtrainable_variables
Yregularization_losses
┤non_trainable_variables
 
 
 
▓
[	variables
 хlayer_regularization_losses
Хlayers
иlayer_metrics
Иmetrics
\trainable_variables
]regularization_losses
╣non_trainable_variables
[Y
VARIABLE_VALUEdense_23/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_23/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

_0
`1

_0
`1
 
▓
a	variables
 ║layer_regularization_losses
╗layers
╝layer_metrics
йmetrics
btrainable_variables
cregularization_losses
Йnon_trainable_variables
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
 
v
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
11
12
13
14
15
 

┐0
└1
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

┴total

┬count
├	variables
─	keras_api
I

┼total

кcount
К
_fn_kwargs
╚	variables
╔	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

┴0
┬1

├	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

┼0
к1

╚	variables
}
VARIABLE_VALUEAdam/conv2d_22/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_22/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_23/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_23/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ъЏ
VARIABLE_VALUE+Adam/separable_conv2d_22/depthwise_kernel/m\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ъЏ
VARIABLE_VALUE+Adam/separable_conv2d_22/pointwise_kernel/m\layer_with_weights-2/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
єЃ
VARIABLE_VALUEAdam/separable_conv2d_22/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ъЏ
VARIABLE_VALUE+Adam/separable_conv2d_23/depthwise_kernel/m\layer_with_weights-3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ъЏ
VARIABLE_VALUE+Adam/separable_conv2d_23/pointwise_kernel/m\layer_with_weights-3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
єЃ
VARIABLE_VALUEAdam/separable_conv2d_23/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_22/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_22/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_22/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_22/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_23/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_23/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ъЏ
VARIABLE_VALUE+Adam/separable_conv2d_22/depthwise_kernel/v\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ъЏ
VARIABLE_VALUE+Adam/separable_conv2d_22/pointwise_kernel/v\layer_with_weights-2/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
єЃ
VARIABLE_VALUEAdam/separable_conv2d_22/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ъЏ
VARIABLE_VALUE+Adam/separable_conv2d_23/depthwise_kernel/v\layer_with_weights-3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ъЏ
VARIABLE_VALUE+Adam/separable_conv2d_23/pointwise_kernel/v\layer_with_weights-3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
єЃ
VARIABLE_VALUEAdam/separable_conv2d_23/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_22/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_22/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
њ
serving_default_conv2d_22_inputPlaceholder*/
_output_shapes
:         @@*
dtype0*$
shape:         @@
д
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_22_inputconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/bias$separable_conv2d_22/depthwise_kernel$separable_conv2d_22/pointwise_kernelseparable_conv2d_22/bias$separable_conv2d_23/depthwise_kernel$separable_conv2d_23/pointwise_kernelseparable_conv2d_23/biasdense_22/kerneldense_22/biasdense_23/kerneldense_23/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *-
f(R&
$__inference_signature_wrapper_254112
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
с
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_22/kernel/Read/ReadVariableOp"conv2d_22/bias/Read/ReadVariableOp$conv2d_23/kernel/Read/ReadVariableOp"conv2d_23/bias/Read/ReadVariableOp8separable_conv2d_22/depthwise_kernel/Read/ReadVariableOp8separable_conv2d_22/pointwise_kernel/Read/ReadVariableOp,separable_conv2d_22/bias/Read/ReadVariableOp8separable_conv2d_23/depthwise_kernel/Read/ReadVariableOp8separable_conv2d_23/pointwise_kernel/Read/ReadVariableOp,separable_conv2d_23/bias/Read/ReadVariableOp#dense_22/kernel/Read/ReadVariableOp!dense_22/bias/Read/ReadVariableOp#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_22/kernel/m/Read/ReadVariableOp)Adam/conv2d_22/bias/m/Read/ReadVariableOp+Adam/conv2d_23/kernel/m/Read/ReadVariableOp)Adam/conv2d_23/bias/m/Read/ReadVariableOp?Adam/separable_conv2d_22/depthwise_kernel/m/Read/ReadVariableOp?Adam/separable_conv2d_22/pointwise_kernel/m/Read/ReadVariableOp3Adam/separable_conv2d_22/bias/m/Read/ReadVariableOp?Adam/separable_conv2d_23/depthwise_kernel/m/Read/ReadVariableOp?Adam/separable_conv2d_23/pointwise_kernel/m/Read/ReadVariableOp3Adam/separable_conv2d_23/bias/m/Read/ReadVariableOp*Adam/dense_22/kernel/m/Read/ReadVariableOp(Adam/dense_22/bias/m/Read/ReadVariableOp*Adam/dense_23/kernel/m/Read/ReadVariableOp(Adam/dense_23/bias/m/Read/ReadVariableOp+Adam/conv2d_22/kernel/v/Read/ReadVariableOp)Adam/conv2d_22/bias/v/Read/ReadVariableOp+Adam/conv2d_23/kernel/v/Read/ReadVariableOp)Adam/conv2d_23/bias/v/Read/ReadVariableOp?Adam/separable_conv2d_22/depthwise_kernel/v/Read/ReadVariableOp?Adam/separable_conv2d_22/pointwise_kernel/v/Read/ReadVariableOp3Adam/separable_conv2d_22/bias/v/Read/ReadVariableOp?Adam/separable_conv2d_23/depthwise_kernel/v/Read/ReadVariableOp?Adam/separable_conv2d_23/pointwise_kernel/v/Read/ReadVariableOp3Adam/separable_conv2d_23/bias/v/Read/ReadVariableOp*Adam/dense_22/kernel/v/Read/ReadVariableOp(Adam/dense_22/bias/v/Read/ReadVariableOp*Adam/dense_23/kernel/v/Read/ReadVariableOp(Adam/dense_23/bias/v/Read/ReadVariableOpConst*@
Tin9
725	*
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
GPU 2J 8ѓ *(
f#R!
__inference__traced_save_254749
Р
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/bias$separable_conv2d_22/depthwise_kernel$separable_conv2d_22/pointwise_kernelseparable_conv2d_22/bias$separable_conv2d_23/depthwise_kernel$separable_conv2d_23/pointwise_kernelseparable_conv2d_23/biasdense_22/kerneldense_22/biasdense_23/kerneldense_23/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_22/kernel/mAdam/conv2d_22/bias/mAdam/conv2d_23/kernel/mAdam/conv2d_23/bias/m+Adam/separable_conv2d_22/depthwise_kernel/m+Adam/separable_conv2d_22/pointwise_kernel/mAdam/separable_conv2d_22/bias/m+Adam/separable_conv2d_23/depthwise_kernel/m+Adam/separable_conv2d_23/pointwise_kernel/mAdam/separable_conv2d_23/bias/mAdam/dense_22/kernel/mAdam/dense_22/bias/mAdam/dense_23/kernel/mAdam/dense_23/bias/mAdam/conv2d_22/kernel/vAdam/conv2d_22/bias/vAdam/conv2d_23/kernel/vAdam/conv2d_23/bias/v+Adam/separable_conv2d_22/depthwise_kernel/v+Adam/separable_conv2d_22/pointwise_kernel/vAdam/separable_conv2d_22/bias/v+Adam/separable_conv2d_23/depthwise_kernel/v+Adam/separable_conv2d_23/pointwise_kernel/vAdam/separable_conv2d_23/bias/vAdam/dense_22/kernel/vAdam/dense_22/bias/vAdam/dense_23/kernel/vAdam/dense_23/bias/v*?
Tin8
624*
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
GPU 2J 8ѓ *+
f&R$
"__inference__traced_restore_254912ек
Х
G
+__inference_dropout_56_layer_call_fn_254441

inputs
identity╠
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_56_layer_call_and_return_conditional_losses_2536702
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:          2

Identity"
identityIdentity:output:0*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
«▄
З
"__inference__traced_restore_254912
file_prefix%
!assignvariableop_conv2d_22_kernel%
!assignvariableop_1_conv2d_22_bias'
#assignvariableop_2_conv2d_23_kernel%
!assignvariableop_3_conv2d_23_bias;
7assignvariableop_4_separable_conv2d_22_depthwise_kernel;
7assignvariableop_5_separable_conv2d_22_pointwise_kernel/
+assignvariableop_6_separable_conv2d_22_bias;
7assignvariableop_7_separable_conv2d_23_depthwise_kernel;
7assignvariableop_8_separable_conv2d_23_pointwise_kernel/
+assignvariableop_9_separable_conv2d_23_bias'
#assignvariableop_10_dense_22_kernel%
!assignvariableop_11_dense_22_bias'
#assignvariableop_12_dense_23_kernel%
!assignvariableop_13_dense_23_bias!
assignvariableop_14_adam_iter#
assignvariableop_15_adam_beta_1#
assignvariableop_16_adam_beta_2"
assignvariableop_17_adam_decay*
&assignvariableop_18_adam_learning_rate
assignvariableop_19_total
assignvariableop_20_count
assignvariableop_21_total_1
assignvariableop_22_count_1/
+assignvariableop_23_adam_conv2d_22_kernel_m-
)assignvariableop_24_adam_conv2d_22_bias_m/
+assignvariableop_25_adam_conv2d_23_kernel_m-
)assignvariableop_26_adam_conv2d_23_bias_mC
?assignvariableop_27_adam_separable_conv2d_22_depthwise_kernel_mC
?assignvariableop_28_adam_separable_conv2d_22_pointwise_kernel_m7
3assignvariableop_29_adam_separable_conv2d_22_bias_mC
?assignvariableop_30_adam_separable_conv2d_23_depthwise_kernel_mC
?assignvariableop_31_adam_separable_conv2d_23_pointwise_kernel_m7
3assignvariableop_32_adam_separable_conv2d_23_bias_m.
*assignvariableop_33_adam_dense_22_kernel_m,
(assignvariableop_34_adam_dense_22_bias_m.
*assignvariableop_35_adam_dense_23_kernel_m,
(assignvariableop_36_adam_dense_23_bias_m/
+assignvariableop_37_adam_conv2d_22_kernel_v-
)assignvariableop_38_adam_conv2d_22_bias_v/
+assignvariableop_39_adam_conv2d_23_kernel_v-
)assignvariableop_40_adam_conv2d_23_bias_vC
?assignvariableop_41_adam_separable_conv2d_22_depthwise_kernel_vC
?assignvariableop_42_adam_separable_conv2d_22_pointwise_kernel_v7
3assignvariableop_43_adam_separable_conv2d_22_bias_vC
?assignvariableop_44_adam_separable_conv2d_23_depthwise_kernel_vC
?assignvariableop_45_adam_separable_conv2d_23_pointwise_kernel_v7
3assignvariableop_46_adam_separable_conv2d_23_bias_v.
*assignvariableop_47_adam_dense_22_kernel_v,
(assignvariableop_48_adam_dense_22_bias_v.
*assignvariableop_49_adam_dense_23_kernel_v,
(assignvariableop_50_adam_dense_23_bias_v
identity_52ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_40бAssignVariableOp_41бAssignVariableOp_42бAssignVariableOp_43бAssignVariableOp_44бAssignVariableOp_45бAssignVariableOp_46бAssignVariableOp_47бAssignVariableOp_48бAssignVariableOp_49бAssignVariableOp_5бAssignVariableOp_50бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9Э
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*ё
valueЩBэ4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-3/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-3/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesШ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices▓
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Т
_output_shapesМ
л::::::::::::::::::::::::::::::::::::::::::::::::::::*B
dtypes8
624	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityа
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_22_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1д
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_22_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2е
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_23_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3д
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_23_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4╝
AssignVariableOp_4AssignVariableOp7assignvariableop_4_separable_conv2d_22_depthwise_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5╝
AssignVariableOp_5AssignVariableOp7assignvariableop_5_separable_conv2d_22_pointwise_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6░
AssignVariableOp_6AssignVariableOp+assignvariableop_6_separable_conv2d_22_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7╝
AssignVariableOp_7AssignVariableOp7assignvariableop_7_separable_conv2d_23_depthwise_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8╝
AssignVariableOp_8AssignVariableOp7assignvariableop_8_separable_conv2d_23_pointwise_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9░
AssignVariableOp_9AssignVariableOp+assignvariableop_9_separable_conv2d_23_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ф
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_22_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Е
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_22_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ф
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_23_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Е
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_23_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_14Ц
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Д
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Д
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17д
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18«
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19А
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20А
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Б
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Б
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23│
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_conv2d_22_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24▒
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_conv2d_22_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25│
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv2d_23_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26▒
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv2d_23_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27К
AssignVariableOp_27AssignVariableOp?assignvariableop_27_adam_separable_conv2d_22_depthwise_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28К
AssignVariableOp_28AssignVariableOp?assignvariableop_28_adam_separable_conv2d_22_pointwise_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29╗
AssignVariableOp_29AssignVariableOp3assignvariableop_29_adam_separable_conv2d_22_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30К
AssignVariableOp_30AssignVariableOp?assignvariableop_30_adam_separable_conv2d_23_depthwise_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31К
AssignVariableOp_31AssignVariableOp?assignvariableop_31_adam_separable_conv2d_23_pointwise_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32╗
AssignVariableOp_32AssignVariableOp3assignvariableop_32_adam_separable_conv2d_23_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33▓
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_22_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34░
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_22_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35▓
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_23_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36░
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_23_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37│
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_conv2d_22_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38▒
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_conv2d_22_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39│
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_conv2d_23_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40▒
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_conv2d_23_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41К
AssignVariableOp_41AssignVariableOp?assignvariableop_41_adam_separable_conv2d_22_depthwise_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42К
AssignVariableOp_42AssignVariableOp?assignvariableop_42_adam_separable_conv2d_22_pointwise_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43╗
AssignVariableOp_43AssignVariableOp3assignvariableop_43_adam_separable_conv2d_22_bias_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44К
AssignVariableOp_44AssignVariableOp?assignvariableop_44_adam_separable_conv2d_23_depthwise_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45К
AssignVariableOp_45AssignVariableOp?assignvariableop_45_adam_separable_conv2d_23_pointwise_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46╗
AssignVariableOp_46AssignVariableOp3assignvariableop_46_adam_separable_conv2d_23_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47▓
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_22_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48░
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_22_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49▓
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_23_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50░
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_23_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_509
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp└	
Identity_51Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_51│	
Identity_52IdentityIdentity_51:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_52"#
identity_52Identity_52:output:0*с
_input_shapesЛ
╬: :::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
─
e
F__inference_dropout_57_layer_call_and_return_conditional_losses_253703

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/yк
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/GreaterEqualЄ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/Castѓ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
─
e
F__inference_dropout_55_layer_call_and_return_conditional_losses_253607

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/yк
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         2
dropout/GreaterEqualЄ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         2
dropout/Castѓ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ы	
П
D__inference_dense_22_layer_call_and_return_conditional_losses_254517

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @2
ReluЌ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
е
G
+__inference_flatten_11_layer_call_fn_254506

inputs
identity┼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_flatten_11_layer_call_and_return_conditional_losses_2537652
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ж
d
F__inference_dropout_56_layer_call_and_return_conditional_losses_254431

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:          2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:          2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
ѓ
h
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_253475

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
»
M
1__inference_max_pooling2d_47_layer_call_fn_253563

inputs
identityь
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_2535572
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
─
e
F__inference_dropout_56_layer_call_and_return_conditional_losses_254426

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:          2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:          *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/yк
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:          2
dropout/GreaterEqualЄ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:          2
dropout/Castѓ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:          2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:          2

Identity"
identityIdentity:output:0*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
ж
d
F__inference_dropout_55_layer_call_and_return_conditional_losses_254384

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
§	
║
.__inference_sequential_11_layer_call_fn_254314

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityѕбStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_2539572
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         @@::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
▓d
ю
I__inference_sequential_11_layer_call_and_return_conditional_losses_254281

inputs,
(conv2d_22_conv2d_readvariableop_resource-
)conv2d_22_biasadd_readvariableop_resource,
(conv2d_23_conv2d_readvariableop_resource-
)conv2d_23_biasadd_readvariableop_resource@
<separable_conv2d_22_separable_conv2d_readvariableop_resourceB
>separable_conv2d_22_separable_conv2d_readvariableop_1_resource7
3separable_conv2d_22_biasadd_readvariableop_resource@
<separable_conv2d_23_separable_conv2d_readvariableop_resourceB
>separable_conv2d_23_separable_conv2d_readvariableop_1_resource7
3separable_conv2d_23_biasadd_readvariableop_resource+
'dense_22_matmul_readvariableop_resource,
(dense_22_biasadd_readvariableop_resource+
'dense_23_matmul_readvariableop_resource,
(dense_23_biasadd_readvariableop_resource
identityѕб conv2d_22/BiasAdd/ReadVariableOpбconv2d_22/Conv2D/ReadVariableOpб conv2d_23/BiasAdd/ReadVariableOpбconv2d_23/Conv2D/ReadVariableOpбdense_22/BiasAdd/ReadVariableOpбdense_22/MatMul/ReadVariableOpбdense_23/BiasAdd/ReadVariableOpбdense_23/MatMul/ReadVariableOpб*separable_conv2d_22/BiasAdd/ReadVariableOpб3separable_conv2d_22/separable_conv2d/ReadVariableOpб5separable_conv2d_22/separable_conv2d/ReadVariableOp_1б*separable_conv2d_23/BiasAdd/ReadVariableOpб3separable_conv2d_23/separable_conv2d/ReadVariableOpб5separable_conv2d_23/separable_conv2d/ReadVariableOp_1│
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_22/Conv2D/ReadVariableOp┬
conv2d_22/Conv2DConv2Dinputs'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>*
paddingVALID*
strides
2
conv2d_22/Conv2Dф
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp░
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>2
conv2d_22/BiasAdd~
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:         >>2
conv2d_22/Relu╩
max_pooling2d_44/MaxPoolMaxPoolconv2d_22/Relu:activations:0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
2
max_pooling2d_44/MaxPoolЊ
dropout_55/IdentityIdentity!max_pooling2d_44/MaxPool:output:0*
T0*/
_output_shapes
:         2
dropout_55/Identity│
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_23/Conv2D/ReadVariableOpп
conv2d_23/Conv2DConv2Ddropout_55/Identity:output:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2
conv2d_23/Conv2Dф
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_23/BiasAdd/ReadVariableOp░
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2
conv2d_23/BiasAdd~
conv2d_23/ReluReluconv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:          2
conv2d_23/Relu╩
max_pooling2d_45/MaxPoolMaxPoolconv2d_23/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2
max_pooling2d_45/MaxPoolЊ
dropout_56/IdentityIdentity!max_pooling2d_45/MaxPool:output:0*
T0*/
_output_shapes
:          2
dropout_56/Identity№
3separable_conv2d_22/separable_conv2d/ReadVariableOpReadVariableOp<separable_conv2d_22_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype025
3separable_conv2d_22/separable_conv2d/ReadVariableOpш
5separable_conv2d_22/separable_conv2d/ReadVariableOp_1ReadVariableOp>separable_conv2d_22_separable_conv2d_readvariableop_1_resource*&
_output_shapes
: @*
dtype027
5separable_conv2d_22/separable_conv2d/ReadVariableOp_1▒
*separable_conv2d_22/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*separable_conv2d_22/separable_conv2d/Shape╣
2separable_conv2d_22/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      24
2separable_conv2d_22/separable_conv2d/dilation_rateи
.separable_conv2d_22/separable_conv2d/depthwiseDepthwiseConv2dNativedropout_56/Identity:output:0;separable_conv2d_22/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
20
.separable_conv2d_22/separable_conv2d/depthwise▒
$separable_conv2d_22/separable_conv2dConv2D7separable_conv2d_22/separable_conv2d/depthwise:output:0=separable_conv2d_22/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2&
$separable_conv2d_22/separable_conv2d╚
*separable_conv2d_22/BiasAdd/ReadVariableOpReadVariableOp3separable_conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*separable_conv2d_22/BiasAdd/ReadVariableOpР
separable_conv2d_22/BiasAddBiasAdd-separable_conv2d_22/separable_conv2d:output:02separable_conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
separable_conv2d_22/BiasAddю
separable_conv2d_22/ReluRelu$separable_conv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
separable_conv2d_22/Reluн
max_pooling2d_46/MaxPoolMaxPool&separable_conv2d_22/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_46/MaxPoolЊ
dropout_57/IdentityIdentity!max_pooling2d_46/MaxPool:output:0*
T0*/
_output_shapes
:         @2
dropout_57/Identity№
3separable_conv2d_23/separable_conv2d/ReadVariableOpReadVariableOp<separable_conv2d_23_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype025
3separable_conv2d_23/separable_conv2d/ReadVariableOpш
5separable_conv2d_23/separable_conv2d/ReadVariableOp_1ReadVariableOp>separable_conv2d_23_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@@*
dtype027
5separable_conv2d_23/separable_conv2d/ReadVariableOp_1▒
*separable_conv2d_23/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      2,
*separable_conv2d_23/separable_conv2d/Shape╣
2separable_conv2d_23/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      24
2separable_conv2d_23/separable_conv2d/dilation_rateи
.separable_conv2d_23/separable_conv2d/depthwiseDepthwiseConv2dNativedropout_57/Identity:output:0;separable_conv2d_23/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
20
.separable_conv2d_23/separable_conv2d/depthwise▒
$separable_conv2d_23/separable_conv2dConv2D7separable_conv2d_23/separable_conv2d/depthwise:output:0=separable_conv2d_23/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2&
$separable_conv2d_23/separable_conv2d╚
*separable_conv2d_23/BiasAdd/ReadVariableOpReadVariableOp3separable_conv2d_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*separable_conv2d_23/BiasAdd/ReadVariableOpР
separable_conv2d_23/BiasAddBiasAdd-separable_conv2d_23/separable_conv2d:output:02separable_conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
separable_conv2d_23/BiasAddю
separable_conv2d_23/ReluRelu$separable_conv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
separable_conv2d_23/Reluн
max_pooling2d_47/MaxPoolMaxPool&separable_conv2d_23/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_47/MaxPoolЊ
dropout_58/IdentityIdentity!max_pooling2d_47/MaxPool:output:0*
T0*/
_output_shapes
:         @2
dropout_58/Identityu
flatten_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten_11/ConstЪ
flatten_11/ReshapeReshapedropout_58/Identity:output:0flatten_11/Const:output:0*
T0*(
_output_shapes
:         ђ2
flatten_11/ReshapeЕ
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype02 
dense_22/MatMul/ReadVariableOpБ
dense_22/MatMulMatMulflatten_11/Reshape:output:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_22/MatMulД
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_22/BiasAdd/ReadVariableOpЦ
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_22/BiasAdds
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_22/ReluЁ
dropout_59/IdentityIdentitydense_22/Relu:activations:0*
T0*'
_output_shapes
:         @2
dropout_59/Identityе
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_23/MatMul/ReadVariableOpц
dense_23/MatMulMatMuldropout_59/Identity:output:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/MatMulД
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_23/BiasAdd/ReadVariableOpЦ
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/BiasAdd|
dense_23/SigmoidSigmoiddense_23/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_23/Sigmoid«
IdentityIdentitydense_23/Sigmoid:y:0!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp+^separable_conv2d_22/BiasAdd/ReadVariableOp4^separable_conv2d_22/separable_conv2d/ReadVariableOp6^separable_conv2d_22/separable_conv2d/ReadVariableOp_1+^separable_conv2d_23/BiasAdd/ReadVariableOp4^separable_conv2d_23/separable_conv2d/ReadVariableOp6^separable_conv2d_23/separable_conv2d/ReadVariableOp_1*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         @@::::::::::::::2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2X
*separable_conv2d_22/BiasAdd/ReadVariableOp*separable_conv2d_22/BiasAdd/ReadVariableOp2j
3separable_conv2d_22/separable_conv2d/ReadVariableOp3separable_conv2d_22/separable_conv2d/ReadVariableOp2n
5separable_conv2d_22/separable_conv2d/ReadVariableOp_15separable_conv2d_22/separable_conv2d/ReadVariableOp_12X
*separable_conv2d_23/BiasAdd/ReadVariableOp*separable_conv2d_23/BiasAdd/ReadVariableOp2j
3separable_conv2d_23/separable_conv2d/ReadVariableOp3separable_conv2d_23/separable_conv2d/ReadVariableOp2n
5separable_conv2d_23/separable_conv2d/ReadVariableOp_15separable_conv2d_23/separable_conv2d/ReadVariableOp_1:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
─
e
F__inference_dropout_58_layer_call_and_return_conditional_losses_253741

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/yк
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/GreaterEqualЄ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/Castѓ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ѓ
h
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_253557

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
─
e
F__inference_dropout_57_layer_call_and_return_conditional_losses_254453

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/yк
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/GreaterEqualЄ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/Castѓ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ѓ
h
L__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_253463

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ы	
П
D__inference_dense_22_layer_call_and_return_conditional_losses_253784

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @2
ReluЌ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
л

я
E__inference_conv2d_23_layer_call_and_return_conditional_losses_254405

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          2
ReluЪ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:          2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ў

├
.__inference_sequential_11_layer_call_fn_253988
conv2d_22_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityѕбStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallconv2d_22_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_2539572
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         @@::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:         @@
)
_user_specified_nameconv2d_22_input
э
л
O__inference_separable_conv2d_22_layer_call_and_return_conditional_losses_253498

inputs,
(separable_conv2d_readvariableop_resource.
*separable_conv2d_readvariableop_1_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбseparable_conv2d/ReadVariableOpб!separable_conv2d/ReadVariableOp_1│
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
separable_conv2d/ReadVariableOp╣
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
: @*
dtype02#
!separable_conv2d/ReadVariableOp_1Ѕ
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
separable_conv2d/ShapeЉ
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateэ
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            *
paddingVALID*
strides
2
separable_conv2d/depthwiseз
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingVALID*
strides
2
separable_conv2dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpц
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           @2
Relu▀
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:+                            :::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
ч
ў
4__inference_separable_conv2d_23_layer_call_fn_253551

inputs
unknown
	unknown_0
	unknown_1
identityѕбStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *X
fSRQ
O__inference_separable_conv2d_23_layer_call_and_return_conditional_losses_2535392
StatefulPartitionedCallе
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:+                           @:::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Й
b
F__inference_flatten_11_layer_call_and_return_conditional_losses_253765

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ў

├
.__inference_sequential_11_layer_call_fn_254069
conv2d_22_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityѕбStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallconv2d_22_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_2540382
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         @@::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:         @@
)
_user_specified_nameconv2d_22_input
Х
G
+__inference_dropout_57_layer_call_fn_254468

inputs
identity╠
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_57_layer_call_and_return_conditional_losses_2537082
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ж
d
F__inference_dropout_58_layer_call_and_return_conditional_losses_254485

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         @2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Й
b
F__inference_flatten_11_layer_call_and_return_conditional_losses_254501

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
л

я
E__inference_conv2d_22_layer_call_and_return_conditional_losses_254358

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>*
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         >>2
ReluЪ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         >>2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
ЂK
э
I__inference_sequential_11_layer_call_and_return_conditional_losses_253957

inputs
conv2d_22_253912
conv2d_22_253914
conv2d_23_253919
conv2d_23_253921
separable_conv2d_22_253926
separable_conv2d_22_253928
separable_conv2d_22_253930
separable_conv2d_23_253935
separable_conv2d_23_253937
separable_conv2d_23_253939
dense_22_253945
dense_22_253947
dense_23_253951
dense_23_253953
identityѕб!conv2d_22/StatefulPartitionedCallб!conv2d_23/StatefulPartitionedCallб dense_22/StatefulPartitionedCallб dense_23/StatefulPartitionedCallб"dropout_55/StatefulPartitionedCallб"dropout_56/StatefulPartitionedCallб"dropout_57/StatefulPartitionedCallб"dropout_58/StatefulPartitionedCallб"dropout_59/StatefulPartitionedCallб+separable_conv2d_22/StatefulPartitionedCallб+separable_conv2d_23/StatefulPartitionedCallА
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_22_253912conv2d_22_253914*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_2535782#
!conv2d_22/StatefulPartitionedCallў
 max_pooling2d_44/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_2534632"
 max_pooling2d_44/PartitionedCallЮ
"dropout_55/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_44/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_55_layer_call_and_return_conditional_losses_2536072$
"dropout_55/StatefulPartitionedCallк
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall+dropout_55/StatefulPartitionedCall:output:0conv2d_23_253919conv2d_23_253921*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_2536362#
!conv2d_23/StatefulPartitionedCallў
 max_pooling2d_45/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_2534752"
 max_pooling2d_45/PartitionedCall┬
"dropout_56/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_45/PartitionedCall:output:0#^dropout_55/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_56_layer_call_and_return_conditional_losses_2536652$
"dropout_56/StatefulPartitionedCallќ
+separable_conv2d_22/StatefulPartitionedCallStatefulPartitionedCall+dropout_56/StatefulPartitionedCall:output:0separable_conv2d_22_253926separable_conv2d_22_253928separable_conv2d_22_253930*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *X
fSRQ
O__inference_separable_conv2d_22_layer_call_and_return_conditional_losses_2534982-
+separable_conv2d_22/StatefulPartitionedCallб
 max_pooling2d_46/PartitionedCallPartitionedCall4separable_conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_2535162"
 max_pooling2d_46/PartitionedCall┬
"dropout_57/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_46/PartitionedCall:output:0#^dropout_56/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_57_layer_call_and_return_conditional_losses_2537032$
"dropout_57/StatefulPartitionedCallќ
+separable_conv2d_23/StatefulPartitionedCallStatefulPartitionedCall+dropout_57/StatefulPartitionedCall:output:0separable_conv2d_23_253935separable_conv2d_23_253937separable_conv2d_23_253939*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *X
fSRQ
O__inference_separable_conv2d_23_layer_call_and_return_conditional_losses_2535392-
+separable_conv2d_23/StatefulPartitionedCallб
 max_pooling2d_47/PartitionedCallPartitionedCall4separable_conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_2535572"
 max_pooling2d_47/PartitionedCall┬
"dropout_58/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_47/PartitionedCall:output:0#^dropout_57/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_58_layer_call_and_return_conditional_losses_2537412$
"dropout_58/StatefulPartitionedCallђ
flatten_11/PartitionedCallPartitionedCall+dropout_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_flatten_11_layer_call_and_return_conditional_losses_2537652
flatten_11/PartitionedCall▒
 dense_22/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_22_253945dense_22_253947*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_2537842"
 dense_22/StatefulPartitionedCall║
"dropout_59/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0#^dropout_58/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_59_layer_call_and_return_conditional_losses_2538122$
"dropout_59/StatefulPartitionedCall╣
 dense_23/StatefulPartitionedCallStatefulPartitionedCall+dropout_59/StatefulPartitionedCall:output:0dense_23_253951dense_23_253953*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_2538412"
 dense_23/StatefulPartitionedCallа
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall#^dropout_55/StatefulPartitionedCall#^dropout_56/StatefulPartitionedCall#^dropout_57/StatefulPartitionedCall#^dropout_58/StatefulPartitionedCall#^dropout_59/StatefulPartitionedCall,^separable_conv2d_22/StatefulPartitionedCall,^separable_conv2d_23/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         @@::::::::::::::2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2H
"dropout_55/StatefulPartitionedCall"dropout_55/StatefulPartitionedCall2H
"dropout_56/StatefulPartitionedCall"dropout_56/StatefulPartitionedCall2H
"dropout_57/StatefulPartitionedCall"dropout_57/StatefulPartitionedCall2H
"dropout_58/StatefulPartitionedCall"dropout_58/StatefulPartitionedCall2H
"dropout_59/StatefulPartitionedCall"dropout_59/StatefulPartitionedCall2Z
+separable_conv2d_22/StatefulPartitionedCall+separable_conv2d_22/StatefulPartitionedCall2Z
+separable_conv2d_23/StatefulPartitionedCall+separable_conv2d_23/StatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
ЅЋ
ю
I__inference_sequential_11_layer_call_and_return_conditional_losses_254214

inputs,
(conv2d_22_conv2d_readvariableop_resource-
)conv2d_22_biasadd_readvariableop_resource,
(conv2d_23_conv2d_readvariableop_resource-
)conv2d_23_biasadd_readvariableop_resource@
<separable_conv2d_22_separable_conv2d_readvariableop_resourceB
>separable_conv2d_22_separable_conv2d_readvariableop_1_resource7
3separable_conv2d_22_biasadd_readvariableop_resource@
<separable_conv2d_23_separable_conv2d_readvariableop_resourceB
>separable_conv2d_23_separable_conv2d_readvariableop_1_resource7
3separable_conv2d_23_biasadd_readvariableop_resource+
'dense_22_matmul_readvariableop_resource,
(dense_22_biasadd_readvariableop_resource+
'dense_23_matmul_readvariableop_resource,
(dense_23_biasadd_readvariableop_resource
identityѕб conv2d_22/BiasAdd/ReadVariableOpбconv2d_22/Conv2D/ReadVariableOpб conv2d_23/BiasAdd/ReadVariableOpбconv2d_23/Conv2D/ReadVariableOpбdense_22/BiasAdd/ReadVariableOpбdense_22/MatMul/ReadVariableOpбdense_23/BiasAdd/ReadVariableOpбdense_23/MatMul/ReadVariableOpб*separable_conv2d_22/BiasAdd/ReadVariableOpб3separable_conv2d_22/separable_conv2d/ReadVariableOpб5separable_conv2d_22/separable_conv2d/ReadVariableOp_1б*separable_conv2d_23/BiasAdd/ReadVariableOpб3separable_conv2d_23/separable_conv2d/ReadVariableOpб5separable_conv2d_23/separable_conv2d/ReadVariableOp_1│
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_22/Conv2D/ReadVariableOp┬
conv2d_22/Conv2DConv2Dinputs'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>*
paddingVALID*
strides
2
conv2d_22/Conv2Dф
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp░
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>2
conv2d_22/BiasAdd~
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:         >>2
conv2d_22/Relu╩
max_pooling2d_44/MaxPoolMaxPoolconv2d_22/Relu:activations:0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
2
max_pooling2d_44/MaxPooly
dropout_55/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout_55/dropout/Constи
dropout_55/dropout/MulMul!max_pooling2d_44/MaxPool:output:0!dropout_55/dropout/Const:output:0*
T0*/
_output_shapes
:         2
dropout_55/dropout/MulЁ
dropout_55/dropout/ShapeShape!max_pooling2d_44/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_55/dropout/ShapeП
/dropout_55/dropout/random_uniform/RandomUniformRandomUniform!dropout_55/dropout/Shape:output:0*
T0*/
_output_shapes
:         *
dtype021
/dropout_55/dropout/random_uniform/RandomUniformІ
!dropout_55/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2#
!dropout_55/dropout/GreaterEqual/yЫ
dropout_55/dropout/GreaterEqualGreaterEqual8dropout_55/dropout/random_uniform/RandomUniform:output:0*dropout_55/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         2!
dropout_55/dropout/GreaterEqualе
dropout_55/dropout/CastCast#dropout_55/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         2
dropout_55/dropout/Cast«
dropout_55/dropout/Mul_1Muldropout_55/dropout/Mul:z:0dropout_55/dropout/Cast:y:0*
T0*/
_output_shapes
:         2
dropout_55/dropout/Mul_1│
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_23/Conv2D/ReadVariableOpп
conv2d_23/Conv2DConv2Ddropout_55/dropout/Mul_1:z:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2
conv2d_23/Conv2Dф
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_23/BiasAdd/ReadVariableOp░
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2
conv2d_23/BiasAdd~
conv2d_23/ReluReluconv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:          2
conv2d_23/Relu╩
max_pooling2d_45/MaxPoolMaxPoolconv2d_23/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2
max_pooling2d_45/MaxPooly
dropout_56/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout_56/dropout/Constи
dropout_56/dropout/MulMul!max_pooling2d_45/MaxPool:output:0!dropout_56/dropout/Const:output:0*
T0*/
_output_shapes
:          2
dropout_56/dropout/MulЁ
dropout_56/dropout/ShapeShape!max_pooling2d_45/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_56/dropout/ShapeП
/dropout_56/dropout/random_uniform/RandomUniformRandomUniform!dropout_56/dropout/Shape:output:0*
T0*/
_output_shapes
:          *
dtype021
/dropout_56/dropout/random_uniform/RandomUniformІ
!dropout_56/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2#
!dropout_56/dropout/GreaterEqual/yЫ
dropout_56/dropout/GreaterEqualGreaterEqual8dropout_56/dropout/random_uniform/RandomUniform:output:0*dropout_56/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:          2!
dropout_56/dropout/GreaterEqualе
dropout_56/dropout/CastCast#dropout_56/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:          2
dropout_56/dropout/Cast«
dropout_56/dropout/Mul_1Muldropout_56/dropout/Mul:z:0dropout_56/dropout/Cast:y:0*
T0*/
_output_shapes
:          2
dropout_56/dropout/Mul_1№
3separable_conv2d_22/separable_conv2d/ReadVariableOpReadVariableOp<separable_conv2d_22_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype025
3separable_conv2d_22/separable_conv2d/ReadVariableOpш
5separable_conv2d_22/separable_conv2d/ReadVariableOp_1ReadVariableOp>separable_conv2d_22_separable_conv2d_readvariableop_1_resource*&
_output_shapes
: @*
dtype027
5separable_conv2d_22/separable_conv2d/ReadVariableOp_1▒
*separable_conv2d_22/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2,
*separable_conv2d_22/separable_conv2d/Shape╣
2separable_conv2d_22/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      24
2separable_conv2d_22/separable_conv2d/dilation_rateи
.separable_conv2d_22/separable_conv2d/depthwiseDepthwiseConv2dNativedropout_56/dropout/Mul_1:z:0;separable_conv2d_22/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
20
.separable_conv2d_22/separable_conv2d/depthwise▒
$separable_conv2d_22/separable_conv2dConv2D7separable_conv2d_22/separable_conv2d/depthwise:output:0=separable_conv2d_22/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2&
$separable_conv2d_22/separable_conv2d╚
*separable_conv2d_22/BiasAdd/ReadVariableOpReadVariableOp3separable_conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*separable_conv2d_22/BiasAdd/ReadVariableOpР
separable_conv2d_22/BiasAddBiasAdd-separable_conv2d_22/separable_conv2d:output:02separable_conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
separable_conv2d_22/BiasAddю
separable_conv2d_22/ReluRelu$separable_conv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
separable_conv2d_22/Reluн
max_pooling2d_46/MaxPoolMaxPool&separable_conv2d_22/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_46/MaxPooly
dropout_57/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout_57/dropout/Constи
dropout_57/dropout/MulMul!max_pooling2d_46/MaxPool:output:0!dropout_57/dropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout_57/dropout/MulЁ
dropout_57/dropout/ShapeShape!max_pooling2d_46/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_57/dropout/ShapeП
/dropout_57/dropout/random_uniform/RandomUniformRandomUniform!dropout_57/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype021
/dropout_57/dropout/random_uniform/RandomUniformІ
!dropout_57/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2#
!dropout_57/dropout/GreaterEqual/yЫ
dropout_57/dropout/GreaterEqualGreaterEqual8dropout_57/dropout/random_uniform/RandomUniform:output:0*dropout_57/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2!
dropout_57/dropout/GreaterEqualе
dropout_57/dropout/CastCast#dropout_57/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout_57/dropout/Cast«
dropout_57/dropout/Mul_1Muldropout_57/dropout/Mul:z:0dropout_57/dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout_57/dropout/Mul_1№
3separable_conv2d_23/separable_conv2d/ReadVariableOpReadVariableOp<separable_conv2d_23_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype025
3separable_conv2d_23/separable_conv2d/ReadVariableOpш
5separable_conv2d_23/separable_conv2d/ReadVariableOp_1ReadVariableOp>separable_conv2d_23_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@@*
dtype027
5separable_conv2d_23/separable_conv2d/ReadVariableOp_1▒
*separable_conv2d_23/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      2,
*separable_conv2d_23/separable_conv2d/Shape╣
2separable_conv2d_23/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      24
2separable_conv2d_23/separable_conv2d/dilation_rateи
.separable_conv2d_23/separable_conv2d/depthwiseDepthwiseConv2dNativedropout_57/dropout/Mul_1:z:0;separable_conv2d_23/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
20
.separable_conv2d_23/separable_conv2d/depthwise▒
$separable_conv2d_23/separable_conv2dConv2D7separable_conv2d_23/separable_conv2d/depthwise:output:0=separable_conv2d_23/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2&
$separable_conv2d_23/separable_conv2d╚
*separable_conv2d_23/BiasAdd/ReadVariableOpReadVariableOp3separable_conv2d_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*separable_conv2d_23/BiasAdd/ReadVariableOpР
separable_conv2d_23/BiasAddBiasAdd-separable_conv2d_23/separable_conv2d:output:02separable_conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
separable_conv2d_23/BiasAddю
separable_conv2d_23/ReluRelu$separable_conv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
separable_conv2d_23/Reluн
max_pooling2d_47/MaxPoolMaxPool&separable_conv2d_23/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2
max_pooling2d_47/MaxPooly
dropout_58/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout_58/dropout/Constи
dropout_58/dropout/MulMul!max_pooling2d_47/MaxPool:output:0!dropout_58/dropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout_58/dropout/MulЁ
dropout_58/dropout/ShapeShape!max_pooling2d_47/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_58/dropout/ShapeП
/dropout_58/dropout/random_uniform/RandomUniformRandomUniform!dropout_58/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype021
/dropout_58/dropout/random_uniform/RandomUniformІ
!dropout_58/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2#
!dropout_58/dropout/GreaterEqual/yЫ
dropout_58/dropout/GreaterEqualGreaterEqual8dropout_58/dropout/random_uniform/RandomUniform:output:0*dropout_58/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2!
dropout_58/dropout/GreaterEqualе
dropout_58/dropout/CastCast#dropout_58/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout_58/dropout/Cast«
dropout_58/dropout/Mul_1Muldropout_58/dropout/Mul:z:0dropout_58/dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout_58/dropout/Mul_1u
flatten_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
flatten_11/ConstЪ
flatten_11/ReshapeReshapedropout_58/dropout/Mul_1:z:0flatten_11/Const:output:0*
T0*(
_output_shapes
:         ђ2
flatten_11/ReshapeЕ
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype02 
dense_22/MatMul/ReadVariableOpБ
dense_22/MatMulMatMulflatten_11/Reshape:output:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_22/MatMulД
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_22/BiasAdd/ReadVariableOpЦ
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
dense_22/BiasAdds
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
dense_22/Reluy
dropout_59/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_59/dropout/ConstЕ
dropout_59/dropout/MulMuldense_22/Relu:activations:0!dropout_59/dropout/Const:output:0*
T0*'
_output_shapes
:         @2
dropout_59/dropout/Mul
dropout_59/dropout/ShapeShapedense_22/Relu:activations:0*
T0*
_output_shapes
:2
dropout_59/dropout/ShapeН
/dropout_59/dropout/random_uniform/RandomUniformRandomUniform!dropout_59/dropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype021
/dropout_59/dropout/random_uniform/RandomUniformІ
!dropout_59/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_59/dropout/GreaterEqual/yЖ
dropout_59/dropout/GreaterEqualGreaterEqual8dropout_59/dropout/random_uniform/RandomUniform:output:0*dropout_59/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @2!
dropout_59/dropout/GreaterEqualа
dropout_59/dropout/CastCast#dropout_59/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         @2
dropout_59/dropout/Castд
dropout_59/dropout/Mul_1Muldropout_59/dropout/Mul:z:0dropout_59/dropout/Cast:y:0*
T0*'
_output_shapes
:         @2
dropout_59/dropout/Mul_1е
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_23/MatMul/ReadVariableOpц
dense_23/MatMulMatMuldropout_59/dropout/Mul_1:z:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/MatMulД
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_23/BiasAdd/ReadVariableOpЦ
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_23/BiasAdd|
dense_23/SigmoidSigmoiddense_23/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_23/Sigmoid«
IdentityIdentitydense_23/Sigmoid:y:0!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp+^separable_conv2d_22/BiasAdd/ReadVariableOp4^separable_conv2d_22/separable_conv2d/ReadVariableOp6^separable_conv2d_22/separable_conv2d/ReadVariableOp_1+^separable_conv2d_23/BiasAdd/ReadVariableOp4^separable_conv2d_23/separable_conv2d/ReadVariableOp6^separable_conv2d_23/separable_conv2d/ReadVariableOp_1*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         @@::::::::::::::2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2X
*separable_conv2d_22/BiasAdd/ReadVariableOp*separable_conv2d_22/BiasAdd/ReadVariableOp2j
3separable_conv2d_22/separable_conv2d/ReadVariableOp3separable_conv2d_22/separable_conv2d/ReadVariableOp2n
5separable_conv2d_22/separable_conv2d/ReadVariableOp_15separable_conv2d_22/separable_conv2d/ReadVariableOp_12X
*separable_conv2d_23/BiasAdd/ReadVariableOp*separable_conv2d_23/BiasAdd/ReadVariableOp2j
3separable_conv2d_23/separable_conv2d/ReadVariableOp3separable_conv2d_23/separable_conv2d/ReadVariableOp2n
5separable_conv2d_23/separable_conv2d/ReadVariableOp_15separable_conv2d_23/separable_conv2d/ReadVariableOp_1:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
ч
ў
4__inference_separable_conv2d_22_layer_call_fn_253510

inputs
unknown
	unknown_0
	unknown_1
identityѕбStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *X
fSRQ
O__inference_separable_conv2d_22_layer_call_and_return_conditional_losses_2534982
StatefulPartitionedCallе
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:+                            :::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
­	
П
D__inference_dense_23_layer_call_and_return_conditional_losses_254564

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Sigmoidљ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
л

я
E__inference_conv2d_22_layer_call_and_return_conditional_losses_253578

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>*
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         >>2
ReluЪ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         >>2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
э
л
O__inference_separable_conv2d_23_layer_call_and_return_conditional_losses_253539

inputs,
(separable_conv2d_readvariableop_resource.
*separable_conv2d_readvariableop_1_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбseparable_conv2d/ReadVariableOpб!separable_conv2d/ReadVariableOp_1│
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
separable_conv2d/ReadVariableOp╣
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@@*
dtype02#
!separable_conv2d/ReadVariableOp_1Ѕ
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      2
separable_conv2d/ShapeЉ
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2 
separable_conv2d/dilation_rateэ
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingVALID*
strides
2
separable_conv2d/depthwiseз
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+                           @*
paddingVALID*
strides
2
separable_conv2dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpц
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           @2
Relu▀
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:+                           @:::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Т	
╣
$__inference_signature_wrapper_254112
conv2d_22_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityѕбStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallconv2d_22_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference__wrapped_model_2534572
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         @@::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:         @@
)
_user_specified_nameconv2d_22_input
б
d
+__inference_dropout_59_layer_call_fn_254548

inputs
identityѕбStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_59_layer_call_and_return_conditional_losses_2538122
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*&
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
юK
ђ
I__inference_sequential_11_layer_call_and_return_conditional_losses_253858
conv2d_22_input
conv2d_22_253589
conv2d_22_253591
conv2d_23_253647
conv2d_23_253649
separable_conv2d_22_253683
separable_conv2d_22_253685
separable_conv2d_22_253687
separable_conv2d_23_253721
separable_conv2d_23_253723
separable_conv2d_23_253725
dense_22_253795
dense_22_253797
dense_23_253852
dense_23_253854
identityѕб!conv2d_22/StatefulPartitionedCallб!conv2d_23/StatefulPartitionedCallб dense_22/StatefulPartitionedCallб dense_23/StatefulPartitionedCallб"dropout_55/StatefulPartitionedCallб"dropout_56/StatefulPartitionedCallб"dropout_57/StatefulPartitionedCallб"dropout_58/StatefulPartitionedCallб"dropout_59/StatefulPartitionedCallб+separable_conv2d_22/StatefulPartitionedCallб+separable_conv2d_23/StatefulPartitionedCallф
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCallconv2d_22_inputconv2d_22_253589conv2d_22_253591*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_2535782#
!conv2d_22/StatefulPartitionedCallў
 max_pooling2d_44/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_2534632"
 max_pooling2d_44/PartitionedCallЮ
"dropout_55/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_44/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_55_layer_call_and_return_conditional_losses_2536072$
"dropout_55/StatefulPartitionedCallк
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall+dropout_55/StatefulPartitionedCall:output:0conv2d_23_253647conv2d_23_253649*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_2536362#
!conv2d_23/StatefulPartitionedCallў
 max_pooling2d_45/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_2534752"
 max_pooling2d_45/PartitionedCall┬
"dropout_56/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_45/PartitionedCall:output:0#^dropout_55/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_56_layer_call_and_return_conditional_losses_2536652$
"dropout_56/StatefulPartitionedCallќ
+separable_conv2d_22/StatefulPartitionedCallStatefulPartitionedCall+dropout_56/StatefulPartitionedCall:output:0separable_conv2d_22_253683separable_conv2d_22_253685separable_conv2d_22_253687*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *X
fSRQ
O__inference_separable_conv2d_22_layer_call_and_return_conditional_losses_2534982-
+separable_conv2d_22/StatefulPartitionedCallб
 max_pooling2d_46/PartitionedCallPartitionedCall4separable_conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_2535162"
 max_pooling2d_46/PartitionedCall┬
"dropout_57/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_46/PartitionedCall:output:0#^dropout_56/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_57_layer_call_and_return_conditional_losses_2537032$
"dropout_57/StatefulPartitionedCallќ
+separable_conv2d_23/StatefulPartitionedCallStatefulPartitionedCall+dropout_57/StatefulPartitionedCall:output:0separable_conv2d_23_253721separable_conv2d_23_253723separable_conv2d_23_253725*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *X
fSRQ
O__inference_separable_conv2d_23_layer_call_and_return_conditional_losses_2535392-
+separable_conv2d_23/StatefulPartitionedCallб
 max_pooling2d_47/PartitionedCallPartitionedCall4separable_conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_2535572"
 max_pooling2d_47/PartitionedCall┬
"dropout_58/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_47/PartitionedCall:output:0#^dropout_57/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_58_layer_call_and_return_conditional_losses_2537412$
"dropout_58/StatefulPartitionedCallђ
flatten_11/PartitionedCallPartitionedCall+dropout_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_flatten_11_layer_call_and_return_conditional_losses_2537652
flatten_11/PartitionedCall▒
 dense_22/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_22_253795dense_22_253797*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_2537842"
 dense_22/StatefulPartitionedCall║
"dropout_59/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0#^dropout_58/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_59_layer_call_and_return_conditional_losses_2538122$
"dropout_59/StatefulPartitionedCall╣
 dense_23/StatefulPartitionedCallStatefulPartitionedCall+dropout_59/StatefulPartitionedCall:output:0dense_23_253852dense_23_253854*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_2538412"
 dense_23/StatefulPartitionedCallа
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall#^dropout_55/StatefulPartitionedCall#^dropout_56/StatefulPartitionedCall#^dropout_57/StatefulPartitionedCall#^dropout_58/StatefulPartitionedCall#^dropout_59/StatefulPartitionedCall,^separable_conv2d_22/StatefulPartitionedCall,^separable_conv2d_23/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         @@::::::::::::::2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2H
"dropout_55/StatefulPartitionedCall"dropout_55/StatefulPartitionedCall2H
"dropout_56/StatefulPartitionedCall"dropout_56/StatefulPartitionedCall2H
"dropout_57/StatefulPartitionedCall"dropout_57/StatefulPartitionedCall2H
"dropout_58/StatefulPartitionedCall"dropout_58/StatefulPartitionedCall2H
"dropout_59/StatefulPartitionedCall"dropout_59/StatefulPartitionedCall2Z
+separable_conv2d_22/StatefulPartitionedCall+separable_conv2d_22/StatefulPartitionedCall2Z
+separable_conv2d_23/StatefulPartitionedCall+separable_conv2d_23/StatefulPartitionedCall:` \
/
_output_shapes
:         @@
)
_user_specified_nameconv2d_22_input
┬
d
+__inference_dropout_57_layer_call_fn_254463

inputs
identityѕбStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_57_layer_call_and_return_conditional_losses_2537032
StatefulPartitionedCallќ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ѓ
e
F__inference_dropout_59_layer_call_and_return_conditional_losses_254538

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape┤
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/yЙ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         @2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         @2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ѓ
h
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_253516

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ж
d
F__inference_dropout_57_layer_call_and_return_conditional_losses_253708

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         @2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╔
d
F__inference_dropout_59_layer_call_and_return_conditional_losses_254543

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:         @2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
»
M
1__inference_max_pooling2d_44_layer_call_fn_253469

inputs
identityь
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_2534632
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
─
e
F__inference_dropout_56_layer_call_and_return_conditional_losses_253665

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:          2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:          *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/yк
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:          2
dropout/GreaterEqualЄ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:          2
dropout/Castѓ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:          2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:          2

Identity"
identityIdentity:output:0*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Х
G
+__inference_dropout_55_layer_call_fn_254394

inputs
identity╠
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_55_layer_call_and_return_conditional_losses_2536122
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ж
d
F__inference_dropout_56_layer_call_and_return_conditional_losses_253670

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:          2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:          2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
─
e
F__inference_dropout_58_layer_call_and_return_conditional_losses_254480

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/yк
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2
dropout/GreaterEqualЄ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout/Castѓ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
▄
~
)__inference_dense_23_layer_call_fn_254573

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_2538412
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ќ
G
+__inference_dropout_59_layer_call_fn_254553

inputs
identity─
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_59_layer_call_and_return_conditional_losses_2538172
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ж
d
F__inference_dropout_57_layer_call_and_return_conditional_losses_254458

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         @2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
§	
║
.__inference_sequential_11_layer_call_fn_254347

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityѕбStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_2540382
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         @@::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
┬
d
+__inference_dropout_58_layer_call_fn_254490

inputs
identityѕбStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_58_layer_call_and_return_conditional_losses_2537412
StatefulPartitionedCallќ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
»
M
1__inference_max_pooling2d_45_layer_call_fn_253481

inputs
identityь
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_2534752
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ёC
К
I__inference_sequential_11_layer_call_and_return_conditional_losses_253906
conv2d_22_input
conv2d_22_253861
conv2d_22_253863
conv2d_23_253868
conv2d_23_253870
separable_conv2d_22_253875
separable_conv2d_22_253877
separable_conv2d_22_253879
separable_conv2d_23_253884
separable_conv2d_23_253886
separable_conv2d_23_253888
dense_22_253894
dense_22_253896
dense_23_253900
dense_23_253902
identityѕб!conv2d_22/StatefulPartitionedCallб!conv2d_23/StatefulPartitionedCallб dense_22/StatefulPartitionedCallб dense_23/StatefulPartitionedCallб+separable_conv2d_22/StatefulPartitionedCallб+separable_conv2d_23/StatefulPartitionedCallф
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCallconv2d_22_inputconv2d_22_253861conv2d_22_253863*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_2535782#
!conv2d_22/StatefulPartitionedCallў
 max_pooling2d_44/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_2534632"
 max_pooling2d_44/PartitionedCallЁ
dropout_55/PartitionedCallPartitionedCall)max_pooling2d_44/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_55_layer_call_and_return_conditional_losses_2536122
dropout_55/PartitionedCallЙ
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall#dropout_55/PartitionedCall:output:0conv2d_23_253868conv2d_23_253870*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_2536362#
!conv2d_23/StatefulPartitionedCallў
 max_pooling2d_45/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_2534752"
 max_pooling2d_45/PartitionedCallЁ
dropout_56/PartitionedCallPartitionedCall)max_pooling2d_45/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_56_layer_call_and_return_conditional_losses_2536702
dropout_56/PartitionedCallј
+separable_conv2d_22/StatefulPartitionedCallStatefulPartitionedCall#dropout_56/PartitionedCall:output:0separable_conv2d_22_253875separable_conv2d_22_253877separable_conv2d_22_253879*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *X
fSRQ
O__inference_separable_conv2d_22_layer_call_and_return_conditional_losses_2534982-
+separable_conv2d_22/StatefulPartitionedCallб
 max_pooling2d_46/PartitionedCallPartitionedCall4separable_conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_2535162"
 max_pooling2d_46/PartitionedCallЁ
dropout_57/PartitionedCallPartitionedCall)max_pooling2d_46/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_57_layer_call_and_return_conditional_losses_2537082
dropout_57/PartitionedCallј
+separable_conv2d_23/StatefulPartitionedCallStatefulPartitionedCall#dropout_57/PartitionedCall:output:0separable_conv2d_23_253884separable_conv2d_23_253886separable_conv2d_23_253888*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *X
fSRQ
O__inference_separable_conv2d_23_layer_call_and_return_conditional_losses_2535392-
+separable_conv2d_23/StatefulPartitionedCallб
 max_pooling2d_47/PartitionedCallPartitionedCall4separable_conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_2535572"
 max_pooling2d_47/PartitionedCallЁ
dropout_58/PartitionedCallPartitionedCall)max_pooling2d_47/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_58_layer_call_and_return_conditional_losses_2537462
dropout_58/PartitionedCallЭ
flatten_11/PartitionedCallPartitionedCall#dropout_58/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_flatten_11_layer_call_and_return_conditional_losses_2537652
flatten_11/PartitionedCall▒
 dense_22/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_22_253894dense_22_253896*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_2537842"
 dense_22/StatefulPartitionedCall§
dropout_59/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_59_layer_call_and_return_conditional_losses_2538172
dropout_59/PartitionedCall▒
 dense_23/StatefulPartitionedCallStatefulPartitionedCall#dropout_59/PartitionedCall:output:0dense_23_253900dense_23_253902*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_2538412"
 dense_23/StatefulPartitionedCallу
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall,^separable_conv2d_22/StatefulPartitionedCall,^separable_conv2d_23/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         @@::::::::::::::2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2Z
+separable_conv2d_22/StatefulPartitionedCall+separable_conv2d_22/StatefulPartitionedCall2Z
+separable_conv2d_23/StatefulPartitionedCall+separable_conv2d_23/StatefulPartitionedCall:` \
/
_output_shapes
:         @@
)
_user_specified_nameconv2d_22_input
­	
П
D__inference_dense_23_layer_call_and_return_conditional_losses_253841

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Sigmoidљ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
■

*__inference_conv2d_22_layer_call_fn_254367

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_2535782
StatefulPartitionedCallќ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         >>2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         @@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
юo
▓
__inference__traced_save_254749
file_prefix/
+savev2_conv2d_22_kernel_read_readvariableop-
)savev2_conv2d_22_bias_read_readvariableop/
+savev2_conv2d_23_kernel_read_readvariableop-
)savev2_conv2d_23_bias_read_readvariableopC
?savev2_separable_conv2d_22_depthwise_kernel_read_readvariableopC
?savev2_separable_conv2d_22_pointwise_kernel_read_readvariableop7
3savev2_separable_conv2d_22_bias_read_readvariableopC
?savev2_separable_conv2d_23_depthwise_kernel_read_readvariableopC
?savev2_separable_conv2d_23_pointwise_kernel_read_readvariableop7
3savev2_separable_conv2d_23_bias_read_readvariableop.
*savev2_dense_22_kernel_read_readvariableop,
(savev2_dense_22_bias_read_readvariableop.
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
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_22_kernel_m_read_readvariableop4
0savev2_adam_conv2d_22_bias_m_read_readvariableop6
2savev2_adam_conv2d_23_kernel_m_read_readvariableop4
0savev2_adam_conv2d_23_bias_m_read_readvariableopJ
Fsavev2_adam_separable_conv2d_22_depthwise_kernel_m_read_readvariableopJ
Fsavev2_adam_separable_conv2d_22_pointwise_kernel_m_read_readvariableop>
:savev2_adam_separable_conv2d_22_bias_m_read_readvariableopJ
Fsavev2_adam_separable_conv2d_23_depthwise_kernel_m_read_readvariableopJ
Fsavev2_adam_separable_conv2d_23_pointwise_kernel_m_read_readvariableop>
:savev2_adam_separable_conv2d_23_bias_m_read_readvariableop5
1savev2_adam_dense_22_kernel_m_read_readvariableop3
/savev2_adam_dense_22_bias_m_read_readvariableop5
1savev2_adam_dense_23_kernel_m_read_readvariableop3
/savev2_adam_dense_23_bias_m_read_readvariableop6
2savev2_adam_conv2d_22_kernel_v_read_readvariableop4
0savev2_adam_conv2d_22_bias_v_read_readvariableop6
2savev2_adam_conv2d_23_kernel_v_read_readvariableop4
0savev2_adam_conv2d_23_bias_v_read_readvariableopJ
Fsavev2_adam_separable_conv2d_22_depthwise_kernel_v_read_readvariableopJ
Fsavev2_adam_separable_conv2d_22_pointwise_kernel_v_read_readvariableop>
:savev2_adam_separable_conv2d_22_bias_v_read_readvariableopJ
Fsavev2_adam_separable_conv2d_23_depthwise_kernel_v_read_readvariableopJ
Fsavev2_adam_separable_conv2d_23_pointwise_kernel_v_read_readvariableop>
:savev2_adam_separable_conv2d_23_bias_v_read_readvariableop5
1savev2_adam_dense_22_kernel_v_read_readvariableop3
/savev2_adam_dense_22_bias_v_read_readvariableop5
1savev2_adam_dense_23_kernel_v_read_readvariableop3
/savev2_adam_dense_23_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2CheckpointsЈ
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
Const_1І
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
ShardedFilename/shardд
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameЫ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*ё
valueЩBэ4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-3/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-3/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names­
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesу
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_22_kernel_read_readvariableop)savev2_conv2d_22_bias_read_readvariableop+savev2_conv2d_23_kernel_read_readvariableop)savev2_conv2d_23_bias_read_readvariableop?savev2_separable_conv2d_22_depthwise_kernel_read_readvariableop?savev2_separable_conv2d_22_pointwise_kernel_read_readvariableop3savev2_separable_conv2d_22_bias_read_readvariableop?savev2_separable_conv2d_23_depthwise_kernel_read_readvariableop?savev2_separable_conv2d_23_pointwise_kernel_read_readvariableop3savev2_separable_conv2d_23_bias_read_readvariableop*savev2_dense_22_kernel_read_readvariableop(savev2_dense_22_bias_read_readvariableop*savev2_dense_23_kernel_read_readvariableop(savev2_dense_23_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_22_kernel_m_read_readvariableop0savev2_adam_conv2d_22_bias_m_read_readvariableop2savev2_adam_conv2d_23_kernel_m_read_readvariableop0savev2_adam_conv2d_23_bias_m_read_readvariableopFsavev2_adam_separable_conv2d_22_depthwise_kernel_m_read_readvariableopFsavev2_adam_separable_conv2d_22_pointwise_kernel_m_read_readvariableop:savev2_adam_separable_conv2d_22_bias_m_read_readvariableopFsavev2_adam_separable_conv2d_23_depthwise_kernel_m_read_readvariableopFsavev2_adam_separable_conv2d_23_pointwise_kernel_m_read_readvariableop:savev2_adam_separable_conv2d_23_bias_m_read_readvariableop1savev2_adam_dense_22_kernel_m_read_readvariableop/savev2_adam_dense_22_bias_m_read_readvariableop1savev2_adam_dense_23_kernel_m_read_readvariableop/savev2_adam_dense_23_bias_m_read_readvariableop2savev2_adam_conv2d_22_kernel_v_read_readvariableop0savev2_adam_conv2d_22_bias_v_read_readvariableop2savev2_adam_conv2d_23_kernel_v_read_readvariableop0savev2_adam_conv2d_23_bias_v_read_readvariableopFsavev2_adam_separable_conv2d_22_depthwise_kernel_v_read_readvariableopFsavev2_adam_separable_conv2d_22_pointwise_kernel_v_read_readvariableop:savev2_adam_separable_conv2d_22_bias_v_read_readvariableopFsavev2_adam_separable_conv2d_23_depthwise_kernel_v_read_readvariableopFsavev2_adam_separable_conv2d_23_pointwise_kernel_v_read_readvariableop:savev2_adam_separable_conv2d_23_bias_v_read_readvariableop1savev2_adam_dense_22_kernel_v_read_readvariableop/savev2_adam_dense_22_bias_v_read_readvariableop1savev2_adam_dense_23_kernel_v_read_readvariableop/savev2_adam_dense_23_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *B
dtypes8
624	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesА
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*џ
_input_shapesѕ
Ё: ::: : : : @:@:@:@@:@:	ђ@:@:@:: : : : : : : : : ::: : : : @:@:@:@@:@:	ђ@:@:@:::: : : : @:@:@:@@:@:	ђ@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@:,	(
&
_output_shapes
:@@: 


_output_shapes
:@:%!

_output_shapes
:	ђ@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::
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
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@:, (
&
_output_shapes
:@@: !

_output_shapes
:@:%"!

_output_shapes
:	ђ@: #

_output_shapes
:@:$$ 

_output_shapes

:@: %

_output_shapes
::,&(
&
_output_shapes
:: '

_output_shapes
::,((
&
_output_shapes
: : )

_output_shapes
: :,*(
&
_output_shapes
: :,+(
&
_output_shapes
: @: ,

_output_shapes
:@:,-(
&
_output_shapes
:@:,.(
&
_output_shapes
:@@: /

_output_shapes
:@:%0!

_output_shapes
:	ђ@: 1

_output_shapes
:@:$2 

_output_shapes

:@: 3

_output_shapes
::4

_output_shapes
: 
ж
d
F__inference_dropout_58_layer_call_and_return_conditional_losses_253746

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         @2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
─
e
F__inference_dropout_55_layer_call_and_return_conditional_losses_254379

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╝
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/yк
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         2
dropout/GreaterEqualЄ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         2
dropout/Castѓ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ѓ
e
F__inference_dropout_59_layer_call_and_return_conditional_losses_253812

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape┤
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/yЙ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         @2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         @2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
я
~
)__inference_dense_22_layer_call_fn_254526

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_2537842
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         @2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ђ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
л

я
E__inference_conv2d_23_layer_call_and_return_conditional_losses_253636

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          2
ReluЪ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:          2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
┬
d
+__inference_dropout_55_layer_call_fn_254389

inputs
identityѕбStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_55_layer_call_and_return_conditional_losses_2536072
StatefulPartitionedCallќ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
»
M
1__inference_max_pooling2d_46_layer_call_fn_253522

inputs
identityь
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_2535162
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┬
d
+__inference_dropout_56_layer_call_fn_254436

inputs
identityѕбStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_56_layer_call_and_return_conditional_losses_2536652
StatefulPartitionedCallќ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:          2

Identity"
identityIdentity:output:0*.
_input_shapes
:          22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
╔
d
F__inference_dropout_59_layer_call_and_return_conditional_losses_253817

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:         @2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
■

*__inference_conv2d_23_layer_call_fn_254414

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_2536362
StatefulPartitionedCallќ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:          2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
жB
Й
I__inference_sequential_11_layer_call_and_return_conditional_losses_254038

inputs
conv2d_22_253993
conv2d_22_253995
conv2d_23_254000
conv2d_23_254002
separable_conv2d_22_254007
separable_conv2d_22_254009
separable_conv2d_22_254011
separable_conv2d_23_254016
separable_conv2d_23_254018
separable_conv2d_23_254020
dense_22_254026
dense_22_254028
dense_23_254032
dense_23_254034
identityѕб!conv2d_22/StatefulPartitionedCallб!conv2d_23/StatefulPartitionedCallб dense_22/StatefulPartitionedCallб dense_23/StatefulPartitionedCallб+separable_conv2d_22/StatefulPartitionedCallб+separable_conv2d_23/StatefulPartitionedCallА
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_22_253993conv2d_22_253995*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_2535782#
!conv2d_22/StatefulPartitionedCallў
 max_pooling2d_44/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_2534632"
 max_pooling2d_44/PartitionedCallЁ
dropout_55/PartitionedCallPartitionedCall)max_pooling2d_44/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_55_layer_call_and_return_conditional_losses_2536122
dropout_55/PartitionedCallЙ
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall#dropout_55/PartitionedCall:output:0conv2d_23_254000conv2d_23_254002*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_2536362#
!conv2d_23/StatefulPartitionedCallў
 max_pooling2d_45/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_2534752"
 max_pooling2d_45/PartitionedCallЁ
dropout_56/PartitionedCallPartitionedCall)max_pooling2d_45/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_56_layer_call_and_return_conditional_losses_2536702
dropout_56/PartitionedCallј
+separable_conv2d_22/StatefulPartitionedCallStatefulPartitionedCall#dropout_56/PartitionedCall:output:0separable_conv2d_22_254007separable_conv2d_22_254009separable_conv2d_22_254011*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *X
fSRQ
O__inference_separable_conv2d_22_layer_call_and_return_conditional_losses_2534982-
+separable_conv2d_22/StatefulPartitionedCallб
 max_pooling2d_46/PartitionedCallPartitionedCall4separable_conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_2535162"
 max_pooling2d_46/PartitionedCallЁ
dropout_57/PartitionedCallPartitionedCall)max_pooling2d_46/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_57_layer_call_and_return_conditional_losses_2537082
dropout_57/PartitionedCallј
+separable_conv2d_23/StatefulPartitionedCallStatefulPartitionedCall#dropout_57/PartitionedCall:output:0separable_conv2d_23_254016separable_conv2d_23_254018separable_conv2d_23_254020*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *X
fSRQ
O__inference_separable_conv2d_23_layer_call_and_return_conditional_losses_2535392-
+separable_conv2d_23/StatefulPartitionedCallб
 max_pooling2d_47/PartitionedCallPartitionedCall4separable_conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *U
fPRN
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_2535572"
 max_pooling2d_47/PartitionedCallЁ
dropout_58/PartitionedCallPartitionedCall)max_pooling2d_47/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_58_layer_call_and_return_conditional_losses_2537462
dropout_58/PartitionedCallЭ
flatten_11/PartitionedCallPartitionedCall#dropout_58/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_flatten_11_layer_call_and_return_conditional_losses_2537652
flatten_11/PartitionedCall▒
 dense_22/StatefulPartitionedCallStatefulPartitionedCall#flatten_11/PartitionedCall:output:0dense_22_254026dense_22_254028*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_2537842"
 dense_22/StatefulPartitionedCall§
dropout_59/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_59_layer_call_and_return_conditional_losses_2538172
dropout_59/PartitionedCall▒
 dense_23/StatefulPartitionedCallStatefulPartitionedCall#dropout_59/PartitionedCall:output:0dense_23_254032dense_23_254034*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_2538412"
 dense_23/StatefulPartitionedCallу
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall,^separable_conv2d_22/StatefulPartitionedCall,^separable_conv2d_23/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         @@::::::::::::::2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2Z
+separable_conv2d_22/StatefulPartitionedCall+separable_conv2d_22/StatefulPartitionedCall2Z
+separable_conv2d_23/StatefulPartitionedCall+separable_conv2d_23/StatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
ж
d
F__inference_dropout_55_layer_call_and_return_conditional_losses_253612

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:         2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ў}
Ё
!__inference__wrapped_model_253457
conv2d_22_input:
6sequential_11_conv2d_22_conv2d_readvariableop_resource;
7sequential_11_conv2d_22_biasadd_readvariableop_resource:
6sequential_11_conv2d_23_conv2d_readvariableop_resource;
7sequential_11_conv2d_23_biasadd_readvariableop_resourceN
Jsequential_11_separable_conv2d_22_separable_conv2d_readvariableop_resourceP
Lsequential_11_separable_conv2d_22_separable_conv2d_readvariableop_1_resourceE
Asequential_11_separable_conv2d_22_biasadd_readvariableop_resourceN
Jsequential_11_separable_conv2d_23_separable_conv2d_readvariableop_resourceP
Lsequential_11_separable_conv2d_23_separable_conv2d_readvariableop_1_resourceE
Asequential_11_separable_conv2d_23_biasadd_readvariableop_resource9
5sequential_11_dense_22_matmul_readvariableop_resource:
6sequential_11_dense_22_biasadd_readvariableop_resource9
5sequential_11_dense_23_matmul_readvariableop_resource:
6sequential_11_dense_23_biasadd_readvariableop_resource
identityѕб.sequential_11/conv2d_22/BiasAdd/ReadVariableOpб-sequential_11/conv2d_22/Conv2D/ReadVariableOpб.sequential_11/conv2d_23/BiasAdd/ReadVariableOpб-sequential_11/conv2d_23/Conv2D/ReadVariableOpб-sequential_11/dense_22/BiasAdd/ReadVariableOpб,sequential_11/dense_22/MatMul/ReadVariableOpб-sequential_11/dense_23/BiasAdd/ReadVariableOpб,sequential_11/dense_23/MatMul/ReadVariableOpб8sequential_11/separable_conv2d_22/BiasAdd/ReadVariableOpбAsequential_11/separable_conv2d_22/separable_conv2d/ReadVariableOpбCsequential_11/separable_conv2d_22/separable_conv2d/ReadVariableOp_1б8sequential_11/separable_conv2d_23/BiasAdd/ReadVariableOpбAsequential_11/separable_conv2d_23/separable_conv2d/ReadVariableOpбCsequential_11/separable_conv2d_23/separable_conv2d/ReadVariableOp_1П
-sequential_11/conv2d_22/Conv2D/ReadVariableOpReadVariableOp6sequential_11_conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_11/conv2d_22/Conv2D/ReadVariableOpш
sequential_11/conv2d_22/Conv2DConv2Dconv2d_22_input5sequential_11/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>*
paddingVALID*
strides
2 
sequential_11/conv2d_22/Conv2Dн
.sequential_11/conv2d_22/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_11/conv2d_22/BiasAdd/ReadVariableOpУ
sequential_11/conv2d_22/BiasAddBiasAdd'sequential_11/conv2d_22/Conv2D:output:06sequential_11/conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>2!
sequential_11/conv2d_22/BiasAddе
sequential_11/conv2d_22/ReluRelu(sequential_11/conv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:         >>2
sequential_11/conv2d_22/ReluЗ
&sequential_11/max_pooling2d_44/MaxPoolMaxPool*sequential_11/conv2d_22/Relu:activations:0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
2(
&sequential_11/max_pooling2d_44/MaxPoolй
!sequential_11/dropout_55/IdentityIdentity/sequential_11/max_pooling2d_44/MaxPool:output:0*
T0*/
_output_shapes
:         2#
!sequential_11/dropout_55/IdentityП
-sequential_11/conv2d_23/Conv2D/ReadVariableOpReadVariableOp6sequential_11_conv2d_23_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_11/conv2d_23/Conv2D/ReadVariableOpљ
sequential_11/conv2d_23/Conv2DConv2D*sequential_11/dropout_55/Identity:output:05sequential_11/conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2 
sequential_11/conv2d_23/Conv2Dн
.sequential_11/conv2d_23/BiasAdd/ReadVariableOpReadVariableOp7sequential_11_conv2d_23_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_11/conv2d_23/BiasAdd/ReadVariableOpУ
sequential_11/conv2d_23/BiasAddBiasAdd'sequential_11/conv2d_23/Conv2D:output:06sequential_11/conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          2!
sequential_11/conv2d_23/BiasAddе
sequential_11/conv2d_23/ReluRelu(sequential_11/conv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:          2
sequential_11/conv2d_23/ReluЗ
&sequential_11/max_pooling2d_45/MaxPoolMaxPool*sequential_11/conv2d_23/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
2(
&sequential_11/max_pooling2d_45/MaxPoolй
!sequential_11/dropout_56/IdentityIdentity/sequential_11/max_pooling2d_45/MaxPool:output:0*
T0*/
_output_shapes
:          2#
!sequential_11/dropout_56/IdentityЎ
Asequential_11/separable_conv2d_22/separable_conv2d/ReadVariableOpReadVariableOpJsequential_11_separable_conv2d_22_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02C
Asequential_11/separable_conv2d_22/separable_conv2d/ReadVariableOpЪ
Csequential_11/separable_conv2d_22/separable_conv2d/ReadVariableOp_1ReadVariableOpLsequential_11_separable_conv2d_22_separable_conv2d_readvariableop_1_resource*&
_output_shapes
: @*
dtype02E
Csequential_11/separable_conv2d_22/separable_conv2d/ReadVariableOp_1═
8sequential_11/separable_conv2d_22/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2:
8sequential_11/separable_conv2d_22/separable_conv2d/ShapeН
@sequential_11/separable_conv2d_22/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_11/separable_conv2d_22/separable_conv2d/dilation_rate№
<sequential_11/separable_conv2d_22/separable_conv2d/depthwiseDepthwiseConv2dNative*sequential_11/dropout_56/Identity:output:0Isequential_11/separable_conv2d_22/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
2>
<sequential_11/separable_conv2d_22/separable_conv2d/depthwiseж
2sequential_11/separable_conv2d_22/separable_conv2dConv2DEsequential_11/separable_conv2d_22/separable_conv2d/depthwise:output:0Ksequential_11/separable_conv2d_22/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
24
2sequential_11/separable_conv2d_22/separable_conv2dЫ
8sequential_11/separable_conv2d_22/BiasAdd/ReadVariableOpReadVariableOpAsequential_11_separable_conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02:
8sequential_11/separable_conv2d_22/BiasAdd/ReadVariableOpџ
)sequential_11/separable_conv2d_22/BiasAddBiasAdd;sequential_11/separable_conv2d_22/separable_conv2d:output:0@sequential_11/separable_conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2+
)sequential_11/separable_conv2d_22/BiasAddк
&sequential_11/separable_conv2d_22/ReluRelu2sequential_11/separable_conv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:         @2(
&sequential_11/separable_conv2d_22/Relu■
&sequential_11/max_pooling2d_46/MaxPoolMaxPool4sequential_11/separable_conv2d_22/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2(
&sequential_11/max_pooling2d_46/MaxPoolй
!sequential_11/dropout_57/IdentityIdentity/sequential_11/max_pooling2d_46/MaxPool:output:0*
T0*/
_output_shapes
:         @2#
!sequential_11/dropout_57/IdentityЎ
Asequential_11/separable_conv2d_23/separable_conv2d/ReadVariableOpReadVariableOpJsequential_11_separable_conv2d_23_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02C
Asequential_11/separable_conv2d_23/separable_conv2d/ReadVariableOpЪ
Csequential_11/separable_conv2d_23/separable_conv2d/ReadVariableOp_1ReadVariableOpLsequential_11_separable_conv2d_23_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@@*
dtype02E
Csequential_11/separable_conv2d_23/separable_conv2d/ReadVariableOp_1═
8sequential_11/separable_conv2d_23/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      2:
8sequential_11/separable_conv2d_23/separable_conv2d/ShapeН
@sequential_11/separable_conv2d_23/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      2B
@sequential_11/separable_conv2d_23/separable_conv2d/dilation_rate№
<sequential_11/separable_conv2d_23/separable_conv2d/depthwiseDepthwiseConv2dNative*sequential_11/dropout_57/Identity:output:0Isequential_11/separable_conv2d_23/separable_conv2d/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
2>
<sequential_11/separable_conv2d_23/separable_conv2d/depthwiseж
2sequential_11/separable_conv2d_23/separable_conv2dConv2DEsequential_11/separable_conv2d_23/separable_conv2d/depthwise:output:0Ksequential_11/separable_conv2d_23/separable_conv2d/ReadVariableOp_1:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
24
2sequential_11/separable_conv2d_23/separable_conv2dЫ
8sequential_11/separable_conv2d_23/BiasAdd/ReadVariableOpReadVariableOpAsequential_11_separable_conv2d_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02:
8sequential_11/separable_conv2d_23/BiasAdd/ReadVariableOpџ
)sequential_11/separable_conv2d_23/BiasAddBiasAdd;sequential_11/separable_conv2d_23/separable_conv2d:output:0@sequential_11/separable_conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2+
)sequential_11/separable_conv2d_23/BiasAddк
&sequential_11/separable_conv2d_23/ReluRelu2sequential_11/separable_conv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:         @2(
&sequential_11/separable_conv2d_23/Relu■
&sequential_11/max_pooling2d_47/MaxPoolMaxPool4sequential_11/separable_conv2d_23/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
2(
&sequential_11/max_pooling2d_47/MaxPoolй
!sequential_11/dropout_58/IdentityIdentity/sequential_11/max_pooling2d_47/MaxPool:output:0*
T0*/
_output_shapes
:         @2#
!sequential_11/dropout_58/IdentityЉ
sequential_11/flatten_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2 
sequential_11/flatten_11/ConstО
 sequential_11/flatten_11/ReshapeReshape*sequential_11/dropout_58/Identity:output:0'sequential_11/flatten_11/Const:output:0*
T0*(
_output_shapes
:         ђ2"
 sequential_11/flatten_11/ReshapeМ
,sequential_11/dense_22/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_22_matmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype02.
,sequential_11/dense_22/MatMul/ReadVariableOp█
sequential_11/dense_22/MatMulMatMul)sequential_11/flatten_11/Reshape:output:04sequential_11/dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2
sequential_11/dense_22/MatMulЛ
-sequential_11/dense_22/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_11/dense_22/BiasAdd/ReadVariableOpП
sequential_11/dense_22/BiasAddBiasAdd'sequential_11/dense_22/MatMul:product:05sequential_11/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @2 
sequential_11/dense_22/BiasAddЮ
sequential_11/dense_22/ReluRelu'sequential_11/dense_22/BiasAdd:output:0*
T0*'
_output_shapes
:         @2
sequential_11/dense_22/Relu»
!sequential_11/dropout_59/IdentityIdentity)sequential_11/dense_22/Relu:activations:0*
T0*'
_output_shapes
:         @2#
!sequential_11/dropout_59/Identityм
,sequential_11/dense_23/MatMul/ReadVariableOpReadVariableOp5sequential_11_dense_23_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,sequential_11/dense_23/MatMul/ReadVariableOp▄
sequential_11/dense_23/MatMulMatMul*sequential_11/dropout_59/Identity:output:04sequential_11/dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_11/dense_23/MatMulЛ
-sequential_11/dense_23/BiasAdd/ReadVariableOpReadVariableOp6sequential_11_dense_23_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_11/dense_23/BiasAdd/ReadVariableOpП
sequential_11/dense_23/BiasAddBiasAdd'sequential_11/dense_23/MatMul:product:05sequential_11/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2 
sequential_11/dense_23/BiasAddд
sequential_11/dense_23/SigmoidSigmoid'sequential_11/dense_23/BiasAdd:output:0*
T0*'
_output_shapes
:         2 
sequential_11/dense_23/Sigmoidђ
IdentityIdentity"sequential_11/dense_23/Sigmoid:y:0/^sequential_11/conv2d_22/BiasAdd/ReadVariableOp.^sequential_11/conv2d_22/Conv2D/ReadVariableOp/^sequential_11/conv2d_23/BiasAdd/ReadVariableOp.^sequential_11/conv2d_23/Conv2D/ReadVariableOp.^sequential_11/dense_22/BiasAdd/ReadVariableOp-^sequential_11/dense_22/MatMul/ReadVariableOp.^sequential_11/dense_23/BiasAdd/ReadVariableOp-^sequential_11/dense_23/MatMul/ReadVariableOp9^sequential_11/separable_conv2d_22/BiasAdd/ReadVariableOpB^sequential_11/separable_conv2d_22/separable_conv2d/ReadVariableOpD^sequential_11/separable_conv2d_22/separable_conv2d/ReadVariableOp_19^sequential_11/separable_conv2d_23/BiasAdd/ReadVariableOpB^sequential_11/separable_conv2d_23/separable_conv2d/ReadVariableOpD^sequential_11/separable_conv2d_23/separable_conv2d/ReadVariableOp_1*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:         @@::::::::::::::2`
.sequential_11/conv2d_22/BiasAdd/ReadVariableOp.sequential_11/conv2d_22/BiasAdd/ReadVariableOp2^
-sequential_11/conv2d_22/Conv2D/ReadVariableOp-sequential_11/conv2d_22/Conv2D/ReadVariableOp2`
.sequential_11/conv2d_23/BiasAdd/ReadVariableOp.sequential_11/conv2d_23/BiasAdd/ReadVariableOp2^
-sequential_11/conv2d_23/Conv2D/ReadVariableOp-sequential_11/conv2d_23/Conv2D/ReadVariableOp2^
-sequential_11/dense_22/BiasAdd/ReadVariableOp-sequential_11/dense_22/BiasAdd/ReadVariableOp2\
,sequential_11/dense_22/MatMul/ReadVariableOp,sequential_11/dense_22/MatMul/ReadVariableOp2^
-sequential_11/dense_23/BiasAdd/ReadVariableOp-sequential_11/dense_23/BiasAdd/ReadVariableOp2\
,sequential_11/dense_23/MatMul/ReadVariableOp,sequential_11/dense_23/MatMul/ReadVariableOp2t
8sequential_11/separable_conv2d_22/BiasAdd/ReadVariableOp8sequential_11/separable_conv2d_22/BiasAdd/ReadVariableOp2є
Asequential_11/separable_conv2d_22/separable_conv2d/ReadVariableOpAsequential_11/separable_conv2d_22/separable_conv2d/ReadVariableOp2і
Csequential_11/separable_conv2d_22/separable_conv2d/ReadVariableOp_1Csequential_11/separable_conv2d_22/separable_conv2d/ReadVariableOp_12t
8sequential_11/separable_conv2d_23/BiasAdd/ReadVariableOp8sequential_11/separable_conv2d_23/BiasAdd/ReadVariableOp2є
Asequential_11/separable_conv2d_23/separable_conv2d/ReadVariableOpAsequential_11/separable_conv2d_23/separable_conv2d/ReadVariableOp2і
Csequential_11/separable_conv2d_23/separable_conv2d/ReadVariableOp_1Csequential_11/separable_conv2d_23/separable_conv2d/ReadVariableOp_1:` \
/
_output_shapes
:         @@
)
_user_specified_nameconv2d_22_input
Х
G
+__inference_dropout_58_layer_call_fn_254495

inputs
identity╠
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_dropout_58_layer_call_and_return_conditional_losses_2537462
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @2

Identity"
identityIdentity:output:0*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*├
serving_default»
S
conv2d_22_input@
!serving_default_conv2d_22_input:0         @@<
dense_230
StatefulPartitionedCall:0         tensorflow/serving/predict:Ёт
├r
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
layer-11
layer-12
layer_with_weights-4
layer-13
layer-14
layer_with_weights-5
layer-15
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
Т__call__
у_default_save_signature
+У&call_and_return_all_conditional_losses"Ѓn
_tf_keras_sequentialСm{"class_name": "Sequential", "name": "sequential_11", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_11", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_22_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_44", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_55", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_45", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_56", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "SeparableConv2D", "config": {"name": "separable_conv2d_22", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_46", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_57", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "SeparableConv2D", "config": {"name": "separable_conv2d_23", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_47", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_58", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_11", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_59", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_11", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_22_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_22", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_44", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_55", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_45", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_56", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "SeparableConv2D", "config": {"name": "separable_conv2d_22", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_46", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_57", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "SeparableConv2D", "config": {"name": "separable_conv2d_23", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_47", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_58", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_11", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_59", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.000699999975040555, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Ш


kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
ж__call__
+Ж&call_and_return_all_conditional_losses"¤	
_tf_keras_layerх	{"class_name": "Conv2D", "name": "conv2d_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_22", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 3]}}
Ѓ
	variables
trainable_variables
regularization_losses
 	keras_api
в__call__
+В&call_and_return_all_conditional_losses"Ы
_tf_keras_layerп{"class_name": "MaxPooling2D", "name": "max_pooling2d_44", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_44", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ж
!	variables
"trainable_variables
#regularization_losses
$	keras_api
ь__call__
+Ь&call_and_return_all_conditional_losses"п
_tf_keras_layerЙ{"class_name": "Dropout", "name": "dropout_55", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_55", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
э	

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
№__call__
+­&call_and_return_all_conditional_losses"л
_tf_keras_layerХ{"class_name": "Conv2D", "name": "conv2d_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 31, 31, 16]}}
Ѓ
+	variables
,trainable_variables
-regularization_losses
.	keras_api
ы__call__
+Ы&call_and_return_all_conditional_losses"Ы
_tf_keras_layerп{"class_name": "MaxPooling2D", "name": "max_pooling2d_45", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_45", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ж
/	variables
0trainable_variables
1regularization_losses
2	keras_api
з__call__
+З&call_and_return_all_conditional_losses"п
_tf_keras_layerЙ{"class_name": "Dropout", "name": "dropout_56", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_56", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
ь
3depthwise_kernel
4pointwise_kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
ш__call__
+Ш&call_and_return_all_conditional_losses"д
_tf_keras_layerї{"class_name": "SeparableConv2D", "name": "separable_conv2d_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "separable_conv2d_22", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 32]}}
Ѓ
:	variables
;trainable_variables
<regularization_losses
=	keras_api
э__call__
+Э&call_and_return_all_conditional_losses"Ы
_tf_keras_layerп{"class_name": "MaxPooling2D", "name": "max_pooling2d_46", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_46", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ж
>	variables
?trainable_variables
@regularization_losses
A	keras_api
щ__call__
+Щ&call_and_return_all_conditional_losses"п
_tf_keras_layerЙ{"class_name": "Dropout", "name": "dropout_57", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_57", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
в
Bdepthwise_kernel
Cpointwise_kernel
Dbias
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
ч__call__
+Ч&call_and_return_all_conditional_losses"ц
_tf_keras_layerі{"class_name": "SeparableConv2D", "name": "separable_conv2d_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "separable_conv2d_23", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6, 6, 64]}}
Ѓ
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
§__call__
+■&call_and_return_all_conditional_losses"Ы
_tf_keras_layerп{"class_name": "MaxPooling2D", "name": "max_pooling2d_47", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_47", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ж
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
 __call__
+ђ&call_and_return_all_conditional_losses"п
_tf_keras_layerЙ{"class_name": "Dropout", "name": "dropout_58", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_58", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
Ж
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
Ђ__call__
+ѓ&call_and_return_all_conditional_losses"┘
_tf_keras_layer┐{"class_name": "Flatten", "name": "flatten_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_11", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
Ш

Ukernel
Vbias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
Ѓ__call__
+ё&call_and_return_all_conditional_losses"¤
_tf_keras_layerх{"class_name": "Dense", "name": "dense_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
ж
[	variables
\trainable_variables
]regularization_losses
^	keras_api
Ё__call__
+є&call_and_return_all_conditional_losses"п
_tf_keras_layerЙ{"class_name": "Dropout", "name": "dropout_59", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_59", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
Ш

_kernel
`bias
a	variables
btrainable_variables
cregularization_losses
d	keras_api
Є__call__
+ѕ&call_and_return_all_conditional_losses"¤
_tf_keras_layerх{"class_name": "Dense", "name": "dense_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
в
eiter

fbeta_1

gbeta_2
	hdecay
ilearning_ratem╩m╦%m╠&m═3m╬4m¤5mлBmЛCmмDmМUmнVmН_mо`mОvпv┘%v┌&v█3v▄4vП5vяBv▀CvЯDvрUvРVvс_vС`vт"
	optimizer
є
0
1
%2
&3
34
45
56
B7
C8
D9
U10
V11
_12
`13"
trackable_list_wrapper
є
0
1
%2
&3
34
45
56
B7
C8
D9
U10
V11
_12
`13"
trackable_list_wrapper
 "
trackable_list_wrapper
╬
	variables
jlayer_regularization_losses

klayers
llayer_metrics
mmetrics
trainable_variables
regularization_losses
nnon_trainable_variables
Т__call__
у_default_save_signature
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
-
Ѕserving_default"
signature_map
*:(2conv2d_22/kernel
:2conv2d_22/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
	variables
olayer_regularization_losses

players
qlayer_metrics
rmetrics
trainable_variables
regularization_losses
snon_trainable_variables
ж__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
	variables
tlayer_regularization_losses

ulayers
vlayer_metrics
wmetrics
trainable_variables
regularization_losses
xnon_trainable_variables
в__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
!	variables
ylayer_regularization_losses

zlayers
{layer_metrics
|metrics
"trainable_variables
#regularization_losses
}non_trainable_variables
ь__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
*:( 2conv2d_23/kernel
: 2conv2d_23/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
│
'	variables
~layer_regularization_losses

layers
ђlayer_metrics
Ђmetrics
(trainable_variables
)regularization_losses
ѓnon_trainable_variables
№__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
+	variables
 Ѓlayer_regularization_losses
ёlayers
Ёlayer_metrics
єmetrics
,trainable_variables
-regularization_losses
Єnon_trainable_variables
ы__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
/	variables
 ѕlayer_regularization_losses
Ѕlayers
іlayer_metrics
Іmetrics
0trainable_variables
1regularization_losses
їnon_trainable_variables
з__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
>:< 2$separable_conv2d_22/depthwise_kernel
>:< @2$separable_conv2d_22/pointwise_kernel
&:$@2separable_conv2d_22/bias
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
х
6	variables
 Їlayer_regularization_losses
јlayers
Јlayer_metrics
љmetrics
7trainable_variables
8regularization_losses
Љnon_trainable_variables
ш__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
:	variables
 њlayer_regularization_losses
Њlayers
ћlayer_metrics
Ћmetrics
;trainable_variables
<regularization_losses
ќnon_trainable_variables
э__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
>	variables
 Ќlayer_regularization_losses
ўlayers
Ўlayer_metrics
џmetrics
?trainable_variables
@regularization_losses
Џnon_trainable_variables
щ__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
>:<@2$separable_conv2d_23/depthwise_kernel
>:<@@2$separable_conv2d_23/pointwise_kernel
&:$@2separable_conv2d_23/bias
5
B0
C1
D2"
trackable_list_wrapper
5
B0
C1
D2"
trackable_list_wrapper
 "
trackable_list_wrapper
х
E	variables
 юlayer_regularization_losses
Юlayers
ъlayer_metrics
Ъmetrics
Ftrainable_variables
Gregularization_losses
аnon_trainable_variables
ч__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
I	variables
 Аlayer_regularization_losses
бlayers
Бlayer_metrics
цmetrics
Jtrainable_variables
Kregularization_losses
Цnon_trainable_variables
§__call__
+■&call_and_return_all_conditional_losses
'■"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
M	variables
 дlayer_regularization_losses
Дlayers
еlayer_metrics
Еmetrics
Ntrainable_variables
Oregularization_losses
фnon_trainable_variables
 __call__
+ђ&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
Q	variables
 Фlayer_regularization_losses
гlayers
Гlayer_metrics
«metrics
Rtrainable_variables
Sregularization_losses
»non_trainable_variables
Ђ__call__
+ѓ&call_and_return_all_conditional_losses
'ѓ"call_and_return_conditional_losses"
_generic_user_object
": 	ђ@2dense_22/kernel
:@2dense_22/bias
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
х
W	variables
 ░layer_regularization_losses
▒layers
▓layer_metrics
│metrics
Xtrainable_variables
Yregularization_losses
┤non_trainable_variables
Ѓ__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
[	variables
 хlayer_regularization_losses
Хlayers
иlayer_metrics
Иmetrics
\trainable_variables
]regularization_losses
╣non_trainable_variables
Ё__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
!:@2dense_23/kernel
:2dense_23/bias
.
_0
`1"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
х
a	variables
 ║layer_regularization_losses
╗layers
╝layer_metrics
йmetrics
btrainable_variables
cregularization_losses
Йnon_trainable_variables
Є__call__
+ѕ&call_and_return_all_conditional_losses
'ѕ"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
ќ
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
11
12
13
14
15"
trackable_list_wrapper
 "
trackable_dict_wrapper
0
┐0
└1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
┐

┴total

┬count
├	variables
─	keras_api"ё
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
 

┼total

кcount
К
_fn_kwargs
╚	variables
╔	keras_api"│
_tf_keras_metricў{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
:  (2total
:  (2count
0
┴0
┬1"
trackable_list_wrapper
.
├	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
┼0
к1"
trackable_list_wrapper
.
╚	variables"
_generic_user_object
/:-2Adam/conv2d_22/kernel/m
!:2Adam/conv2d_22/bias/m
/:- 2Adam/conv2d_23/kernel/m
!: 2Adam/conv2d_23/bias/m
C:A 2+Adam/separable_conv2d_22/depthwise_kernel/m
C:A @2+Adam/separable_conv2d_22/pointwise_kernel/m
+:)@2Adam/separable_conv2d_22/bias/m
C:A@2+Adam/separable_conv2d_23/depthwise_kernel/m
C:A@@2+Adam/separable_conv2d_23/pointwise_kernel/m
+:)@2Adam/separable_conv2d_23/bias/m
':%	ђ@2Adam/dense_22/kernel/m
 :@2Adam/dense_22/bias/m
&:$@2Adam/dense_23/kernel/m
 :2Adam/dense_23/bias/m
/:-2Adam/conv2d_22/kernel/v
!:2Adam/conv2d_22/bias/v
/:- 2Adam/conv2d_23/kernel/v
!: 2Adam/conv2d_23/bias/v
C:A 2+Adam/separable_conv2d_22/depthwise_kernel/v
C:A @2+Adam/separable_conv2d_22/pointwise_kernel/v
+:)@2Adam/separable_conv2d_22/bias/v
C:A@2+Adam/separable_conv2d_23/depthwise_kernel/v
C:A@@2+Adam/separable_conv2d_23/pointwise_kernel/v
+:)@2Adam/separable_conv2d_23/bias/v
':%	ђ@2Adam/dense_22/kernel/v
 :@2Adam/dense_22/bias/v
&:$@2Adam/dense_23/kernel/v
 :2Adam/dense_23/bias/v
є2Ѓ
.__inference_sequential_11_layer_call_fn_254069
.__inference_sequential_11_layer_call_fn_254347
.__inference_sequential_11_layer_call_fn_253988
.__inference_sequential_11_layer_call_fn_254314└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
№2В
!__inference__wrapped_model_253457к
І▓Є
FullArgSpec
argsџ 
varargsjargs
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *6б3
1і.
conv2d_22_input         @@
Ы2№
I__inference_sequential_11_layer_call_and_return_conditional_losses_254214
I__inference_sequential_11_layer_call_and_return_conditional_losses_253858
I__inference_sequential_11_layer_call_and_return_conditional_losses_254281
I__inference_sequential_11_layer_call_and_return_conditional_losses_253906└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
н2Л
*__inference_conv2d_22_layer_call_fn_254367б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_conv2d_22_layer_call_and_return_conditional_losses_254358б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ў2ќ
1__inference_max_pooling2d_44_layer_call_fn_253469Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
┤2▒
L__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_253463Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
ћ2Љ
+__inference_dropout_55_layer_call_fn_254389
+__inference_dropout_55_layer_call_fn_254394┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╩2К
F__inference_dropout_55_layer_call_and_return_conditional_losses_254384
F__inference_dropout_55_layer_call_and_return_conditional_losses_254379┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
н2Л
*__inference_conv2d_23_layer_call_fn_254414б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_conv2d_23_layer_call_and_return_conditional_losses_254405б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ў2ќ
1__inference_max_pooling2d_45_layer_call_fn_253481Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
┤2▒
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_253475Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
ћ2Љ
+__inference_dropout_56_layer_call_fn_254436
+__inference_dropout_56_layer_call_fn_254441┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╩2К
F__inference_dropout_56_layer_call_and_return_conditional_losses_254431
F__inference_dropout_56_layer_call_and_return_conditional_losses_254426┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Њ2љ
4__inference_separable_conv2d_22_layer_call_fn_253510О
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *7б4
2і/+                            
«2Ф
O__inference_separable_conv2d_22_layer_call_and_return_conditional_losses_253498О
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *7б4
2і/+                            
Ў2ќ
1__inference_max_pooling2d_46_layer_call_fn_253522Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
┤2▒
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_253516Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
ћ2Љ
+__inference_dropout_57_layer_call_fn_254468
+__inference_dropout_57_layer_call_fn_254463┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╩2К
F__inference_dropout_57_layer_call_and_return_conditional_losses_254453
F__inference_dropout_57_layer_call_and_return_conditional_losses_254458┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Њ2љ
4__inference_separable_conv2d_23_layer_call_fn_253551О
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *7б4
2і/+                           @
«2Ф
O__inference_separable_conv2d_23_layer_call_and_return_conditional_losses_253539О
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *7б4
2і/+                           @
Ў2ќ
1__inference_max_pooling2d_47_layer_call_fn_253563Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
┤2▒
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_253557Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
ћ2Љ
+__inference_dropout_58_layer_call_fn_254490
+__inference_dropout_58_layer_call_fn_254495┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╩2К
F__inference_dropout_58_layer_call_and_return_conditional_losses_254480
F__inference_dropout_58_layer_call_and_return_conditional_losses_254485┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Н2м
+__inference_flatten_11_layer_call_fn_254506б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­2ь
F__inference_flatten_11_layer_call_and_return_conditional_losses_254501б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
М2л
)__inference_dense_22_layer_call_fn_254526б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_dense_22_layer_call_and_return_conditional_losses_254517б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ћ2Љ
+__inference_dropout_59_layer_call_fn_254553
+__inference_dropout_59_layer_call_fn_254548┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╩2К
F__inference_dropout_59_layer_call_and_return_conditional_losses_254538
F__inference_dropout_59_layer_call_and_return_conditional_losses_254543┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
М2л
)__inference_dense_23_layer_call_fn_254573б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_dense_23_layer_call_and_return_conditional_losses_254564б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
МBл
$__inference_signature_wrapper_254112conv2d_22_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 Г
!__inference__wrapped_model_253457Є%&345BCDUV_`@б=
6б3
1і.
conv2d_22_input         @@
ф "3ф0
.
dense_23"і
dense_23         х
E__inference_conv2d_22_layer_call_and_return_conditional_losses_254358l7б4
-б*
(і%
inputs         @@
ф "-б*
#і 
0         >>
џ Ї
*__inference_conv2d_22_layer_call_fn_254367_7б4
-б*
(і%
inputs         @@
ф " і         >>х
E__inference_conv2d_23_layer_call_and_return_conditional_losses_254405l%&7б4
-б*
(і%
inputs         
ф "-б*
#і 
0          
џ Ї
*__inference_conv2d_23_layer_call_fn_254414_%&7б4
-б*
(і%
inputs         
ф " і          Ц
D__inference_dense_22_layer_call_and_return_conditional_losses_254517]UV0б-
&б#
!і
inputs         ђ
ф "%б"
і
0         @
џ }
)__inference_dense_22_layer_call_fn_254526PUV0б-
&б#
!і
inputs         ђ
ф "і         @ц
D__inference_dense_23_layer_call_and_return_conditional_losses_254564\_`/б,
%б"
 і
inputs         @
ф "%б"
і
0         
џ |
)__inference_dense_23_layer_call_fn_254573O_`/б,
%б"
 і
inputs         @
ф "і         Х
F__inference_dropout_55_layer_call_and_return_conditional_losses_254379l;б8
1б.
(і%
inputs         
p
ф "-б*
#і 
0         
џ Х
F__inference_dropout_55_layer_call_and_return_conditional_losses_254384l;б8
1б.
(і%
inputs         
p 
ф "-б*
#і 
0         
џ ј
+__inference_dropout_55_layer_call_fn_254389_;б8
1б.
(і%
inputs         
p
ф " і         ј
+__inference_dropout_55_layer_call_fn_254394_;б8
1б.
(і%
inputs         
p 
ф " і         Х
F__inference_dropout_56_layer_call_and_return_conditional_losses_254426l;б8
1б.
(і%
inputs          
p
ф "-б*
#і 
0          
џ Х
F__inference_dropout_56_layer_call_and_return_conditional_losses_254431l;б8
1б.
(і%
inputs          
p 
ф "-б*
#і 
0          
џ ј
+__inference_dropout_56_layer_call_fn_254436_;б8
1б.
(і%
inputs          
p
ф " і          ј
+__inference_dropout_56_layer_call_fn_254441_;б8
1б.
(і%
inputs          
p 
ф " і          Х
F__inference_dropout_57_layer_call_and_return_conditional_losses_254453l;б8
1б.
(і%
inputs         @
p
ф "-б*
#і 
0         @
џ Х
F__inference_dropout_57_layer_call_and_return_conditional_losses_254458l;б8
1б.
(і%
inputs         @
p 
ф "-б*
#і 
0         @
џ ј
+__inference_dropout_57_layer_call_fn_254463_;б8
1б.
(і%
inputs         @
p
ф " і         @ј
+__inference_dropout_57_layer_call_fn_254468_;б8
1б.
(і%
inputs         @
p 
ф " і         @Х
F__inference_dropout_58_layer_call_and_return_conditional_losses_254480l;б8
1б.
(і%
inputs         @
p
ф "-б*
#і 
0         @
џ Х
F__inference_dropout_58_layer_call_and_return_conditional_losses_254485l;б8
1б.
(і%
inputs         @
p 
ф "-б*
#і 
0         @
џ ј
+__inference_dropout_58_layer_call_fn_254490_;б8
1б.
(і%
inputs         @
p
ф " і         @ј
+__inference_dropout_58_layer_call_fn_254495_;б8
1б.
(і%
inputs         @
p 
ф " і         @д
F__inference_dropout_59_layer_call_and_return_conditional_losses_254538\3б0
)б&
 і
inputs         @
p
ф "%б"
і
0         @
џ д
F__inference_dropout_59_layer_call_and_return_conditional_losses_254543\3б0
)б&
 і
inputs         @
p 
ф "%б"
і
0         @
џ ~
+__inference_dropout_59_layer_call_fn_254548O3б0
)б&
 і
inputs         @
p
ф "і         @~
+__inference_dropout_59_layer_call_fn_254553O3б0
)б&
 і
inputs         @
p 
ф "і         @Ф
F__inference_flatten_11_layer_call_and_return_conditional_losses_254501a7б4
-б*
(і%
inputs         @
ф "&б#
і
0         ђ
џ Ѓ
+__inference_flatten_11_layer_call_fn_254506T7б4
-б*
(і%
inputs         @
ф "і         ђ№
L__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_253463ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ К
1__inference_max_pooling2d_44_layer_call_fn_253469ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    №
L__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_253475ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ К
1__inference_max_pooling2d_45_layer_call_fn_253481ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    №
L__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_253516ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ К
1__inference_max_pooling2d_46_layer_call_fn_253522ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    №
L__inference_max_pooling2d_47_layer_call_and_return_conditional_losses_253557ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ К
1__inference_max_pooling2d_47_layer_call_fn_253563ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    т
O__inference_separable_conv2d_22_layer_call_and_return_conditional_losses_253498Љ345IбF
?б<
:і7
inputs+                            
ф "?б<
5і2
0+                           @
џ й
4__inference_separable_conv2d_22_layer_call_fn_253510ё345IбF
?б<
:і7
inputs+                            
ф "2і/+                           @т
O__inference_separable_conv2d_23_layer_call_and_return_conditional_losses_253539ЉBCDIбF
?б<
:і7
inputs+                           @
ф "?б<
5і2
0+                           @
џ й
4__inference_separable_conv2d_23_layer_call_fn_253551ёBCDIбF
?б<
:і7
inputs+                           @
ф "2і/+                           @¤
I__inference_sequential_11_layer_call_and_return_conditional_losses_253858Ђ%&345BCDUV_`HбE
>б;
1і.
conv2d_22_input         @@
p

 
ф "%б"
і
0         
џ ¤
I__inference_sequential_11_layer_call_and_return_conditional_losses_253906Ђ%&345BCDUV_`HбE
>б;
1і.
conv2d_22_input         @@
p 

 
ф "%б"
і
0         
џ ┼
I__inference_sequential_11_layer_call_and_return_conditional_losses_254214x%&345BCDUV_`?б<
5б2
(і%
inputs         @@
p

 
ф "%б"
і
0         
џ ┼
I__inference_sequential_11_layer_call_and_return_conditional_losses_254281x%&345BCDUV_`?б<
5б2
(і%
inputs         @@
p 

 
ф "%б"
і
0         
џ д
.__inference_sequential_11_layer_call_fn_253988t%&345BCDUV_`HбE
>б;
1і.
conv2d_22_input         @@
p

 
ф "і         д
.__inference_sequential_11_layer_call_fn_254069t%&345BCDUV_`HбE
>б;
1і.
conv2d_22_input         @@
p 

 
ф "і         Ю
.__inference_sequential_11_layer_call_fn_254314k%&345BCDUV_`?б<
5б2
(і%
inputs         @@
p

 
ф "і         Ю
.__inference_sequential_11_layer_call_fn_254347k%&345BCDUV_`?б<
5б2
(і%
inputs         @@
p 

 
ф "і         ├
$__inference_signature_wrapper_254112џ%&345BCDUV_`SбP
б 
IфF
D
conv2d_22_input1і.
conv2d_22_input         @@"3ф0
.
dense_23"і
dense_23         