.class public Lorg/spongycastle/crypto/tls/LegacyTlsClient;
.super Lorg/spongycastle/crypto/tls/DefaultTlsClient;
.source "LegacyTlsClient.java"


# instance fields
.field protected verifyer:Lorg/spongycastle/crypto/tls/CertificateVerifyer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/CertificateVerifyer;)V
    .locals 0
    .param p1, "verifyer"    # Lorg/spongycastle/crypto/tls/CertificateVerifyer;

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/LegacyTlsClient;->verifyer:Lorg/spongycastle/crypto/tls/CertificateVerifyer;

    .line 23
    return-void
.end method


# virtual methods
.method public getAuthentication()Lorg/spongycastle/crypto/tls/TlsAuthentication;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lorg/spongycastle/crypto/tls/LegacyTlsAuthentication;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/LegacyTlsClient;->verifyer:Lorg/spongycastle/crypto/tls/CertificateVerifyer;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/LegacyTlsAuthentication;-><init>(Lorg/spongycastle/crypto/tls/CertificateVerifyer;)V

    return-object v0
.end method
