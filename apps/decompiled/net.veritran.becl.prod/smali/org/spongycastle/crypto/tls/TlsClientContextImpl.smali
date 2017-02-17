.class Lorg/spongycastle/crypto/tls/TlsClientContextImpl;
.super Ljava/lang/Object;
.source "TlsClientContextImpl.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsClientContext;


# instance fields
.field private secureRandom:Ljava/security/SecureRandom;

.field private securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

.field private userObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/tls/SecurityParameters;)V
    .locals 1
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;
    .param p2, "securityParameters"    # Lorg/spongycastle/crypto/tls/SecurityParameters;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->userObject:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 15
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    .line 16
    return-void
.end method


# virtual methods
.method public getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    return-object v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->userObject:Ljava/lang/Object;

    return-object v0
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userObject"    # Ljava/lang/Object;

    .prologue
    .line 35
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->userObject:Ljava/lang/Object;

    .line 36
    return-void
.end method
