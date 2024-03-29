.class public Lorg/spongycastle/crypto/io/DigestOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DigestOutputStream.java"


# instance fields
.field protected digest:Lorg/spongycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/spongycastle/crypto/Digest;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 19
    iput-object p2, p0, Lorg/spongycastle/crypto/io/DigestOutputStream;->digest:Lorg/spongycastle/crypto/Digest;

    .line 20
    return-void
.end method


# virtual methods
.method public getDigest()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/spongycastle/crypto/io/DigestOutputStream;->digest:Lorg/spongycastle/crypto/Digest;

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lorg/spongycastle/crypto/io/DigestOutputStream;->digest:Lorg/spongycastle/crypto/Digest;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 26
    iget-object v0, p0, Lorg/spongycastle/crypto/io/DigestOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 27
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lorg/spongycastle/crypto/io/DigestOutputStream;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 36
    iget-object v0, p0, Lorg/spongycastle/crypto/io/DigestOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 37
    return-void
.end method
