.class Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;
.super Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;
.source "TlsECDHEKeyExchange.java"


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/tls/TlsClientContext;I)V
    .locals 0
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsClientContext;
    .param p2, "keyExchange"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;-><init>(Lorg/spongycastle/crypto/tls/TlsClientContext;I)V

    .line 20
    return-void
.end method


# virtual methods
.method protected initSigner(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;
    .locals 4
    .param p1, "tlsSigner"    # Lorg/spongycastle/crypto/tls/TlsSigner;
    .param p2, "securityParameters"    # Lorg/spongycastle/crypto/tls/SecurityParameters;

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {p1, v1}, Lorg/spongycastle/crypto/tls/TlsSigner;->createVerifyer(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/crypto/Signer;

    move-result-object v0

    .line 108
    .local v0, "signer":Lorg/spongycastle/crypto/Signer;
    iget-object v1, p2, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v2, p2, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 109
    iget-object v1, p2, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iget-object v2, p2, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 110
    return-object v0
.end method

.method public processClientCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 2
    .param p1, "clientCredentials"    # Lorg/spongycastle/crypto/tls/TlsCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v0, :cond_0

    .line 103
    return-void

    .line 101
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 11
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v9}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v5

    .line 32
    .local v5, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    invoke-virtual {p0, v9, v5}, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->initSigner(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v8

    .line 33
    .local v8, "signer":Lorg/spongycastle/crypto/Signer;
    new-instance v7, Lorg/spongycastle/crypto/io/SignerInputStream;

    invoke-direct {v7, p1, v8}, Lorg/spongycastle/crypto/io/SignerInputStream;-><init>(Ljava/io/InputStream;Lorg/spongycastle/crypto/Signer;)V

    .line 35
    .local v7, "sigIn":Ljava/io/InputStream;
    invoke-static {v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v1

    .line 39
    .local v1, "curveType":S
    const/4 v9, 0x3

    if-ne v1, v9, :cond_0

    .line 41
    invoke-static {v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v3

    .line 45
    .local v3, "namedCurve":I
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/NamedCurve;->getECParameters(I)Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    .line 54
    .local v2, "curve_params":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-static {v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 56
    .local v4, "publicBytes":[B
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v6

    .line 57
    .local v6, "sigByte":[B
    invoke-interface {v8, v6}, Lorg/spongycastle/crypto/Signer;->verifySignature([B)Z

    move-result v9

    if-nez v9, :cond_1

    .line 59
    new-instance v9, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v10, 0x2a

    invoke-direct {v9, v10}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v9

    .line 51
    .end local v2    # "curve_params":Lorg/spongycastle/crypto/params/ECDomainParameters;
    .end local v3    # "namedCurve":I
    .end local v4    # "publicBytes":[B
    .end local v6    # "sigByte":[B
    :cond_0
    new-instance v9, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v10, 0x28

    invoke-direct {v9, v10}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v9

    .line 64
    .restart local v2    # "curve_params":Lorg/spongycastle/crypto/params/ECDomainParameters;
    .restart local v3    # "namedCurve":I
    .restart local v4    # "publicBytes":[B
    .restart local v6    # "sigByte":[B
    :cond_1
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v9

    invoke-virtual {v9, v4}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 66
    .local v0, "Q":Lorg/spongycastle/math/ec/ECPoint;
    new-instance v9, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-direct {v9, v0, v2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    invoke-virtual {p0, v9}, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->validateECPublicKey(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v9

    iput-object v9, p0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;->ecAgreeServerPublicKey:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 67
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
    .line 24
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public validateCertificateRequest(Lorg/spongycastle/crypto/tls/CertificateRequest;)V
    .locals 4
    .param p1, "certificateRequest"    # Lorg/spongycastle/crypto/tls/CertificateRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/CertificateRequest;->getCertificateTypes()[S

    move-result-object v1

    .line 79
    .local v1, "types":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 81
    aget-short v2, v1, v0

    sparse-switch v2, :sswitch_data_0

    .line 88
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    .line 79
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    return-void

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method
