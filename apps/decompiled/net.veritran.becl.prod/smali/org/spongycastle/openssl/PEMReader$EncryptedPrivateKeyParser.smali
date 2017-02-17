.class Lorg/spongycastle/openssl/PEMReader$EncryptedPrivateKeyParser;
.super Ljava/lang/Object;
.source "PEMReader.java"

# interfaces
.implements Lorg/spongycastle/util/io/pem/PemObjectParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptedPrivateKeyParser"
.end annotation


# instance fields
.field private asymProvider:Ljava/lang/String;

.field private symProvider:Ljava/lang/String;

.field final synthetic this$0:Lorg/spongycastle/openssl/PEMReader;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openssl/PEMReader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "symProvider"    # Ljava/lang/String;
    .param p3, "asymProvider"    # Ljava/lang/String;

    .prologue
    .line 669
    iput-object p1, p0, Lorg/spongycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->this$0:Lorg/spongycastle/openssl/PEMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 670
    iput-object p2, p0, Lorg/spongycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->symProvider:Ljava/lang/String;

    .line 671
    iput-object p3, p0, Lorg/spongycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->asymProvider:Ljava/lang/String;

    .line 672
    return-void
.end method


# virtual methods
.method public parseObject(Lorg/spongycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 23
    .param p1, "obj"    # Lorg/spongycastle/util/io/pem/PemObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/spongycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v9

    .line 686
    .local v9, "info":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual {v9}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 688
    .local v2, "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->this$0:Lorg/spongycastle/openssl/PEMReader;

    move-object/from16 v20, v0

    # getter for: Lorg/spongycastle/openssl/PEMReader;->pFinder:Lorg/spongycastle/openssl/PasswordFinder;
    invoke-static/range {v20 .. v20}, Lorg/spongycastle/openssl/PEMReader;->access$400(Lorg/spongycastle/openssl/PEMReader;)Lorg/spongycastle/openssl/PasswordFinder;

    move-result-object v20

    if-nez v20, :cond_0

    .line 690
    new-instance v20, Lorg/spongycastle/openssl/PEMException;

    const-string v21, "no PasswordFinder specified"

    invoke-direct/range {v20 .. v21}, Lorg/spongycastle/openssl/PEMException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 766
    .end local v2    # "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .end local v9    # "info":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    :catch_0
    move-exception v7

    .line 768
    .local v7, "e":Ljava/io/IOException;
    throw v7

    .line 693
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v2    # "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v9    # "info":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/spongycastle/openssl/PEMUtilities;->isPKCS5Scheme2(Lorg/spongycastle/asn1/DERObjectIdentifier;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 695
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PBES2Parameters;

    move-result-object v15

    .line 696
    .local v15, "params":Lorg/spongycastle/asn1/pkcs/PBES2Parameters;
    invoke-virtual {v15}, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v8

    .line 697
    .local v8, "func":Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;
    invoke-virtual {v15}, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lorg/spongycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v18

    .line 698
    .local v18, "scheme":Lorg/spongycastle/asn1/pkcs/EncryptionScheme;
    invoke-virtual {v8}, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;->getParameters()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;

    .line 700
    .local v6, "defParams":Lorg/spongycastle/asn1/pkcs/PBKDF2Params;
    invoke-virtual {v6}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    .line 701
    .local v10, "iterationCount":I
    invoke-virtual {v6}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v17

    .line 703
    .local v17, "salt":[B
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    .line 705
    .local v4, "algorithm":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->this$0:Lorg/spongycastle/openssl/PEMReader;

    move-object/from16 v20, v0

    # getter for: Lorg/spongycastle/openssl/PEMReader;->pFinder:Lorg/spongycastle/openssl/PasswordFinder;
    invoke-static/range {v20 .. v20}, Lorg/spongycastle/openssl/PEMReader;->access$400(Lorg/spongycastle/openssl/PEMReader;)Lorg/spongycastle/openssl/PasswordFinder;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/spongycastle/openssl/PasswordFinder;->getPassword()[C

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1, v10}, Lorg/spongycastle/openssl/PEMUtilities;->generateSecretKeyForPKCS5Scheme2(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v11

    .line 707
    .local v11, "key":Ljavax/crypto/SecretKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->symProvider:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 708
    .local v5, "cipher":Ljavax/crypto/Cipher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->symProvider:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 710
    .local v3, "algParams":Ljava/security/AlgorithmParameters;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;->getParameters()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/spongycastle/asn1/DEREncodable;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 712
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v5, v0, v11, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 714
    invoke-virtual {v9}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/spongycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v14

    .line 715
    .local v14, "pInfo":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    new-instance v13, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v14}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 717
    .local v13, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-virtual {v14}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->asymProvider:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v12

    .line 719
    .local v12, "keyFact":Ljava/security/KeyFactory;
    invoke-virtual {v12, v13}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v20

    .line 759
    .end local v3    # "algParams":Ljava/security/AlgorithmParameters;
    .end local v6    # "defParams":Lorg/spongycastle/asn1/pkcs/PBKDF2Params;
    .end local v8    # "func":Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;
    .end local v10    # "iterationCount":I
    .end local v11    # "key":Ljavax/crypto/SecretKey;
    .end local v15    # "params":Lorg/spongycastle/asn1/pkcs/PBES2Parameters;
    .end local v17    # "salt":[B
    .end local v18    # "scheme":Lorg/spongycastle/asn1/pkcs/EncryptionScheme;
    :goto_0
    return-object v20

    .line 721
    .end local v4    # "algorithm":Ljava/lang/String;
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    .end local v12    # "keyFact":Ljava/security/KeyFactory;
    .end local v13    # "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v14    # "pInfo":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_1
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/spongycastle/openssl/PEMUtilities;->isPKCS12(Lorg/spongycastle/asn1/DERObjectIdentifier;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 723
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v15

    .line 724
    .local v15, "params":Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    .line 725
    .restart local v4    # "algorithm":Ljava/lang/String;
    new-instance v16, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->this$0:Lorg/spongycastle/openssl/PEMReader;

    move-object/from16 v20, v0

    # getter for: Lorg/spongycastle/openssl/PEMReader;->pFinder:Lorg/spongycastle/openssl/PasswordFinder;
    invoke-static/range {v20 .. v20}, Lorg/spongycastle/openssl/PEMReader;->access$400(Lorg/spongycastle/openssl/PEMReader;)Lorg/spongycastle/openssl/PasswordFinder;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/spongycastle/openssl/PasswordFinder;->getPassword()[C

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 727
    .local v16, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->symProvider:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v19

    .line 728
    .local v19, "secKeyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v6, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v15}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v20

    invoke-virtual {v15}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->intValue()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v6, v0, v1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 730
    .local v6, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->symProvider:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 732
    .restart local v5    # "cipher":Ljavax/crypto/Cipher;
    const/16 v20, 0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 734
    invoke-virtual {v9}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/spongycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v14

    .line 735
    .restart local v14    # "pInfo":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    new-instance v13, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v14}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 737
    .restart local v13    # "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-virtual {v14}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->asymProvider:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v12

    .line 739
    .restart local v12    # "keyFact":Ljava/security/KeyFactory;
    invoke-virtual {v12, v13}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v20

    goto/16 :goto_0

    .line 741
    .end local v4    # "algorithm":Ljava/lang/String;
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v12    # "keyFact":Ljava/security/KeyFactory;
    .end local v13    # "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v14    # "pInfo":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v15    # "params":Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v16    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v19    # "secKeyFact":Ljavax/crypto/SecretKeyFactory;
    :cond_2
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/spongycastle/openssl/PEMUtilities;->isPKCS5Scheme1(Lorg/spongycastle/asn1/DERObjectIdentifier;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 743
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/spongycastle/asn1/pkcs/PBEParameter;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PBEParameter;

    move-result-object v15

    .line 744
    .local v15, "params":Lorg/spongycastle/asn1/pkcs/PBEParameter;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    .line 745
    .restart local v4    # "algorithm":Ljava/lang/String;
    new-instance v16, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->this$0:Lorg/spongycastle/openssl/PEMReader;

    move-object/from16 v20, v0

    # getter for: Lorg/spongycastle/openssl/PEMReader;->pFinder:Lorg/spongycastle/openssl/PasswordFinder;
    invoke-static/range {v20 .. v20}, Lorg/spongycastle/openssl/PEMReader;->access$400(Lorg/spongycastle/openssl/PEMReader;)Lorg/spongycastle/openssl/PasswordFinder;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/spongycastle/openssl/PasswordFinder;->getPassword()[C

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 747
    .restart local v16    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->symProvider:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v19

    .line 748
    .restart local v19    # "secKeyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v6, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v15}, Lorg/spongycastle/asn1/pkcs/PBEParameter;->getSalt()[B

    move-result-object v20

    invoke-virtual {v15}, Lorg/spongycastle/asn1/pkcs/PBEParameter;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->intValue()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v6, v0, v1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 750
    .restart local v6    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->symProvider:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 752
    .restart local v5    # "cipher":Ljavax/crypto/Cipher;
    const/16 v20, 0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 754
    invoke-virtual {v9}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/spongycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v14

    .line 755
    .restart local v14    # "pInfo":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    new-instance v13, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v14}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 757
    .restart local v13    # "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-virtual {v14}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/openssl/PEMReader$EncryptedPrivateKeyParser;->asymProvider:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v12

    .line 759
    .restart local v12    # "keyFact":Ljava/security/KeyFactory;
    invoke-virtual {v12, v13}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v20

    goto/16 :goto_0

    .line 763
    .end local v4    # "algorithm":Ljava/lang/String;
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v12    # "keyFact":Ljava/security/KeyFactory;
    .end local v13    # "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v14    # "pInfo":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v15    # "params":Lorg/spongycastle/asn1/pkcs/PBEParameter;
    .end local v16    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v19    # "secKeyFact":Ljavax/crypto/SecretKeyFactory;
    :cond_3
    new-instance v20, Lorg/spongycastle/openssl/PEMException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown algorithm: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lorg/spongycastle/openssl/PEMException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 770
    .end local v2    # "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .end local v9    # "info":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    :catch_1
    move-exception v7

    .line 772
    .local v7, "e":Ljava/lang/Exception;
    new-instance v20, Lorg/spongycastle/openssl/PEMException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "problem parsing ENCRYPTED PRIVATE KEY: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v20
.end method
