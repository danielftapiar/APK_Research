.class public Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
.super Ljava/lang/Object;
.source "AsymmetricCipherKeyPair.java"


# instance fields
.field private privateParam:Lorg/spongycastle/crypto/CipherParameters;

.field private publicParam:Lorg/spongycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 0
    .param p1, "publicParam"    # Lorg/spongycastle/crypto/CipherParameters;
    .param p2, "privateParam"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lorg/spongycastle/crypto/CipherParameters;

    .line 22
    iput-object p2, p0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lorg/spongycastle/crypto/CipherParameters;

    .line 23
    return-void
.end method


# virtual methods
.method public getPrivate()Lorg/spongycastle/crypto/CipherParameters;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lorg/spongycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getPublic()Lorg/spongycastle/crypto/CipherParameters;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lorg/spongycastle/crypto/CipherParameters;

    return-object v0
.end method
