.class public Lcom/esotericsoftware/kryo/io/InputChunked;
.super Lcom/esotericsoftware/kryo/io/Input;
.source "InputChunked.java"


# instance fields
.field private chunkSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;-><init>(I)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    .line 19
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "bufferSize"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;-><init>(I)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 28
    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/io/Input;-><init>(Ljava/io/InputStream;I)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Input;-><init>(Ljava/io/InputStream;I)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    .line 33
    return-void
.end method

.method private readChunkSize()V
    .locals 8

    .prologue
    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/InputChunked;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 64
    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .local v3, "offset":I
    const/4 v4, 0x0

    .local v4, "result":I
    :goto_0
    const/16 v5, 0x20

    if-ge v3, v5, :cond_3

    .line 65
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 66
    .local v0, "b":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    new-instance v5, Lcom/esotericsoftware/kryo/KryoException;

    const-string v6, "Buffer underflow."

    invoke-direct {v5, v6}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v0    # "b":I
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "offset":I
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 75
    .local v1, "ex":Ljava/io/IOException;
    new-instance v5, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v5, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 67
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "b":I
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "offset":I
    .restart local v4    # "result":I
    :cond_0
    and-int/lit8 v5, v0, 0x7f

    shl-int/2addr v5, v3

    or-int/2addr v4, v5

    .line 68
    and-int/lit16 v5, v0, 0x80

    if-nez v5, :cond_2

    .line 69
    :try_start_1
    iput v4, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    .line 70
    sget-boolean v5, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v5, :cond_1

    const-string v5, "kryo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read chunk: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    :cond_1
    return-void

    .line 64
    :cond_2
    add-int/lit8 v3, v3, 0x7

    goto :goto_0

    .line 77
    .end local v0    # "b":I
    :cond_3
    new-instance v5, Lcom/esotericsoftware/kryo/KryoException;

    const-string v6, "Malformed integer."

    invoke-direct {v5, v6}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method protected fill([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 51
    iget v1, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    if-ne v1, v0, :cond_2

    .line 52
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/InputChunked;->readChunkSize()V

    .line 55
    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-super {p0, p1, p2, v1}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

    move-result v0

    .line 56
    .local v0, "actual":I
    iget v1, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    .line 57
    iget v1, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/InputChunked;->readChunkSize()V

    .line 58
    .end local v0    # "actual":I
    :cond_1
    :goto_0
    return v0

    .line 53
    :cond_2
    iget v1, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public nextChunks()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 83
    iget v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/InputChunked;->readChunkSize()V

    .line 84
    :cond_0
    :goto_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    if-lez v0, :cond_1

    .line 85
    iget v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/InputChunked;->skip(I)V

    goto :goto_0

    .line 86
    :cond_1
    iput v1, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    .line 87
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_2

    const-string v0, "kryo"

    const-string v1, "Next chunks."

    invoke-static {v0, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_2
    return-void
.end method

.method public rewind()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/esotericsoftware/kryo/io/Input;->rewind()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    .line 48
    return-void
.end method

.method public setBuffer([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([BII)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    .line 43
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->setInputStream(Ljava/io/InputStream;)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->chunkSize:I

    .line 38
    return-void
.end method
