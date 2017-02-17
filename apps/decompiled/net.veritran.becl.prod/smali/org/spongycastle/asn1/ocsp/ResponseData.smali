.class public Lorg/spongycastle/asn1/ocsp/ResponseData;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "ResponseData.java"


# static fields
.field private static final V1:Lorg/spongycastle/asn1/DERInteger;


# instance fields
.field private producedAt:Lorg/spongycastle/asn1/DERGeneralizedTime;

.field private responderID:Lorg/spongycastle/asn1/ocsp/ResponderID;

.field private responseExtensions:Lorg/spongycastle/asn1/x509/X509Extensions;

.field private responses:Lorg/spongycastle/asn1/ASN1Sequence;

.field private version:Lorg/spongycastle/asn1/DERInteger;

.field private versionPresent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lorg/spongycastle/asn1/DERInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERInteger;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/ocsp/ResponseData;->V1:Lorg/spongycastle/asn1/DERInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "index":I
    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v3

    instance-of v3, v3, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_2

    .line 57
    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 59
    .local v2, "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    if-nez v3, :cond_1

    .line 61
    iput-boolean v5, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->versionPresent:Z

    .line 62
    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {v3, v5}, Lorg/spongycastle/asn1/DERInteger;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->version:Lorg/spongycastle/asn1/DERInteger;

    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 76
    .end local v2    # "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ocsp/ResponderID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/ResponderID;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->responderID:Lorg/spongycastle/asn1/ocsp/ResponderID;

    .line 77
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/DERGeneralizedTime;

    iput-object v3, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->producedAt:Lorg/spongycastle/asn1/DERGeneralizedTime;

    .line 78
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Sequence;

    iput-object v3, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->responses:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 80
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 82
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {v3, v5}, Lorg/spongycastle/asn1/x509/X509Extensions;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/X509Extensions;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->responseExtensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    .line 85
    :cond_0
    return-void

    .line 68
    .end local v1    # "index":I
    .restart local v0    # "index":I
    .restart local v2    # "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_1
    sget-object v3, Lorg/spongycastle/asn1/ocsp/ResponseData;->V1:Lorg/spongycastle/asn1/DERInteger;

    iput-object v3, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->version:Lorg/spongycastle/asn1/DERInteger;

    goto :goto_0

    .line 73
    .end local v2    # "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_2
    sget-object v3, Lorg/spongycastle/asn1/ocsp/ResponseData;->V1:Lorg/spongycastle/asn1/DERInteger;

    iput-object v3, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->version:Lorg/spongycastle/asn1/DERInteger;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERInteger;Lorg/spongycastle/asn1/ocsp/ResponderID;Lorg/spongycastle/asn1/DERGeneralizedTime;Lorg/spongycastle/asn1/ASN1Sequence;Lorg/spongycastle/asn1/x509/X509Extensions;)V
    .locals 0
    .param p1, "version"    # Lorg/spongycastle/asn1/DERInteger;
    .param p2, "responderID"    # Lorg/spongycastle/asn1/ocsp/ResponderID;
    .param p3, "producedAt"    # Lorg/spongycastle/asn1/DERGeneralizedTime;
    .param p4, "responses"    # Lorg/spongycastle/asn1/ASN1Sequence;
    .param p5, "responseExtensions"    # Lorg/spongycastle/asn1/x509/X509Extensions;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->version:Lorg/spongycastle/asn1/DERInteger;

    .line 35
    iput-object p2, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->responderID:Lorg/spongycastle/asn1/ocsp/ResponderID;

    .line 36
    iput-object p3, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->producedAt:Lorg/spongycastle/asn1/DERGeneralizedTime;

    .line 37
    iput-object p4, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->responses:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 38
    iput-object p5, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->responseExtensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ocsp/ResponderID;Lorg/spongycastle/asn1/DERGeneralizedTime;Lorg/spongycastle/asn1/ASN1Sequence;Lorg/spongycastle/asn1/x509/X509Extensions;)V
    .locals 6
    .param p1, "responderID"    # Lorg/spongycastle/asn1/ocsp/ResponderID;
    .param p2, "producedAt"    # Lorg/spongycastle/asn1/DERGeneralizedTime;
    .param p3, "responses"    # Lorg/spongycastle/asn1/ASN1Sequence;
    .param p4, "responseExtensions"    # Lorg/spongycastle/asn1/x509/X509Extensions;

    .prologue
    .line 47
    sget-object v1, Lorg/spongycastle/asn1/ocsp/ResponseData;->V1:Lorg/spongycastle/asn1/DERInteger;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/ocsp/ResponseData;-><init>(Lorg/spongycastle/asn1/DERInteger;Lorg/spongycastle/asn1/ocsp/ResponderID;Lorg/spongycastle/asn1/DERGeneralizedTime;Lorg/spongycastle/asn1/ASN1Sequence;Lorg/spongycastle/asn1/x509/X509Extensions;)V

    .line 48
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/ResponseData;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 97
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/ocsp/ResponseData;

    .line 103
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 101
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 103
    new-instance v0, Lorg/spongycastle/asn1/ocsp/ResponseData;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ocsp/ResponseData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 106
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

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

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ocsp/ResponseData;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 91
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getProducedAt()Lorg/spongycastle/asn1/DERGeneralizedTime;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->producedAt:Lorg/spongycastle/asn1/DERGeneralizedTime;

    return-object v0
.end method

.method public getResponderID()Lorg/spongycastle/asn1/ocsp/ResponderID;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->responderID:Lorg/spongycastle/asn1/ocsp/ResponderID;

    return-object v0
.end method

.method public getResponseExtensions()Lorg/spongycastle/asn1/x509/X509Extensions;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->responseExtensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public getResponses()Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->responses:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getVersion()Lorg/spongycastle/asn1/DERInteger;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->version:Lorg/spongycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 147
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 149
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-boolean v1, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->versionPresent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->version:Lorg/spongycastle/asn1/DERInteger;

    sget-object v2, Lorg/spongycastle/asn1/ocsp/ResponseData;->V1:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/DERInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->version:Lorg/spongycastle/asn1/DERInteger;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 154
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->responderID:Lorg/spongycastle/asn1/ocsp/ResponderID;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 155
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->producedAt:Lorg/spongycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 156
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->responses:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 157
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->responseExtensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    if-eqz v1, :cond_2

    .line 159
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->responseExtensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 162
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
