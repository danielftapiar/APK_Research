.class Lorg/spongycastle/ocsp/OCSPReqGenerator$RequestObject;
.super Ljava/lang/Object;
.source "OCSPReqGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/ocsp/OCSPReqGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestObject"
.end annotation


# instance fields
.field certId:Lorg/spongycastle/ocsp/CertificateID;

.field extensions:Lorg/spongycastle/asn1/x509/X509Extensions;

.field final synthetic this$0:Lorg/spongycastle/ocsp/OCSPReqGenerator;


# direct methods
.method public constructor <init>(Lorg/spongycastle/ocsp/OCSPReqGenerator;Lorg/spongycastle/ocsp/CertificateID;Lorg/spongycastle/asn1/x509/X509Extensions;)V
    .locals 0
    .param p2, "certId"    # Lorg/spongycastle/ocsp/CertificateID;
    .param p3, "extensions"    # Lorg/spongycastle/asn1/x509/X509Extensions;

    .prologue
    .line 49
    iput-object p1, p0, Lorg/spongycastle/ocsp/OCSPReqGenerator$RequestObject;->this$0:Lorg/spongycastle/ocsp/OCSPReqGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lorg/spongycastle/ocsp/OCSPReqGenerator$RequestObject;->certId:Lorg/spongycastle/ocsp/CertificateID;

    .line 51
    iput-object p3, p0, Lorg/spongycastle/ocsp/OCSPReqGenerator$RequestObject;->extensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    .line 52
    return-void
.end method


# virtual methods
.method public toRequest()Lorg/spongycastle/asn1/ocsp/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lorg/spongycastle/asn1/ocsp/Request;

    iget-object v1, p0, Lorg/spongycastle/ocsp/OCSPReqGenerator$RequestObject;->certId:Lorg/spongycastle/ocsp/CertificateID;

    invoke-virtual {v1}, Lorg/spongycastle/ocsp/CertificateID;->toASN1Object()Lorg/spongycastle/asn1/ocsp/CertID;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/ocsp/OCSPReqGenerator$RequestObject;->extensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ocsp/Request;-><init>(Lorg/spongycastle/asn1/ocsp/CertID;Lorg/spongycastle/asn1/x509/X509Extensions;)V

    return-object v0
.end method
