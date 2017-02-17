.class public Lorg/spongycastle/crypto/tls/TlsNullCipher;
.super Ljava/lang/Object;
.source "TlsNullCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsCipher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected copyData([BII)[B
    .locals 2
    .param p1, "text"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 20
    new-array v0, p3, [B

    .line 21
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    return-object v0
.end method

.method public decodeCiphertext(S[BII)[B
    .locals 1
    .param p1, "type"    # S
    .param p2, "ciphertext"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .prologue
    .line 15
    invoke-virtual {p0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/TlsNullCipher;->copyData([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public encodePlaintext(S[BII)[B
    .locals 1
    .param p1, "type"    # S
    .param p2, "plaintext"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .prologue
    .line 10
    invoke-virtual {p0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/TlsNullCipher;->copyData([BII)[B

    move-result-object v0

    return-object v0
.end method
