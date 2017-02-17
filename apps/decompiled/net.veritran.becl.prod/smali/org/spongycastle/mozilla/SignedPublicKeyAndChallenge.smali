.class public Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "SignedPublicKeyAndChallenge.java"


# instance fields
.field private pkac:Lorg/spongycastle/asn1/mozilla/PublicKeyAndChallenge;

.field private signature:Lorg/spongycastle/asn1/DERBitString;

.field private signatureAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private spkacSeq:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 65
    invoke-static {p1}, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;->toDERSequence([B)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;->spkacSeq:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 66
    iget-object v0, p0, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;->spkacSeq:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/mozilla/PublicKeyAndChallenge;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/mozilla/PublicKeyAndChallenge;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;->pkac:Lorg/spongycastle/asn1/mozilla/PublicKeyAndChallenge;

    .line 67
    iget-object v0, p0, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;->spkacSeq:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;->signatureAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 69
    iget-object v0, p0, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;->spkacSeq:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DERBitString;

    iput-object v0, p0, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;->signature:Lorg/spongycastle/asn1/DERBitString;

    .line 70
    return-void
.end method

.method private static toDERSequence([B)Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 47
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 48
    .local v1, "bIn":Ljava/io/ByteArrayInputStream;
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 50
    .local v0, "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 52
    .end local v0    # "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "badly encoded request"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 8
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v6, p0, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;->pkac:Lorg/spongycastle/asn1/mozilla/PublicKeyAndChallenge;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/mozilla/PublicKeyAndChallenge;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v4

    .line 117
    .local v4, "subjectPKInfo":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERBitString;-><init>(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 118
    .local v0, "bStr":Lorg/spongycastle/asn1/DERBitString;
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 121
    .local v5, "xspec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    .line 123
    .local v3, "keyAlg":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 126
    .local v2, "factory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 129
    .end local v0    # "bStr":Lorg/spongycastle/asn1/DERBitString;
    .end local v2    # "factory":Ljava/security/KeyFactory;
    .end local v3    # "keyAlg":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .end local v5    # "xspec":Ljava/security/spec/X509EncodedKeySpec;
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "error encoding public key"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getPublicKeyAndChallenge()Lorg/spongycastle/asn1/mozilla/PublicKeyAndChallenge;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;->pkac:Lorg/spongycastle/asn1/mozilla/PublicKeyAndChallenge;

    return-object v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;->spkacSeq:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public verify()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;->verify(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public verify(Ljava/lang/String;)Z
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, "sig":Ljava/security/Signature;
    if-nez p1, :cond_0

    .line 96
    iget-object v3, p0, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;->signatureAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 102
    :goto_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    .line 103
    .local v1, "pubKey":Ljava/security/PublicKey;
    invoke-virtual {v2, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 104
    new-instance v0, Lorg/spongycastle/asn1/DERBitString;

    iget-object v3, p0, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;->pkac:Lorg/spongycastle/asn1/mozilla/PublicKeyAndChallenge;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERBitString;-><init>(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 105
    .local v0, "pkBytes":Lorg/spongycastle/asn1/DERBitString;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/Signature;->update([B)V

    .line 107
    iget-object v3, p0, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;->signature:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    return v3

    .line 100
    .end local v0    # "pkBytes":Lorg/spongycastle/asn1/DERBitString;
    .end local v1    # "pubKey":Ljava/security/PublicKey;
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/mozilla/SignedPublicKeyAndChallenge;->signatureAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    goto :goto_0
.end method
