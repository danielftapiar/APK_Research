.class public Lorg/spongycastle/asn1/pkcs/SafeBag;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "SafeBag.java"


# instance fields
.field bagAttributes:Lorg/spongycastle/asn1/ASN1Set;

.field bagId:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field bagValue:Lorg/spongycastle/asn1/DERObject;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/SafeBag;->bagId:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERTaggedObject;->getObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/SafeBag;->bagValue:Lorg/spongycastle/asn1/DERObject;

    .line 43
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 45
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Set;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/SafeBag;->bagAttributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 47
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DERObject;)V
    .locals 1
    .param p1, "oid"    # Lorg/spongycastle/asn1/DERObjectIdentifier;
    .param p2, "obj"    # Lorg/spongycastle/asn1/DERObject;

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/SafeBag;->bagId:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 24
    iput-object p2, p0, Lorg/spongycastle/asn1/pkcs/SafeBag;->bagValue:Lorg/spongycastle/asn1/DERObject;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/SafeBag;->bagAttributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DERObject;Lorg/spongycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "oid"    # Lorg/spongycastle/asn1/DERObjectIdentifier;
    .param p2, "obj"    # Lorg/spongycastle/asn1/DERObject;
    .param p3, "bagAttributes"    # Lorg/spongycastle/asn1/ASN1Set;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/SafeBag;->bagId:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 34
    iput-object p2, p0, Lorg/spongycastle/asn1/pkcs/SafeBag;->bagValue:Lorg/spongycastle/asn1/DERObject;

    .line 35
    iput-object p3, p0, Lorg/spongycastle/asn1/pkcs/SafeBag;->bagAttributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 36
    return-void
.end method


# virtual methods
.method public getBagAttributes()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SafeBag;->bagAttributes:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getBagId()Lorg/spongycastle/asn1/DERObjectIdentifier;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SafeBag;->bagId:Lorg/spongycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getBagValue()Lorg/spongycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SafeBag;->bagValue:Lorg/spongycastle/asn1/DERObject;

    return-object v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 4

    .prologue
    .line 66
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 68
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SafeBag;->bagId:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 69
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/asn1/pkcs/SafeBag;->bagValue:Lorg/spongycastle/asn1/DERObject;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 71
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SafeBag;->bagAttributes:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SafeBag;->bagAttributes:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 76
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
