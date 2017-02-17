.class public Lorg/spongycastle/asn1/cmp/RevAnnContent;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "RevAnnContent.java"


# instance fields
.field private badSinceDate:Lorg/spongycastle/asn1/DERGeneralizedTime;

.field private certId:Lorg/spongycastle/asn1/crmf/CertId;

.field private crlDetails:Lorg/spongycastle/asn1/x509/X509Extensions;

.field private status:Lorg/spongycastle/asn1/cmp/PKIStatus;

.field private willBeRevokedAt:Lorg/spongycastle/asn1/DERGeneralizedTime;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v1, 0x4

    .line 22
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmp/PKIStatus;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->status:Lorg/spongycastle/asn1/cmp/PKIStatus;

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/crmf/CertId;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/CertId;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->certId:Lorg/spongycastle/asn1/crmf/CertId;

    .line 25
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERGeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERGeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->willBeRevokedAt:Lorg/spongycastle/asn1/DERGeneralizedTime;

    .line 26
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERGeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERGeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->badSinceDate:Lorg/spongycastle/asn1/DERGeneralizedTime;

    .line 28
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 30
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/X509Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->crlDetails:Lorg/spongycastle/asn1/x509/X509Extensions;

    .line 32
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/RevAnnContent;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 36
    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;

    if-eqz v0, :cond_0

    .line 38
    check-cast p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;

    .line 43
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 41
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 43
    new-instance v0, Lorg/spongycastle/asn1/cmp/RevAnnContent;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cmp/RevAnnContent;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 46
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBadSinceDate()Lorg/spongycastle/asn1/DERGeneralizedTime;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->badSinceDate:Lorg/spongycastle/asn1/DERGeneralizedTime;

    return-object v0
.end method

.method public getCertId()Lorg/spongycastle/asn1/crmf/CertId;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->certId:Lorg/spongycastle/asn1/crmf/CertId;

    return-object v0
.end method

.method public getCrlDetails()Lorg/spongycastle/asn1/x509/X509Extensions;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->crlDetails:Lorg/spongycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public getStatus()Lorg/spongycastle/asn1/cmp/PKIStatus;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->status:Lorg/spongycastle/asn1/cmp/PKIStatus;

    return-object v0
.end method

.method public getWillBeRevokedAt()Lorg/spongycastle/asn1/DERGeneralizedTime;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->willBeRevokedAt:Lorg/spongycastle/asn1/DERGeneralizedTime;

    return-object v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 91
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->status:Lorg/spongycastle/asn1/cmp/PKIStatus;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 92
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->certId:Lorg/spongycastle/asn1/crmf/CertId;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 93
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->willBeRevokedAt:Lorg/spongycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 94
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->badSinceDate:Lorg/spongycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 96
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->crlDetails:Lorg/spongycastle/asn1/x509/X509Extensions;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->crlDetails:Lorg/spongycastle/asn1/x509/X509Extensions;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 101
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
