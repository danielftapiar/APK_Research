.class Lorg/apache/commons/compress/archivers/sevenz/Coders$LZMADecoder;
.super Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderBase;
.source "Coders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/Coders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LZMADecoder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderBase;-><init>()V

    return-void
.end method


# virtual methods
.method decode(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .param p3, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    const/4 v1, 0x0

    aget-byte v4, v0, v1

    .line 110
    .local v4, "propsByte":B
    iget-object v0, p2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    int-to-long v6, v0

    .line 111
    .local v6, "dictSize":J
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    const/4 v0, 0x4

    if-ge v8, v0, :cond_0

    .line 112
    iget-object v0, p2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    add-int/lit8 v1, v8, 0x1

    aget-byte v0, v0, v1

    mul-int/lit8 v1, v8, 0x8

    shl-int/2addr v0, v1

    int-to-long v0, v0

    or-long/2addr v6, v0

    .line 111
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 114
    :cond_0
    const-wide/32 v0, 0x7ffffff0

    cmp-long v0, v6, v0

    if-lez v0, :cond_1

    .line 115
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Dictionary larger than 4GiB maximum size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    new-instance v0, Lorg/tukaani/xz/LZMAInputStream;

    const-wide/16 v2, -0x1

    long-to-int v5, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;JBI)V

    return-object v0
.end method
