.class Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;
.super Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;
.source "UnshrinkingInputStream.java"


# static fields
.field private static final MAX_CODE_SIZE:I = 0xd

.field private static final MAX_TABLE_SIZE:I = 0x2000


# instance fields
.field private final isUsed:[Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/z/_internal_/InternalLZWInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->codeSize:I

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->setClearCode(I)V

    .line 39
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->initializeTables(I)V

    .line 40
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->prefixes:[I

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 42
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->clearCode:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->tableSize:I

    .line 45
    return-void
.end method

.method private partialClear()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 60
    const/16 v2, 0x2000

    new-array v1, v2, [Z

    .line 61
    .local v1, "isParent":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 62
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->prefixes:[I

    aget v2, v2, v0

    if-eq v2, v4, :cond_0

    .line 63
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->prefixes:[I

    aget v2, v2, v0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 61
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    iget v2, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->clearCode:I

    add-int/lit8 v0, v2, 0x1

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 67
    aget-boolean v2, v1, v0

    if-nez v2, :cond_2

    .line 68
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    .line 69
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->prefixes:[I

    aput v4, v2, v0

    .line 66
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    :cond_3
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
    const/16 v3, 0x2000

    .line 49
    :goto_0
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->tableSize:I

    if-ge v1, v3, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    iget v2, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->tableSize:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    .line 50
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->tableSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->tableSize:I

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0, p1, p2, v3}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->addEntry(IBI)I

    move-result v0

    .line 53
    .local v0, "idx":I
    if-ltz v0, :cond_1

    .line 54
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 56
    :cond_1
    return v0
.end method

.method protected decompressNextSymbol()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->readNextCode()I

    move-result v1

    .line 89
    .local v1, "code":I
    if-gez v1, :cond_0

    .line 90
    const/4 v4, -0x1

    .line 115
    :goto_0
    return v4

    .line 91
    :cond_0
    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->clearCode:I

    if-ne v1, v4, :cond_5

    .line 92
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->readNextCode()I

    move-result v3

    .line 93
    .local v3, "subCode":I
    if-gez v3, :cond_1

    .line 94
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected EOF;"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 95
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 96
    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->codeSize:I

    const/16 v5, 0xd

    if-ge v4, v5, :cond_2

    .line 97
    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->codeSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->codeSize:I

    .line 107
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 99
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Attempt to increase code size beyond maximum"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 101
    :cond_3
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 102
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->partialClear()V

    .line 103
    iget v4, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->clearCode:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->tableSize:I

    goto :goto_1

    .line 105
    :cond_4
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid clear code subcode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 109
    .end local v3    # "subCode":I
    :cond_5
    const/4 v0, 0x0

    .line 110
    .local v0, "addedUnfinishedEntry":Z
    move v2, v1

    .line 111
    .local v2, "effectiveCode":I
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    aget-boolean v4, v4, v1

    if-nez v4, :cond_6

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->addRepeatOfPreviousCode()I

    move-result v2

    .line 113
    const/4 v0, 0x1

    .line 115
    :cond_6
    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->expandCodeToOutputStack(IZ)I

    move-result v4

    goto :goto_0
.end method
