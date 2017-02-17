.class Lorg/spongycastle/openssl/PEMReader$DSAKeyPairParser;
.super Lorg/spongycastle/openssl/PEMReader$KeyPairParser;
.source "PEMReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DSAKeyPairParser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/openssl/PEMReader;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openssl/PEMReader;Ljava/lang/String;)V
    .locals 0
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lorg/spongycastle/openssl/PEMReader$DSAKeyPairParser;->this$0:Lorg/spongycastle/openssl/PEMReader;

    .line 270
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/openssl/PEMReader$KeyPairParser;-><init>(Lorg/spongycastle/openssl/PEMReader;Ljava/lang/String;)V

    .line 271
    return-void
.end method


# virtual methods
.method public parseObject(Lorg/spongycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 14
    .param p1, "obj"    # Lorg/spongycastle/util/io/pem/PemObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/openssl/PEMReader$DSAKeyPairParser;->readKeyPair(Lorg/spongycastle/util/io/pem/PemObject;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v7

    .line 280
    .local v7, "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v10

    const/4 v11, 0x6

    if-eq v10, v11, :cond_0

    .line 282
    new-instance v10, Lorg/spongycastle/openssl/PEMException;

    const-string v11, "malformed sequence in DSA private key"

    invoke-direct {v10, v11}, Lorg/spongycastle/openssl/PEMException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 305
    .end local v7    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/io/IOException;
    throw v0

    .line 286
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v7    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_0
    const/4 v10, 0x1

    :try_start_1
    invoke-virtual {v7, v10}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/DERInteger;

    .line 287
    .local v3, "p":Lorg/spongycastle/asn1/DERInteger;
    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/asn1/DERInteger;

    .line 288
    .local v6, "q":Lorg/spongycastle/asn1/DERInteger;
    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/DERInteger;

    .line 289
    .local v2, "g":Lorg/spongycastle/asn1/DERInteger;
    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/asn1/DERInteger;

    .line 290
    .local v9, "y":Lorg/spongycastle/asn1/DERInteger;
    const/4 v10, 0x5

    invoke-virtual {v7, v10}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v8

    check-cast v8, Lorg/spongycastle/asn1/DERInteger;

    .line 292
    .local v8, "x":Lorg/spongycastle/asn1/DERInteger;
    new-instance v4, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v6}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v13

    invoke-direct {v4, v10, v11, v12, v13}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 295
    .local v4, "privSpec":Ljava/security/spec/DSAPrivateKeySpec;
    new-instance v5, Ljava/security/spec/DSAPublicKeySpec;

    invoke-virtual {v9}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v6}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v13

    invoke-direct {v5, v10, v11, v12, v13}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 299
    .local v5, "pubSpec":Ljava/security/spec/DSAPublicKeySpec;
    const-string v10, "DSA"

    iget-object v11, p0, Lorg/spongycastle/openssl/PEMReader$DSAKeyPairParser;->provider:Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 301
    .local v1, "fact":Ljava/security/KeyFactory;
    new-instance v10, Ljava/security/KeyPair;

    invoke-virtual {v1, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v11

    invoke-virtual {v1, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v10

    .line 309
    .end local v1    # "fact":Ljava/security/KeyFactory;
    .end local v2    # "g":Lorg/spongycastle/asn1/DERInteger;
    .end local v3    # "p":Lorg/spongycastle/asn1/DERInteger;
    .end local v4    # "privSpec":Ljava/security/spec/DSAPrivateKeySpec;
    .end local v5    # "pubSpec":Ljava/security/spec/DSAPublicKeySpec;
    .end local v6    # "q":Lorg/spongycastle/asn1/DERInteger;
    .end local v7    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v8    # "x":Lorg/spongycastle/asn1/DERInteger;
    .end local v9    # "y":Lorg/spongycastle/asn1/DERInteger;
    :catch_1
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    new-instance v10, Lorg/spongycastle/openssl/PEMException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "problem creating DSA private key: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v0}, Lorg/spongycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10
.end method
