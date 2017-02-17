.class Lorg/apache/commons/compress/archivers/zip/BinaryTree;
.super Ljava/lang/Object;
.source "BinaryTree.java"


# static fields
.field private static final NODE:I = -0x2

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private final tree:[I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "depth"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    add-int/lit8 v1, p1, 0x1

    shl-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    .line 49
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 50
    return-void
.end method

.method static decode(Ljava/io/InputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;
    .locals 29
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "totalNumberOfValues"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v27

    add-int/lit8 v24, v27, 0x1

    .line 113
    .local v24, "size":I
    if-nez v24, :cond_0

    .line 114
    new-instance v27, Ljava/io/IOException;

    const-string v28, "Cannot read the size of the encoded tree, unexpected end of stream"

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 117
    :cond_0
    move/from16 v0, v24

    new-array v10, v0, [B

    .line 118
    .local v10, "encodedTree":[B
    new-instance v27, Ljava/io/DataInputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/io/DataInputStream;->readFully([B)V

    .line 121
    const/16 v18, 0x0

    .line 123
    .local v18, "maxLength":I
    move/from16 v0, p1

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 124
    .local v20, "originalBitLengths":[I
    const/16 v22, 0x0

    .line 125
    .local v22, "pos":I
    move-object v3, v10

    .local v3, "arr$":[B
    array-length v0, v3

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    move/from16 v0, v17

    if-ge v12, v0, :cond_2

    aget-byte v4, v3, v12

    .line 127
    .local v4, "b":B
    and-int/lit16 v0, v4, 0xf0

    move/from16 v27, v0

    shr-int/lit8 v27, v27, 0x4

    add-int/lit8 v19, v27, 0x1

    .line 128
    .local v19, "numberOfValues":I
    and-int/lit8 v27, v4, 0xf

    add-int/lit8 v5, v27, 0x1

    .line 130
    .local v5, "bitLength":I
    const/4 v13, 0x0

    .local v13, "j":I
    move/from16 v23, v22

    .end local v22    # "pos":I
    .local v23, "pos":I
    :goto_1
    move/from16 v0, v19

    if-ge v13, v0, :cond_1

    .line 131
    add-int/lit8 v22, v23, 0x1

    .end local v23    # "pos":I
    .restart local v22    # "pos":I
    aput v5, v20, v23

    .line 130
    add-int/lit8 v13, v13, 0x1

    move/from16 v23, v22

    .end local v22    # "pos":I
    .restart local v23    # "pos":I
    goto :goto_1

    .line 134
    :cond_1
    move/from16 v0, v18

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 125
    add-int/lit8 v12, v12, 0x1

    move/from16 v22, v23

    .end local v23    # "pos":I
    .restart local v22    # "pos":I
    goto :goto_0

    .line 138
    .end local v4    # "b":B
    .end local v5    # "bitLength":I
    .end local v13    # "j":I
    .end local v19    # "numberOfValues":I
    :cond_2
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 139
    .local v21, "permutation":[I
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_2
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v14, v0, :cond_3

    .line 140
    aput v14, v21, v14

    .line 139
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 143
    :cond_3
    const/4 v6, 0x0

    .line 144
    .local v6, "c":I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .line 145
    .local v25, "sortedBitLengths":[I
    const/4 v14, 0x0

    :goto_3
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v14, v0, :cond_6

    .line 147
    const/4 v15, 0x0

    .local v15, "l":I
    :goto_4
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v15, v0, :cond_5

    .line 149
    aget v27, v20, v15

    move/from16 v0, v27

    if-ne v0, v14, :cond_4

    .line 151
    aput v14, v25, v6

    .line 154
    aput v15, v21, v6

    .line 156
    add-int/lit8 v6, v6, 0x1

    .line 147
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 145
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 162
    .end local v15    # "l":I
    :cond_6
    const/4 v7, 0x0

    .line 163
    .local v7, "code":I
    const/4 v8, 0x0

    .line 164
    .local v8, "codeIncrement":I
    const/16 v16, 0x0

    .line 166
    .local v16, "lastBitLength":I
    move/from16 v0, p1

    new-array v9, v0, [I

    .line 168
    .local v9, "codes":[I
    add-int/lit8 v11, p1, -0x1

    .local v11, "i":I
    :goto_5
    if-ltz v11, :cond_8

    .line 169
    add-int/2addr v7, v8

    .line 170
    aget v27, v25, v11

    move/from16 v0, v27

    move/from16 v1, v16

    if-eq v0, v1, :cond_7

    .line 171
    aget v16, v25, v11

    .line 172
    const/16 v27, 0x1

    rsub-int/lit8 v28, v16, 0x10

    shl-int v8, v27, v28

    .line 174
    :cond_7
    aget v27, v21, v11

    aput v7, v9, v27

    .line 168
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 178
    :cond_8
    new-instance v26, Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;-><init>(I)V

    .line 180
    .local v26, "tree":Lorg/apache/commons/compress/archivers/zip/BinaryTree;
    const/4 v14, 0x0

    :goto_6
    array-length v0, v9

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v14, v0, :cond_a

    .line 181
    aget v5, v20, v14

    .line 182
    .restart local v5    # "bitLength":I
    if-lez v5, :cond_9

    .line 183
    const/16 v27, 0x0

    aget v28, v9, v14

    shl-int/lit8 v28, v28, 0x10

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->reverse(I)I

    move-result v28

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2, v5, v14}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->addLeaf(IIII)V

    .line 180
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 187
    .end local v5    # "bitLength":I
    :cond_a
    return-object v26
.end method


# virtual methods
.method public addLeaf(IIII)V
    .locals 4
    .param p1, "node"    # I
    .param p2, "path"    # I
    .param p3, "depth"    # I
    .param p4, "value"    # I

    .prologue
    .line 61
    if-nez p3, :cond_1

    .line 63
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    aget v1, v1, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 64
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    aput p4, v1, p1

    .line 76
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tree value at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has already been assigned ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    const/4 v2, -0x2

    aput v2, v1, p1

    .line 73
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v2, p2, 0x1

    add-int v0, v1, v2

    .line 74
    .local v0, "nextChild":I
    ushr-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p0, v0, v1, v2, p4}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->addLeaf(IIII)V

    goto :goto_0
.end method

.method public read(Lorg/apache/commons/compress/archivers/zip/BitStream;)I
    .locals 7
    .param p1, "stream"    # Lorg/apache/commons/compress/archivers/zip/BitStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 85
    const/4 v2, 0x0

    .line 88
    .local v2, "currentIndex":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextBit()I

    move-result v0

    .line 89
    .local v0, "bit":I
    if-ne v0, v4, :cond_1

    move v3, v4

    .line 99
    :cond_0
    return v3

    .line 93
    :cond_1
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    add-int v1, v5, v0

    .line 94
    .local v1, "childIndex":I
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    aget v3, v5, v1

    .line 95
    .local v3, "value":I
    const/4 v5, -0x2

    if-ne v3, v5, :cond_2

    .line 97
    move v2, v1

    goto :goto_0

    .line 98
    :cond_2
    if-ne v3, v4, :cond_0

    .line 101
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The child "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of node at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not defined"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
