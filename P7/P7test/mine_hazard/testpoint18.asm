addi	$1,$0,84
sw		$1,0($0)
addi	$1,$0,64
sw		$1,4($0)
addi	$1,$0,100
sw		$1,8($0)
addi	$1,$0,24
sw		$1,12($0)
addi	$1,$0,28
sw		$1,16($0)
addi	$1,$0,36
sw		$1,20($0)
addi	$1,$0,88
sw		$1,24($0)
addi	$1,$0,4
sw		$1,28($0)
addi	$1,$0,192
sw		$1,32($0)
addi	$1,$0,156
sw		$1,36($0)
addi	$1,$0,76
sw		$1,40($0)
addi	$1,$0,144
sw		$1,44($0)
addi	$1,$0,128
sw		$1,48($0)
addi	$1,$0,80
sw		$1,52($0)
addi	$1,$0,16
sw		$1,56($0)
addi	$1,$0,68
sw		$1,60($0)
addi	$1,$0,116
sw		$1,64($0)
addi	$1,$0,60
sw		$1,68($0)
addi	$1,$0,52
sw		$1,72($0)
addi	$1,$0,40
sw		$1,76($0)
addi	$1,$0,72
sw		$1,80($0)
addi	$1,$0,140
sw		$1,84($0)
addi	$1,$0,196
sw		$1,88($0)
addi	$1,$0,56
sw		$1,92($0)
addi	$1,$0,20
sw		$1,96($0)
addi	$1,$0,200
sw		$1,100($0)
addi	$1,$0,152
sw		$1,104($0)
addi	$1,$0,104
sw		$1,108($0)
addi	$1,$0,96
sw		$1,112($0)
addi	$1,$0,136
sw		$1,116($0)
addi	$1,$0,188
sw		$1,120($0)
addi	$1,$0,132
sw		$1,124($0)
addi	$1,$0,184
sw		$1,128($0)
addi	$1,$0,180
sw		$1,132($0)
addi	$1,$0,12
sw		$1,136($0)
addi	$1,$0,160
sw		$1,140($0)
addi	$1,$0,48
sw		$1,144($0)
addi	$1,$0,172
sw		$1,148($0)
addi	$1,$0,8
sw		$1,152($0)
addi	$1,$0,32
sw		$1,156($0)
addi	$1,$0,108
sw		$1,160($0)
addi	$1,$0,148
sw		$1,164($0)
addi	$1,$0,112
sw		$1,168($0)
addi	$1,$0,120
sw		$1,172($0)
addi	$1,$0,92
sw		$1,176($0)
addi	$1,$0,44
sw		$1,180($0)
addi	$1,$0,124
sw		$1,184($0)
addi	$1,$0,176
sw		$1,188($0)
addi	$1,$0,168
sw		$1,192($0)
addi	$1,$0,164
sw		$1,196($0)

addi	$0,$0,252
addi	$1,$0,252
addi	$2,$0,252
addi	$3,$0,252
addi	$4,$0,252
addi	$5,$0,252
addi	$6,$0,252
addi	$7,$0,252
addi	$8,$0,252
addi	$9,$0,252
addi	$10,$0,252
addi	$11,$0,252
addi	$12,$0,252
addi	$13,$0,252
addi	$14,$0,252
addi	$15,$0,252
addi	$16,$0,252
addi	$17,$0,252
addi	$18,$0,252
addi	$19,$0,252
addi	$20,$0,252
addi	$21,$0,252
addi	$22,$0,252
addi	$23,$0,252
addi	$24,$0,252
addi	$25,$0,252
addi	$26,$0,252
addi	$27,$0,252
addi	$28,$0,252
addi	$29,$0,252
addi	$30,$0,252
addi	$31,$0,252

mfc0	$13,$12
srl		$31,$13,2
jal		TAG_0
lhu		$31,36($13)
addi	$1,$1,1
TAG_0:
mflo	$1
mfhi	$2
addi	$1,$0,221
addi	$2,$0,36
addi	$13,$0,110
mfhi	$31
sra		$13,$31,2
jal		TAG_1
lw		$31,8($13)
addi	$1,$1,1
TAG_1:
mflo	$1
mfhi	$2
addi	$1,$0,195
addi	$2,$0,86
addi	$13,$0,67
mflo	$31
sll		$31,$0,1
jal		TAG_2
lb		$31,-12832($31)
addi	$1,$1,1
TAG_2:
mflo	$1
mfhi	$2
addi	$1,$0,27
addi	$2,$0,240
mfc0	$31,$12
srl		$31,$31,1
jal		TAG_3
sb		$31,-12584($31)
addi	$1,$1,1
TAG_3:
mflo	$1
mfhi	$2
addi	$1,$0,225
addi	$2,$0,75
mfhi	$14
sra		$31,$31,1
jal		TAG_4
sh		$14,288($14)
addi	$1,$1,1
TAG_4:
mflo	$1
mfhi	$2
addi	$1,$0,211
addi	$2,$0,192
addi	$14,$0,182
mflo	$31
sll		$31,$31,1
jal		TAG_5
sw		$14,134($14)
addi	$1,$1,1
TAG_5:
mflo	$1
mfhi	$2
addi	$1,$0,234
addi	$2,$0,171
mfc0	$31,$13
srl		$0,$0,1
jal		TAG_6
sb		$31,284($0)
addi	$1,$1,1
TAG_6:
mflo	$1
mfhi	$2
addi	$1,$0,169
addi	$2,$0,111
la		$19,TAG_7
mfhi	$20
sra		$20,$20,1
jalr	$20,$19
lbu		$20,-13024($20)
addi	$1,$1,1
TAG_7:
mflo	$1
mfhi	$2
addi	$1,$0,105
addi	$2,$0,175
la		$19,TAG_8
mflo	$23
sll		$23,$25,1
jalr	$23,$19
lh		$23,-180($25)
addi	$1,$1,1
TAG_8:
mflo	$1
mfhi	$2
addi	$1,$0,21
addi	$2,$0,69
la		$19,TAG_9
mfc0	$23,$12
srl		$26,$23,1
jalr	$23,$19
lhu		$26,-13084($23)
addi	$1,$1,1
TAG_9:
mflo	$1
mfhi	$2
addi	$1,$0,83
addi	$2,$0,22
la		$19,TAG_10
mfhi	$0
sra		$0,$0,1
jalr	$0,$19
lw		$0,-112($18)
addi	$1,$1,1
TAG_10:
mflo	$1
mfhi	$2
addi	$1,$0,119
addi	$2,$0,38
la		$19,TAG_11
mflo	$21
sll		$21,$21,1
jalr	$21,$19
sh		$21,-12924($21)
addi	$1,$1,1
TAG_11:
mflo	$1
mfhi	$2
addi	$1,$0,213
addi	$2,$0,171
la		$19,TAG_12
mfc0	$23,$12
srl		$23,$27,1
jalr	$23,$19
sw		$27,208($27)
addi	$1,$1,1
TAG_12:
mflo	$1
mfhi	$2
addi	$1,$0,8
addi	$2,$0,60
la		$19,TAG_13
mfhi	$23
sra		$28,$28,2
jalr	$23,$19
sb		$23,321($28)
addi	$1,$1,1
TAG_13:
mflo	$1
mfhi	$2
addi	$1,$0,132
addi	$2,$0,102
la		$19,TAG_14
mflo	$5
sll		$5,$5,2
jalr	$5,$19
sh		$5,-13048($5)
addi	$1,$1,1
TAG_14:
mflo	$1
mfhi	$2
addi	$1,$0,68
addi	$2,$0,34
mfc0	$26,$12
srl		$26,$26,1
nop
lb		$26,64($26)
mflo	$1
mfhi	$2
addi	$1,$0,88
addi	$2,$0,162
mfhi	$24
sra		$7,$24,2
nop
lbu		$24,132($7)
mflo	$1
mfhi	$2
addi	$1,$0,64
addi	$2,$0,162
addi	$7,$0,74
mflo	$24
sll		$8,$24,1
nop
lh		$8,124($8)
mflo	$1
mfhi	$2
addi	$1,$0,129
addi	$2,$0,254
addi	$24,$0,119
mfc0	$0,$13
srl		$26,$26,2
nop
lhu		$26,-13($26)
mflo	$1
mfhi	$2
addi	$1,$0,192
addi	$2,$0,87
mfhi	$27
sra		$27,$27,1
nop
sw		$27,284($27)
mflo	$1
mfhi	$2
addi	$1,$0,50
addi	$2,$0,140
addi	$27,$0,191
mflo	$24
sll		$9,$24,2
nop
sb		$9,356($24)
mflo	$1
mfhi	$2
addi	$1,$0,37
addi	$2,$0,154
addi	$9,$0,252
addi	$24,$0,65
mfc0	$24,$12
srl		$10,$24,1
nop
sh		$24,392($10)
mflo	$1
mfhi	$2
addi	$1,$0,172
addi	$2,$0,16
addi	$10,$0,206
addi	$24,$0,69
mfhi	$3
sra		$3,$3,2
nop
sw		$0,292($3)
mflo	$1
mfhi	$2
addi	$1,$0,126
addi	$2,$0,173
addi	$3,$0,80
mflo	$5
lw		$5,68($5)
subu	$5,$5,$5
xor		$5,$5,$5
mflo	$1
mfhi	$2
addi	$1,$0,50
addi	$2,$0,228
addi	$5,$0,33
mfc0	$24,$12
lb		$24,156($24)
add		$25,$25,$25
addu	$24,$24,$25
mflo	$1
mfhi	$2
addi	$1,$0,33
addi	$2,$0,189
mfhi	$24
lbu		$26,124($24)
and		$24,$24,$24
nor		$26,$26,$26
mflo	$1
mfhi	$2
addi	$1,$0,138
addi	$2,$0,24
addi	$24,$0,125
mflo	$6
lh		$0,140($6)
or		$6,$6,$0
sllv	$0,$0,$6
mflo	$1
mfhi	$2
addi	$1,$0,74
addi	$2,$0,151
addi	$6,$0,26
mfc0	$6,$12
lhu		$6,156($6)
srlv	$6,$6,$6
slti	$6,$6,3
mflo	$1
mfhi	$2
addi	$1,$0,17
addi	$2,$0,189
addi	$6,$0,134
mfhi	$24
lw		$27,124($24)
srav	$24,$24,$27
sltiu	$24,$27,-7
mflo	$1
mfhi	$2
addi	$1,$0,132
addi	$2,$0,110
mflo	$24
lb		$24,64($24)
slt		$28,$28,$28
xori	$24,$24,78
mflo	$1
mfhi	$2
addi	$1,$0,106
addi	$2,$0,223
addi	$28,$0,18
mfc0	$0,$13
lbu		$8,-56($8)
sltu	$0,$0,$0
addi	$0,$8,96
mflo	$1
mfhi	$2
addi	$1,$0,8
addi	$2,$0,52
mfhi	$7
lh		$7,4($7)
sub		$7,$7,$7
sll		$7,$7,2
mflo	$1
mfhi	$2
addi	$1,$0,209
addi	$2,$0,154
addi	$7,$0,173
mflo	$24
lhu		$29,-184($29)
subu	$24,$24,$24
srl		$29,$24,2
mflo	$1
mfhi	$2
addi	$1,$0,129
addi	$2,$0,110
addi	$24,$0,81
addi	$29,$0,89
mfc0	$24,$12
lw		$24,-104($30)
xor		$30,$30,$30
sra		$30,$30,2
mflo	$1
mfhi	$2
addi	$1,$0,13
addi	$2,$0,242
addi	$30,$0,184
mfhi	$0
lb		$12,96($0)
add		$0,$12,$0
sll		$12,$0,1
mflo	$1
mfhi	$2
addi	$1,$0,109
addi	$2,$0,162
addi	$12,$0,247
mflo	$8
lbu		$8,124($8)
addu	$8,$8,$8
lh		$8,-156($8)
mflo	$1
mfhi	$2
addi	$1,$0,224
addi	$2,$0,0
mfc0	$25,$12
lhu		$25,-108($1)
and		$1,$25,$1
lw		$25,-72($1)
mflo	$1
mfhi	$2
addi	$1,$0,154
addi	$2,$0,151
mfhi	$25
lb		$2,68($25)
nor		$25,$2,$25
lbu		$25,209($25)
mflo	$1
mfhi	$2
addi	$1,$0,200
addi	$2,$0,66
mflo	$0
lh		$10,-202($10)
or		$0,$0,$10
lhu		$0,-28($10)
mflo	$1
mfhi	$2
addi	$1,$0,176
addi	$2,$0,112
mfc0	$9,$12
lw		$9,48($9)
sllv	$9,$9,$9
sb		$9,236($9)
mflo	$1
mfhi	$2
addi	$1,$0,133
addi	$2,$0,56
mfhi	$25
lb		$3,36($25)
srlv	$25,$25,$3
sh		$3,336($25)
mflo	$1
mfhi	$2
addi	$1,$0,105
addi	$2,$0,51
addi	$25,$0,137
mflo	$25
lbu		$4,-140($4)
srav	$25,$25,$25
sw		$25,392($25)
mflo	$1
mfhi	$2
addi	$1,$0,103
addi	$2,$0,123
addi	$25,$0,173
mfc0	$0,$12
lh		$0,132($0)
slt		$15,$15,$15
sb		$15,336($15)
mflo	$1
mfhi	$2
addi	$1,$0,76
addi	$2,$0,48
addi	$15,$0,25
mfhi	$10
lhu		$10,40($10)
sltu	$10,$10,$10
mthi	$10
mflo	$1
mfhi	$2
addi	$1,$0,206
addi	$2,$0,208
addi	$10,$0,167
mflo	$25
lw		$25,156($25)
sub		$5,$5,$5
mtlo	$5
mflo	$1
mfhi	$2
addi	$1,$0,215
addi	$2,$0,48
addi	$5,$0,223
mfc0	$25,$12
lb		$25,124($25)
subu	$6,$6,$6
mtc0	$25,$12
mflo	$1
mfhi	$2
addi	$1,$0,240
addi	$2,$0,24
addi	$6,$0,71
mfhi	$0
lbu		$27,-96($27)
xor		$0,$0,$27
div		$27,$27
mflo	$1
mfhi	$2
addi	$2,$0,138
mflo	$11
lh		$11,123($11)
add		$11,$11,$11
beq		$11,$11,TAG_15
addiu	$11,$11,1
addiu	$11,$11,1
TAG_15:
mflo	$1
mfhi	$2
addi	$2,$0,163
mfc0	$25,$12
lhu		$7,-125($7)
addu	$25,$7,$25
bne		$25,$0,TAG_16
addiu	$25,$0,1
addiu	$0,$25,1
TAG_16:
mflo	$1
mfhi	$2
addi	$2,$0,189
mfhi	$25
lw		$25,92($25)
and		$8,$8,$25
beq		$8,$8,TAG_17
addiu	$8,$8,1
addiu	$8,$8,1
TAG_17:
mflo	$1
mfhi	$2
addi	$2,$0,7
mflo	$0
lb		$14,112($0)
nor		$0,$0,$14
bne		$14,$0,TAG_18
addiu	$14,$0,1
addiu	$0,$14,1
TAG_18:
mflo	$1
mfhi	$2
addi	$2,$0,151
mfc0	$12,$12
lbu		$12,212($12)
or		$12,$12,$12
beq		$12,$0,TAG_19
addiu	$12,$0,1
addiu	$0,$12,1
TAG_19:
mflo	$1
mfhi	$2
addi	$2,$0,86
mfhi	$25
lh		$9,28($9)
sllv	$25,$9,$25
bne		$25,$9,TAG_20
addiu	$25,$9,1
addiu	$9,$25,1
TAG_20:
mflo	$1
mfhi	$2
addi	$2,$0,76
mflo	$25
lhu		$10,95($25)
srlv	$25,$10,$10
beq		$25,$1,TAG_21
addiu	$25,$1,1
addiu	$1,$25,1
TAG_21:
mflo	$1
mfhi	$2
addi	$2,$0,73
mfc0	$23,$13
lw		$23,88($23)
srav	$0,$0,$23
bne		$0,$0,TAG_22
addiu	$0,$0,1
addiu	$0,$0,1
TAG_22:
mflo	$1
mfhi	$2
addi	$2,$0,143
mfhi	$13
lb		$13,100($13)
slt		$13,$13,$13
bgtz	$13,TAG_23
addiu	$13,$13,1
addiu	$13,$13,1
TAG_23:
mflo	$1
mfhi	$2
addi	$2,$0,131
mflo	$25
lbu		$25,83($25)
sltu	$11,$11,$25
bgez	$25,TAG_24
addiu	$25,$25,1
addiu	$25,$25,1
TAG_24:
mflo	$1
mfhi	$2
addi	$2,$0,156
addi	$11,$0,127
mfc0	$25,$12
lh		$25,148($25)
sub		$12,$12,$25
bltz	$25,TAG_25
addiu	$25,$25,1
addiu	$25,$25,1
TAG_25:
mflo	$1
mfhi	$2
addi	$2,$0,196
mfhi	$0
lhu		$0,44($0)
subu	$8,$8,$0
blez	$0,TAG_26
addiu	$0,$0,1
addiu	$0,$0,1
TAG_26:
mflo	$1
mfhi	$2
addi	$2,$0,140
mflo	$14
lw		$14,103($14)
xor		$14,$14,$14
bgtz	$14,TAG_27
addiu	$14,$14,1
addiu	$14,$14,1
TAG_27:
mflo	$1
mfhi	$2
addi	$2,$0,92
mfc0	$25,$12
lb		$25,122($13)
add		$13,$25,$25
bgez	$25,TAG_28
addiu	$25,$25,1
addiu	$25,$25,1
TAG_28:
mflo	$1
mfhi	$2
addi	$2,$0,82
mfhi	$25
lbu		$25,34($14)
addu	$14,$14,$25
bltz	$25,TAG_29
addiu	$25,$25,1
addiu	$25,$25,1
TAG_29:
mflo	$1
mfhi	$2
addi	$2,$0,188
mflo	$0
lh		$0,0($0)
and		$8,$0,$8
blez	$0,TAG_30
addiu	$0,$0,1
addiu	$0,$0,1
TAG_30:
mflo	$1
mfhi	$2
addi	$2,$0,152
addi	$8,$0,123
mfc0	$17,$13
lhu		$17,52($17)
addiu	$17,$17,-157
nor		$17,$17,$17
mflo	$1
mfhi	$2
addi	$2,$0,109
mfhi	$25
lw		$25,8($25)
andi	$19,$19,78
or		$25,$19,$25
mflo	$1
mfhi	$2
addi	$2,$0,201
mflo	$25
lb		$20,11($25)
ori		$20,$25,17
sllv	$25,$20,$20
mflo	$1
mfhi	$2
addi	$2,$0,143
mfc0	$15,$13
lbu		$0,128($15)
slti	$0,$0,0
srlv	$15,$15,$0
mflo	$1
mfhi	$2
addi	$2,$0,232
addi	$15,$0,91
mfhi	$18
lh		$18,100($18)
sltiu	$18,$18,3
xori	$18,$18,159
mflo	$1
mfhi	$2
addi	$2,$0,107
mflo	$25
lhu		$25,83($25)
addi	$21,$21,-187
addiu	$25,$25,154
mflo	$1
mfhi	$2
addi	$2,$0,229
mfc0	$25,$12
lw		$22,-160($22)
andi	$25,$22,206
ori		$22,$22,177
mflo	$1
mfhi	$2
addi	$2,$0,180
mfhi	$0
lb		$0,57($15)
slti	$0,$15,-5
sltiu	$0,$15,-6
mflo	$1
mfhi	$2
addi	$2,$0,7
mflo	$19
lbu		$19,15($19)
xori	$19,$19,139
srl		$19,$19,2
mflo	$1
mfhi	$2
addi	$2,$0,116
mfc0	$25,$13
lh		$23,124($25)
addi	$25,$25,100
sra		$23,$23,1
mflo	$1
mfhi	$2
addi	$2,$0,100
mfhi	$25
lhu		$24,88($25)
addiu	$24,$25,151
sll		$24,$24,1
mflo	$1
mfhi	$2
addi	$2,$0,234
addi	$25,$0,106
mflo	$9
lw		$9,147($9)
andi	$0,$0,220
srl		$9,$9,2
mflo	$1
mfhi	$2
addi	$2,$0,221
mfc0	$20,$12
lb		$20,160($20)
ori		$20,$20,184
lbu		$20,112($20)
mflo	$1
mfhi	$2
addi	$2,$0,239
mfhi	$25
lh		$25,148($25)
slti	$25,$25,-5
lhu		$25,108($25)
mflo	$1
mfhi	$2
addi	$2,$0,66
mflo	$25
lw		$26,201($26)
sltiu	$26,$26,3
lb		$26,76($26)
mflo	$1
mfhi	$2
addi	$2,$0,6
mfc0	$0,$12
lbu		$0,0($0)
xori	$0,$0,127
lh		$30,100($0)
mflo	$1
mfhi	$2
addi	$2,$0,122
mfhi	$21
lhu		$21,4($21)
addi	$21,$21,-203
sh		$21,535($21)
mflo	$1
mfhi	$2
addi	$2,$0,140
mflo	$25
lw		$25,-32($27)
addiu	$27,$27,118
sw		$25,332($25)
mflo	$1
mfhi	$2
addi	$2,$0,4
mfc0	$25,$12
lb		$28,160($25)
andi	$25,$28,18
sb		$28,308($25)
mflo	$1
mfhi	$2
addi	$2,$0,150
mfhi	$13
lbu		$0,0($0)
ori		$13,$0,86
sh		$13,322($13)
mflo	$1
mfhi	$2
addi	$2,$0,21
mflo	$22
lh		$22,147($22)
slti	$22,$22,6
divu	$22,$3
mflo	$1
mfhi	$2
addi	$1,$0,242
addi	$2,$0,125
addi	$22,$0,248
mfc0	$25,$13
lhu		$29,116($25)
sltiu	$29,$29,-6
mult	$29,$25
mflo	$1
mfhi	$2
addi	$1,$0,201
addi	$2,$0,218
addi	$25,$0,148
mfhi	$25
lw		$30,140($25)
xori	$25,$25,194
multu	$25,$25
mflo	$1
mfhi	$2
addi	$2,$0,35
mflo	$28
lb		$28,104($0)
addi	$0,$0,-178
mthi	$28
mflo	$1
mfhi	$2
mfc0	$23,$13
lbu		$23,16($23)
addiu	$23,$23,-28
beq		$23,$23,TAG_31
addiu	$23,$23,1
addiu	$23,$23,1
TAG_31:
mflo	$1
mfhi	$2
mfhi	$26
lh		$1,220($26)
andi	$1,$26,43
bne		$26,$1,TAG_32
addiu	$26,$1,1
addiu	$1,$26,1
TAG_32:
mflo	$1
mfhi	$2
mflo	$26
lhu		$2,228($2)
ori		$2,$26,203
beq		$2,$2,TAG_33
addiu	$2,$2,1
addiu	$2,$2,1
TAG_33:
mflo	$1
mfhi	$2
.ktext 0x4180

_entry7:
	sw		$k0,0x2ffc($0)
	mfc0	$k0,$12
	mfc0	$k0,$13
	mfc0	$k0,$14
	addiu	$k0,$k0,4
	mtc0	$k0,$14
	lw		$k0,0x2ffc($0)
	eret
	jr		$k0
	jr		$k0
	jr		$k0
#end