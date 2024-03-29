.class public Lorg/spongycastle/asn1/x509/TBSCertificateStructure;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "TBSCertificateStructure.java"

# interfaces
.implements Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field endDate:Lorg/spongycastle/asn1/x509/Time;

.field extensions:Lorg/spongycastle/asn1/x509/X509Extensions;

.field issuer:Lorg/spongycastle/asn1/x509/X509Name;

.field issuerUniqueId:Lorg/spongycastle/asn1/DERBitString;

.field seq:Lorg/spongycastle/asn1/ASN1Sequence;

.field serialNumber:Lorg/spongycastle/asn1/DERInteger;

.field signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field startDate:Lorg/spongycastle/asn1/x509/Time;

.field subject:Lorg/spongycastle/asn1/x509/X509Name;

.field subjectPublicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

.field subjectUniqueId:Lorg/spongycastle/asn1/DERBitString;

.field version:Lorg/spongycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 7
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 73
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 74
    const/4 v3, 0x0

    .line 76
    .local v3, "seqStart":I
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 81
    invoke-virtual {p1, v6}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v4

    instance-of v4, v4, Lorg/spongycastle/asn1/DERTaggedObject;

    if-eqz v4, :cond_0

    .line 83
    invoke-virtual {p1, v6}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {v4, v5}, Lorg/spongycastle/asn1/DERInteger;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERInteger;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->version:Lorg/spongycastle/asn1/DERInteger;

    .line 91
    :goto_0
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERInteger;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->serialNumber:Lorg/spongycastle/asn1/DERInteger;

    .line 93
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 94
    add-int/lit8 v4, v3, 0x3

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/X509Name;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->issuer:Lorg/spongycastle/asn1/x509/X509Name;

    .line 99
    add-int/lit8 v4, v3, 0x4

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 101
    .local v0, "dates":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v0, v6}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->startDate:Lorg/spongycastle/asn1/x509/Time;

    .line 102
    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->endDate:Lorg/spongycastle/asn1/x509/Time;

    .line 104
    add-int/lit8 v4, v3, 0x5

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/X509Name;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->subject:Lorg/spongycastle/asn1/x509/X509Name;

    .line 109
    add-int/lit8 v4, v3, 0x6

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->subjectPublicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 111
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    add-int/lit8 v5, v3, 0x6

    sub-int/2addr v4, v5

    add-int/lit8 v2, v4, -0x1

    .local v2, "extras":I
    :goto_1
    if-lez v2, :cond_1

    .line 113
    add-int/lit8 v4, v3, 0x6

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/DERTaggedObject;

    .line 115
    .local v1, "extra":Lorg/spongycastle/asn1/DERTaggedObject;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 111
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 87
    .end local v0    # "dates":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v1    # "extra":Lorg/spongycastle/asn1/DERTaggedObject;
    .end local v2    # "extras":I
    :cond_0
    const/4 v3, -0x1

    .line 88
    new-instance v4, Lorg/spongycastle/asn1/DERInteger;

    invoke-direct {v4, v6}, Lorg/spongycastle/asn1/DERInteger;-><init>(I)V

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->version:Lorg/spongycastle/asn1/DERInteger;

    goto :goto_0

    .line 118
    .restart local v0    # "dates":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local v1    # "extra":Lorg/spongycastle/asn1/DERTaggedObject;
    .restart local v2    # "extras":I
    :pswitch_0
    invoke-static {v1, v6}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->issuerUniqueId:Lorg/spongycastle/asn1/DERBitString;

    goto :goto_2

    .line 121
    :pswitch_1
    invoke-static {v1, v6}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->subjectUniqueId:Lorg/spongycastle/asn1/DERBitString;

    goto :goto_2

    .line 124
    :pswitch_2
    invoke-static {v1}, Lorg/spongycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/X509Extensions;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->extensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    goto :goto_2

    .line 127
    .end local v1    # "extra":Lorg/spongycastle/asn1/DERTaggedObject;
    :cond_1
    return-void

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TBSCertificateStructure;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 59
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;

    if-eqz v0, :cond_0

    .line 61
    check-cast p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;

    .line 68
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 63
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 65
    new-instance v0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 68
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/TBSCertificateStructure;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 53
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getEndDate()Lorg/spongycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->endDate:Lorg/spongycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getExtensions()Lorg/spongycastle/asn1/x509/X509Extensions;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->extensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public getIssuer()Lorg/spongycastle/asn1/x509/X509Name;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->issuer:Lorg/spongycastle/asn1/x509/X509Name;

    return-object v0
.end method

.method public getIssuerUniqueId()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->issuerUniqueId:Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSerialNumber()Lorg/spongycastle/asn1/DERInteger;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->serialNumber:Lorg/spongycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getSignature()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getStartDate()Lorg/spongycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->startDate:Lorg/spongycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getSubject()Lorg/spongycastle/asn1/x509/X509Name;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->subject:Lorg/spongycastle/asn1/x509/X509Name;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->subjectPublicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getSubjectUniqueId()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->subjectUniqueId:Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->version:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getVersionNumber()Lorg/spongycastle/asn1/DERInteger;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->version:Lorg/spongycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method
