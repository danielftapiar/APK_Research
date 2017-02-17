.class public Lorg/spongycastle/asn1/x9/DHDomainParameters;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "DHDomainParameters.java"


# instance fields
.field private g:Lorg/spongycastle/asn1/DERInteger;

.field private j:Lorg/spongycastle/asn1/DERInteger;

.field private p:Lorg/spongycastle/asn1/DERInteger;

.field private q:Lorg/spongycastle/asn1/DERInteger;

.field private validationParms:Lorg/spongycastle/asn1/x9/DHValidationParms;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 66
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    .line 68
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sequence size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 72
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->p:Lorg/spongycastle/asn1/DERInteger;

    .line 73
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->g:Lorg/spongycastle/asn1/DERInteger;

    .line 74
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->q:Lorg/spongycastle/asn1/DERInteger;

    .line 76
    invoke-static {v0}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getNext(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v1

    .line 78
    .local v1, "next":Lorg/spongycastle/asn1/DEREncodable;
    if-eqz v1, :cond_2

    instance-of v2, v1, Lorg/spongycastle/asn1/DERInteger;

    if-eqz v2, :cond_2

    .line 80
    invoke-static {v1}, Lorg/spongycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->j:Lorg/spongycastle/asn1/DERInteger;

    .line 81
    invoke-static {v0}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getNext(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v1

    .line 84
    :cond_2
    if-eqz v1, :cond_3

    .line 86
    invoke-interface {v1}, Lorg/spongycastle/asn1/DEREncodable;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x9/DHValidationParms;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DHValidationParms;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/spongycastle/asn1/x9/DHValidationParms;

    .line 88
    :cond_3
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERInteger;Lorg/spongycastle/asn1/DERInteger;Lorg/spongycastle/asn1/DERInteger;Lorg/spongycastle/asn1/DERInteger;Lorg/spongycastle/asn1/x9/DHValidationParms;)V
    .locals 2
    .param p1, "p"    # Lorg/spongycastle/asn1/DERInteger;
    .param p2, "g"    # Lorg/spongycastle/asn1/DERInteger;
    .param p3, "q"    # Lorg/spongycastle/asn1/DERInteger;
    .param p4, "j"    # Lorg/spongycastle/asn1/DERInteger;
    .param p5, "validationParms"    # Lorg/spongycastle/asn1/x9/DHValidationParms;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'p\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    if-nez p2, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'g\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    if-nez p3, :cond_2

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'q\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->p:Lorg/spongycastle/asn1/DERInteger;

    .line 58
    iput-object p2, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->g:Lorg/spongycastle/asn1/DERInteger;

    .line 59
    iput-object p3, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->q:Lorg/spongycastle/asn1/DERInteger;

    .line 60
    iput-object p4, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->j:Lorg/spongycastle/asn1/DERInteger;

    .line 61
    iput-object p5, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/spongycastle/asn1/x9/DHValidationParms;

    .line 62
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DHDomainParameters;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 27
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;

    .line 34
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 32
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 34
    new-instance v0, Lorg/spongycastle/asn1/x9/DHDomainParameters;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x9/DHDomainParameters;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 37
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DHDomainParameters: "

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

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x9/DHDomainParameters;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 22
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DHDomainParameters;

    move-result-object v0

    return-object v0
.end method

.method private static getNext(Ljava/util/Enumeration;)Lorg/spongycastle/asn1/DEREncodable;
    .locals 1
    .param p0, "e"    # Ljava/util/Enumeration;

    .prologue
    .line 92
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DEREncodable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getG()Lorg/spongycastle/asn1/DERInteger;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->g:Lorg/spongycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getJ()Lorg/spongycastle/asn1/DERInteger;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->j:Lorg/spongycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getP()Lorg/spongycastle/asn1/DERInteger;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->p:Lorg/spongycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getQ()Lorg/spongycastle/asn1/DERInteger;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->q:Lorg/spongycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getValidationParms()Lorg/spongycastle/asn1/x9/DHValidationParms;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/spongycastle/asn1/x9/DHValidationParms;

    return-object v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 123
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->p:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 124
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->g:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 125
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->q:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 127
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->j:Lorg/spongycastle/asn1/DERInteger;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->j:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 132
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/spongycastle/asn1/x9/DHValidationParms;

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/spongycastle/asn1/x9/DHValidationParms;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 137
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
