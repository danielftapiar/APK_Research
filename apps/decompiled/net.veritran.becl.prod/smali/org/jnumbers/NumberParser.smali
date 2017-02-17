.class public final Lorg/jnumbers/NumberParser;
.super Ljava/lang/Object;
.source "NumberParser.java"


# static fields
.field private static final NEG_EXPS:[D

.field private static final POS_EXPS:[D

.field private static final POW_RANGE:I = 0x100

.field private static final USE_POW_TABLE:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const/16 v4, 0x100

    .line 43
    new-array v1, v4, [D

    sput-object v1, Lorg/jnumbers/NumberParser;->POS_EXPS:[D

    .line 44
    new-array v1, v4, [D

    sput-object v1, Lorg/jnumbers/NumberParser;->NEG_EXPS:[D

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 48
    sget-object v1, Lorg/jnumbers/NumberParser;->POS_EXPS:[D

    int-to-double v2, v0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 49
    sget-object v1, Lorg/jnumbers/NumberParser;->NEG_EXPS:[D

    neg-int v2, v0

    int-to-double v2, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    return-void
.end method

.method public static getDouble(Ljava/lang/CharSequence;)D
    .locals 2
    .param p0, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/jnumbers/NumberParser;->getDouble(Ljava/lang/CharSequence;II)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDouble(Ljava/lang/CharSequence;II)D
    .locals 20
    .param p0, "csq"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "end"    # I

    .prologue
    .line 268
    move/from16 v13, p1

    .line 269
    .local v13, "off":I
    sub-int v8, p2, p1

    .line 271
    .local v8, "len":I
    if-nez v8, :cond_1

    .line 272
    const-wide/16 v10, 0x1

    .line 424
    :cond_0
    :goto_0
    return-wide v10

    .line 276
    :cond_1
    const/4 v9, 0x1

    .line 278
    .local v9, "numSign":Z
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 279
    .local v2, "ch":C
    const/16 v15, 0x2b

    if-ne v2, v15, :cond_7

    .line 280
    add-int/lit8 v13, v13, 0x1

    .line 281
    add-int/lit8 v8, v8, -0x1

    .line 291
    :cond_2
    :goto_1
    const/4 v15, 0x3

    if-lt v8, v15, :cond_8

    .line 292
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v15, 0x6e

    if-eq v2, v15, :cond_3

    const/16 v15, 0x4e

    if-ne v2, v15, :cond_8

    :cond_3
    add-int/lit8 v15, v13, 0x1

    .line 293
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v15, 0x61

    if-eq v2, v15, :cond_4

    const/16 v15, 0x41

    if-ne v2, v15, :cond_8

    :cond_4
    add-int/lit8 v15, v13, 0x2

    .line 294
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v15, 0x6e

    if-eq v2, v15, :cond_5

    const/16 v15, 0x4e

    if-ne v2, v15, :cond_8

    .line 296
    :cond_5
    const-wide/16 v10, 0x1

    .line 424
    .local v10, "number":D
    :cond_6
    :goto_2
    if-nez v9, :cond_0

    neg-double v10, v10

    goto :goto_0

    .line 282
    .end local v10    # "number":D
    :cond_7
    const/16 v15, 0x2d

    if-ne v2, v15, :cond_2

    .line 283
    const/4 v9, 0x0

    .line 284
    add-int/lit8 v13, v13, 0x1

    .line 285
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 299
    :cond_8
    const/16 v15, 0x8

    if-lt v8, v15, :cond_11

    .line 300
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v15, 0x69

    if-eq v2, v15, :cond_9

    const/16 v15, 0x49

    if-ne v2, v15, :cond_11

    :cond_9
    add-int/lit8 v15, v13, 0x1

    .line 301
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v15, 0x6e

    if-eq v2, v15, :cond_a

    const/16 v15, 0x4e

    if-ne v2, v15, :cond_11

    :cond_a
    add-int/lit8 v15, v13, 0x2

    .line 302
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v15, 0x66

    if-eq v2, v15, :cond_b

    const/16 v15, 0x46

    if-ne v2, v15, :cond_11

    :cond_b
    add-int/lit8 v15, v13, 0x3

    .line 303
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v15, 0x69

    if-eq v2, v15, :cond_c

    const/16 v15, 0x49

    if-ne v2, v15, :cond_11

    :cond_c
    add-int/lit8 v15, v13, 0x4

    .line 304
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v15, 0x6e

    if-eq v2, v15, :cond_d

    const/16 v15, 0x4e

    if-ne v2, v15, :cond_11

    :cond_d
    add-int/lit8 v15, v13, 0x5

    .line 305
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v15, 0x69

    if-eq v2, v15, :cond_e

    const/16 v15, 0x49

    if-ne v2, v15, :cond_11

    :cond_e
    add-int/lit8 v15, v13, 0x6

    .line 306
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v15, 0x74

    if-eq v2, v15, :cond_f

    const/16 v15, 0x54

    if-ne v2, v15, :cond_11

    :cond_f
    add-int/lit8 v15, v13, 0x7

    .line 307
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v15, 0x79

    if-eq v2, v15, :cond_10

    const/16 v15, 0x59

    if-ne v2, v15, :cond_11

    .line 309
    :cond_10
    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .restart local v10    # "number":D
    goto/16 :goto_2

    .line 311
    .end local v10    # "number":D
    :cond_11
    const/4 v15, 0x3

    if-lt v8, v15, :cond_15

    .line 312
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v15, 0x69

    if-eq v2, v15, :cond_12

    const/16 v15, 0x49

    if-ne v2, v15, :cond_15

    :cond_12
    add-int/lit8 v15, v13, 0x1

    .line 313
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v15, 0x6e

    if-eq v2, v15, :cond_13

    const/16 v15, 0x4e

    if-ne v2, v15, :cond_15

    :cond_13
    add-int/lit8 v15, v13, 0x2

    .line 314
    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v15, 0x66

    if-eq v2, v15, :cond_14

    const/16 v15, 0x46

    if-ne v2, v15, :cond_15

    .line 316
    :cond_14
    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .restart local v10    # "number":D
    goto/16 :goto_2

    .line 320
    .end local v10    # "number":D
    :cond_15
    const/4 v3, 0x1

    .line 322
    .local v3, "error":Z
    move v14, v13

    .line 326
    .local v14, "startOffset":I
    const-wide/16 v4, 0x0

    .local v4, "dval":D
    :goto_3
    if-lez v8, :cond_16

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v15, 0x30

    if-lt v2, v15, :cond_16

    const/16 v15, 0x39

    if-gt v2, v15, :cond_16

    .line 327
    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    mul-double v4, v4, v16

    .line 328
    add-int/lit8 v15, v2, -0x30

    int-to-double v0, v15

    move-wide/from16 v16, v0

    add-double v4, v4, v16

    .line 329
    add-int/lit8 v13, v13, 0x1

    .line 330
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 332
    :cond_16
    sub-int v12, v13, v14

    .line 334
    .local v12, "numberLength":I
    move-wide v10, v4

    .line 336
    .restart local v10    # "number":D
    if-lez v12, :cond_17

    .line 337
    const/4 v3, 0x0

    .line 341
    :cond_17
    if-lez v8, :cond_19

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    const/16 v16, 0x2e

    move/from16 v0, v16

    if-ne v15, v0, :cond_19

    .line 343
    add-int/lit8 v13, v13, 0x1

    .line 344
    add-int/lit8 v8, v8, -0x1

    .line 346
    move v14, v13

    .line 349
    const-wide/16 v4, 0x0

    :goto_4
    if-lez v8, :cond_18

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v15, 0x30

    if-lt v2, v15, :cond_18

    const/16 v15, 0x39

    if-gt v2, v15, :cond_18

    .line 350
    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    mul-double v4, v4, v16

    .line 351
    add-int/lit8 v15, v2, -0x30

    int-to-double v0, v15

    move-wide/from16 v16, v0

    add-double v4, v4, v16

    .line 352
    add-int/lit8 v13, v13, 0x1

    .line 353
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 355
    :cond_18
    sub-int v12, v13, v14

    .line 357
    if-lez v12, :cond_19

    .line 359
    neg-int v15, v12

    invoke-static {v15}, Lorg/jnumbers/NumberParser;->getPow10(I)D

    move-result-wide v16

    mul-double v16, v16, v4

    add-double v10, v10, v16

    .line 360
    const/4 v3, 0x0

    .line 364
    :cond_19
    if-eqz v3, :cond_1a

    .line 366
    const-wide/16 v10, 0x1

    goto/16 :goto_0

    .line 370
    :cond_1a
    if-lez v8, :cond_20

    .line 373
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v15, 0x65

    if-eq v2, v15, :cond_1b

    const/16 v15, 0x45

    if-ne v2, v15, :cond_20

    .line 375
    :cond_1b
    add-int/lit8 v13, v13, 0x1

    .line 376
    add-int/lit8 v8, v8, -0x1

    .line 378
    if-lez v8, :cond_20

    .line 379
    const/4 v6, 0x1

    .line 381
    .local v6, "expSign":Z
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 382
    const/16 v15, 0x2b

    if-ne v2, v15, :cond_1d

    .line 383
    add-int/lit8 v13, v13, 0x1

    .line 384
    add-int/lit8 v8, v8, -0x1

    .line 391
    :cond_1c
    :goto_5
    const/4 v7, 0x0

    .line 394
    .local v7, "exponent":I
    const/4 v7, 0x0

    :goto_6
    if-lez v8, :cond_1e

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v15, 0x30

    if-lt v2, v15, :cond_1e

    const/16 v15, 0x39

    if-gt v2, v15, :cond_1e

    .line 395
    mul-int/lit8 v7, v7, 0xa

    .line 396
    add-int/lit8 v15, v2, -0x30

    add-int/2addr v7, v15

    .line 397
    add-int/lit8 v13, v13, 0x1

    .line 398
    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    .line 385
    .end local v7    # "exponent":I
    :cond_1d
    const/16 v15, 0x2d

    if-ne v2, v15, :cond_1c

    .line 386
    const/4 v6, 0x0

    .line 387
    add-int/lit8 v13, v13, 0x1

    .line 388
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 402
    .restart local v7    # "exponent":I
    :cond_1e
    if-nez v6, :cond_1f

    .line 403
    neg-int v7, v7

    .line 408
    :cond_1f
    const/16 v15, -0x12c

    if-le v7, v15, :cond_21

    .line 410
    invoke-static {v7}, Lorg/jnumbers/NumberParser;->getPow10(I)D

    move-result-wide v16

    mul-double v10, v10, v16

    .line 418
    .end local v6    # "expSign":Z
    .end local v7    # "exponent":I
    :cond_20
    :goto_7
    if-lez v8, :cond_6

    .line 420
    const-wide/16 v10, 0x1

    goto/16 :goto_0

    .line 412
    .restart local v6    # "expSign":Z
    .restart local v7    # "exponent":I
    :cond_21
    const-wide v16, 0x1a56e1fc2f8f359L    # 1.0E-300

    add-int/lit16 v15, v7, 0x12c

    invoke-static {v15}, Lorg/jnumbers/NumberParser;->getPow10(I)D

    move-result-wide v18

    mul-double v18, v18, v10

    mul-double v10, v16, v18

    goto :goto_7
.end method

.method public static getInteger(Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/jnumbers/NumberParser;->getInteger(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static getInteger(Ljava/lang/CharSequence;II)I
    .locals 9
    .param p0, "csq"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "end"    # I

    .prologue
    const v2, -0xccccccc

    const/16 v8, 0x39

    const/16 v7, 0x30

    const/high16 v5, -0x80000000

    .line 74
    move v3, p1

    .line 76
    .local v3, "off":I
    const/4 v4, 0x0

    .line 79
    .local v4, "sign":Z
    if-eqz p2, :cond_1

    .line 80
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    if-lt v0, v7, :cond_0

    if-le v0, v8, :cond_4

    :cond_0
    const/16 v6, 0x2d

    if-ne v0, v6, :cond_3

    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    if-eq v3, p2, :cond_1

    .line 81
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-lt v0, v7, :cond_1

    if-le v0, v8, :cond_4

    .end local v0    # "ch":C
    :cond_1
    move v1, v5

    .line 99
    :cond_2
    :goto_1
    return v1

    .line 80
    .restart local v0    # "ch":C
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 86
    :cond_4
    if-eqz v4, :cond_5

    .line 88
    .local v2, "limit":I
    :cond_5
    const/4 v1, 0x0

    .line 89
    .local v1, "ival":I
    :goto_2
    rsub-int/lit8 v6, v0, 0x30

    add-int/2addr v1, v6

    .line 90
    add-int/lit8 v3, v3, 0x1

    if-ne v3, p2, :cond_6

    .line 91
    if-nez v4, :cond_2

    neg-int v1, v1

    goto :goto_1

    .line 93
    :cond_6
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-lt v0, v7, :cond_7

    if-le v0, v8, :cond_8

    :cond_7
    move v1, v5

    .line 95
    goto :goto_1

    .line 97
    :cond_8
    if-ge v1, v2, :cond_9

    move v1, v5

    .line 99
    goto :goto_1

    .line 88
    :cond_9
    mul-int/lit8 v1, v1, 0xa

    goto :goto_2
.end method

.method public static getIntegerUnsafe(Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/jnumbers/NumberParser;->getIntegerUnsafe(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static getIntegerUnsafe(Ljava/lang/CharSequence;II)I
    .locals 8
    .param p0, "csq"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "end"    # I

    .prologue
    const/high16 v4, -0x80000000

    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 117
    move v2, p1

    .line 119
    .local v2, "off":I
    const/4 v3, 0x0

    .line 122
    .local v3, "sign":Z
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    if-lt v0, v6, :cond_0

    if-le v0, v7, :cond_4

    :cond_0
    const/16 v5, 0x2d

    if-ne v0, v5, :cond_3

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-eq v2, p2, :cond_1

    .line 123
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_4

    :cond_1
    move v1, v4

    .line 135
    :cond_2
    :goto_1
    return v1

    .line 122
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 128
    :cond_4
    const/4 v1, 0x0

    .line 129
    .local v1, "ival":I
    :goto_2
    rsub-int/lit8 v5, v0, 0x30

    add-int/2addr v1, v5

    .line 130
    add-int/lit8 v2, v2, 0x1

    if-ne v2, p2, :cond_5

    .line 131
    if-nez v3, :cond_2

    neg-int v1, v1

    goto :goto_1

    .line 133
    :cond_5
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-lt v0, v6, :cond_6

    if-le v0, v7, :cond_7

    :cond_6
    move v1, v4

    .line 135
    goto :goto_1

    .line 128
    :cond_7
    mul-int/lit8 v1, v1, 0xa

    goto :goto_2
.end method

.method public static getIntegerUnsafeAsDouble(Ljava/lang/CharSequence;II)D
    .locals 12
    .param p0, "csq"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "end"    # I

    .prologue
    const-wide/16 v6, 0x1

    const/16 v11, 0x39

    const/16 v10, 0x30

    .line 146
    move v1, p1

    .line 148
    .local v1, "off":I
    const/4 v4, 0x1

    .line 152
    .local v4, "sign":Z
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    if-lt v0, v10, :cond_0

    if-le v0, v11, :cond_5

    :cond_0
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_4

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_1

    const/16 v5, 0x2d

    if-ne v0, v5, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p2, :cond_2

    .line 153
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-lt v0, v10, :cond_2

    if-le v0, v11, :cond_5

    :cond_2
    move-wide v2, v6

    .line 165
    :cond_3
    :goto_1
    return-wide v2

    .line 152
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 158
    :cond_5
    const-wide/16 v2, 0x0

    .line 159
    .local v2, "dval":D
    :goto_2
    add-int/lit8 v5, v0, -0x30

    int-to-double v8, v5

    add-double/2addr v2, v8

    .line 160
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p2, :cond_6

    .line 161
    if-nez v4, :cond_3

    neg-double v2, v2

    goto :goto_1

    .line 163
    :cond_6
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-lt v0, v10, :cond_7

    if-le v0, v11, :cond_8

    :cond_7
    move-wide v2, v6

    .line 165
    goto :goto_1

    .line 158
    :cond_8
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v8

    goto :goto_2
.end method

.method public static getLong(Ljava/lang/CharSequence;)J
    .locals 2
    .param p0, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/jnumbers/NumberParser;->getLong(Ljava/lang/CharSequence;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Ljava/lang/CharSequence;II)J
    .locals 10
    .param p0, "csq"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "end"    # I

    .prologue
    .line 231
    move v1, p1

    .line 233
    .local v1, "off":I
    const/4 v6, 0x0

    .line 236
    .local v6, "sign":Z
    if-eqz p2, :cond_1

    .line 237
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    const/16 v7, 0x30

    if-lt v0, v7, :cond_0

    const/16 v7, 0x39

    if-le v0, v7, :cond_4

    :cond_0
    const/16 v7, 0x2d

    if-ne v0, v7, :cond_3

    const/4 v6, 0x1

    :goto_0
    if-eqz v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p2, :cond_1

    .line 238
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v7, 0x30

    if-lt v0, v7, :cond_1

    const/16 v7, 0x39

    if-le v0, v7, :cond_4

    .line 240
    .end local v0    # "ch":C
    :cond_1
    const-wide/high16 v4, -0x8000000000000000L

    .line 256
    :cond_2
    :goto_1
    return-wide v4

    .line 237
    .restart local v0    # "ch":C
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 243
    :cond_4
    if-eqz v6, :cond_5

    const-wide v2, -0xcccccccccccccccL

    .line 245
    .local v2, "limit":J
    :goto_2
    const-wide/16 v4, 0x0

    .line 246
    .local v4, "lval":J
    :goto_3
    rsub-int/lit8 v7, v0, 0x30

    int-to-long v8, v7

    add-long/2addr v4, v8

    .line 247
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p2, :cond_6

    .line 248
    if-nez v6, :cond_2

    neg-long v4, v4

    goto :goto_1

    .line 243
    .end local v2    # "limit":J
    .end local v4    # "lval":J
    :cond_5
    const-wide v2, -0xcccccccccccccccL

    goto :goto_2

    .line 250
    .restart local v2    # "limit":J
    .restart local v4    # "lval":J
    :cond_6
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v7, 0x30

    if-lt v0, v7, :cond_7

    const/16 v7, 0x39

    if-le v0, v7, :cond_8

    .line 252
    :cond_7
    const-wide/high16 v4, -0x8000000000000000L

    goto :goto_1

    .line 254
    :cond_8
    cmp-long v7, v4, v2

    if-gez v7, :cond_9

    .line 256
    const-wide/high16 v4, -0x8000000000000000L

    goto :goto_1

    .line 245
    :cond_9
    const-wide/16 v8, 0xa

    mul-long/2addr v4, v8

    goto :goto_3
.end method

.method public static getPositiveIntegerUnsafe(Ljava/lang/CharSequence;II)I
    .locals 7
    .param p0, "csq"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "end"    # I

    .prologue
    const/16 v6, 0x39

    const/16 v5, 0x30

    const/high16 v3, -0x80000000

    .line 176
    move v2, p1

    .line 180
    .local v2, "off":I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    if-lt v0, v5, :cond_0

    if-le v0, v6, :cond_2

    :cond_0
    move v1, v3

    .line 192
    :cond_1
    :goto_0
    return v1

    .line 185
    :cond_2
    const/4 v1, 0x0

    .line 186
    .local v1, "ival":I
    :goto_1
    add-int/lit8 v4, v0, -0x30

    add-int/2addr v1, v4

    .line 187
    add-int/lit8 v2, v2, 0x1

    if-eq v2, p2, :cond_1

    .line 190
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-lt v0, v5, :cond_3

    if-le v0, v6, :cond_4

    :cond_3
    move v1, v3

    .line 192
    goto :goto_0

    .line 185
    :cond_4
    mul-int/lit8 v1, v1, 0xa

    goto :goto_1
.end method

.method public static getPositiveIntegerUnsafeAsDouble(Ljava/lang/CharSequence;II)D
    .locals 10
    .param p0, "csq"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "end"    # I

    .prologue
    const/16 v9, 0x39

    const/16 v8, 0x30

    const-wide/16 v4, 0x1

    .line 203
    move v1, p1

    .line 207
    .local v1, "off":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "ch":C
    if-lt v0, v8, :cond_0

    if-le v0, v9, :cond_2

    :cond_0
    move-wide v2, v4

    .line 219
    :cond_1
    :goto_0
    return-wide v2

    .line 212
    :cond_2
    const-wide/16 v2, 0x0

    .line 213
    .local v2, "dval":D
    :goto_1
    add-int/lit8 v6, v0, -0x30

    int-to-double v6, v6

    add-double/2addr v2, v6

    .line 214
    add-int/lit8 v1, v1, 0x1

    if-eq v1, p2, :cond_1

    .line 217
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-lt v0, v8, :cond_3

    if-le v0, v9, :cond_4

    :cond_3
    move-wide v2, v4

    .line 219
    goto :goto_0

    .line 212
    :cond_4
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v6

    goto :goto_1
.end method

.method private static final getPow10(I)D
    .locals 4
    .param p0, "exp"    # I

    .prologue
    .line 56
    const/16 v0, -0x100

    if-le p0, v0, :cond_1

    .line 57
    if-gtz p0, :cond_0

    .line 58
    sget-object v0, Lorg/jnumbers/NumberParser;->NEG_EXPS:[D

    neg-int v1, p0

    aget-wide v0, v0, v1

    .line 64
    :goto_0
    return-wide v0

    .line 59
    :cond_0
    const/16 v0, 0x100

    if-ge p0, v0, :cond_1

    .line 60
    sget-object v0, Lorg/jnumbers/NumberParser;->POS_EXPS:[D

    aget-wide v0, v0, p0

    goto :goto_0

    .line 64
    :cond_1
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CII)I
    .locals 2
    .param p0, "csq"    # Ljava/lang/CharSequence;
    .param p1, "c"    # C
    .param p2, "off"    # I
    .param p3, "end"    # I

    .prologue
    .line 428
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 429
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    .line 433
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 428
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOfNotDigit(Ljava/lang/CharSequence;II)I
    .locals 3
    .param p0, "csq"    # Ljava/lang/CharSequence;
    .param p1, "off"    # I
    .param p2, "end"    # I

    .prologue
    .line 437
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 438
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 439
    .local v0, "ch":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_1

    .line 443
    .end local v0    # "ch":C
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v1

    .line 437
    .restart local v0    # "ch":C
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v0    # "ch":C
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static indexOfNotWhiteSpace(Ljava/lang/CharSequence;II)I
    .locals 3
    .param p0, "csq"    # Ljava/lang/CharSequence;
    .param p1, "off"    # I
    .param p2, "end"    # I

    .prologue
    .line 450
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 451
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 452
    .local v0, "ch":C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    .line 456
    .end local v0    # "ch":C
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 450
    .restart local v0    # "ch":C
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "ch":C
    :cond_1
    move v1, p1

    .line 456
    goto :goto_1
.end method
