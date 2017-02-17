.class public Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "PolicyQualifierInfo.java"


# instance fields
.field private policyQualifierId:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field private qualifier:Lorg/spongycastle/asn1/DEREncodable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "cps"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 52
    sget-object v0, Lorg/spongycastle/asn1/x509/PolicyQualifierId;->id_qt_cps:Lorg/spongycastle/asn1/x509/PolicyQualifierId;

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 53
    new-instance v0, Lorg/spongycastle/asn1/DERIA5String;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lorg/spongycastle/asn1/DEREncodable;

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "as"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 65
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lorg/spongycastle/asn1/DEREncodable;

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V
    .locals 0
    .param p1, "policyQualifierId"    # Lorg/spongycastle/asn1/DERObjectIdentifier;
    .param p2, "qualifier"    # Lorg/spongycastle/asn1/DEREncodable;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 39
    iput-object p2, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lorg/spongycastle/asn1/DEREncodable;

    .line 40
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;
    .locals 2
    .param p0, "as"    # Ljava/lang/Object;

    .prologue
    .line 78
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;

    if-eqz v0, :cond_0

    .line 80
    check-cast p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;

    .line 84
    .end local p0    # "as":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 82
    .restart local p0    # "as":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "as":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 87
    .restart local p0    # "as":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPolicyQualifierId()Lorg/spongycastle/asn1/DERObjectIdentifier;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lorg/spongycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getQualifier()Lorg/spongycastle/asn1/DEREncodable;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lorg/spongycastle/asn1/DEREncodable;

    return-object v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 109
    .local v0, "dev":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 110
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lorg/spongycastle/asn1/DEREncodable;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 112
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
