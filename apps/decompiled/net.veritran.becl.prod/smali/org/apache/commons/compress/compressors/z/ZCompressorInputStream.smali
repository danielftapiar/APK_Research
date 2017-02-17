.class public Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;
.source "ZCompressorInputStream.java"


# static fields
.field private static final BLOCK_MODE_MASK:I = 0x80

.field private static final MAGIC_1:I = 0x1f

.field private static final MAGIC_2:I = 0x9d

.field private static final MAX_CODE_SIZE_MASK:I = 0x1f


# instance fields
.field private final blockMode:Z

.field private final maxCodeSize:I

.field private totalCodesRead:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->totalCodesRead:J

    .line 41
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 42
    .local v0, "firstByte":I
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 43
    .local v1, "secondByte":I
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 44
    .local v2, "thirdByte":I
    const/16 v3, 0x1f

    if-ne v0, v3, :cond_0

    const/16 v3, 0x9d

    if-ne v1, v3, :cond_0

    if-gez v2, :cond_1

    .line 45
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Input is not in .Z format"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 47
    :cond_1
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->blockMode:Z

    .line 48
    and-int/lit8 v3, v2, 0x1f

    iput v3, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->maxCodeSize:I

    .line 49
    iget-boolean v3, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->blockMode:Z

    if-eqz v3, :cond_2

    .line 50
    iget v3, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->codeSize:I

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->setClearCode(I)V

    .line 52
    :cond_2
    iget v3, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->maxCodeSize:I

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->initializeTables(I)V

    .line 53
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->clearEntries()V

    .line 54
    return-void

    .line 47
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private clearEntries()V
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0x100

    iput v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->tableSize:I

    .line 58
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->blockMode:Z

    if-eqz v0, :cond_0

    .line 59
    iget v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->tableSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->tableSize:I

    .line 61
    :cond_0
    return-void
.end method

.method private reAlignReading()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x8

    .line 83
    iget-wide v4, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->totalCodesRead:J

    rem-long/2addr v4, v6

    sub-long v0, v6, v4

    .line 84
    .local v0, "codeReadsToThrowAway":J
    cmp-long v4, v0, v6

    if-nez v4, :cond_0

    .line 85
    const-wide/16 v0, 0x0

    .line 87
    :cond_0
    const-wide/16 v2, 0x0

    .local v2, "i":J
    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->readNextCode()I

    .line 87
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    .line 90
    :cond_1
    iput v8, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->bitsCached:I

    .line 91
    iput v8, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->bitsCachedSize:I

    .line 92
    return-void
.end method


# virtual methods
.method protected addEntry(IB)I
    .locals 4
    .param p1, "previousCode"    # I
    .param p2, "character"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->codeSize:I

    shl-int v0, v2, v3

    .line 103
    .local v0, "maxTableSize":I
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->addEntry(IBI)I

    move-result v1

    .line 104
    .local v1, "r":I
    iget v2, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->tableSize:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->codeSize:I

    iget v3, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->maxCodeSize:I

    if-ge v2, v3, :cond_0

    .line 105
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->reAlignReading()V

    .line 106
    iget v2, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->codeSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->codeSize:I

    .line 108
    :cond_0
    return v1
.end method

.method protected decompressNextSymbol()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 131
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->readNextCode()I

    move-result v1

    .line 132
    .local v1, "code":I
    if-gez v1, :cond_0

    .line 148
    :goto_0
    return v2

    .line 134
    :cond_0
    iget-boolean v4, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->blockMode:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->clearCode:I

    if-ne v1, v4, :cond_1

    .line 135
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->clearEntries()V

    .line 136
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->reAlignReading()V

    .line 137
    const/16 v4, 0x9

    iput v4, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->codeSize:I

    .line 138
    iput v2, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->previousCode:I

    move v2, v3

    .line 139
    goto :goto_0

    .line 141
    :cond_1
    const/4 v0, 0x0

    .line 142
    .local v0, "addedUnfinishedEntry":Z
    iget v2, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->tableSize:I

    if-ne v1, v2, :cond_3

    .line 143
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->addRepeatOfPreviousCode()I

    .line 144
    const/4 v0, 0x1

    .line 148
    :cond_2
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->expandCodeToOutputStack(IZ)I

    move-result v2

    goto :goto_0

    .line 145
    :cond_3
    iget v2, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->tableSize:I

    if-le v1, v2, :cond_2

    .line 146
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Invalid %d bit code 0x%x"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->codeSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected readNextCode()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-super {p0}, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;->readNextCode()I

    move-result v0

    .line 72
    .local v0, "code":I
    if-ltz v0, :cond_0

    .line 73
    iget-wide v2, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->totalCodesRead:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->totalCodesRead:J

    .line 75
    :cond_0
    return v0
.end method
