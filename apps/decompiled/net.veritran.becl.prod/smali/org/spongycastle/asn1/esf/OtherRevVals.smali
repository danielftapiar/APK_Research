.class public Lorg/spongycastle/asn1/esf/OtherRevVals;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "OtherRevVals.java"


# instance fields
.field private otherRevValType:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field private otherRevVals:Lorg/spongycastle/asn1/ASN1Object;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 37
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad sequence size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/DERObjectIdentifier;

    iput-object v1, p0, Lorg/spongycastle/asn1/esf/OtherRevVals;->otherRevValType:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 43
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/asn1/DEREncodable;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERObject;->getDEREncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Object;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/esf/OtherRevVals;->otherRevVals:Lorg/spongycastle/asn1/ASN1Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/ASN1Object;)V
    .locals 0
    .param p1, "otherRevValType"    # Lorg/spongycastle/asn1/DERObjectIdentifier;
    .param p2, "otherRevVals"    # Lorg/spongycastle/asn1/ASN1Object;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/spongycastle/asn1/esf/OtherRevVals;->otherRevValType:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 53
    iput-object p2, p0, Lorg/spongycastle/asn1/esf/OtherRevVals;->otherRevVals:Lorg/spongycastle/asn1/ASN1Object;

    .line 54
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/OtherRevVals;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 30
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/esf/OtherRevVals;

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/esf/OtherRevVals;

    .line 33
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/esf/OtherRevVals;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/esf/OtherRevVals;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public getOtherRevValType()Lorg/spongycastle/asn1/DERObjectIdentifier;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/OtherRevVals;->otherRevValType:Lorg/spongycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getOtherRevVals()Lorg/spongycastle/asn1/ASN1Object;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/OtherRevVals;->otherRevVals:Lorg/spongycastle/asn1/ASN1Object;

    return-object v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 66
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/OtherRevVals;->otherRevValType:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 67
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/OtherRevVals;->otherRevVals:Lorg/spongycastle/asn1/ASN1Object;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 68
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
