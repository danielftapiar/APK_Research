.class public Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "IssuerAndSerialNumber.java"


# instance fields
.field certSerialNumber:Lorg/spongycastle/asn1/DERInteger;

.field name:Lorg/spongycastle/asn1/x509/X509Name;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/X509Name;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lorg/spongycastle/asn1/x509/X509Name;

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DERInteger;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lorg/spongycastle/asn1/DERInteger;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/X509Name;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "name"    # Lorg/spongycastle/asn1/x509/X509Name;
    .param p2, "certSerialNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lorg/spongycastle/asn1/x509/X509Name;

    .line 46
    new-instance v0, Lorg/spongycastle/asn1/DERInteger;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lorg/spongycastle/asn1/DERInteger;

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/X509Name;Lorg/spongycastle/asn1/DERInteger;)V
    .locals 0
    .param p1, "name"    # Lorg/spongycastle/asn1/x509/X509Name;
    .param p2, "certSerialNumber"    # Lorg/spongycastle/asn1/DERInteger;

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lorg/spongycastle/asn1/x509/X509Name;

    .line 54
    iput-object p2, p0, Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lorg/spongycastle/asn1/DERInteger;

    .line 55
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 22
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;

    if-eqz v0, :cond_0

    .line 24
    check-cast p0, Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;

    .line 28
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 26
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 28
    new-instance v0, Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 31
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

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
.method public getCertificateSerialNumber()Lorg/spongycastle/asn1/DERInteger;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lorg/spongycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getName()Lorg/spongycastle/asn1/x509/X509Name;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lorg/spongycastle/asn1/x509/X509Name;

    return-object v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 71
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lorg/spongycastle/asn1/x509/X509Name;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 72
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 74
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
