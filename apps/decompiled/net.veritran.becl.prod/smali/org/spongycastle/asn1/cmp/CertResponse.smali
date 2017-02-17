.class public Lorg/spongycastle/asn1/cmp/CertResponse;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "CertResponse.java"


# instance fields
.field private certReqId:Lorg/spongycastle/asn1/DERInteger;

.field private certifiedKeyPair:Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;

.field private rspInfo:Lorg/spongycastle/asn1/ASN1OctetString;

.field private status:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x3

    .line 21
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 22
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERInteger;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->certReqId:Lorg/spongycastle/asn1/DERInteger;

    .line 23
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->status:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    .line 25
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 27
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 29
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    .line 30
    .local v0, "o":Lorg/spongycastle/asn1/DEREncodable;
    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_1

    .line 32
    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->rspInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 45
    .end local v0    # "o":Lorg/spongycastle/asn1/DEREncodable;
    :cond_0
    :goto_0
    return-void

    .line 36
    .restart local v0    # "o":Lorg/spongycastle/asn1/DEREncodable;
    :cond_1
    invoke-static {v0}, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->certifiedKeyPair:Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;

    goto :goto_0

    .line 41
    .end local v0    # "o":Lorg/spongycastle/asn1/DEREncodable;
    :cond_2
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->certifiedKeyPair:Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;

    .line 42
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->rspInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERInteger;Lorg/spongycastle/asn1/cmp/PKIStatusInfo;)V
    .locals 1
    .param p1, "certReqId"    # Lorg/spongycastle/asn1/DERInteger;
    .param p2, "status"    # Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/spongycastle/asn1/cmp/CertResponse;-><init>(Lorg/spongycastle/asn1/DERInteger;Lorg/spongycastle/asn1/cmp/PKIStatusInfo;Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;Lorg/spongycastle/asn1/ASN1OctetString;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERInteger;Lorg/spongycastle/asn1/cmp/PKIStatusInfo;Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 2
    .param p1, "certReqId"    # Lorg/spongycastle/asn1/DERInteger;
    .param p2, "status"    # Lorg/spongycastle/asn1/cmp/PKIStatusInfo;
    .param p3, "certifiedKeyPair"    # Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;
    .param p4, "rspInfo"    # Lorg/spongycastle/asn1/ASN1OctetString;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 75
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'certReqId\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    if-nez p2, :cond_1

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'status\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->certReqId:Lorg/spongycastle/asn1/DERInteger;

    .line 84
    iput-object p2, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->status:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    .line 85
    iput-object p3, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->certifiedKeyPair:Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;

    .line 86
    iput-object p4, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->rspInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 87
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/CertResponse;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 49
    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/CertResponse;

    if-eqz v0, :cond_0

    .line 51
    check-cast p0, Lorg/spongycastle/asn1/cmp/CertResponse;

    .line 56
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 54
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Lorg/spongycastle/asn1/cmp/CertResponse;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cmp/CertResponse;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 59
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
.method public getCertReqId()Lorg/spongycastle/asn1/DERInteger;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->certReqId:Lorg/spongycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getCertifiedKeyPair()Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->certifiedKeyPair:Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;

    return-object v0
.end method

.method public getStatus()Lorg/spongycastle/asn1/cmp/PKIStatusInfo;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->status:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    return-object v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 124
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->certReqId:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 125
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->status:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 127
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->certifiedKeyPair:Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->certifiedKeyPair:Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 132
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->rspInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CertResponse;->rspInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 137
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
