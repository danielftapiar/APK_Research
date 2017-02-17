.class public Lorg/spongycastle/asn1/esf/SignerAttribute;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "SignerAttribute.java"


# instance fields
.field private certifiedAttributes:Lorg/spongycastle/asn1/x509/AttributeCertificate;

.field private claimedAttributes:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 32
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    move-object v0, p1

    .line 33
    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 34
    .local v0, "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/DERTaggedObject;

    .line 35
    .local v1, "taggedObject":Lorg/spongycastle/asn1/DERTaggedObject;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v2

    if-nez v2, :cond_0

    .line 37
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/esf/SignerAttribute;->claimedAttributes:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 47
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 41
    invoke-static {v1}, Lorg/spongycastle/asn1/x509/AttributeCertificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AttributeCertificate;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/esf/SignerAttribute;->certifiedAttributes:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    goto :goto_0

    .line 45
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "illegal tag."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "claimedAttributes"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/spongycastle/asn1/esf/SignerAttribute;->claimedAttributes:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/AttributeCertificate;)V
    .locals 0
    .param p1, "certifiedAttributes"    # Lorg/spongycastle/asn1/x509/AttributeCertificate;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/spongycastle/asn1/esf/SignerAttribute;->certifiedAttributes:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    .line 59
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/SignerAttribute;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 16
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/esf/SignerAttribute;

    if-eqz v0, :cond_1

    .line 18
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/esf/SignerAttribute;

    .line 22
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 20
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 22
    new-instance v0, Lorg/spongycastle/asn1/esf/SignerAttribute;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/esf/SignerAttribute;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in \'SignerAttribute\' factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCertifiedAttributes()Lorg/spongycastle/asn1/x509/AttributeCertificate;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SignerAttribute;->certifiedAttributes:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    return-object v0
.end method

.method public getClaimedAttributes()Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SignerAttribute;->claimedAttributes:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 86
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SignerAttribute;->claimedAttributes:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 88
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/asn1/esf/SignerAttribute;->claimedAttributes:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 95
    :goto_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    .line 92
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/spongycastle/asn1/esf/SignerAttribute;->certifiedAttributes:Lorg/spongycastle/asn1/x509/AttributeCertificate;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    goto :goto_0
.end method
