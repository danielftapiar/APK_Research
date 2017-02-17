.class public Lorg/spongycastle/crypto/util/PublicKeyFactory;
.super Ljava/lang/Object;
.source "PublicKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKey(Ljava/io/InputStream;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p0, "inStr"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

.method public static createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 34
    .param p0, "keyInfo"    # Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v14

    .line 90
    .local v14, "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v9, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v9, Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    :cond_0
    new-instance v31, Lorg/spongycastle/asn1/x509/RSAPublicKeyStructure;

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKey()Lorg/spongycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v31

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/x509/RSAPublicKeyStructure;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 96
    .local v31, "pubKey":Lorg/spongycastle/asn1/x509/RSAPublicKeyStructure;
    new-instance v2, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    const/4 v9, 0x0

    invoke-virtual/range {v31 .. v31}, Lorg/spongycastle/asn1/x509/RSAPublicKeyStructure;->getModulus()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual/range {v31 .. v31}, Lorg/spongycastle/asn1/x509/RSAPublicKeyStructure;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v2, v9, v10, v11}, Lorg/spongycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 208
    .end local v31    # "pubKey":Lorg/spongycastle/asn1/x509/RSAPublicKeyStructure;
    :goto_0
    return-object v2

    .line 98
    :cond_1
    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v9, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 100
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKey()Lorg/spongycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x9/DHPublicKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DHPublicKey;

    move-result-object v21

    .line 102
    .local v21, "dhPublicKey":Lorg/spongycastle/asn1/x9/DHPublicKey;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/x9/DHPublicKey;->getY()Lorg/spongycastle/asn1/DERInteger;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v33

    .line 104
    .local v33, "y":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DHDomainParameters;

    move-result-object v20

    .line 106
    .local v20, "dhParams":Lorg/spongycastle/asn1/x9/DHDomainParameters;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getP()Lorg/spongycastle/asn1/DERInteger;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    .line 107
    .local v3, "p":Ljava/math/BigInteger;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getG()Lorg/spongycastle/asn1/DERInteger;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    .line 108
    .local v4, "g":Ljava/math/BigInteger;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getQ()Lorg/spongycastle/asn1/DERInteger;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    .line 110
    .local v5, "q":Ljava/math/BigInteger;
    const/4 v6, 0x0

    .line 111
    .local v6, "j":Ljava/math/BigInteger;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getJ()Lorg/spongycastle/asn1/DERInteger;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 113
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getJ()Lorg/spongycastle/asn1/DERInteger;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    .line 116
    :cond_2
    const/4 v7, 0x0

    .line 117
    .local v7, "validation":Lorg/spongycastle/crypto/params/DHValidationParameters;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x9/DHDomainParameters;->getValidationParms()Lorg/spongycastle/asn1/x9/DHValidationParms;

    move-result-object v22

    .line 118
    .local v22, "dhValidationParms":Lorg/spongycastle/asn1/x9/DHValidationParms;
    if-eqz v22, :cond_3

    .line 120
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/x9/DHValidationParms;->getSeed()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v32

    .line 121
    .local v32, "seed":[B
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/x9/DHValidationParms;->getPgenCounter()Lorg/spongycastle/asn1/DERInteger;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v30

    .line 125
    .local v30, "pgenCounter":Ljava/math/BigInteger;
    new-instance v7, Lorg/spongycastle/crypto/params/DHValidationParameters;

    .end local v7    # "validation":Lorg/spongycastle/crypto/params/DHValidationParameters;
    invoke-virtual/range {v30 .. v30}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    move-object/from16 v0, v32

    invoke-direct {v7, v0, v2}, Lorg/spongycastle/crypto/params/DHValidationParameters;-><init>([BI)V

    .line 128
    .end local v30    # "pgenCounter":Ljava/math/BigInteger;
    .end local v32    # "seed":[B
    .restart local v7    # "validation":Lorg/spongycastle/crypto/params/DHValidationParameters;
    :cond_3
    new-instance v9, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    new-instance v2, Lorg/spongycastle/crypto/params/DHParameters;

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHValidationParameters;)V

    move-object/from16 v0, v33

    invoke-direct {v9, v0, v2}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    move-object v2, v9

    goto :goto_0

    .line 130
    .end local v3    # "p":Ljava/math/BigInteger;
    .end local v4    # "g":Ljava/math/BigInteger;
    .end local v5    # "q":Ljava/math/BigInteger;
    .end local v6    # "j":Ljava/math/BigInteger;
    .end local v7    # "validation":Lorg/spongycastle/crypto/params/DHValidationParameters;
    .end local v20    # "dhParams":Lorg/spongycastle/asn1/x9/DHDomainParameters;
    .end local v21    # "dhPublicKey":Lorg/spongycastle/asn1/x9/DHPublicKey;
    .end local v22    # "dhValidationParms":Lorg/spongycastle/asn1/x9/DHValidationParms;
    .end local v33    # "y":Ljava/math/BigInteger;
    :cond_4
    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v9, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 132
    new-instance v29, Lorg/spongycastle/asn1/pkcs/DHParameter;

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/pkcs/DHParameter;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 134
    .local v29, "params":Lorg/spongycastle/asn1/pkcs/DHParameter;
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKey()Lorg/spongycastle/asn1/DERObject;

    move-result-object v19

    check-cast v19, Lorg/spongycastle/asn1/DERInteger;

    .line 136
    .local v19, "derY":Lorg/spongycastle/asn1/DERInteger;
    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v26

    .line 137
    .local v26, "lVal":Ljava/math/BigInteger;
    if-nez v26, :cond_5

    const/16 v25, 0x0

    .line 138
    .local v25, "l":I
    :goto_1
    new-instance v20, Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-direct {v0, v2, v9, v10, v1}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 140
    .local v20, "dhParams":Lorg/spongycastle/crypto/params/DHParameters;
    new-instance v2, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-direct {v2, v9, v0}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    goto/16 :goto_0

    .line 137
    .end local v20    # "dhParams":Lorg/spongycastle/crypto/params/DHParameters;
    .end local v25    # "l":I
    :cond_5
    invoke-virtual/range {v26 .. v26}, Ljava/math/BigInteger;->intValue()I

    move-result v25

    goto :goto_1

    .line 142
    .end local v19    # "derY":Lorg/spongycastle/asn1/DERInteger;
    .end local v26    # "lVal":Ljava/math/BigInteger;
    .end local v29    # "params":Lorg/spongycastle/asn1/pkcs/DHParameter;
    :cond_6
    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v9, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 144
    new-instance v29, Lorg/spongycastle/asn1/oiw/ElGamalParameter;

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 146
    .local v29, "params":Lorg/spongycastle/asn1/oiw/ElGamalParameter;
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKey()Lorg/spongycastle/asn1/DERObject;

    move-result-object v19

    check-cast v19, Lorg/spongycastle/asn1/DERInteger;

    .line 148
    .restart local v19    # "derY":Lorg/spongycastle/asn1/DERInteger;
    new-instance v2, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v9

    new-instance v10, Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getP()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getG()Ljava/math/BigInteger;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, v9, v10}, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    goto/16 :goto_0

    .line 151
    .end local v19    # "derY":Lorg/spongycastle/asn1/DERInteger;
    .end local v29    # "params":Lorg/spongycastle/asn1/oiw/ElGamalParameter;
    :cond_7
    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v9, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v9, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 154
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKey()Lorg/spongycastle/asn1/DERObject;

    move-result-object v19

    check-cast v19, Lorg/spongycastle/asn1/DERInteger;

    .line 155
    .restart local v19    # "derY":Lorg/spongycastle/asn1/DERInteger;
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v17

    .line 157
    .local v17, "de":Lorg/spongycastle/asn1/DEREncodable;
    const/16 v28, 0x0

    .line 158
    .local v28, "parameters":Lorg/spongycastle/crypto/params/DSAParameters;
    if-eqz v17, :cond_9

    .line 160
    invoke-interface/range {v17 .. v17}, Lorg/spongycastle/asn1/DEREncodable;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/DSAParameter;

    move-result-object v29

    .line 161
    .local v29, "params":Lorg/spongycastle/asn1/x509/DSAParameter;
    new-instance v28, Lorg/spongycastle/crypto/params/DSAParameters;

    .end local v28    # "parameters":Lorg/spongycastle/crypto/params/DSAParameters;
    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v10

    move-object/from16 v0, v28

    invoke-direct {v0, v2, v9, v10}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 164
    .end local v29    # "params":Lorg/spongycastle/asn1/x509/DSAParameter;
    .restart local v28    # "parameters":Lorg/spongycastle/crypto/params/DSAParameters;
    :cond_9
    new-instance v2, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v9

    move-object/from16 v0, v28

    invoke-direct {v2, v9, v0}, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAParameters;)V

    goto/16 :goto_0

    .line 166
    .end local v17    # "de":Lorg/spongycastle/asn1/DEREncodable;
    .end local v19    # "derY":Lorg/spongycastle/asn1/DERInteger;
    .end local v28    # "parameters":Lorg/spongycastle/crypto/params/DSAParameters;
    :cond_a
    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v9, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v9}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 168
    new-instance v29, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/DERObject;

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/DERObject;)V

    .line 170
    .local v29, "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    const/4 v8, 0x0

    .line 172
    .local v8, "dParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 174
    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/asn1/x9/X962Parameters;->getParameters()Lorg/spongycastle/asn1/DERObject;

    move-result-object v27

    check-cast v27, Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 175
    .local v27, "oid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    invoke-static/range {v27 .. v27}, Lorg/spongycastle/asn1/x9/X962NamedCurves;->getByOID(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v23

    .line 177
    .local v23, "ecP":Lorg/spongycastle/asn1/x9/X9ECParameters;
    if-nez v23, :cond_b

    .line 179
    invoke-static/range {v27 .. v27}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->getByOID(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v23

    .line 181
    if-nez v23, :cond_b

    .line 183
    invoke-static/range {v27 .. v27}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v23

    .line 185
    if-nez v23, :cond_b

    .line 187
    invoke-static/range {v27 .. v27}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->getByOID(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v23

    .line 192
    :cond_b
    new-instance v8, Lorg/spongycastle/crypto/params/ECDomainParameters;

    .end local v8    # "dParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v9

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 202
    .end local v27    # "oid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    .restart local v8    # "dParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v15

    .line 203
    .local v15, "bits":Lorg/spongycastle/asn1/DERBitString;
    invoke-virtual {v15}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v16

    .line 204
    .local v16, "data":[B
    new-instance v24, Lorg/spongycastle/asn1/DEROctetString;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 206
    .local v24, "key":Lorg/spongycastle/asn1/ASN1OctetString;
    new-instance v18, Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/ASN1OctetString;)V

    .line 208
    .local v18, "derQ":Lorg/spongycastle/asn1/x9/X9ECPoint;
    new-instance v2, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-direct {v2, v9, v8}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    goto/16 :goto_0

    .line 197
    .end local v15    # "bits":Lorg/spongycastle/asn1/DERBitString;
    .end local v16    # "data":[B
    .end local v18    # "derQ":Lorg/spongycastle/asn1/x9/X9ECPoint;
    .end local v23    # "ecP":Lorg/spongycastle/asn1/x9/X9ECParameters;
    .end local v24    # "key":Lorg/spongycastle/asn1/ASN1OctetString;
    :cond_c
    new-instance v23, Lorg/spongycastle/asn1/x9/X9ECParameters;

    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/asn1/x9/X962Parameters;->getParameters()Lorg/spongycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 198
    .restart local v23    # "ecP":Lorg/spongycastle/asn1/x9/X9ECParameters;
    new-instance v8, Lorg/spongycastle/crypto/params/ECDomainParameters;

    .end local v8    # "dParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v9

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .restart local v8    # "dParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    goto :goto_2

    .line 212
    .end local v8    # "dParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    .end local v23    # "ecP":Lorg/spongycastle/asn1/x9/X9ECParameters;
    .end local v29    # "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    :cond_d
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v9, "algorithm identifier in key not recognised"

    invoke-direct {v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createKey([B)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p0, "keyInfoData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method
