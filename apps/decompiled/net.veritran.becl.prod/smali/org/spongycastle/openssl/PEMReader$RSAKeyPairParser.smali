.class Lorg/spongycastle/openssl/PEMReader$RSAKeyPairParser;
.super Lorg/spongycastle/openssl/PEMReader$KeyPairParser;
.source "PEMReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RSAKeyPairParser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/openssl/PEMReader;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openssl/PEMReader;Ljava/lang/String;)V
    .locals 0
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    .line 364
    iput-object p1, p0, Lorg/spongycastle/openssl/PEMReader$RSAKeyPairParser;->this$0:Lorg/spongycastle/openssl/PEMReader;

    .line 365
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/openssl/PEMReader$KeyPairParser;-><init>(Lorg/spongycastle/openssl/PEMReader;Ljava/lang/String;)V

    .line 366
    return-void
.end method


# virtual methods
.method public parseObject(Lorg/spongycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 22
    .param p1, "obj"    # Lorg/spongycastle/util/io/pem/PemObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lorg/spongycastle/openssl/PEMReader$RSAKeyPairParser;->readKeyPair(Lorg/spongycastle/util/io/pem/PemObject;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v21

    .line 375
    .local v21, "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    .line 377
    new-instance v2, Lorg/spongycastle/openssl/PEMException;

    const-string v3, "malformed sequence in RSA private key"

    invoke-direct {v2, v3}, Lorg/spongycastle/openssl/PEMException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 406
    .end local v21    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v11

    .line 408
    .local v11, "e":Ljava/io/IOException;
    throw v11

    .line 381
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v21    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v15

    check-cast v15, Lorg/spongycastle/asn1/DERInteger;

    .line 382
    .local v15, "mod":Lorg/spongycastle/asn1/DERInteger;
    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v19

    check-cast v19, Lorg/spongycastle/asn1/DERInteger;

    .line 383
    .local v19, "pubExp":Lorg/spongycastle/asn1/DERInteger;
    const/4 v2, 0x3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v18

    check-cast v18, Lorg/spongycastle/asn1/DERInteger;

    .line 384
    .local v18, "privExp":Lorg/spongycastle/asn1/DERInteger;
    const/4 v2, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v16

    check-cast v16, Lorg/spongycastle/asn1/DERInteger;

    .line 385
    .local v16, "p1":Lorg/spongycastle/asn1/DERInteger;
    const/4 v2, 0x5

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v17

    check-cast v17, Lorg/spongycastle/asn1/DERInteger;

    .line 386
    .local v17, "p2":Lorg/spongycastle/asn1/DERInteger;
    const/4 v2, 0x6

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v12

    check-cast v12, Lorg/spongycastle/asn1/DERInteger;

    .line 387
    .local v12, "exp1":Lorg/spongycastle/asn1/DERInteger;
    const/4 v2, 0x7

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v13

    check-cast v13, Lorg/spongycastle/asn1/DERInteger;

    .line 388
    .local v13, "exp2":Lorg/spongycastle/asn1/DERInteger;
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v10

    check-cast v10, Lorg/spongycastle/asn1/DERInteger;

    .line 390
    .local v10, "crtCoef":Lorg/spongycastle/asn1/DERInteger;
    new-instance v20, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v15}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 392
    .local v20, "pubSpec":Ljava/security/spec/RSAPublicKeySpec;
    new-instance v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-virtual {v15}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v12}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v13}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v10}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 399
    .local v1, "privSpec":Ljava/security/spec/RSAPrivateCrtKeySpec;
    const-string v2, "RSA"

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/openssl/PEMReader$RSAKeyPairParser;->provider:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v14

    .line 402
    .local v14, "fact":Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/KeyPair;

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v14, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 410
    .end local v1    # "privSpec":Ljava/security/spec/RSAPrivateCrtKeySpec;
    .end local v10    # "crtCoef":Lorg/spongycastle/asn1/DERInteger;
    .end local v12    # "exp1":Lorg/spongycastle/asn1/DERInteger;
    .end local v13    # "exp2":Lorg/spongycastle/asn1/DERInteger;
    .end local v14    # "fact":Ljava/security/KeyFactory;
    .end local v15    # "mod":Lorg/spongycastle/asn1/DERInteger;
    .end local v16    # "p1":Lorg/spongycastle/asn1/DERInteger;
    .end local v17    # "p2":Lorg/spongycastle/asn1/DERInteger;
    .end local v18    # "privExp":Lorg/spongycastle/asn1/DERInteger;
    .end local v19    # "pubExp":Lorg/spongycastle/asn1/DERInteger;
    .end local v20    # "pubSpec":Ljava/security/spec/RSAPublicKeySpec;
    .end local v21    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v11

    .line 412
    .local v11, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/spongycastle/openssl/PEMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "problem creating RSA private key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v11}, Lorg/spongycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
