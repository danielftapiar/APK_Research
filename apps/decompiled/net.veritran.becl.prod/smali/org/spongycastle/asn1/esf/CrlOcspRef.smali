.class public Lorg/spongycastle/asn1/esf/CrlOcspRef;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "CrlOcspRef.java"


# instance fields
.field private crlids:Lorg/spongycastle/asn1/esf/CrlListID;

.field private ocspids:Lorg/spongycastle/asn1/esf/OcspListID;

.field private otherRev:Lorg/spongycastle/asn1/esf/OtherRevRefs;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 45
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 46
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/DERTaggedObject;

    .line 49
    .local v1, "o":Lorg/spongycastle/asn1/DERTaggedObject;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 61
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "illegal tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :pswitch_0
    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERTaggedObject;->getObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/esf/CrlListID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/CrlListID;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/spongycastle/asn1/esf/CrlListID;

    goto :goto_0

    .line 55
    :pswitch_1
    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERTaggedObject;->getObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/esf/OcspListID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/OcspListID;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/spongycastle/asn1/esf/OcspListID;

    goto :goto_0

    .line 58
    :pswitch_2
    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERTaggedObject;->getObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/esf/OtherRevRefs;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/OtherRevRefs;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/spongycastle/asn1/esf/OtherRevRefs;

    goto :goto_0

    .line 64
    .end local v1    # "o":Lorg/spongycastle/asn1/DERTaggedObject;
    :cond_0
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/esf/CrlListID;Lorg/spongycastle/asn1/esf/OcspListID;Lorg/spongycastle/asn1/esf/OtherRevRefs;)V
    .locals 0
    .param p1, "crlids"    # Lorg/spongycastle/asn1/esf/CrlListID;
    .param p2, "ocspids"    # Lorg/spongycastle/asn1/esf/OcspListID;
    .param p3, "otherRev"    # Lorg/spongycastle/asn1/esf/OtherRevRefs;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/spongycastle/asn1/esf/CrlListID;

    .line 70
    iput-object p2, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/spongycastle/asn1/esf/OcspListID;

    .line 71
    iput-object p3, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/spongycastle/asn1/esf/OtherRevRefs;

    .line 72
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/CrlOcspRef;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 31
    instance-of v0, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;

    if-eqz v0, :cond_0

    .line 33
    check-cast p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;

    .line 37
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 35
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 37
    new-instance v0, Lorg/spongycastle/asn1/esf/CrlOcspRef;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/esf/CrlOcspRef;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null value in getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCrlids()Lorg/spongycastle/asn1/esf/CrlListID;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/spongycastle/asn1/esf/CrlListID;

    return-object v0
.end method

.method public getOcspids()Lorg/spongycastle/asn1/esf/OcspListID;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/spongycastle/asn1/esf/OcspListID;

    return-object v0
.end method

.method public getOtherRev()Lorg/spongycastle/asn1/esf/OtherRevRefs;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/spongycastle/asn1/esf/OtherRevRefs;

    return-object v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 91
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 92
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/spongycastle/asn1/esf/CrlListID;

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->crlids:Lorg/spongycastle/asn1/esf/CrlListID;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/esf/CrlListID;->toASN1Object()Lorg/spongycastle/asn1/DERObject;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 96
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/spongycastle/asn1/esf/OcspListID;

    if-eqz v1, :cond_1

    .line 98
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->ocspids:Lorg/spongycastle/asn1/esf/OcspListID;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/esf/OcspListID;->toASN1Object()Lorg/spongycastle/asn1/DERObject;

    move-result-object v2

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 100
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/spongycastle/asn1/esf/OtherRevRefs;

    if-eqz v1, :cond_2

    .line 102
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/spongycastle/asn1/esf/CrlOcspRef;->otherRev:Lorg/spongycastle/asn1/esf/OtherRevRefs;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/esf/OtherRevRefs;->toASN1Object()Lorg/spongycastle/asn1/DERObject;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 104
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
