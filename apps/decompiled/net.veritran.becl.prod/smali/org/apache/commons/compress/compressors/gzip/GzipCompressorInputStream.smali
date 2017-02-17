.class public Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "GzipCompressorInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FCOMMENT:I = 0x10

.field private static final FEXTRA:I = 0x4

.field private static final FHCRC:I = 0x2

.field private static final FNAME:I = 0x8

.field private static final FRESERVED:I = 0xe0


# instance fields
.field private final buf:[B

.field private bufUsed:I

.field private final crc:Ljava/util/zip/CRC32;

.field private final decompressConcatenated:Z

.field private endReached:Z

.field private final in:Ljava/io/InputStream;

.field private inf:Ljava/util/zip/Inflater;

.field private memberSize:I

.field private final oneByte:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "decompressConcatenated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 122
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 63
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->buf:[B

    .line 66
    iput v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->bufUsed:I

    .line 69
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    .line 72
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->crc:Ljava/util/zip/CRC32;

    .line 77
    iput-boolean v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->endReached:Z

    .line 80
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->oneByte:[B

    .line 125
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    .line 131
    :goto_0
    iput-boolean p2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->decompressConcatenated:Z

    .line 132
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->init(Z)Z

    .line 133
    return-void

    .line 128
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    goto :goto_0
.end method

.method private init(Z)Z
    .locals 10
    .param p1, "isFirstMember"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 136
    sget-boolean v8, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p1, :cond_0

    iget-boolean v8, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->decompressConcatenated:Z

    if-nez v8, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 139
    :cond_0
    iget-object v8, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 140
    .local v2, "magic0":I
    iget-object v8, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 144
    .local v3, "magic1":I
    const/4 v8, -0x1

    if-ne v2, v8, :cond_1

    if-nez p1, :cond_1

    .line 209
    :goto_0
    return v7

    .line 148
    :cond_1
    const/16 v8, 0x1f

    if-ne v2, v8, :cond_2

    const/16 v8, 0x8b

    if-eq v3, v8, :cond_4

    .line 149
    :cond_2
    new-instance v8, Ljava/io/IOException;

    if-eqz p1, :cond_3

    const-string v7, "Input is not in the .gz format"

    :goto_1
    invoke-direct {v8, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    const-string v7, "Garbage after a valid .gz stream"

    goto :goto_1

    .line 155
    :cond_4
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v8, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v1, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 156
    .local v1, "inData":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    .line 157
    .local v4, "method":I
    const/16 v8, 0x8

    if-eq v4, v8, :cond_5

    .line 158
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported compression method "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in the .gz header"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 162
    :cond_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 163
    .local v0, "flg":I
    and-int/lit16 v8, v0, 0xe0

    if-eqz v8, :cond_6

    .line 164
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Reserved flags are set in the .gz header"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 168
    :cond_6
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 169
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 170
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 173
    and-int/lit8 v8, v0, 0x4

    if-eqz v8, :cond_7

    .line 174
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    .line 175
    .local v5, "xlen":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v5, v8

    move v6, v5

    .line 180
    .end local v5    # "xlen":I
    .local v6, "xlen":I
    :goto_2
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "xlen":I
    .restart local v5    # "xlen":I
    if-lez v6, :cond_7

    .line 181
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move v6, v5

    .end local v5    # "xlen":I
    .restart local v6    # "xlen":I
    goto :goto_2

    .line 186
    .end local v6    # "xlen":I
    :cond_7
    and-int/lit8 v8, v0, 0x8

    if-eqz v8, :cond_8

    .line 187
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->readToNull(Ljava/io/DataInputStream;)V

    .line 191
    :cond_8
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_9

    .line 192
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->readToNull(Ljava/io/DataInputStream;)V

    .line 200
    :cond_9
    and-int/lit8 v8, v0, 0x2

    if-eqz v8, :cond_a

    .line 201
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    .line 205
    :cond_a
    iget-object v8, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v8}, Ljava/util/zip/Inflater;->reset()V

    .line 206
    iget-object v8, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->reset()V

    .line 207
    iput v7, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->memberSize:I

    .line 209
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public static matches([BI)Z
    .locals 4
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 326
    const/4 v2, 0x2

    if-ge p1, v2, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v0

    .line 330
    :cond_1
    aget-byte v2, p0, v0

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_0

    .line 334
    aget-byte v2, p0, v1

    const/16 v3, -0x75

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 338
    goto :goto_0
.end method

.method private readToNull(Ljava/io/DataInputStream;)V
    .locals 1
    .param p1, "inData"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-nez v0, :cond_0

    .line 215
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    .line 353
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_1

    .line 354
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 356
    :cond_1
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 219
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->oneByte:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->oneByte:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 18
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->endReached:Z

    if-eqz v13, :cond_1

    .line 230
    const/4 v11, -0x1

    .line 312
    :cond_0
    :goto_0
    return v11

    .line 233
    :cond_1
    const/4 v11, 0x0

    .line 235
    .local v11, "size":I
    :cond_2
    if-lez p3, :cond_0

    .line 236
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v13}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 239
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->buf:[B

    array-length v14, v14

    invoke-virtual {v13, v14}, Ljava/io/InputStream;->mark(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->buf:[B

    invoke-virtual {v13, v14}, Ljava/io/InputStream;->read([B)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->bufUsed:I

    .line 242
    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->bufUsed:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    .line 243
    new-instance v13, Ljava/io/EOFException;

    invoke-direct {v13}, Ljava/io/EOFException;-><init>()V

    throw v13

    .line 246
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->buf:[B

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->bufUsed:I

    move/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 251
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v13, v0, v1, v2}, Ljava/util/zip/Inflater;->inflate([BII)I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 256
    .local v10, "ret":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->crc:Ljava/util/zip/CRC32;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1, v10}, Ljava/util/zip/CRC32;->update([BII)V

    .line 257
    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->memberSize:I

    add-int/2addr v13, v10

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->memberSize:I

    .line 258
    add-int p2, p2, v10

    .line 259
    sub-int p3, p3, v10

    .line 260
    add-int/2addr v11, v10

    .line 261
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->count(I)V

    .line 263
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v13}, Ljava/util/zip/Inflater;->finished()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 269
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v13}, Ljava/io/InputStream;->reset()V

    .line 271
    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->bufUsed:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v14}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v14

    sub-int v12, v13, v14

    .line 272
    .local v12, "skipAmount":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    int-to-long v14, v12

    invoke-virtual {v13, v14, v15}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v14

    int-to-long v0, v12

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_5

    .line 273
    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13}, Ljava/io/IOException;-><init>()V

    throw v13

    .line 252
    .end local v10    # "ret":I
    .end local v12    # "skipAmount":I
    :catch_0
    move-exception v6

    .line 253
    .local v6, "e":Ljava/util/zip/DataFormatException;
    new-instance v13, Ljava/io/IOException;

    const-string v14, "Gzip-compressed data is corrupt"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 276
    .end local v6    # "e":Ljava/util/zip/DataFormatException;
    .restart local v10    # "ret":I
    .restart local v12    # "skipAmount":I
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->bufUsed:I

    .line 278
    new-instance v8, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v8, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 281
    .local v8, "inData":Ljava/io/DataInputStream;
    const-wide/16 v4, 0x0

    .line 282
    .local v4, "crcStored":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/4 v13, 0x4

    if-ge v7, v13, :cond_6

    .line 283
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v13

    int-to-long v14, v13

    mul-int/lit8 v13, v7, 0x8

    shl-long/2addr v14, v13

    or-long/2addr v4, v14

    .line 282
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 286
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v13}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v14

    cmp-long v13, v4, v14

    if-eqz v13, :cond_7

    .line 287
    new-instance v13, Ljava/io/IOException;

    const-string v14, "Gzip-compressed data is corrupt (CRC32 error)"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 292
    :cond_7
    const/4 v9, 0x0

    .line 293
    .local v9, "isize":I
    const/4 v7, 0x0

    :goto_2
    const/4 v13, 0x4

    if-ge v7, v13, :cond_8

    .line 294
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v13

    mul-int/lit8 v14, v7, 0x8

    shl-int/2addr v13, v14

    or-int/2addr v9, v13

    .line 293
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 297
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->memberSize:I

    if-eq v9, v13, :cond_9

    .line 298
    new-instance v13, Ljava/io/IOException;

    const-string v14, "Gzip-compressed data is corrupt(uncompressed size mismatch)"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 303
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->decompressConcatenated:Z

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->init(Z)Z

    move-result v13

    if-nez v13, :cond_2

    .line 304
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v13}, Ljava/util/zip/Inflater;->end()V

    .line 305
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    .line 306
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->endReached:Z

    .line 307
    if-nez v11, :cond_0

    const/4 v11, -0x1

    goto/16 :goto_0
.end method
