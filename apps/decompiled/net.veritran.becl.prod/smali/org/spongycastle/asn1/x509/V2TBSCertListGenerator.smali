.class public Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;
.super Ljava/lang/Object;
.source "V2TBSCertListGenerator.java"


# instance fields
.field private crlentries:Ljava/util/Vector;

.field extensions:Lorg/spongycastle/asn1/x509/X509Extensions;

.field issuer:Lorg/spongycastle/asn1/x509/X509Name;

.field nextUpdate:Lorg/spongycastle/asn1/x509/Time;

.field signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field thisUpdate:Lorg/spongycastle/asn1/x509/Time;

.field version:Lorg/spongycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/spongycastle/asn1/DERInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->version:Lorg/spongycastle/asn1/DERInteger;

    .line 46
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/spongycastle/asn1/x509/Time;

    .line 47
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    .line 48
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Ljava/util/Vector;

    .line 52
    return-void
.end method


# virtual methods
.method public addCRLEntry(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "crlEntry"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Ljava/util/Vector;

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public addCRLEntry(Lorg/spongycastle/asn1/DERInteger;Lorg/spongycastle/asn1/DERUTCTime;I)V
    .locals 1
    .param p1, "userCertificate"    # Lorg/spongycastle/asn1/DERInteger;
    .param p2, "revocationDate"    # Lorg/spongycastle/asn1/DERUTCTime;
    .param p3, "reason"    # I

    .prologue
    .line 109
    new-instance v0, Lorg/spongycastle/asn1/x509/Time;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/x509/Time;-><init>(Lorg/spongycastle/asn1/DERObject;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/spongycastle/asn1/DERInteger;Lorg/spongycastle/asn1/x509/Time;I)V

    .line 110
    return-void
.end method

.method public addCRLEntry(Lorg/spongycastle/asn1/DERInteger;Lorg/spongycastle/asn1/x509/Time;I)V
    .locals 1
    .param p1, "userCertificate"    # Lorg/spongycastle/asn1/DERInteger;
    .param p2, "revocationDate"    # Lorg/spongycastle/asn1/x509/Time;
    .param p3, "reason"    # I

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/spongycastle/asn1/DERInteger;Lorg/spongycastle/asn1/x509/Time;ILorg/spongycastle/asn1/DERGeneralizedTime;)V

    .line 115
    return-void
.end method

.method public addCRLEntry(Lorg/spongycastle/asn1/DERInteger;Lorg/spongycastle/asn1/x509/Time;ILorg/spongycastle/asn1/DERGeneralizedTime;)V
    .locals 8
    .param p1, "userCertificate"    # Lorg/spongycastle/asn1/DERInteger;
    .param p2, "revocationDate"    # Lorg/spongycastle/asn1/x509/Time;
    .param p3, "reason"    # I
    .param p4, "invalidityDate"    # Lorg/spongycastle/asn1/DERGeneralizedTime;

    .prologue
    .line 119
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 120
    .local v2, "extOids":Ljava/util/Vector;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 122
    .local v3, "extValues":Ljava/util/Vector;
    if-eqz p3, :cond_0

    .line 124
    new-instance v0, Lorg/spongycastle/asn1/x509/CRLReason;

    invoke-direct {v0, p3}, Lorg/spongycastle/asn1/x509/CRLReason;-><init>(I)V

    .line 128
    .local v0, "crlReason":Lorg/spongycastle/asn1/x509/CRLReason;
    :try_start_0
    sget-object v4, Lorg/spongycastle/asn1/x509/X509Extension;->reasonCode:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 129
    new-instance v4, Lorg/spongycastle/asn1/x509/X509Extension;

    const/4 v5, 0x0

    new-instance v6, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CRLReason;->getEncoded()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v4, v5, v6}, Lorg/spongycastle/asn1/x509/X509Extension;-><init>(ZLorg/spongycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v0    # "crlReason":Lorg/spongycastle/asn1/x509/CRLReason;
    :cond_0
    if-eqz p4, :cond_1

    .line 141
    :try_start_1
    sget-object v4, Lorg/spongycastle/asn1/x509/X509Extension;->invalidityDate:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 142
    new-instance v4, Lorg/spongycastle/asn1/x509/X509Extension;

    const/4 v5, 0x0

    new-instance v6, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {p4}, Lorg/spongycastle/asn1/DERGeneralizedTime;->getEncoded()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v4, v5, v6}, Lorg/spongycastle/asn1/x509/X509Extension;-><init>(ZLorg/spongycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    new-instance v4, Lorg/spongycastle/asn1/x509/X509Extensions;

    invoke-direct {v4, v2, v3}, Lorg/spongycastle/asn1/x509/X509Extensions;-><init>(Ljava/util/Vector;Ljava/util/Vector;)V

    invoke-virtual {p0, p1, p2, v4}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/spongycastle/asn1/DERInteger;Lorg/spongycastle/asn1/x509/Time;Lorg/spongycastle/asn1/x509/X509Extensions;)V

    .line 158
    :goto_0
    return-void

    .line 131
    .restart local v0    # "crlReason":Lorg/spongycastle/asn1/x509/CRLReason;
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error encoding reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 144
    .end local v0    # "crlReason":Lorg/spongycastle/asn1/x509/CRLReason;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 146
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error encoding invalidityDate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 156
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, p1, p2, v4}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/spongycastle/asn1/DERInteger;Lorg/spongycastle/asn1/x509/Time;Lorg/spongycastle/asn1/x509/X509Extensions;)V

    goto :goto_0
.end method

.method public addCRLEntry(Lorg/spongycastle/asn1/DERInteger;Lorg/spongycastle/asn1/x509/Time;Lorg/spongycastle/asn1/x509/X509Extensions;)V
    .locals 2
    .param p1, "userCertificate"    # Lorg/spongycastle/asn1/DERInteger;
    .param p2, "revocationDate"    # Lorg/spongycastle/asn1/x509/Time;
    .param p3, "extensions"    # Lorg/spongycastle/asn1/x509/X509Extensions;

    .prologue
    .line 162
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 164
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 165
    invoke-virtual {v0, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 167
    if-eqz p3, :cond_0

    .line 169
    invoke-virtual {v0, p3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 172
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 173
    return-void
.end method

.method public generateTBSCertList()Lorg/spongycastle/asn1/x509/TBSCertList;
    .locals 6

    .prologue
    .line 183
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/spongycastle/asn1/x509/X509Name;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/spongycastle/asn1/x509/Time;

    if-nez v3, :cond_1

    .line 185
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Not all mandatory fields set in V2 TBSCertList generator."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 188
    :cond_1
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 190
    .local v2, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->version:Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 191
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 192
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/spongycastle/asn1/x509/X509Name;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 194
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/spongycastle/asn1/x509/Time;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 195
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/spongycastle/asn1/x509/Time;

    if-eqz v3, :cond_2

    .line 197
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/spongycastle/asn1/x509/Time;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 201
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Ljava/util/Vector;

    if-eqz v3, :cond_4

    .line 203
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 204
    .local v0, "certs":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 205
    .local v1, "it":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 207
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    goto :goto_0

    .line 209
    :cond_3
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 212
    .end local v0    # "certs":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v1    # "it":Ljava/util/Enumeration;
    :cond_4
    iget-object v3, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    if-eqz v3, :cond_5

    .line 214
    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/DEREncodable;)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 217
    :cond_5
    new-instance v3, Lorg/spongycastle/asn1/x509/TBSCertList;

    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v4, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/x509/TBSCertList;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v3
.end method

.method public setExtensions(Lorg/spongycastle/asn1/x509/X509Extensions;)V
    .locals 0
    .param p1, "extensions"    # Lorg/spongycastle/asn1/x509/X509Extensions;

    .prologue
    .line 178
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/spongycastle/asn1/x509/X509Extensions;

    .line 179
    return-void
.end method

.method public setIssuer(Lorg/spongycastle/asn1/x500/X500Name;)V
    .locals 1
    .param p1, "issuer"    # Lorg/spongycastle/asn1/x500/X500Name;

    .prologue
    .line 69
    invoke-static {p1}, Lorg/spongycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/X509Name;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/spongycastle/asn1/x509/X509Name;

    .line 70
    return-void
.end method

.method public setIssuer(Lorg/spongycastle/asn1/x509/X509Name;)V
    .locals 0
    .param p1, "issuer"    # Lorg/spongycastle/asn1/x509/X509Name;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/spongycastle/asn1/x509/X509Name;

    .line 65
    return-void
.end method

.method public setNextUpdate(Lorg/spongycastle/asn1/DERUTCTime;)V
    .locals 1
    .param p1, "nextUpdate"    # Lorg/spongycastle/asn1/DERUTCTime;

    .prologue
    .line 81
    new-instance v0, Lorg/spongycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/x509/Time;-><init>(Lorg/spongycastle/asn1/DERObject;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/spongycastle/asn1/x509/Time;

    .line 82
    return-void
.end method

.method public setNextUpdate(Lorg/spongycastle/asn1/x509/Time;)V
    .locals 0
    .param p1, "nextUpdate"    # Lorg/spongycastle/asn1/x509/Time;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/spongycastle/asn1/x509/Time;

    .line 94
    return-void
.end method

.method public setSignature(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "signature"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 59
    return-void
.end method

.method public setThisUpdate(Lorg/spongycastle/asn1/DERUTCTime;)V
    .locals 1
    .param p1, "thisUpdate"    # Lorg/spongycastle/asn1/DERUTCTime;

    .prologue
    .line 75
    new-instance v0, Lorg/spongycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/x509/Time;-><init>(Lorg/spongycastle/asn1/DERObject;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/spongycastle/asn1/x509/Time;

    .line 76
    return-void
.end method

.method public setThisUpdate(Lorg/spongycastle/asn1/x509/Time;)V
    .locals 0
    .param p1, "thisUpdate"    # Lorg/spongycastle/asn1/x509/Time;

    .prologue
    .line 87
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/spongycastle/asn1/x509/Time;

    .line 88
    return-void
.end method
