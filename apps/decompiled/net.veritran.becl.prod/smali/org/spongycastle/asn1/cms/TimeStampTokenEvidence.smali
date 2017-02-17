.class public Lorg/spongycastle/asn1/cms/TimeStampTokenEvidence;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "TimeStampTokenEvidence.java"


# instance fields
.field private timeStampAndCRLs:[Lorg/spongycastle/asn1/cms/TimeStampAndCRL;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 31
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v3, v3, [Lorg/spongycastle/asn1/cms/TimeStampAndCRL;

    iput-object v3, p0, Lorg/spongycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/spongycastle/asn1/cms/TimeStampAndCRL;

    .line 33
    const/4 v0, 0x0

    .line 35
    .local v0, "count":I
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    iget-object v3, p0, Lorg/spongycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/spongycastle/asn1/cms/TimeStampAndCRL;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/cms/TimeStampAndCRL;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/TimeStampAndCRL;

    move-result-object v4

    aput-object v4, v3, v0

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/TimeStampAndCRL;)V
    .locals 2
    .param p1, "timeStampAndCRL"    # Lorg/spongycastle/asn1/cms/TimeStampAndCRL;

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/spongycastle/asn1/cms/TimeStampAndCRL;

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/spongycastle/asn1/cms/TimeStampAndCRL;

    .line 26
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/spongycastle/asn1/cms/TimeStampAndCRL;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 27
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/cms/TimeStampAndCRL;)V
    .locals 0
    .param p1, "timeStampAndCRLs"    # [Lorg/spongycastle/asn1/cms/TimeStampAndCRL;

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/spongycastle/asn1/cms/TimeStampAndCRL;

    .line 20
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/TimeStampTokenEvidence;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 48
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/TimeStampTokenEvidence;

    if-eqz v0, :cond_0

    .line 50
    check-cast p0, Lorg/spongycastle/asn1/cms/TimeStampTokenEvidence;

    .line 57
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 52
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 54
    new-instance v0, Lorg/spongycastle/asn1/cms/TimeStampTokenEvidence;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cms/TimeStampTokenEvidence;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 57
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/TimeStampTokenEvidence;
    .locals 1
    .param p0, "tagged"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 43
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/TimeStampTokenEvidence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/TimeStampTokenEvidence;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 3

    .prologue
    .line 74
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 76
    .local v1, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/spongycastle/asn1/cms/TimeStampAndCRL;

    array-length v2, v2

    if-eq v0, v2, :cond_0

    .line 78
    iget-object v2, p0, Lorg/spongycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/spongycastle/asn1/cms/TimeStampAndCRL;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v2
.end method

.method public toTimeStampAndCRLArray()[Lorg/spongycastle/asn1/cms/TimeStampAndCRL;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampTokenEvidence;->timeStampAndCRLs:[Lorg/spongycastle/asn1/cms/TimeStampAndCRL;

    return-object v0
.end method
