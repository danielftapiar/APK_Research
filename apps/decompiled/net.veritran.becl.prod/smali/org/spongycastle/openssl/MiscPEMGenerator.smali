.class public Lorg/spongycastle/openssl/MiscPEMGenerator;
.super Ljava/lang/Object;
.source "MiscPEMGenerator.java"

# interfaces
.implements Lorg/spongycastle/util/io/pem/PemObjectGenerator;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private obj:Ljava/lang/Object;

.field private password:[C

.field private provider:Ljava/security/Provider;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/spongycastle/openssl/MiscPEMGenerator;->obj:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;[CLjava/security/SecureRandom;Ljava/lang/String;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .param p4, "random"    # Ljava/security/SecureRandom;
    .param p5, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/spongycastle/openssl/MiscPEMGenerator;->obj:Ljava/lang/Object;

    .line 83
    iput-object p2, p0, Lorg/spongycastle/openssl/MiscPEMGenerator;->algorithm:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lorg/spongycastle/openssl/MiscPEMGenerator;->password:[C

    .line 85
    iput-object p4, p0, Lorg/spongycastle/openssl/MiscPEMGenerator;->random:Ljava/security/SecureRandom;

    .line 87
    if-eqz p5, :cond_0

    .line 89
    invoke-static {p5}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/openssl/MiscPEMGenerator;->provider:Ljava/security/Provider;

    .line 90
    iget-object v0, p0, Lorg/spongycastle/openssl/MiscPEMGenerator;->provider:Ljava/security/Provider;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/security/NoSuchProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;[CLjava/security/SecureRandom;Ljava/security/Provider;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .param p4, "random"    # Ljava/security/SecureRandom;
    .param p5, "provider"    # Ljava/security/Provider;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/spongycastle/openssl/MiscPEMGenerator;->obj:Ljava/lang/Object;

    .line 68
    iput-object p2, p0, Lorg/spongycastle/openssl/MiscPEMGenerator;->algorithm:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lorg/spongycastle/openssl/MiscPEMGenerator;->password:[C

    .line 70
    iput-object p4, p0, Lorg/spongycastle/openssl/MiscPEMGenerator;->random:Ljava/security/SecureRandom;

    .line 71
    iput-object p5, p0, Lorg/spongycastle/openssl/MiscPEMGenerator;->provider:Ljava/security/Provider;

    .line 72
    return-void
.end method

.method private createPemObject(Ljava/lang/Object;)Lorg/spongycastle/util/io/pem/PemObject;
    .locals 11
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    instance-of v8, p1, Lorg/spongycastle/util/io/pem/PemObject;

    if-eqz v8, :cond_0

    .line 105
    check-cast p1, Lorg/spongycastle/util/io/pem/PemObject;

    .line 207
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 107
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v8, p1, Lorg/spongycastle/util/io/pem/PemObjectGenerator;

    if-eqz v8, :cond_1

    .line 109
    check-cast p1, Lorg/spongycastle/util/io/pem/PemObjectGenerator;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/spongycastle/util/io/pem/PemObjectGenerator;->generate()Lorg/spongycastle/util/io/pem/PemObject;

    move-result-object p1

    goto :goto_0

    .line 111
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v8, p1, Ljava/security/cert/X509Certificate;

    if-eqz v8, :cond_2

    .line 113
    const-string v4, "CERTIFICATE"

    .line 116
    .local v4, "type":Ljava/lang/String;
    :try_start_0
    check-cast p1, Ljava/security/cert/X509Certificate;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 207
    .local v1, "encoding":[B
    :goto_1
    new-instance p1, Lorg/spongycastle/util/io/pem/PemObject;

    invoke-direct {p1, v4, v1}, Lorg/spongycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    goto :goto_0

    .line 118
    .end local v1    # "encoding":[B
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v8, Lorg/spongycastle/util/io/pem/PemGenerationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot encode object: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/spongycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 123
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v4    # "type":Ljava/lang/String;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v8, p1, Ljava/security/cert/X509CRL;

    if-eqz v8, :cond_3

    .line 125
    const-string v4, "X509 CRL"

    .line 128
    .restart local v4    # "type":Ljava/lang/String;
    :try_start_1
    check-cast p1, Ljava/security/cert/X509CRL;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getEncoded()[B
    :try_end_1
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .restart local v1    # "encoding":[B
    goto :goto_1

    .line 130
    .end local v1    # "encoding":[B
    :catch_1
    move-exception v0

    .line 132
    .local v0, "e":Ljava/security/cert/CRLException;
    new-instance v8, Lorg/spongycastle/util/io/pem/PemGenerationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot encode object: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/security/cert/CRLException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/spongycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 135
    .end local v0    # "e":Ljava/security/cert/CRLException;
    .end local v4    # "type":Ljava/lang/String;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v8, p1, Ljava/security/KeyPair;

    if-eqz v8, :cond_4

    .line 137
    check-cast p1, Ljava/security/KeyPair;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/spongycastle/openssl/MiscPEMGenerator;->createPemObject(Ljava/lang/Object;)Lorg/spongycastle/util/io/pem/PemObject;

    move-result-object p1

    goto :goto_0

    .line 139
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v8, p1, Ljava/security/PrivateKey;

    if-eqz v8, :cond_8

    .line 141
    new-instance v2, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-object v8, p1

    check-cast v8, Ljava/security/Key;

    invoke-interface {v8}, Ljava/security/Key;->getEncoded()[B

    move-result-object v8

    invoke-static {v8}, Lorg/spongycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Object;

    move-result-object v8

    check-cast v8, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v8}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 144
    .local v2, "info":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    instance-of v8, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v8, :cond_5

    .line 146
    const-string v4, "RSA PRIVATE KEY"

    .line 148
    .restart local v4    # "type":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lorg/spongycastle/asn1/DERObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v1

    .restart local v1    # "encoding":[B
    goto/16 :goto_1

    .line 150
    .end local v1    # "encoding":[B
    .end local v4    # "type":Ljava/lang/String;
    :cond_5
    instance-of v8, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v8, :cond_6

    .line 152
    const-string v4, "DSA PRIVATE KEY"

    .line 154
    .restart local v4    # "type":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v8

    invoke-static {v8}, Lorg/spongycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/DSAParameter;

    move-result-object v3

    .line 155
    .local v3, "p":Lorg/spongycastle/asn1/x509/DSAParameter;
    new-instance v5, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 157
    .local v5, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v8, Lorg/spongycastle/asn1/DERInteger;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lorg/spongycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v5, v8}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 158
    new-instance v8, Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/spongycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v8}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 159
    new-instance v8, Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/spongycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v8}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 160
    new-instance v8, Lorg/spongycastle/asn1/DERInteger;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/spongycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v8}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 162
    check-cast p1, Ljava/security/interfaces/DSAPrivateKey;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v6

    .line 163
    .local v6, "x":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 165
    .local v7, "y":Ljava/math/BigInteger;
    new-instance v8, Lorg/spongycastle/asn1/DERInteger;

    invoke-direct {v8, v7}, Lorg/spongycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v8}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 166
    new-instance v8, Lorg/spongycastle/asn1/DERInteger;

    invoke-direct {v8, v6}, Lorg/spongycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v8}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 168
    new-instance v8, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v8, v5}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8}, Lorg/spongycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v1

    .line 169
    .restart local v1    # "encoding":[B
    goto/16 :goto_1

    .line 170
    .end local v1    # "encoding":[B
    .end local v3    # "p":Lorg/spongycastle/asn1/x509/DSAParameter;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v6    # "x":Ljava/math/BigInteger;
    .end local v7    # "y":Ljava/math/BigInteger;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_6
    check-cast p1, Ljava/security/PrivateKey;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ECDSA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 172
    const-string v4, "EC PRIVATE KEY"

    .line 174
    .restart local v4    # "type":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lorg/spongycastle/asn1/DERObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v1

    .restart local v1    # "encoding":[B
    goto/16 :goto_1

    .line 178
    .end local v1    # "encoding":[B
    .end local v4    # "type":Ljava/lang/String;
    :cond_7
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Cannot identify private key"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 181
    .end local v2    # "info":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_8
    instance-of v8, p1, Ljava/security/PublicKey;

    if-eqz v8, :cond_9

    .line 183
    const-string v4, "PUBLIC KEY"

    .line 185
    .restart local v4    # "type":Ljava/lang/String;
    check-cast p1, Ljava/security/PublicKey;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    .restart local v1    # "encoding":[B
    goto/16 :goto_1

    .line 187
    .end local v1    # "encoding":[B
    .end local v4    # "type":Ljava/lang/String;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_9
    instance-of v8, p1, Lorg/spongycastle/x509/X509AttributeCertificate;

    if-eqz v8, :cond_a

    .line 189
    const-string v4, "ATTRIBUTE CERTIFICATE"

    .line 190
    .restart local v4    # "type":Ljava/lang/String;
    check-cast p1, Lorg/spongycastle/x509/X509V2AttributeCertificate;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509V2AttributeCertificate;->getEncoded()[B

    move-result-object v1

    .restart local v1    # "encoding":[B
    goto/16 :goto_1

    .line 192
    .end local v1    # "encoding":[B
    .end local v4    # "type":Ljava/lang/String;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_a
    instance-of v8, p1, Lorg/spongycastle/jce/PKCS10CertificationRequest;

    if-eqz v8, :cond_b

    .line 194
    const-string v4, "CERTIFICATE REQUEST"

    .line 195
    .restart local v4    # "type":Ljava/lang/String;
    check-cast p1, Lorg/spongycastle/jce/PKCS10CertificationRequest;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/spongycastle/jce/PKCS10CertificationRequest;->getEncoded()[B

    move-result-object v1

    .restart local v1    # "encoding":[B
    goto/16 :goto_1

    .line 197
    .end local v1    # "encoding":[B
    .end local v4    # "type":Ljava/lang/String;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_b
    instance-of v8, p1, Lorg/spongycastle/asn1/cms/ContentInfo;

    if-eqz v8, :cond_c

    .line 199
    const-string v4, "PKCS7"

    .line 200
    .restart local v4    # "type":Ljava/lang/String;
    check-cast p1, Lorg/spongycastle/asn1/cms/ContentInfo;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/ContentInfo;->getEncoded()[B

    move-result-object v1

    .restart local v1    # "encoding":[B
    goto/16 :goto_1

    .line 204
    .end local v1    # "encoding":[B
    .end local v4    # "type":Ljava/lang/String;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_c
    new-instance v8, Lorg/spongycastle/util/io/pem/PemGenerationException;

    const-string v9, "unknown object passed - can\'t encode."

    invoke-direct {v8, v9}, Lorg/spongycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private createPemObject(Ljava/lang/Object;Ljava/lang/String;[CLjava/security/SecureRandom;)Lorg/spongycastle/util/io/pem/PemObject;
    .locals 23
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    move-object/from16 v0, p1

    instance-of v5, v0, Ljava/security/KeyPair;

    if-eqz v5, :cond_0

    .line 234
    check-cast p1, Ljava/security/KeyPair;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lorg/spongycastle/openssl/MiscPEMGenerator;->createPemObject(Ljava/lang/Object;Ljava/lang/String;[CLjava/security/SecureRandom;)Lorg/spongycastle/util/io/pem/PemObject;

    move-result-object v5

    .line 315
    :goto_0
    return-object v5

    .line 237
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/16 v19, 0x0

    .line 238
    .local v19, "type":Ljava/lang/String;
    const/4 v7, 0x0

    .line 240
    .local v7, "keyData":[B
    move-object/from16 v0, p1

    instance-of v5, v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v5, :cond_3

    .line 242
    const-string v19, "RSA PRIVATE KEY"

    move-object/from16 v16, p1

    .line 244
    check-cast v16, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 246
    .local v16, "k":Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v4, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;

    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v7

    .end local v7    # "keyData":[B
    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v9

    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v10

    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v11

    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v12

    invoke-direct/range {v4 .. v12}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 257
    .local v4, "keyStruct":Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;
    invoke-virtual {v4}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;->getEncoded()[B

    move-result-object v7

    .line 289
    .end local v4    # "keyStruct":Lorg/spongycastle/asn1/pkcs/RSAPrivateKeyStructure;
    .end local v16    # "k":Ljava/security/interfaces/RSAPrivateCrtKey;
    .restart local v7    # "keyData":[B
    :cond_1
    :goto_1
    if-eqz v19, :cond_2

    if-nez v7, :cond_5

    .line 292
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Object type not supported: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 259
    :cond_3
    move-object/from16 v0, p1

    instance-of v5, v0, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v5, :cond_4

    .line 261
    const-string v19, "DSA PRIVATE KEY"

    move-object/from16 v16, p1

    .line 263
    check-cast v16, Ljava/security/interfaces/DSAPrivateKey;

    .line 264
    .local v16, "k":Ljava/security/interfaces/DSAPrivateKey;
    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v17

    .line 265
    .local v17, "p":Ljava/security/interfaces/DSAParams;
    new-instance v20, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v20 .. v20}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 267
    .local v20, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v5, Lorg/spongycastle/asn1/DERInteger;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/DERInteger;-><init>(I)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 268
    new-instance v5, Lorg/spongycastle/asn1/DERInteger;

    invoke-interface/range {v17 .. v17}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 269
    new-instance v5, Lorg/spongycastle/asn1/DERInteger;

    invoke-interface/range {v17 .. v17}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 270
    new-instance v5, Lorg/spongycastle/asn1/DERInteger;

    invoke-interface/range {v17 .. v17}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 272
    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v21

    .line 273
    .local v21, "x":Ljava/math/BigInteger;
    invoke-interface/range {v17 .. v17}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v5, v0, v6}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    .line 275
    .local v22, "y":Ljava/math/BigInteger;
    new-instance v5, Lorg/spongycastle/asn1/DERInteger;

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 276
    new-instance v5, Lorg/spongycastle/asn1/DERInteger;

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 278
    new-instance v5, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v5}, Lorg/spongycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v7

    .line 279
    goto/16 :goto_1

    .line 280
    .end local v16    # "k":Ljava/security/interfaces/DSAPrivateKey;
    .end local v17    # "p":Ljava/security/interfaces/DSAParams;
    .end local v20    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v21    # "x":Ljava/math/BigInteger;
    .end local v22    # "y":Ljava/math/BigInteger;
    :cond_4
    move-object/from16 v0, p1

    instance-of v5, v0, Ljava/security/PrivateKey;

    if-eqz v5, :cond_1

    const-string v6, "ECDSA"

    move-object/from16 v5, p1

    check-cast v5, Ljava/security/PrivateKey;

    invoke-interface {v5}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 282
    const-string v19, "EC PRIVATE KEY"

    move-object/from16 v5, p1

    .line 284
    check-cast v5, Ljava/security/PrivateKey;

    invoke-interface {v5}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Object;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v18

    .line 286
    .local v18, "privInfo":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lorg/spongycastle/asn1/DERObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v7

    goto/16 :goto_1

    .line 295
    .end local v18    # "privInfo":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_5
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 298
    .local v9, "dekAlgName":Ljava/lang/String;
    const-string v5, "DESEDE"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 300
    const-string v9, "DES-EDE3-CBC"

    .line 303
    :cond_6
    const-string v5, "AES-"

    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v15, 0x10

    .line 305
    .local v15, "ivLength":I
    :goto_2
    new-array v10, v15, [B

    .line 306
    .local v10, "iv":[B
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 308
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/openssl/MiscPEMGenerator;->provider:Ljava/security/Provider;

    move-object/from16 v8, p3

    invoke-static/range {v5 .. v10}, Lorg/spongycastle/openssl/PEMUtilities;->crypt(ZLjava/security/Provider;[B[CLjava/lang/String;[B)[B

    move-result-object v13

    .line 310
    .local v13, "encData":[B
    new-instance v14, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v14, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 312
    .local v14, "headers":Ljava/util/List;
    new-instance v5, Lorg/spongycastle/util/io/pem/PemHeader;

    const-string v6, "Proc-Type"

    const-string v8, "4,ENCRYPTED"

    invoke-direct {v5, v6, v8}, Lorg/spongycastle/util/io/pem/PemHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v5, Lorg/spongycastle/util/io/pem/PemHeader;

    const-string v6, "DEK-Info"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/spongycastle/openssl/MiscPEMGenerator;->getHexEncoded([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lorg/spongycastle/util/io/pem/PemHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v5, Lorg/spongycastle/util/io/pem/PemObject;

    move-object/from16 v0, v19

    invoke-direct {v5, v0, v14, v13}, Lorg/spongycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;Ljava/util/List;[B)V

    goto/16 :goto_0

    .line 303
    .end local v10    # "iv":[B
    .end local v13    # "encData":[B
    .end local v14    # "headers":Ljava/util/List;
    .end local v15    # "ivLength":I
    :cond_7
    const/16 v15, 0x8

    goto :goto_2
.end method

.method private getHexEncoded([B)Ljava/lang/String;
    .locals 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {p1}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object p1

    .line 215
    array-length v2, p1

    new-array v0, v2, [C

    .line 217
    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    .line 219
    aget-byte v2, p1, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method


# virtual methods
.method public generate()Lorg/spongycastle/util/io/pem/PemObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/io/pem/PemGenerationException;
        }
    .end annotation

    .prologue
    .line 323
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/openssl/MiscPEMGenerator;->algorithm:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lorg/spongycastle/openssl/MiscPEMGenerator;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lorg/spongycastle/openssl/MiscPEMGenerator;->algorithm:Ljava/lang/String;

    iget-object v3, p0, Lorg/spongycastle/openssl/MiscPEMGenerator;->password:[C

    iget-object v4, p0, Lorg/spongycastle/openssl/MiscPEMGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/spongycastle/openssl/MiscPEMGenerator;->createPemObject(Ljava/lang/Object;Ljava/lang/String;[CLjava/security/SecureRandom;)Lorg/spongycastle/util/io/pem/PemObject;

    move-result-object v1

    .line 328
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/openssl/MiscPEMGenerator;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lorg/spongycastle/openssl/MiscPEMGenerator;->createPemObject(Ljava/lang/Object;)Lorg/spongycastle/util/io/pem/PemObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/spongycastle/util/io/pem/PemGenerationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
