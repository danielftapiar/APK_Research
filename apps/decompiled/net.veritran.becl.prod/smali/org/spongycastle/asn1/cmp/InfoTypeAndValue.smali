.class public Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "InfoTypeAndValue.java"


# instance fields
.field private infoType:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field private infoValue:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v1, 0x1

    .line 60
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoType:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 63
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 65
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 67
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERObjectIdentifier;)V
    .locals 1
    .param p1, "infoType"    # Lorg/spongycastle/asn1/DERObjectIdentifier;

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoType:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "infoType"    # Lorg/spongycastle/asn1/DERObjectIdentifier;
    .param p2, "optionalValue"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoType:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 96
    iput-object p2, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 97
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 71
    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;

    if-eqz v0, :cond_0

    .line 73
    check-cast p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;

    .line 78
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 76
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 78
    new-instance v0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 81
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
.method public getInfoType()Lorg/spongycastle/asn1/DERObjectIdentifier;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoType:Lorg/spongycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getInfoValue()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 122
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoType:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 124
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 129
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
