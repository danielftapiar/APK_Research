.class Lorg/spongycastle/crypto/tls/TlsECDSASigner;
.super Lorg/spongycastle/crypto/tls/TlsDSASigner;
.source "TlsECDSASigner.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsDSASigner;-><init>()V

    return-void
.end method


# virtual methods
.method protected createDSAImpl()Lorg/spongycastle/crypto/DSA;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lorg/spongycastle/crypto/signers/ECDSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/signers/ECDSASigner;-><init>()V

    return-object v0
.end method

.method public isValidPublicKey(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Z
    .locals 1
    .param p1, "publicKey"    # Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .prologue
    .line 12
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    return v0
.end method
