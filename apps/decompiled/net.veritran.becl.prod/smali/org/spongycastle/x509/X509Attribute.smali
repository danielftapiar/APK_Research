.class public Lorg/spongycastle/x509/X509Attribute;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "X509Attribute.java"


# instance fields
.field attr:Lorg/spongycastle/asn1/x509/Attribute;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 3
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 39
    new-instance v0, Lorg/spongycastle/asn1/x509/Attribute;

    new-instance v1, Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-direct {v1, p1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v2, p2}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/DEREncodable;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/Attribute;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lorg/spongycastle/x509/X509Attribute;->attr:Lorg/spongycastle/asn1/x509/Attribute;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1EncodableVector;)V
    .locals 3
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/spongycastle/asn1/ASN1EncodableVector;

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 53
    new-instance v0, Lorg/spongycastle/asn1/x509/Attribute;

    new-instance v1, Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-direct {v1, p1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v2, p2}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/Attribute;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lorg/spongycastle/x509/X509Attribute;->attr:Lorg/spongycastle/asn1/x509/Attribute;

    .line 54
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "at"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 25
    invoke-static {p1}, Lorg/spongycastle/asn1/x509/Attribute;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Attribute;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/x509/X509Attribute;->attr:Lorg/spongycastle/asn1/x509/Attribute;

    .line 26
    return-void
.end method


# virtual methods
.method public getOID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/spongycastle/x509/X509Attribute;->attr:Lorg/spongycastle/asn1/x509/Attribute;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Attribute;->getAttrType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValues()[Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 4

    .prologue
    .line 63
    iget-object v3, p0, Lorg/spongycastle/x509/X509Attribute;->attr:Lorg/spongycastle/asn1/x509/Attribute;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/Attribute;->getAttrValues()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v1

    .line 64
    .local v1, "s":Lorg/spongycastle/asn1/ASN1Set;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v3

    new-array v2, v3, [Lorg/spongycastle/asn1/ASN1Encodable;

    .line 66
    .local v2, "values":[Lorg/spongycastle/asn1/ASN1Encodable;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 68
    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Encodable;

    aput-object v3, v2, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-object v2
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/spongycastle/x509/X509Attribute;->attr:Lorg/spongycastle/asn1/x509/Attribute;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Attribute;->toASN1Object()Lorg/spongycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method
