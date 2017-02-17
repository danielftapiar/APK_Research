.class public Lorg/spongycastle/asn1/x509/BasicConstraints;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "BasicConstraints.java"


# instance fields
.field cA:Lorg/spongycastle/asn1/DERBoolean;

.field pathLenConstraint:Lorg/spongycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "pathLenConstraint"    # I

    .prologue
    .line 123
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 17
    new-instance v0, Lorg/spongycastle/asn1/DERBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/DERInteger;

    .line 124
    new-instance v0, Lorg/spongycastle/asn1/DERBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    .line 125
    new-instance v0, Lorg/spongycastle/asn1/DERInteger;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/DERInteger;

    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 17
    new-instance v0, Lorg/spongycastle/asn1/DERBoolean;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    .line 18
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/DERInteger;

    .line 51
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    .line 54
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/DERInteger;

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/DERBoolean;

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBoolean;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    .line 67
    :goto_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 69
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    if-eqz v0, :cond_3

    .line 71
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/DERInteger;

    goto :goto_0

    .line 64
    :cond_2
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    .line 65
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/DERInteger;

    goto :goto_1

    .line 75
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong sequence in constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "cA"    # Z

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 17
    new-instance v0, Lorg/spongycastle/asn1/DERBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    .line 18
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/DERInteger;

    .line 105
    if-eqz p1, :cond_0

    .line 107
    new-instance v0, Lorg/spongycastle/asn1/DERBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    .line 113
    :goto_0
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/DERInteger;

    .line 114
    return-void

    .line 111
    :cond_0
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    goto :goto_0
.end method

.method public constructor <init>(ZI)V
    .locals 3
    .param p1, "cA"    # Z
    .param p2, "pathLenConstraint"    # I

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 17
    new-instance v0, Lorg/spongycastle/asn1/DERBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    .line 18
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/DERInteger;

    .line 90
    if-eqz p1, :cond_0

    .line 92
    new-instance v0, Lorg/spongycastle/asn1/DERBoolean;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    .line 93
    new-instance v0, Lorg/spongycastle/asn1/DERInteger;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/DERInteger;

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_0
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    .line 98
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/DERInteger;

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 30
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;

    if-eqz v0, :cond_1

    .line 32
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/x509/BasicConstraints;

    .line 42
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 35
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 37
    new-instance v0, Lorg/spongycastle/asn1/x509/BasicConstraints;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/BasicConstraints;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 40
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/X509Extension;

    if-eqz v0, :cond_3

    .line 42
    check-cast p0, Lorg/spongycastle/asn1/x509/X509Extension;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lorg/spongycastle/asn1/x509/X509Extension;->convertValueToObject(Lorg/spongycastle/asn1/x509/X509Extension;)Lorg/spongycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;

    move-result-object p0

    goto :goto_0

    .line 45
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
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

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/BasicConstraints;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 24
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPathLenConstraint()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/DERInteger;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCA()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBoolean;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 156
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 161
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/DERInteger;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 166
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/DERInteger;

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    if-nez v0, :cond_0

    .line 175
    const-string v0, "BasicConstraints: isCa(false)"

    .line 179
    :goto_0
    return-object v0

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasicConstraints: isCa("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasicConstraints: isCa("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), pathLenConstraint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
