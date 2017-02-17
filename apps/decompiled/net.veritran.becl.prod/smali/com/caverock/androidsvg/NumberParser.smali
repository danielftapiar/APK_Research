.class public Lcom/caverock/androidsvg/NumberParser;
.super Ljava/lang/Object;
.source "NumberParser.java"


# static fields
.field static TOO_BIG:J

.field private static final negativePowersOf10:[F

.field private static final positivePowersOf10:[F


# instance fields
.field exponent:I

.field isNegative:Z

.field numDigits:I

.field pos:I

.field significand:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 42
    const-wide v0, 0xcccccccccccccccL

    sput-wide v0, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    .line 246
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/caverock/androidsvg/NumberParser;->positivePowersOf10:[F

    .line 252
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/caverock/androidsvg/NumberParser;->negativePowersOf10:[F

    .line 257
    return-void

    .line 246
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x41200000    # 10.0f
        0x42c80000    # 100.0f
        0x447a0000    # 1000.0f
        0x461c4000    # 10000.0f
        0x47c35000    # 100000.0f
        0x49742400    # 1000000.0f
        0x4b189680    # 1.0E7f
        0x4cbebc20    # 1.0E8f
        0x4e6e6b28    # 1.0E9f
        0x501502f9    # 1.0E10f
        0x51ba43b7    # 9.9999998E10f
        0x5368d4a5    # 1.0E12f
        0x551184e7    # 9.9999998E12f
        0x56b5e621    # 1.0E14f
        0x58635fa9    # 9.9999999E14f
        0x5a0e1bca    # 1.00000003E16f
        0x5bb1a2bc    # 9.9999998E16f
        0x5d5e0b6b    # 9.9999998E17f
        0x5f0ac723    # 1.0E19f
        0x60ad78ec    # 1.0E20f
        0x6258d727    # 1.0E21f
        0x64078678    # 1.0E22f
        0x65a96816    # 1.0E23f
        0x6753c21c    # 1.0E24f
        0x69045951    # 1.0E25f
        0x6aa56fa6    # 1.0E26f
        0x6c4ecb8f    # 1.0E27f
        0x6e013f39    # 1.0E28f
        0x6fa18f08    # 1.0E29f
        0x7149f2ca    # 1.0E30f
        0x72fc6f7c    # 1.0E31f
        0x749dc5ae    # 1.0E32f
        0x76453719    # 1.0E33f
        0x77f684df    # 1.0E34f
        0x799a130c    # 1.0E35f
        0x7b4097ce    # 1.0E36f
        0x7cf0bdc2    # 1.0E37f
        0x7e967699    # 1.0E38f
    .end array-data

    .line 252
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3c23d70a    # 0.01f
        0x3a83126f    # 0.001f
        0x38d1b717    # 1.0E-4f
        0x3727c5ac    # 1.0E-5f
        0x358637bd    # 1.0E-6f
        0x33d6bf95    # 1.0E-7f
        0x322bcc77    # 1.0E-8f
        0x3089705f    # 1.0E-9f
        0x2edbe6ff    # 1.0E-10f
        0x2d2febff    # 1.0E-11f
        0x2b8cbccc    # 1.0E-12f
        0x29e12e13    # 1.0E-13f
        0x283424dc    # 1.0E-14f
        0x26901d7d    # 1.0E-15f
        0x24e69595    # 1.0E-16f
        0x233877aa    # 1.0E-17f
        0x219392ef    # 1.0E-18f
        0x1fec1e4a    # 1.0E-19f
        0x1e3ce508    # 1.0E-20f
        0x1c971da0    # 1.0E-21f
        0x1af1c901    # 1.0E-22f
        0x19416d9a    # 1.0E-23f
        0x179abe15    # 1.0E-24f
        0x15f79688    # 1.0E-25f
        0x14461206    # 1.0E-26f
        0x129e74d2    # 1.0E-27f
        0x10fd87b6    # 1.0E-28f
        0xf4ad2f8    # 1.0E-29f
        0xda24260    # 1.0E-30f
        0xc01ceb3    # 1.0E-31f
        0xa4fb11f    # 1.0E-32f
        0x8a6274c    # 1.0E-33f
        0x704ec3d    # 1.0E-34f
        0x554ad2e    # 1.0E-35f
        0x3aa2425    # 1.0E-36f
        0x2081cea    # 1.0E-37f
        0x6ce3ee    # 1.0E-38f
    .end array-data
.end method

.method public constructor <init>(ZJII)V
    .locals 0
    .param p1, "isNegative"    # Z
    .param p2, "significand"    # J
    .param p4, "exponent"    # I
    .param p5, "pos"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean p1, p0, Lcom/caverock/androidsvg/NumberParser;->isNegative:Z

    .line 48
    iput-wide p2, p0, Lcom/caverock/androidsvg/NumberParser;->significand:J

    .line 49
    iput p4, p0, Lcom/caverock/androidsvg/NumberParser;->exponent:I

    .line 50
    iput p5, p0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    .line 51
    return-void
.end method

.method public static parseNumber(Ljava/lang/String;)Lcom/caverock/androidsvg/NumberParser;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/caverock/androidsvg/NumberParser;->parseNumber(Ljava/lang/String;II)Lcom/caverock/androidsvg/NumberParser;

    move-result-object v0

    return-object v0
.end method

.method public static parseNumber(Ljava/lang/String;II)Lcom/caverock/androidsvg/NumberParser;
    .locals 24
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "startpos"    # I
    .param p2, "len"    # I

    .prologue
    .line 78
    move/from16 v7, p1

    .line 79
    .local v7, "pos":I
    const/4 v3, 0x0

    .line 80
    .local v3, "isNegative":Z
    const-wide/16 v20, 0x0

    .line 81
    .local v20, "significand":J
    const/4 v15, 0x0

    .line 82
    .local v15, "numDigits":I
    const/16 v16, 0x0

    .line 83
    .local v16, "numLeadingZeroes":I
    const/16 v17, 0x0

    .line 84
    .local v17, "numTrailingZeroes":I
    const/4 v10, 0x0

    .line 85
    .local v10, "decimalSeen":Z
    const/16 v18, 0x0

    .line 86
    .local v18, "sigStart":I
    const/4 v9, 0x0

    .line 87
    .local v9, "decimalPos":I
    const/4 v14, 0x0

    .line 90
    .local v14, "exponent":I
    move/from16 v0, p2

    if-lt v7, v0, :cond_0

    .line 91
    const/4 v2, 0x0

    .line 242
    :goto_0
    return-object v2

    .line 93
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 94
    .local v8, "ch":C
    packed-switch v8, :pswitch_data_0

    .line 100
    :goto_1
    :pswitch_0
    move/from16 v18, v7

    .line 102
    :goto_2
    move/from16 v0, p2

    if-lt v7, v0, :cond_2

    .line 152
    :cond_1
    if-eqz v10, :cond_a

    add-int/lit8 v2, v9, 0x1

    if-ne v7, v2, :cond_a

    .line 155
    const/4 v2, 0x0

    goto :goto_0

    .line 95
    :pswitch_1
    const/4 v3, 0x1

    .line 97
    :pswitch_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 104
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 105
    const/16 v2, 0x30

    if-ne v8, v2, :cond_5

    .line 107
    if-nez v15, :cond_4

    .line 108
    add-int/lit8 v16, v16, 0x1

    .line 149
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 111
    :cond_4
    add-int/lit8 v17, v17, 0x1

    .line 113
    goto :goto_3

    .line 114
    :cond_5
    const/16 v2, 0x31

    if-lt v8, v2, :cond_9

    const/16 v2, 0x39

    if-gt v8, v2, :cond_9

    .line 117
    add-int v15, v15, v17

    .line 118
    :goto_4
    if-gtz v17, :cond_6

    .line 127
    sget-wide v4, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    cmp-long v2, v20, v4

    if-lez v2, :cond_8

    .line 130
    const/4 v2, 0x0

    goto :goto_0

    .line 119
    :cond_6
    sget-wide v4, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    cmp-long v2, v20, v4

    if-lez v2, :cond_7

    .line 121
    const/4 v2, 0x0

    goto :goto_0

    .line 123
    :cond_7
    const-wide/16 v4, 0xa

    mul-long v20, v20, v4

    .line 124
    add-int/lit8 v17, v17, -0x1

    goto :goto_4

    .line 132
    :cond_8
    const-wide/16 v4, 0xa

    mul-long v4, v4, v20

    add-int/lit8 v2, v8, -0x30

    int-to-long v0, v2

    move-wide/from16 v22, v0

    add-long v20, v4, v22

    .line 133
    add-int/lit8 v15, v15, 0x1

    .line 135
    const-wide/16 v4, 0x0

    cmp-long v2, v20, v4

    if-gez v2, :cond_3

    .line 136
    const/4 v2, 0x0

    goto :goto_0

    .line 138
    :cond_9
    const/16 v2, 0x2e

    if-ne v8, v2, :cond_1

    .line 140
    if-nez v10, :cond_1

    .line 144
    sub-int v9, v7, v18

    .line 145
    const/4 v10, 0x1

    goto :goto_3

    .line 159
    :cond_a
    if-nez v15, :cond_c

    .line 160
    if-nez v16, :cond_b

    .line 162
    const/4 v2, 0x0

    goto :goto_0

    .line 166
    :cond_b
    const/4 v15, 0x1

    .line 169
    :cond_c
    if-eqz v10, :cond_e

    .line 170
    sub-int v2, v9, v16

    sub-int v14, v2, v15

    .line 176
    :goto_5
    move/from16 v0, p2

    if-ge v7, v0, :cond_14

    .line 178
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 179
    const/16 v2, 0x45

    if-eq v8, v2, :cond_d

    const/16 v2, 0x65

    if-ne v8, v2, :cond_14

    .line 181
    :cond_d
    const/4 v11, 0x0

    .line 182
    .local v11, "expIsNegative":Z
    const/4 v13, 0x0

    .line 184
    .local v13, "expVal":I
    add-int/lit8 v7, v7, 0x1

    .line 185
    move/from16 v0, p2

    if-ne v7, v0, :cond_f

    .line 188
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 172
    .end local v11    # "expIsNegative":Z
    .end local v13    # "expVal":I
    :cond_e
    move/from16 v14, v17

    goto :goto_5

    .line 191
    .restart local v11    # "expIsNegative":Z
    .restart local v13    # "expVal":I
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 197
    :goto_6
    :pswitch_3
    move v12, v7

    .line 199
    .local v12, "expStart":I
    :goto_7
    move/from16 v0, p2

    if-lt v7, v0, :cond_11

    .line 217
    :cond_10
    if-ne v7, v12, :cond_13

    .line 219
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 192
    .end local v12    # "expStart":I
    :pswitch_4
    const/4 v11, 0x1

    .line 194
    :pswitch_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 201
    .restart local v12    # "expStart":I
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 202
    const/16 v2, 0x30

    if-lt v8, v2, :cond_10

    const/16 v2, 0x39

    if-gt v8, v2, :cond_10

    .line 204
    int-to-long v4, v13

    sget-wide v22, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    cmp-long v2, v4, v22

    if-lez v2, :cond_12

    .line 207
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 209
    :cond_12
    mul-int/lit8 v2, v13, 0xa

    add-int/lit8 v4, v8, -0x30

    add-int v13, v2, v4

    .line 210
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 222
    :cond_13
    if-eqz v11, :cond_16

    .line 223
    sub-int/2addr v14, v13

    .line 236
    .end local v11    # "expIsNegative":Z
    .end local v12    # "expStart":I
    .end local v13    # "expVal":I
    :cond_14
    :goto_8
    add-int v2, v14, v15

    const/16 v4, 0x27

    if-gt v2, v4, :cond_15

    add-int v2, v14, v15

    const/16 v4, -0x2c

    if-ge v2, v4, :cond_17

    .line 237
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 225
    .restart local v11    # "expIsNegative":Z
    .restart local v12    # "expStart":I
    .restart local v13    # "expVal":I
    :cond_16
    add-int/2addr v14, v13

    goto :goto_8

    .line 239
    .end local v11    # "expIsNegative":Z
    .end local v12    # "expStart":I
    .end local v13    # "expVal":I
    :cond_17
    const-wide/16 v4, 0x0

    cmp-long v2, v20, v4

    if-nez v2, :cond_18

    .line 240
    new-instance v2, Lcom/caverock/androidsvg/NumberParser;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/caverock/androidsvg/NumberParser;-><init>(ZJII)V

    goto/16 :goto_0

    .line 242
    :cond_18
    new-instance v2, Lcom/caverock/androidsvg/NumberParser;

    move-wide/from16 v4, v20

    move v6, v14

    invoke-direct/range {v2 .. v7}, Lcom/caverock/androidsvg/NumberParser;-><init>(ZJII)V

    goto/16 :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 191
    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getEndPos()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    return v0
.end method

.method public value()F
    .locals 6

    .prologue
    .line 265
    iget-wide v2, p0, Lcom/caverock/androidsvg/NumberParser;->significand:J

    long-to-float v0, v2

    .line 268
    .local v0, "f":F
    iget v1, p0, Lcom/caverock/androidsvg/NumberParser;->exponent:I

    if-lez v1, :cond_2

    .line 270
    sget-object v1, Lcom/caverock/androidsvg/NumberParser;->positivePowersOf10:[F

    iget v2, p0, Lcom/caverock/androidsvg/NumberParser;->exponent:I

    aget v1, v1, v2

    mul-float/2addr v0, v1

    .line 286
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/caverock/androidsvg/NumberParser;->isNegative:Z

    if-eqz v1, :cond_1

    neg-float v0, v0

    .end local v0    # "f":F
    :cond_1
    return v0

    .line 272
    .restart local v0    # "f":F
    :cond_2
    iget v1, p0, Lcom/caverock/androidsvg/NumberParser;->exponent:I

    if-gez v1, :cond_0

    .line 277
    iget v1, p0, Lcom/caverock/androidsvg/NumberParser;->exponent:I

    const/16 v2, -0x26

    if-ge v1, v2, :cond_3

    .line 279
    float-to-double v2, v0

    const-wide v4, 0x3bc79ca10c924223L    # 1.0E-20

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 280
    iget v1, p0, Lcom/caverock/androidsvg/NumberParser;->exponent:I

    add-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/caverock/androidsvg/NumberParser;->exponent:I

    .line 283
    :cond_3
    sget-object v1, Lcom/caverock/androidsvg/NumberParser;->negativePowersOf10:[F

    iget v2, p0, Lcom/caverock/androidsvg/NumberParser;->exponent:I

    neg-int v2, v2

    aget v1, v1, v2

    mul-float/2addr v0, v1

    goto :goto_0
.end method
