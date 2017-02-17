.class Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;
.super Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;
.source "TlsDHEKeyExchange.java"


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/tls/TlsClientContext;I)V
    .locals 0
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsClientContext;
    .param p2, "keyExchange"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;-><init>(Lorg/spongycastle/crypto/tls/TlsClientContext;I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected initSigner(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;
    .locals 4
    .param p1, "tlsSigner"    # Lorg/spongycastle/crypto/tls/TlsSigner;
    .param p2, "securityParameters"    # Lorg/spongycastle/crypto/tls/SecurityParameters;

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {p1, v1}, Lorg/spongycastle/crypto/tls/TlsSigner;->createVerifyer(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/crypto/Signer;

    move-result-object v0

    .line 53
    .local v0, "signer":Lorg/spongycastle/crypto/Signer;
    iget-object v1, p2, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v2, p2, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 54
    iget-object v1, p2, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iget-object v2, p2, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 55
    return-object v0
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 12
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 27
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v10}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v6

    .line 29
    .local v6, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    invoke-virtual {p0, v10, v6}, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->initSigner(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v9

    .line 30
    .local v9, "signer":Lorg/spongycastle/crypto/Signer;
    new-instance v8, Lorg/spongycastle/crypto/io/SignerInputStream;

    invoke-direct {v8, p1, v9}, Lorg/spongycastle/crypto/io/SignerInputStream;-><init>(Ljava/io/InputStream;Lorg/spongycastle/crypto/Signer;)V

    .line 32
    .local v8, "sigIn":Ljava/io/InputStream;
    invoke-static {v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 33
    .local v5, "pBytes":[B
    invoke-static {v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 34
    .local v3, "gBytes":[B
    invoke-static {v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 36
    .local v1, "YsBytes":[B
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 37
    .local v7, "sigByte":[B
    invoke-interface {v9, v7}, Lorg/spongycastle/crypto/Signer;->verifySignature([B)Z

    move-result v10

    if-nez v10, :cond_0

    .line 39
    new-instance v10, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v11, 0x2a

    invoke-direct {v10, v11}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v10

    .line 42
    :cond_0
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v11, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 43
    .local v4, "p":Ljava/math/BigInteger;
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v11, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 44
    .local v2, "g":Ljava/math/BigInteger;
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 46
    .local v0, "Ys":Ljava/math/BigInteger;
    new-instance v10, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    new-instance v11, Lorg/spongycastle/crypto/params/DHParameters;

    invoke-direct {v11, v4, v2}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v10, v0, v11}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    invoke-virtual {p0, v10}, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->validateDHPublicKey(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v10

    iput-object v10, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->dhAgreeServerPublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    .line 48
    return-void
.end method

.method public skipServerKeyExchange()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method
