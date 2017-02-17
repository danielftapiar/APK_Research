.class Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;
.super Ljava/lang/Object;
.source "BasicOCSPRespGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseObject"
.end annotation


# instance fields
.field certId:Lorg/spongycastle/ocsp/CertificateID;

.field certStatus:Lorg/spongycastle/asn1/ocsp/CertStatus;

.field extensions:Lorg/spongycastle/asn1/x509/X509Extensions;

.field nextUpdate:Lorg/spongycastle/asn1/DERGeneralizedTime;

.field final synthetic this$0:Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;

.field thisUpdate:Lorg/spongycastle/asn1/DERGeneralizedTime;


# direct methods
.method public constructor <init>(Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;Lorg/spongycastle/ocsp/CertificateID;Lorg/spongycastle/ocsp/CertificateStatus;Ljava/util/Date;Ljava/util/Date;Lorg/spongycastle/asn1/x509/X509Extensions;)V
    .locals 7
    .param p2, "certId"    # Lorg/spongycastle/ocsp/CertificateID;
    .param p3, "certStatus"    # Lorg/spongycastle/ocsp/CertificateStatus;
    .param p4, "thisUpdate"    # Ljava/util/Date;
    .param p5, "nextUpdate"    # Ljava/util/Date;
    .param p6, "extensions"    # Lorg/spongycastle/asn1/x509/X509Extensions;

    .prologue
    const/4 v6, 0x0

    .line 59
    iput-object p1, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->this$0:Lorg/spongycastle/ocsp/BasicOCSPRespGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->certId:Lorg/spongycastle/ocsp/CertificateID;

    .line 62
    if-nez p3, :cond_0

    .line 64
    new-instance v1, Lorg/spongycastle/asn1/ocsp/CertStatus;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ocsp/CertStatus;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->certStatus:Lorg/spongycastle/asn1/ocsp/CertStatus;

    .line 86
    :goto_0
    new-instance v1, Lorg/spongycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, p4}, Lorg/spongycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    iput-object v1, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->thisUpdate:Lorg/spongycastle/asn1/DERGeneralizedTime;

    .line 88
    if-eqz p5, :cond_3

    .line 90
    new-instance v1, Lorg/spongycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, p5}, Lorg/spongycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    iput-object v1, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->nextUpdate:Lorg/spongycastle/asn1/DERGeneralizedTime;

    .line 97
    :goto_1
    iput-object p6, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->extensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    .line 98
    return-void

    .line 66
    :cond_0
    instance-of v1, p3, Lorg/spongycastle/ocsp/UnknownStatus;

    if-eqz v1, :cond_1

    .line 68
    new-instance v1, Lorg/spongycastle/asn1/ocsp/CertStatus;

    const/4 v2, 0x2

    new-instance v3, Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v3}, Lorg/spongycastle/asn1/DERNull;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ocsp/CertStatus;-><init>(ILorg/spongycastle/asn1/DEREncodable;)V

    iput-object v1, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->certStatus:Lorg/spongycastle/asn1/ocsp/CertStatus;

    goto :goto_0

    :cond_1
    move-object v0, p3

    .line 72
    check-cast v0, Lorg/spongycastle/ocsp/RevokedStatus;

    .line 74
    .local v0, "rs":Lorg/spongycastle/ocsp/RevokedStatus;
    invoke-virtual {v0}, Lorg/spongycastle/ocsp/RevokedStatus;->hasRevocationReason()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    new-instance v1, Lorg/spongycastle/asn1/ocsp/CertStatus;

    new-instance v2, Lorg/spongycastle/asn1/ocsp/RevokedInfo;

    new-instance v3, Lorg/spongycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0}, Lorg/spongycastle/ocsp/RevokedStatus;->getRevocationTime()Ljava/util/Date;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    new-instance v4, Lorg/spongycastle/asn1/x509/CRLReason;

    invoke-virtual {v0}, Lorg/spongycastle/ocsp/RevokedStatus;->getRevocationReason()I

    move-result v5

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/x509/CRLReason;-><init>(I)V

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/asn1/ocsp/RevokedInfo;-><init>(Lorg/spongycastle/asn1/DERGeneralizedTime;Lorg/spongycastle/asn1/x509/CRLReason;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ocsp/CertStatus;-><init>(Lorg/spongycastle/asn1/ocsp/RevokedInfo;)V

    iput-object v1, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->certStatus:Lorg/spongycastle/asn1/ocsp/CertStatus;

    goto :goto_0

    .line 81
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/ocsp/CertStatus;

    new-instance v2, Lorg/spongycastle/asn1/ocsp/RevokedInfo;

    new-instance v3, Lorg/spongycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0}, Lorg/spongycastle/ocsp/RevokedStatus;->getRevocationTime()Ljava/util/Date;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-direct {v2, v3, v6}, Lorg/spongycastle/asn1/ocsp/RevokedInfo;-><init>(Lorg/spongycastle/asn1/DERGeneralizedTime;Lorg/spongycastle/asn1/x509/CRLReason;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ocsp/CertStatus;-><init>(Lorg/spongycastle/asn1/ocsp/RevokedInfo;)V

    iput-object v1, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->certStatus:Lorg/spongycastle/asn1/ocsp/CertStatus;

    goto :goto_0

    .line 94
    .end local v0    # "rs":Lorg/spongycastle/ocsp/RevokedStatus;
    :cond_3
    iput-object v6, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->nextUpdate:Lorg/spongycastle/asn1/DERGeneralizedTime;

    goto :goto_1
.end method


# virtual methods
.method public toResponse()Lorg/spongycastle/asn1/ocsp/SingleResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lorg/spongycastle/asn1/ocsp/SingleResponse;

    iget-object v1, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->certId:Lorg/spongycastle/ocsp/CertificateID;

    invoke-virtual {v1}, Lorg/spongycastle/ocsp/CertificateID;->toASN1Object()Lorg/spongycastle/asn1/ocsp/CertID;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->certStatus:Lorg/spongycastle/asn1/ocsp/CertStatus;

    iget-object v3, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->thisUpdate:Lorg/spongycastle/asn1/DERGeneralizedTime;

    iget-object v4, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->nextUpdate:Lorg/spongycastle/asn1/DERGeneralizedTime;

    iget-object v5, p0, Lorg/spongycastle/ocsp/BasicOCSPRespGenerator$ResponseObject;->extensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/ocsp/SingleResponse;-><init>(Lorg/spongycastle/asn1/ocsp/CertID;Lorg/spongycastle/asn1/ocsp/CertStatus;Lorg/spongycastle/asn1/DERGeneralizedTime;Lorg/spongycastle/asn1/DERGeneralizedTime;Lorg/spongycastle/asn1/x509/X509Extensions;)V

    return-object v0
.end method
