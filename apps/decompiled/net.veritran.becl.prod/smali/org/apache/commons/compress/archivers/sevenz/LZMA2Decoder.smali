.class Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;
.super Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderBase;
.source "LZMA2Decoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderBase;-><init>()V

    return-void
.end method


# virtual methods
.method decode(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .param p3, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x28

    .line 32
    iget-object v2, p2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 33
    .local v1, "dictionarySizeBits":I
    and-int/lit8 v2, v1, -0x40

    if-eqz v2, :cond_0

    .line 34
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unsupported LZMA2 property bits"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_0
    if-le v1, v4, :cond_1

    .line 37
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Dictionary larger than 4GiB maximum size"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_1
    if-ne v1, v4, :cond_2

    .line 41
    const/4 v0, -0x1

    .line 45
    .local v0, "dictionarySize":I
    :goto_0
    new-instance v2, Lorg/tukaani/xz/LZMA2InputStream;

    invoke-direct {v2, p1, v0}, Lorg/tukaani/xz/LZMA2InputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v2

    .line 43
    .end local v0    # "dictionarySize":I
    :cond_2
    and-int/lit8 v2, v1, 0x1

    or-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0xb

    shl-int v0, v2, v3

    .restart local v0    # "dictionarySize":I
    goto :goto_0
.end method

.method encode(Ljava/io/OutputStream;[B)Ljava/io/OutputStream;
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lorg/tukaani/xz/LZMA2Options;

    invoke-direct {v0}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    .line 52
    .local v0, "options":Lorg/tukaani/xz/LZMA2Options;
    const/high16 v2, 0x800000

    invoke-virtual {v0, v2}, Lorg/tukaani/xz/LZMA2Options;->setDictSize(I)V

    .line 53
    new-instance v1, Lorg/tukaani/xz/FinishableWrapperOutputStream;

    invoke-direct {v1, p1}, Lorg/tukaani/xz/FinishableWrapperOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 54
    .local v1, "wrapped":Lorg/tukaani/xz/FinishableOutputStream;
    invoke-virtual {v0, v1}, Lorg/tukaani/xz/LZMA2Options;->getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;)Lorg/tukaani/xz/FinishableOutputStream;

    move-result-object v2

    return-object v2
.end method
