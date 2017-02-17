.class public Lorg/spongycastle/asn1/icao/CscaMasterList;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "CscaMasterList.java"


# instance fields
.field private certList:[Lorg/spongycastle/asn1/x509/X509CertificateStructure;

.field private version:Lorg/spongycastle/asn1/DERInteger;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 29
    new-instance v2, Lorg/spongycastle/asn1/DERInteger;

    invoke-direct {v2, v4}, Lorg/spongycastle/asn1/DERInteger;-><init>(I)V

    iput-object v2, p0, Lorg/spongycastle/asn1/icao/CscaMasterList;->version:Lorg/spongycastle/asn1/DERInteger;

    .line 50
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 52
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null or empty sequence passed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 56
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect sequence size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_2
    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/icao/CscaMasterList;->version:Lorg/spongycastle/asn1/DERInteger;

    .line 61
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    .line 62
    .local v0, "certSet":Lorg/spongycastle/asn1/ASN1Set;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v2

    new-array v2, v2, [Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    iput-object v2, p0, Lorg/spongycastle/asn1/icao/CscaMasterList;->certList:[Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/asn1/icao/CscaMasterList;->certList:[Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 64
    iget-object v2, p0, Lorg/spongycastle/asn1/icao/CscaMasterList;->certList:[Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    move-result-object v3

    aput-object v3, v2, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_3
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/x509/X509CertificateStructure;)V
    .locals 2
    .param p1, "certStructs"    # [Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 29
    new-instance v0, Lorg/spongycastle/asn1/DERInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/asn1/icao/CscaMasterList;->version:Lorg/spongycastle/asn1/DERInteger;

    .line 72
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/icao/CscaMasterList;->copyCertList([Lorg/spongycastle/asn1/x509/X509CertificateStructure;)[Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/icao/CscaMasterList;->certList:[Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    .line 73
    return-void
.end method

.method private copyCertList([Lorg/spongycastle/asn1/x509/X509CertificateStructure;)[Lorg/spongycastle/asn1/x509/X509CertificateStructure;
    .locals 3
    .param p1, "orig"    # [Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    .prologue
    .line 86
    array-length v2, p1

    new-array v0, v2, [Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    .line 88
    .local v0, "certs":[Lorg/spongycastle/asn1/x509/X509CertificateStructure;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 90
    aget-object v2, p1, v1

    aput-object v2, v0, v1

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/icao/CscaMasterList;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 35
    instance-of v0, p0, Lorg/spongycastle/asn1/icao/CscaMasterList;

    if-eqz v0, :cond_0

    .line 37
    check-cast p0, Lorg/spongycastle/asn1/icao/CscaMasterList;

    .line 44
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 39
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 41
    new-instance v0, Lorg/spongycastle/asn1/icao/CscaMasterList;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/icao/CscaMasterList;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 44
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCertStructs()[Lorg/spongycastle/asn1/x509/X509CertificateStructure;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/spongycastle/asn1/icao/CscaMasterList;->certList:[Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/icao/CscaMasterList;->copyCertList([Lorg/spongycastle/asn1/x509/X509CertificateStructure;)[Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/spongycastle/asn1/icao/CscaMasterList;->version:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 4

    .prologue
    .line 98
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 100
    .local v2, "seq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lorg/spongycastle/asn1/icao/CscaMasterList;->version:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 102
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 103
    .local v0, "certSet":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/asn1/icao/CscaMasterList;->certList:[Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 105
    iget-object v3, p0, Lorg/spongycastle/asn1/icao/CscaMasterList;->certList:[Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_0
    new-instance v3, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v3, v0}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 109
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v3
.end method
