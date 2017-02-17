.class public Lorg/spongycastle/asn1/cms/MetaData;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "MetaData.java"


# instance fields
.field private fileName:Lorg/spongycastle/asn1/DERUTF8String;

.field private hashProtected:Lorg/spongycastle/asn1/DERBoolean;

.field private mediaType:Lorg/spongycastle/asn1/DERIA5String;

.field private otherMetaData:Lorg/spongycastle/asn1/cms/Attributes;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 34
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBoolean;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/MetaData;->hashProtected:Lorg/spongycastle/asn1/DERBoolean;

    .line 36
    const/4 v0, 0x1

    .line 38
    .local v0, "index":I
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/DERUTF8String;

    if-eqz v2, :cond_0

    .line 40
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERUTF8String;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/MetaData;->fileName:Lorg/spongycastle/asn1/DERUTF8String;

    move v0, v1

    .line 42
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/DERIA5String;

    if-eqz v2, :cond_1

    .line 44
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERIA5String;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/MetaData;->mediaType:Lorg/spongycastle/asn1/DERIA5String;

    move v0, v1

    .line 46
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 48
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/cms/Attributes;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/Attributes;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/MetaData;->otherMetaData:Lorg/spongycastle/asn1/cms/Attributes;

    move v0, v1

    .line 50
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERBoolean;Lorg/spongycastle/asn1/DERUTF8String;Lorg/spongycastle/asn1/DERIA5String;Lorg/spongycastle/asn1/cms/Attributes;)V
    .locals 0
    .param p1, "hashProtected"    # Lorg/spongycastle/asn1/DERBoolean;
    .param p2, "fileName"    # Lorg/spongycastle/asn1/DERUTF8String;
    .param p3, "mediaType"    # Lorg/spongycastle/asn1/DERIA5String;
    .param p4, "otherMetaData"    # Lorg/spongycastle/asn1/cms/Attributes;

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/MetaData;->hashProtected:Lorg/spongycastle/asn1/DERBoolean;

    .line 27
    iput-object p2, p0, Lorg/spongycastle/asn1/cms/MetaData;->fileName:Lorg/spongycastle/asn1/DERUTF8String;

    .line 28
    iput-object p3, p0, Lorg/spongycastle/asn1/cms/MetaData;->mediaType:Lorg/spongycastle/asn1/DERIA5String;

    .line 29
    iput-object p4, p0, Lorg/spongycastle/asn1/cms/MetaData;->otherMetaData:Lorg/spongycastle/asn1/cms/Attributes;

    .line 30
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/MetaData;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 54
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/MetaData;

    if-eqz v0, :cond_0

    .line 56
    check-cast p0, Lorg/spongycastle/asn1/cms/MetaData;

    .line 63
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 58
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 60
    new-instance v0, Lorg/spongycastle/asn1/cms/MetaData;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cms/MetaData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 63
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFileName()Lorg/spongycastle/asn1/DERUTF8String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/MetaData;->fileName:Lorg/spongycastle/asn1/DERUTF8String;

    return-object v0
.end method

.method public getMediaType()Lorg/spongycastle/asn1/DERIA5String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/MetaData;->mediaType:Lorg/spongycastle/asn1/DERIA5String;

    return-object v0
.end method

.method public getOtherMetaData()Lorg/spongycastle/asn1/cms/Attributes;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/MetaData;->otherMetaData:Lorg/spongycastle/asn1/cms/Attributes;

    return-object v0
.end method

.method public isHashProtected()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/MetaData;->hashProtected:Lorg/spongycastle/asn1/DERBoolean;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBoolean;->isTrue()Z

    move-result v0

    return v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 81
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/MetaData;->hashProtected:Lorg/spongycastle/asn1/DERBoolean;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 83
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/MetaData;->fileName:Lorg/spongycastle/asn1/DERUTF8String;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/MetaData;->fileName:Lorg/spongycastle/asn1/DERUTF8String;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 88
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/MetaData;->mediaType:Lorg/spongycastle/asn1/DERIA5String;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/MetaData;->mediaType:Lorg/spongycastle/asn1/DERIA5String;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 93
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/MetaData;->otherMetaData:Lorg/spongycastle/asn1/cms/Attributes;

    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/MetaData;->otherMetaData:Lorg/spongycastle/asn1/cms/Attributes;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 98
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
