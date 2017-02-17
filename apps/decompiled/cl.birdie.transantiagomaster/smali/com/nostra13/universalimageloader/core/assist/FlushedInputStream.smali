.class public final Lcom/nostra13/universalimageloader/core/assist/FlushedInputStream;
.super Ljava/io/FilterInputStream;
.source "FlushedInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 15
    return-void
.end method


# virtual methods
.method public final skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .local v2, "totalBytesSkipped":J
    :goto_0
    cmp-long v4, v2, p1

    if-gez v4, :cond_1

    .line 21
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/assist/FlushedInputStream;->in:Ljava/io/InputStream;

    sub-long v5, p1, v2

    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 22
    .local v0, "bytesSkipped":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/FlushedInputStream;->read()I

    move-result v4

    .line 24
    if-ltz v4, :cond_1

    .line 25
    const-wide/16 v0, 0x1

    .line 30
    :cond_0
    add-long/2addr v2, v0

    .line 31
    goto :goto_0

    .line 32
    .end local v0    # "bytesSkipped":J
    :cond_1
    return-wide v2
.end method
