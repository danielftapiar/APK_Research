.class public Lorg/spongycastle/asn1/crmf/CertRequest;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "CertRequest.java"


# instance fields
.field private certReqId:Lorg/spongycastle/asn1/DERInteger;

.field private certTemplate:Lorg/spongycastle/asn1/crmf/CertTemplate;

.field private controls:Lorg/spongycastle/asn1/crmf/Controls;


# direct methods
.method public constructor <init>(ILorg/spongycastle/asn1/crmf/CertTemplate;Lorg/spongycastle/asn1/crmf/Controls;)V
    .locals 1
    .param p1, "certReqId"    # I
    .param p2, "certTemplate"    # Lorg/spongycastle/asn1/crmf/CertTemplate;
    .param p3, "controls"    # Lorg/spongycastle/asn1/crmf/Controls;

    .prologue
    .line 46
    new-instance v0, Lorg/spongycastle/asn1/DERInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERInteger;-><init>(I)V

    invoke-direct {p0, v0, p2, p3}, Lorg/spongycastle/asn1/crmf/CertRequest;-><init>(Lorg/spongycastle/asn1/DERInteger;Lorg/spongycastle/asn1/crmf/CertTemplate;Lorg/spongycastle/asn1/crmf/Controls;)V

    .line 47
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v1, 0x2

    .line 18
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/CertRequest;->certReqId:Lorg/spongycastle/asn1/DERInteger;

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/crmf/CertTemplate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/CertTemplate;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/CertRequest;->certTemplate:Lorg/spongycastle/asn1/crmf/CertTemplate;

    .line 21
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 23
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/crmf/Controls;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/Controls;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/CertRequest;->controls:Lorg/spongycastle/asn1/crmf/Controls;

    .line 25
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERInteger;Lorg/spongycastle/asn1/crmf/CertTemplate;Lorg/spongycastle/asn1/crmf/Controls;)V
    .locals 0
    .param p1, "certReqId"    # Lorg/spongycastle/asn1/DERInteger;
    .param p2, "certTemplate"    # Lorg/spongycastle/asn1/crmf/CertTemplate;
    .param p3, "controls"    # Lorg/spongycastle/asn1/crmf/Controls;

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/spongycastle/asn1/crmf/CertRequest;->certReqId:Lorg/spongycastle/asn1/DERInteger;

    .line 55
    iput-object p2, p0, Lorg/spongycastle/asn1/crmf/CertRequest;->certTemplate:Lorg/spongycastle/asn1/crmf/CertTemplate;

    .line 56
    iput-object p3, p0, Lorg/spongycastle/asn1/crmf/CertRequest;->controls:Lorg/spongycastle/asn1/crmf/Controls;

    .line 57
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/CertRequest;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 29
    instance-of v0, p0, Lorg/spongycastle/asn1/crmf/CertRequest;

    if-eqz v0, :cond_0

    .line 31
    check-cast p0, Lorg/spongycastle/asn1/crmf/CertRequest;

    .line 38
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 33
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 35
    new-instance v0, Lorg/spongycastle/asn1/crmf/CertRequest;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/crmf/CertRequest;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 38
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCertReqId()Lorg/spongycastle/asn1/DERInteger;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/CertRequest;->certReqId:Lorg/spongycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getCertTemplate()Lorg/spongycastle/asn1/crmf/CertTemplate;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/CertRequest;->certTemplate:Lorg/spongycastle/asn1/crmf/CertTemplate;

    return-object v0
.end method

.method public getControls()Lorg/spongycastle/asn1/crmf/Controls;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/CertRequest;->controls:Lorg/spongycastle/asn1/crmf/Controls;

    return-object v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 87
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/CertRequest;->certReqId:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 88
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/CertRequest;->certTemplate:Lorg/spongycastle/asn1/crmf/CertTemplate;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 90
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/CertRequest;->controls:Lorg/spongycastle/asn1/crmf/Controls;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/CertRequest;->controls:Lorg/spongycastle/asn1/crmf/Controls;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 95
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
