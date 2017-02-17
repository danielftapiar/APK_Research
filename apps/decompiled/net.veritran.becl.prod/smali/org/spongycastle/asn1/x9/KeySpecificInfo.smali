.class public Lorg/spongycastle/asn1/x9/KeySpecificInfo;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "KeySpecificInfo.java"


# instance fields
.field private algorithm:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field private counter:Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 34
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 36
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/DERObjectIdentifier;

    iput-object v1, p0, Lorg/spongycastle/asn1/x9/KeySpecificInfo;->algorithm:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 37
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1OctetString;

    iput-object v1, p0, Lorg/spongycastle/asn1/x9/KeySpecificInfo;->counter:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 0
    .param p1, "algorithm"    # Lorg/spongycastle/asn1/DERObjectIdentifier;
    .param p2, "counter"    # Lorg/spongycastle/asn1/ASN1OctetString;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/KeySpecificInfo;->algorithm:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 28
    iput-object p2, p0, Lorg/spongycastle/asn1/x9/KeySpecificInfo;->counter:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 29
    return-void
.end method


# virtual methods
.method public getAlgorithm()Lorg/spongycastle/asn1/DERObjectIdentifier;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/KeySpecificInfo;->algorithm:Lorg/spongycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getCounter()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/KeySpecificInfo;->counter:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 63
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/KeySpecificInfo;->algorithm:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 64
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/KeySpecificInfo;->counter:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 66
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
