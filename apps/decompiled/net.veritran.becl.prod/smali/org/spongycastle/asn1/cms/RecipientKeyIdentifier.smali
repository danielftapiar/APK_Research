.class public Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "RecipientKeyIdentifier.java"


# instance fields
.field private date:Lorg/spongycastle/asn1/DERGeneralizedTime;

.field private other:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

.field private subjectKeyIdentifier:Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/DERGeneralizedTime;Lorg/spongycastle/asn1/cms/OtherKeyAttribute;)V
    .locals 0
    .param p1, "subjectKeyIdentifier"    # Lorg/spongycastle/asn1/ASN1OctetString;
    .param p2, "date"    # Lorg/spongycastle/asn1/DERGeneralizedTime;
    .param p3, "other"    # Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 26
    iput-object p2, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/spongycastle/asn1/DERGeneralizedTime;

    .line 27
    iput-object p3, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 48
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 52
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid RecipientKeyIdentifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :pswitch_0
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/DERGeneralizedTime;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DERGeneralizedTime;

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/spongycastle/asn1/DERGeneralizedTime;

    .line 73
    :goto_0
    :pswitch_1
    return-void

    .line 63
    :cond_0
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/OtherKeyAttribute;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    goto :goto_0

    .line 67
    :pswitch_2
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DERGeneralizedTime;

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/spongycastle/asn1/DERGeneralizedTime;

    .line 68
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/OtherKeyAttribute;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "subjectKeyIdentifier"    # [B

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0, v0}, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;-><init>([BLorg/spongycastle/asn1/DERGeneralizedTime;Lorg/spongycastle/asn1/cms/OtherKeyAttribute;)V

    .line 44
    return-void
.end method

.method public constructor <init>([BLorg/spongycastle/asn1/DERGeneralizedTime;Lorg/spongycastle/asn1/cms/OtherKeyAttribute;)V
    .locals 1
    .param p1, "subjectKeyIdentifier"    # [B
    .param p2, "date"    # Lorg/spongycastle/asn1/DERGeneralizedTime;
    .param p3, "other"    # Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 35
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 36
    iput-object p2, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/spongycastle/asn1/DERGeneralizedTime;

    .line 37
    iput-object p3, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    .line 38
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;
    .locals 3
    .param p0, "_obj"    # Ljava/lang/Object;

    .prologue
    .line 97
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;

    .line 104
    .end local p0    # "_obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 102
    .restart local p0    # "_obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 104
    new-instance v0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "_obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 107
    .restart local p0    # "_obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid RecipientKeyIdentifier: "

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

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;
    .locals 1
    .param p0, "_ato"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "_explicit"    # Z

    .prologue
    .line 86
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDate()Lorg/spongycastle/asn1/DERGeneralizedTime;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/spongycastle/asn1/DERGeneralizedTime;

    return-object v0
.end method

.method public getOtherKeyAttribute()Lorg/spongycastle/asn1/cms/OtherKeyAttribute;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    return-object v0
.end method

.method public getSubjectKeyIdentifier()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 142
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 144
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/spongycastle/asn1/DERGeneralizedTime;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/spongycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 149
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 154
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
