.class public Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "CertificationRequestInfo.java"


# instance fields
.field attributes:Lorg/spongycastle/asn1/ASN1Set;

.field subject:Lorg/spongycastle/asn1/x509/X509Name;

.field subjectPKInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

.field version:Lorg/spongycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 36
    new-instance v1, Lorg/spongycastle/asn1/DERInteger;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERInteger;-><init>(I)V

    iput-object v1, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->version:Lorg/spongycastle/asn1/DERInteger;

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 89
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/DERInteger;

    iput-object v1, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->version:Lorg/spongycastle/asn1/DERInteger;

    .line 91
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/X509Name;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lorg/spongycastle/asn1/x509/X509Name;

    .line 92
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 98
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 100
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DERTaggedObject;

    .line 101
    .local v0, "tagobj":Lorg/spongycastle/asn1/DERTaggedObject;
    invoke-static {v0, v2}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 104
    .end local v0    # "tagobj":Lorg/spongycastle/asn1/DERTaggedObject;
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lorg/spongycastle/asn1/x509/X509Name;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->version:Lorg/spongycastle/asn1/DERInteger;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    if-nez v1, :cond_2

    .line 106
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not all mandatory fields set in CertificationRequestInfo generator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/spongycastle/asn1/ASN1Set;)V
    .locals 2
    .param p1, "subject"    # Lorg/spongycastle/asn1/x500/X500Name;
    .param p2, "pkInfo"    # Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p3, "attributes"    # Lorg/spongycastle/asn1/ASN1Set;

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 36
    new-instance v0, Lorg/spongycastle/asn1/DERInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->version:Lorg/spongycastle/asn1/DERInteger;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 61
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/X500Name;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/X509Name;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lorg/spongycastle/asn1/x509/X509Name;

    .line 62
    iput-object p2, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 63
    iput-object p3, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 65
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->version:Lorg/spongycastle/asn1/DERInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    if-nez v0, :cond_1

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not all mandatory fields set in CertificationRequestInfo generator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/X509Name;Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/spongycastle/asn1/ASN1Set;)V
    .locals 2
    .param p1, "subject"    # Lorg/spongycastle/asn1/x509/X509Name;
    .param p2, "pkInfo"    # Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p3, "attributes"    # Lorg/spongycastle/asn1/ASN1Set;

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 36
    new-instance v0, Lorg/spongycastle/asn1/DERInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->version:Lorg/spongycastle/asn1/DERInteger;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 76
    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lorg/spongycastle/asn1/x509/X509Name;

    .line 77
    iput-object p2, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 78
    iput-object p3, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 80
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->version:Lorg/spongycastle/asn1/DERInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    if-nez v0, :cond_1

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not all mandatory fields set in CertificationRequestInfo generator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 44
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;

    if-eqz v0, :cond_0

    .line 46
    check-cast p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;

    .line 50
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 48
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 50
    new-instance v0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 53
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
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


# virtual methods
.method public getAttributes()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getSubject()Lorg/spongycastle/asn1/x509/X509Name;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lorg/spongycastle/asn1/x509/X509Name;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getVersion()Lorg/spongycastle/asn1/DERInteger;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->version:Lorg/spongycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 134
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->version:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 135
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->subject:Lorg/spongycastle/asn1/x509/X509Name;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 136
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->subjectPKInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 138
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 140
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->attributes:Lorg/spongycastle/asn1/ASN1Set;

    invoke-direct {v1, v3, v3, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 143
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
