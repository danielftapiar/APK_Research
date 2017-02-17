.class public abstract Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "InternalLZWInputStream.java"


# instance fields
.field protected bitsCached:I

.field protected bitsCachedSize:I

.field protected characters:[B

.field protected clearCode:I

.field protected codeSize:I

.field protected final in:Ljava/io/InputStream;

.field private final oneByte:[B

.field private outputStack:[B

.field private outputStackLocation:I

.field protected prefixes:[I

.field protected previousCode:I

.field protected tableSize:I


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->oneByte:[B

    .line 41
    iput v2, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->clearCode:I

    .line 42
    const/16 v0, 0x9

    iput v0, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->codeSize:I

    .line 43
    iput v1, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->bitsCached:I

    .line 44
    iput v1, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->bitsCachedSize:I

    .line 45
    iput v2, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->previousCode:I

    .line 46
    iput v1, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->tableSize:I

    .line 53
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->in:Ljava/io/InputStream;

    .line 54
    return-void
.end method

.method private readFromStack([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 188
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->outputStack:[B

    array-length v2, v2

    iget v3, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->outputStackLocation:I

    sub-int v1, v2, v3

    .line 189
    .local v1, "remainingInStack":I
    if-lez v1, :cond_0

    .line 190
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 191
    .local v0, "maxLength":I
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->outputStack:[B

    iget v3, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->outputStackLocation:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget v2, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->outputStackLocation:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->outputStackLocation:I

    .line 195
    .end local v0    # "maxLength":I
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract addEntry(IB)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected addEntry(IBI)I
    .locals 3
    .param p1, "previousCode"    # I
    .param p2, "character"    # B
    .param p3, "maxTableSize"    # I

    .prologue
    .line 146
    iget v1, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->tableSize:I

    if-ge v1, p3, :cond_0

    .line 147
    iget v0, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->tableSize:I

    .line 148
    .local v0, "index":I
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->prefixes:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->tableSize:I

    aput p1, v1, v2

    .line 149
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->characters:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->tableSize:I

    aput-byte p2, v1, v2

    .line 150
    iget v1, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->tableSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->tableSize:I

    .line 153
    .end local v0    # "index":I
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected addRepeatOfPreviousCode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    iget v2, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->previousCode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 162
    new-instance v2, Ljava/io/IOException;

    const-string v3, "The first code can\'t be a reference to its preceding code"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_0
    const/4 v0, 0x0

    .line 165
    .local v0, "firstCharacter":B
    iget v1, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->previousCode:I

    .local v1, "last":I
    :goto_0
    if-ltz v1, :cond_1

    .line 166
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->characters:[B

    aget-byte v0, v2, v1

    .line 165
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->prefixes:[I

    aget v1, v2, v1

    goto :goto_0

    .line 168
    :cond_1
    iget v2, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->previousCode:I

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->addEntry(IB)I

    move-result v2

    return v2
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 59
    return-void
.end method

.method protected abstract decompressNextSymbol()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected expandCodeToOutputStack(IZ)I
    .locals 4
    .param p1, "code"    # I
    .param p2, "addedUnfinishedEntry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    move v0, p1

    .local v0, "entry":I
    :goto_0
    if-ltz v0, :cond_0

    .line 178
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->outputStack:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->outputStackLocation:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->outputStackLocation:I

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->characters:[B

    aget-byte v3, v3, v0

    aput-byte v3, v1, v2

    .line 177
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->prefixes:[I

    aget v0, v1, v0

    goto :goto_0

    .line 180
    :cond_0
    iget v1, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->previousCode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-nez p2, :cond_1

    .line 181
    iget v1, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->previousCode:I

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->outputStack:[B

    iget v3, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->outputStackLocation:I

    aget-byte v2, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->addEntry(IB)I

    .line 183
    :cond_1
    iput p1, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->previousCode:I

    .line 184
    iget v1, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->outputStackLocation:I

    return v1
.end method

.method protected initializeTables(I)V
    .locals 5
    .param p1, "maxCodeSize"    # I

    .prologue
    .line 110
    const/4 v3, 0x1

    shl-int v2, v3, p1

    .line 111
    .local v2, "maxTableSize":I
    new-array v3, v2, [I

    iput-object v3, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->prefixes:[I

    .line 112
    new-array v3, v2, [B

    iput-object v3, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->characters:[B

    .line 113
    new-array v3, v2, [B

    iput-object v3, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->outputStack:[B

    .line 114
    iput v2, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->outputStackLocation:I

    .line 115
    const/16 v1, 0x100

    .line 116
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x100

    if-ge v0, v3, :cond_0

    .line 117
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->prefixes:[I

    const/4 v4, -0x1

    aput v4, v3, v0

    .line 118
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->characters:[B

    int-to-byte v4, v0

    aput-byte v4, v3, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->oneByte:[B

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->read([B)I

    move-result v0

    .line 64
    .local v0, "ret":I
    if-gez v0, :cond_0

    .line 67
    .end local v0    # "ret":I
    :goto_0
    return v0

    .restart local v0    # "ret":I
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->oneByte:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->readFromStack([BII)I

    move-result v0

    .line 73
    .local v0, "bytesRead":I
    :goto_0
    sub-int v2, p3, v0

    if-lez v2, :cond_2

    .line 74
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->decompressNextSymbol()I

    move-result v1

    .line 75
    .local v1, "result":I
    if-gez v1, :cond_1

    .line 76
    if-lez v0, :cond_0

    .line 77
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->count(I)V

    .line 85
    .end local v0    # "bytesRead":I
    .end local v1    # "result":I
    :goto_1
    return v0

    .restart local v0    # "bytesRead":I
    .restart local v1    # "result":I
    :cond_0
    move v0, v1

    .line 80
    goto :goto_1

    .line 82
    :cond_1
    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-direct {p0, p1, v2, v3}, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->readFromStack([BII)I

    move-result v2

    add-int/2addr v0, v2

    .line 83
    goto :goto_0

    .line 84
    .end local v1    # "result":I
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->count(I)V

    goto :goto_1
.end method

.method protected readNextCode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    :goto_0
    iget v3, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->bitsCachedSize:I

    iget v4, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->codeSize:I

    if-ge v3, v4, :cond_1

    .line 127
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 128
    .local v2, "nextByte":I
    if-gez v2, :cond_0

    .line 138
    .end local v2    # "nextByte":I
    :goto_1
    return v2

    .line 131
    .restart local v2    # "nextByte":I
    :cond_0
    iget v3, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->bitsCached:I

    iget v4, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->bitsCachedSize:I

    shl-int v4, v2, v4

    or-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->bitsCached:I

    .line 132
    iget v3, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->bitsCachedSize:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->bitsCachedSize:I

    goto :goto_0

    .line 134
    .end local v2    # "nextByte":I
    :cond_1
    const/4 v3, 0x1

    iget v4, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->codeSize:I

    shl-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 135
    .local v1, "mask":I
    iget v3, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->bitsCached:I

    and-int v0, v3, v1

    .line 136
    .local v0, "code":I
    iget v3, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->bitsCached:I

    iget v4, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->codeSize:I

    ushr-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->bitsCached:I

    .line 137
    iget v3, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->bitsCachedSize:I

    iget v4, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->codeSize:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->bitsCachedSize:I

    move v2, v0

    .line 138
    goto :goto_1
.end method

.method protected setClearCode(I)V
    .locals 2
    .param p1, "codeSize"    # I

    .prologue
    .line 103
    const/4 v0, 0x1

    add-int/lit8 v1, p1, -0x1

    shl-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->clearCode:I

    .line 104
    return-void
.end method
