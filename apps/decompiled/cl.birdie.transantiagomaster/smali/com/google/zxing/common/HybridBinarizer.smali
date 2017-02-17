.class public final Lcom/google/zxing/common/HybridBinarizer;
.super Lcom/google/zxing/common/GlobalHistogramBinarizer;


# instance fields
.field private matrix:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method


# virtual methods
.method public final getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    if-nez v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/HybridBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v2

    const/16 v3, 0x28

    if-lt v2, v3, :cond_13

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v2

    const/16 v3, 0x28

    if-lt v2, v3, :cond_13

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v14

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v15

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v16

    shr-int/lit8 v1, v15, 0x3

    and-int/lit8 v2, v15, 0x7

    if-eqz v2, :cond_18

    add-int/lit8 v1, v1, 0x1

    move v13, v1

    :goto_0
    shr-int/lit8 v1, v16, 0x3

    and-int/lit8 v2, v16, 0x7

    if-eqz v2, :cond_17

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    :goto_1
    filled-new-array {v2, v13}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    const/4 v3, 0x0

    move v12, v3

    :goto_2
    if-ge v12, v2, :cond_8

    shl-int/lit8 v3, v12, 0x3

    add-int/lit8 v4, v3, 0x8

    move/from16 v0, v16

    if-lt v4, v0, :cond_0

    add-int/lit8 v3, v16, -0x8

    :cond_0
    const/4 v4, 0x0

    move v11, v4

    :goto_3
    if-ge v11, v13, :cond_7

    shl-int/lit8 v4, v11, 0x3

    add-int/lit8 v5, v4, 0x8

    if-lt v5, v15, :cond_1

    add-int/lit8 v4, v15, -0x8

    :cond_1
    const/4 v8, 0x0

    const/16 v7, 0xff

    const/4 v6, 0x0

    const/4 v5, 0x0

    move v10, v5

    :goto_4
    const/16 v5, 0x8

    if-ge v10, v5, :cond_4

    add-int v5, v3, v10

    mul-int/2addr v5, v15

    add-int v17, v5, v4

    const/4 v5, 0x0

    move v9, v8

    move v8, v5

    :goto_5
    const/16 v5, 0x8

    if-ge v8, v5, :cond_3

    add-int v5, v17, v8

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v9, v5

    if-ge v5, v7, :cond_2

    move v7, v5

    :cond_2
    if-le v5, v6, :cond_16

    :goto_6
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    goto :goto_5

    :cond_3
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    move v8, v9

    goto :goto_4

    :cond_4
    sub-int v4, v6, v7

    const/16 v5, 0x18

    if-le v4, v5, :cond_5

    shr-int/lit8 v4, v8, 0x6

    :goto_7
    aget-object v5, v1, v12

    aput v4, v5, v11

    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto :goto_3

    :cond_5
    if-nez v6, :cond_6

    const/4 v4, 0x1

    goto :goto_7

    :cond_6
    shr-int/lit8 v4, v7, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_2

    :cond_8
    new-instance v3, Lcom/google/zxing/common/BitMatrix;

    move/from16 v0, v16

    invoke-direct {v3, v15, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v2, :cond_14

    shl-int/lit8 v3, v7, 0x3

    add-int/lit8 v4, v3, 0x8

    move/from16 v0, v16

    if-lt v4, v0, :cond_9

    add-int/lit8 v3, v16, -0x8

    :cond_9
    const/4 v9, 0x0

    :goto_9
    if-ge v9, v13, :cond_12

    shl-int/lit8 v4, v9, 0x3

    add-int/lit8 v5, v4, 0x8

    if-lt v5, v15, :cond_15

    add-int/lit8 v4, v15, -0x8

    move v10, v4

    :goto_a
    const/4 v4, 0x1

    if-le v9, v4, :cond_a

    move v4, v9

    :goto_b
    add-int/lit8 v5, v13, -0x2

    if-ge v4, v5, :cond_b

    move v8, v4

    :goto_c
    const/4 v4, 0x1

    if-le v7, v4, :cond_c

    move v4, v7

    :goto_d
    add-int/lit8 v5, v2, -0x2

    if-ge v4, v5, :cond_d

    :goto_e
    const/4 v6, 0x0

    const/4 v5, -0x2

    :goto_f
    const/4 v12, 0x2

    if-gt v5, v12, :cond_e

    add-int v12, v4, v5

    aget-object v12, v1, v12

    add-int/lit8 v17, v8, -0x2

    aget v17, v12, v17

    add-int v6, v6, v17

    add-int/lit8 v17, v8, -0x1

    aget v17, v12, v17

    add-int v6, v6, v17

    aget v17, v12, v8

    add-int v6, v6, v17

    add-int/lit8 v17, v8, 0x1

    aget v17, v12, v17

    add-int v6, v6, v17

    add-int/lit8 v17, v8, 0x2

    aget v12, v12, v17

    add-int/2addr v6, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_a
    const/4 v4, 0x2

    goto :goto_b

    :cond_b
    add-int/lit8 v4, v13, -0x3

    move v8, v4

    goto :goto_c

    :cond_c
    const/4 v4, 0x2

    goto :goto_d

    :cond_d
    add-int/lit8 v4, v2, -0x3

    goto :goto_e

    :cond_e
    div-int/lit8 v6, v6, 0x19

    const/4 v4, 0x0

    move v5, v4

    :goto_10
    const/16 v4, 0x8

    if-ge v5, v4, :cond_11

    add-int v4, v3, v5

    mul-int/2addr v4, v15

    add-int v8, v4, v10

    const/4 v4, 0x0

    :goto_11
    const/16 v12, 0x8

    if-ge v4, v12, :cond_10

    add-int v12, v8, v4

    aget-byte v12, v14, v12

    and-int/lit16 v12, v12, 0xff

    if-ge v12, v6, :cond_f

    add-int v12, v10, v4

    add-int v17, v3, v5

    move/from16 v0, v17

    invoke-virtual {v11, v12, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_10
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_10

    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    :cond_13
    invoke-super/range {p0 .. p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    return-object v1

    :cond_15
    move v10, v4

    goto/16 :goto_a

    :cond_16
    move v5, v6

    goto/16 :goto_6

    :cond_17
    move v2, v1

    goto/16 :goto_1

    :cond_18
    move v13, v1

    goto/16 :goto_0
.end method
