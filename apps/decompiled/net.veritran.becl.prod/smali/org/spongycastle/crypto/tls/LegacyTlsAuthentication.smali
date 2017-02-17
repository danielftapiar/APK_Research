.class public Lorg/spongycastle/crypto/tls/LegacyTlsAuthentication;
.super Ljava/lang/Object;
.source "LegacyTlsAuthentication.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsAuthentication;


# instance fields
.field protected verifyer:Lorg/spongycastle/crypto/tls/CertificateVerifyer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/CertificateVerifyer;)V
    .locals 0
    .param p1, "verifyer"    # Lorg/spongycastle/crypto/tls/CertificateVerifyer;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/LegacyTlsAuthentication;->verifyer:Lorg/spongycastle/crypto/tls/CertificateVerifyer;

    .line 17
    return-void
.end method


# virtual methods
.method public getClientCredentials(Lorg/spongycastle/crypto/tls/CertificateRequest;)Lorg/spongycastle/crypto/tls/TlsCredentials;
    .locals 1
    .param p1, "certificateRequest"    # Lorg/spongycastle/crypto/tls/CertificateRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 2
    .param p1, "serverCertificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/LegacyTlsAuthentication;->verifyer:Lorg/spongycastle/crypto/tls/CertificateVerifyer;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->getCerts()[Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/CertificateVerifyer;->isValid([Lorg/spongycastle/asn1/x509/X509CertificateStructure;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x5a

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 25
    :cond_0
    return-void
.end method
