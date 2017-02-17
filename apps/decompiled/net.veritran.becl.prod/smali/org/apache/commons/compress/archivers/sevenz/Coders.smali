.class Lorg/apache/commons/compress/archivers/sevenz/Coders;
.super Ljava/lang/Object;
.source "Coders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/sevenz/Coders$1;,
        Lorg/apache/commons/compress/archivers/sevenz/Coders$DummyByteAddingInputStream;,
        Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder;,
        Lorg/apache/commons/compress/archivers/sevenz/Coders$BZIP2Decoder;,
        Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder;,
        Lorg/apache/commons/compress/archivers/sevenz/Coders$LZMADecoder;,
        Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;,
        Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderBase;,
        Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;
    }
.end annotation


# static fields
.field static coderTable:[Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;

    sget-object v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->COPY:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;

    invoke-direct {v4}, Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;-><init>()V

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderBase;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;

    sget-object v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->LZMA:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/Coders$LZMADecoder;

    invoke-direct {v4}, Lorg/apache/commons/compress/archivers/sevenz/Coders$LZMADecoder;-><init>()V

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderBase;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;

    sget-object v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->LZMA2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;

    invoke-direct {v4}, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;-><init>()V

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderBase;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;

    sget-object v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DEFLATE:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder;

    invoke-direct {v4}, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder;-><init>()V

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderBase;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;

    sget-object v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BZIP2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/Coders$BZIP2Decoder;

    invoke-direct {v4}, Lorg/apache/commons/compress/archivers/sevenz/Coders$BZIP2Decoder;-><init>()V

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderBase;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;

    sget-object v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->AES256SHA256:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder;

    invoke-direct {v4}, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder;-><init>()V

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderBase;)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/Coders;->coderTable:[Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    return-void
.end method

.method static addDecoder(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/Coders;->coderTable:[Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;

    .local v0, "arr$":[Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 47
    .local v1, "coderId":Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;
    iget-object v4, v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;->method:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->getId()[B

    move-result-object v4

    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    iget-object v4, v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;->coder:Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderBase;

    invoke-virtual {v4, p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderBase;->decode(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;

    move-result-object v4

    return-object v4

    .line 46
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "coderId":Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported compression method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static addEncoder(Ljava/io/OutputStream;Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;[B)Ljava/io/OutputStream;
    .locals 7
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "method"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/Coders;->coderTable:[Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;

    .local v0, "arr$":[Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 58
    .local v1, "coderId":Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;
    iget-object v4, v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;->method:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    invoke-virtual {v4, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    iget-object v4, v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;->coder:Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderBase;

    invoke-virtual {v4, p0, p2}, Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderBase;->encode(Ljava/io/OutputStream;[B)Ljava/io/OutputStream;

    move-result-object v4

    return-object v4

    .line 57
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "coderId":Lorg/apache/commons/compress/archivers/sevenz/Coders$CoderId;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported compression method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
