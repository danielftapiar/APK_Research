.class Lorg/spongycastle/crypto/tls/RecordStream;
.super Ljava/lang/Object;
.source "RecordStream.java"


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private handler:Lorg/spongycastle/crypto/tls/TlsProtocolHandler;

.field private hash:Lorg/spongycastle/crypto/tls/CombinedHash;

.field private is:Ljava/io/InputStream;

.field private os:Ljava/io/OutputStream;

.field private readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

.field private writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/tls/TlsProtocolHandler;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "handler"    # Lorg/spongycastle/crypto/tls/TlsProtocolHandler;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "os"    # Ljava/io/OutputStream;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 18
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 19
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 20
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 21
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 25
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocolHandler;

    .line 26
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    .line 27
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->os:Ljava/io/OutputStream;

    .line 28
    new-instance v0, Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->hash:Lorg/spongycastle/crypto/tls/CombinedHash;

    .line 29
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsNullCompression;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsNullCompression;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 31
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsNullCipher;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsNullCipher;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 32
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 33
    return-void
.end method

.method private static doFinal(Lorg/spongycastle/crypto/tls/CombinedHash;)[B
    .locals 2
    .param p0, "ch"    # Lorg/spongycastle/crypto/tls/CombinedHash;

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/CombinedHash;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 155
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/tls/CombinedHash;->doFinal([BI)I

    .line 156
    return-object v0
.end method

.method private getBufferContents()[B
    .locals 2

    .prologue
    .line 147
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 148
    .local v0, "contents":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 149
    return-object v0
.end method


# virtual methods
.method clientCipherSpecDecided(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V
    .locals 0
    .param p1, "tlsCompression"    # Lorg/spongycastle/crypto/tls/TlsCompression;
    .param p2, "tlsCipher"    # Lorg/spongycastle/crypto/tls/TlsCipher;

    .prologue
    .line 37
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 38
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 39
    return-void
.end method

.method protected close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    :goto_1
    if-eqz v0, :cond_0

    .line 136
    throw v0

    .line 122
    :catch_0
    move-exception v1

    .line 124
    .local v1, "ex":Ljava/io/IOException;
    move-object v0, v1

    goto :goto_0

    .line 130
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 132
    .restart local v1    # "ex":Ljava/io/IOException;
    move-object v0, v1

    goto :goto_1

    .line 138
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method protected decodeAndVerify(SLjava/io/InputStream;I)[B
    .locals 6
    .param p1, "type"    # S
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 58
    new-array v0, p3, [B

    .line 59
    .local v0, "buf":[B
    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    .line 60
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    array-length v4, v0

    invoke-interface {v3, p1, v0, v5, v4}, Lorg/spongycastle/crypto/tls/TlsCipher;->decodeCiphertext(S[BII)[B

    move-result-object v2

    .line 62
    .local v2, "decoded":[B
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-interface {v3, v4}, Lorg/spongycastle/crypto/tls/TlsCompression;->decompress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    .line 64
    .local v1, "cOut":Ljava/io/OutputStream;
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    if-ne v1, v3, :cond_0

    .line 71
    .end local v2    # "decoded":[B
    :goto_0
    return-object v2

    .line 69
    .restart local v2    # "decoded":[B
    :cond_0
    array-length v3, v2

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 70
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 71
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/RecordStream;->getBufferContents()[B

    move-result-object v2

    goto :goto_0
.end method

.method protected flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 143
    return-void
.end method

.method getCurrentHash()[B
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lorg/spongycastle/crypto/tls/CombinedHash;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->hash:Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>(Lorg/spongycastle/crypto/tls/CombinedHash;)V

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->doFinal(Lorg/spongycastle/crypto/tls/CombinedHash;)[B

    move-result-object v0

    return-object v0
.end method

.method public readData()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v2

    .line 50
    .local v2, "type":S
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocolHandler;

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkVersion(Ljava/io/InputStream;Lorg/spongycastle/crypto/tls/TlsProtocolHandler;)V

    .line 51
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    .line 52
    .local v1, "size":I
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    invoke-virtual {p0, v2, v3, v1}, Lorg/spongycastle/crypto/tls/RecordStream;->decodeAndVerify(SLjava/io/InputStream;I)[B

    move-result-object v0

    .line 53
    .local v0, "buf":[B
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocolHandler;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v2, v0, v4, v5}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->processData(S[BII)V

    .line 54
    return-void
.end method

.method serverClientSpecReceived()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 44
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 45
    return-void
.end method

.method updateHandshakeData([BII)V
    .locals 1
    .param p1, "message"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->hash:Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/CombinedHash;->update([BII)V

    .line 108
    return-void
.end method

.method protected writeMessage(S[BII)V
    .locals 7
    .param p1, "type"    # S
    .param p2, "message"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 76
    const/16 v4, 0x16

    if-ne p1, v4, :cond_0

    .line 78
    invoke-virtual {p0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    .line 81
    :cond_0
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-interface {v4, v5}, Lorg/spongycastle/crypto/tls/TlsCompression;->compress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 84
    .local v0, "cOut":Ljava/io/OutputStream;
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    if-ne v0, v4, :cond_1

    .line 86
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    invoke-interface {v4, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/TlsCipher;->encodePlaintext(S[BII)[B

    move-result-object v1

    .line 96
    .local v1, "ciphertext":[B
    :goto_0
    array-length v4, v1

    add-int/lit8 v4, v4, 0x5

    new-array v3, v4, [B

    .line 97
    .local v3, "writeMessage":[B
    invoke-static {p1, v3, v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 98
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion([BI)V

    .line 99
    array-length v4, v1

    const/4 v5, 0x3

    invoke-static {v4, v3, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 100
    const/4 v4, 0x5

    array-length v5, v1

    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    .line 102
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 103
    return-void

    .line 90
    .end local v1    # "ciphertext":[B
    .end local v3    # "writeMessage":[B
    :cond_1
    invoke-virtual {v0, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V

    .line 91
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 92
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/RecordStream;->getBufferContents()[B

    move-result-object v2

    .line 93
    .local v2, "compressed":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    array-length v5, v2

    invoke-interface {v4, p1, v2, v6, v5}, Lorg/spongycastle/crypto/tls/TlsCipher;->encodePlaintext(S[BII)[B

    move-result-object v1

    .restart local v1    # "ciphertext":[B
    goto :goto_0
.end method
