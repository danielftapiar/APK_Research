.class public Lorg/spongycastle/jce/netscape/NetscapeCertRequest;
.super Lorg/spongycastle/asn1/ASN1Encodable;
.source "NetscapeCertRequest.java"


# instance fields
.field challenge:Ljava/lang/String;

.field content:Lorg/spongycastle/asn1/DERBitString;

.field keyAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field pubkey:Ljava/security/PublicKey;

.field sigAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field sigBits:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)V
    .locals 3
    .param p1, "challenge"    # Ljava/lang/String;
    .param p2, "signing_alg"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "pub_key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 137
    iput-object p1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 139
    iput-object p3, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    .line 141
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 142
    .local v0, "content_der":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct {p0}, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->getKeySpec()Lorg/spongycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 144
    new-instance v1, Lorg/spongycastle/asn1/DERIA5String;

    invoke-direct {v1, p1}, Lorg/spongycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 146
    new-instance v1, Lorg/spongycastle/asn1/DERBitString;

    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERBitString;-><init>(Lorg/spongycastle/asn1/DEREncodable;)V

    iput-object v1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->content:Lorg/spongycastle/asn1/DERBitString;

    .line 147
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 7
    .param p1, "spkac"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v6, 0x2

    .line 72
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Encodable;-><init>()V

    .line 83
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 85
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid SPKAC (size):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    new-instance v5, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v5, v4}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    iput-object v5, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 91
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    .line 99
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 101
    .local v1, "pkac":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 103
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid PKAC (len): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 107
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/asn1/DERIA5String;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    .line 111
    new-instance v4, Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {v4, v1}, Lorg/spongycastle/asn1/DERBitString;-><init>(Lorg/spongycastle/asn1/DEREncodable;)V

    iput-object v4, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->content:Lorg/spongycastle/asn1/DERBitString;

    .line 113
    new-instance v2, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v4}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 116
    .local v2, "pubkeyinfo":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    new-instance v4, Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {v4, v2}, Lorg/spongycastle/asn1/DERBitString;-><init>(Lorg/spongycastle/asn1/DEREncodable;)V

    invoke-virtual {v4}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 119
    .local v3, "xspec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 120
    iget-object v4, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "req"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p1}, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->getReq([B)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 69
    return-void
.end method

.method private getKeySpec()Lorg/spongycastle/asn1/DERObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 255
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 259
    .local v3, "obj":Lorg/spongycastle/asn1/DERObject;
    :try_start_0
    iget-object v4, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 260
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 262
    new-instance v1, Lorg/spongycastle/asn1/ASN1InputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v4}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 265
    .local v1, "derin":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/DERObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 271
    return-object v3

    .line 267
    .end local v1    # "derin":Lorg/spongycastle/asn1/ASN1InputStream;
    :catch_0
    move-exception v2

    .line 269
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static getReq([B)Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 2
    .param p0, "r"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    .local v0, "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getChallenge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getSigningAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public setChallenge(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setKeyAlgorithm(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "value"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .prologue
    .line 176
    iput-object p1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 177
    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .locals 0
    .param p1, "value"    # Ljava/security/PublicKey;

    .prologue
    .line 186
    iput-object p1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    .line 187
    return-void
.end method

.method public setSigningAlgorithm(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "value"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .prologue
    .line 166
    iput-object p1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 167
    return-void
.end method

.method public sign(Ljava/security/PrivateKey;)V
    .locals 1
    .param p1, "priv_key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 214
    return-void
.end method

.method public sign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "priv_key"    # Ljava/security/PrivateKey;
    .param p2, "rand"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v3, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 224
    .local v2, "sig":Ljava/security/Signature;
    if-eqz p2, :cond_0

    .line 226
    invoke-virtual {v2, p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 233
    :goto_0
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 235
    .local v1, "pkac":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct {p0}, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->getKeySpec()Lorg/spongycastle/asn1/DERObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 236
    new-instance v3, Lorg/spongycastle/asn1/DERIA5String;

    iget-object v4, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 240
    :try_start_0
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    const-string v4, "DER"

    invoke-virtual {v3, v4}, Lorg/spongycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/Signature;->update([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    invoke-virtual {v2}, Ljava/security/Signature;->sign()[B

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    .line 248
    return-void

    .line 230
    .end local v1    # "pkac":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_0
    invoke-virtual {v2, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    goto :goto_0

    .line 242
    .restart local v1    # "pkac":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/DERObject;
    .locals 4

    .prologue
    .line 276
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 277
    .local v1, "spkac":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 281
    .local v0, "pkac":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :try_start_0
    invoke-direct {p0}, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->getKeySpec()Lorg/spongycastle/asn1/DERObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    new-instance v2, Lorg/spongycastle/asn1/DERIA5String;

    iget-object v3, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 290
    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 291
    iget-object v2, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 292
    new-instance v2, Lorg/spongycastle/asn1/DERBitString;

    iget-object v3, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 294
    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v2

    .line 283
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public verify(Ljava/lang/String;)Z
    .locals 3
    .param p1, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    const/4 v1, 0x0

    .line 206
    :goto_0
    return v1

    .line 201
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 203
    .local v0, "sig":Ljava/security/Signature;
    iget-object v1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 204
    iget-object v1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->content:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 206
    iget-object v1, p0, Lorg/spongycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    goto :goto_0
.end method
