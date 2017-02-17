.class final Lorg/spongycastle/openssl/PEMUtilities;
.super Ljava/lang/Object;
.source "PEMUtilities.java"


# static fields
.field private static final KEYSIZES:Ljava/util/Map;

.field private static final PKCS5_SCHEME_1:Ljava/util/Set;

.field private static final PKCS5_SCHEME_2:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xc0

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/openssl/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/spongycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/spongycastle/openssl/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    .line 35
    sget-object v0, Lorg/spongycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD2AndDES_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lorg/spongycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD2AndRC2_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lorg/spongycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndDES_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lorg/spongycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndRC2_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lorg/spongycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndDES_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lorg/spongycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHA1AndRC2_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lorg/spongycastle/openssl/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lorg/spongycastle/openssl/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lorg/spongycastle/openssl/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lorg/spongycastle/openssl/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lorg/spongycastle/openssl/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lorg/spongycastle/openssl/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/spongycastle/openssl/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/spongycastle/openssl/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/spongycastle/openssl/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static crypt(ZLjava/lang/String;[B[CLjava/lang/String;[B)[B
    .locals 6
    .param p0, "encrypt"    # Z
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "password"    # [C
    .param p4, "dekAlgName"    # Ljava/lang/String;
    .param p5, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "prov":Ljava/security/Provider;
    if-eqz p1, :cond_0

    .line 103
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 104
    if-nez v1, :cond_0

    .line 106
    new-instance v0, Lorg/spongycastle/openssl/EncryptionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/spongycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 110
    invoke-static/range {v0 .. v5}, Lorg/spongycastle/openssl/PEMUtilities;->crypt(ZLjava/security/Provider;[B[CLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static crypt(ZLjava/security/Provider;[B[CLjava/lang/String;[B)[B
    .locals 17
    .param p0, "encrypt"    # Z
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "bytes"    # [B
    .param p3, "password"    # [C
    .param p4, "dekAlgName"    # Ljava/lang/String;
    .param p5, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v10, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, p5

    invoke-direct {v10, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 124
    .local v10, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    const-string v3, "CBC"

    .line 125
    .local v3, "blockMode":Ljava/lang/String;
    const-string v9, "PKCS5Padding"

    .line 129
    .local v9, "padding":Ljava/lang/String;
    const-string v14, "-CFB"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 131
    const-string v3, "CFB"

    .line 132
    const-string v9, "NoPadding"

    .line 134
    :cond_0
    const-string v14, "-ECB"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "DES-EDE"

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "DES-EDE3"

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 140
    :cond_1
    const-string v3, "ECB"

    .line 141
    const/4 v10, 0x0

    .line 143
    :cond_2
    const-string v14, "-OFB"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 145
    const-string v3, "OFB"

    .line 146
    const-string v9, "NoPadding"

    .line 151
    :cond_3
    const-string v14, "DES-EDE"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 153
    const-string v2, "DESede"

    .line 156
    .local v2, "alg":Ljava/lang/String;
    const-string v14, "DES-EDE3"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    const/4 v5, 0x1

    .line 157
    .local v5, "des2":Z
    :goto_0
    const/16 v14, 0x18

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v2, v14, v1, v5}, Lorg/spongycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[BZ)Ljavax/crypto/SecretKey;

    move-result-object v11

    .line 225
    .end local v5    # "des2":Z
    .local v11, "sKey":Ljava/security/Key;
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 229
    .local v13, "transformation":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v13, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 230
    .local v4, "c":Ljavax/crypto/Cipher;
    if-eqz p0, :cond_11

    const/4 v8, 0x1

    .line 232
    .local v8, "mode":I
    :goto_2
    if-nez v10, :cond_12

    .line 234
    invoke-virtual {v4, v8, v11}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 240
    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    return-object v14

    .line 156
    .end local v4    # "c":Ljavax/crypto/Cipher;
    .end local v8    # "mode":I
    .end local v11    # "sKey":Ljava/security/Key;
    .end local v13    # "transformation":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 159
    .end local v2    # "alg":Ljava/lang/String;
    :cond_5
    const-string v14, "DES-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 161
    const-string v2, "DES"

    .line 162
    .restart local v2    # "alg":Ljava/lang/String;
    const/16 v14, 0x8

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v2, v14, v1}, Lorg/spongycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object v11

    .restart local v11    # "sKey":Ljava/security/Key;
    goto :goto_1

    .line 164
    .end local v2    # "alg":Ljava/lang/String;
    .end local v11    # "sKey":Ljava/security/Key;
    :cond_6
    const-string v14, "BF-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 166
    const-string v2, "Blowfish"

    .line 167
    .restart local v2    # "alg":Ljava/lang/String;
    const/16 v14, 0x10

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v2, v14, v1}, Lorg/spongycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object v11

    .restart local v11    # "sKey":Ljava/security/Key;
    goto :goto_1

    .line 169
    .end local v2    # "alg":Ljava/lang/String;
    .end local v11    # "sKey":Ljava/security/Key;
    :cond_7
    const-string v14, "RC2-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 171
    const-string v2, "RC2"

    .line 172
    .restart local v2    # "alg":Ljava/lang/String;
    const/16 v7, 0x80

    .line 173
    .local v7, "keyBits":I
    const-string v14, "RC2-40-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 175
    const/16 v7, 0x28

    .line 181
    :cond_8
    :goto_4
    div-int/lit8 v14, v7, 0x8

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v2, v14, v1}, Lorg/spongycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object v11

    .line 182
    .restart local v11    # "sKey":Ljava/security/Key;
    if-nez v10, :cond_a

    .line 184
    new-instance v10, Ljavax/crypto/spec/RC2ParameterSpec;

    .end local v10    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-direct {v10, v7}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I)V

    .restart local v10    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    goto/16 :goto_1

    .line 177
    .end local v11    # "sKey":Ljava/security/Key;
    :cond_9
    const-string v14, "RC2-64-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 179
    const/16 v7, 0x40

    goto :goto_4

    .line 188
    .restart local v11    # "sKey":Ljava/security/Key;
    :cond_a
    new-instance v10, Ljavax/crypto/spec/RC2ParameterSpec;

    .end local v10    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    move-object/from16 v0, p5

    invoke-direct {v10, v7, v0}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    .restart local v10    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    goto/16 :goto_1

    .line 191
    .end local v2    # "alg":Ljava/lang/String;
    .end local v7    # "keyBits":I
    .end local v11    # "sKey":Ljava/security/Key;
    :cond_b
    const-string v14, "AES-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 193
    const-string v2, "AES"

    .line 194
    .restart local v2    # "alg":Ljava/lang/String;
    move-object/from16 v12, p5

    .line 195
    .local v12, "salt":[B
    array-length v14, v12

    const/16 v15, 0x8

    if-le v14, v15, :cond_c

    .line 197
    const/16 v14, 0x8

    new-array v12, v14, [B

    .line 198
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x8

    move-object/from16 v0, p5

    move/from16 v1, v16

    invoke-static {v0, v14, v12, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    :cond_c
    const-string v14, "AES-128-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 204
    const/16 v7, 0x80

    .line 218
    .restart local v7    # "keyBits":I
    :goto_5
    const-string v14, "AES"

    div-int/lit8 v15, v7, 0x8

    move-object/from16 v0, p3

    invoke-static {v0, v14, v15, v12}, Lorg/spongycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object v11

    .line 219
    .restart local v11    # "sKey":Ljava/security/Key;
    goto/16 :goto_1

    .line 206
    .end local v7    # "keyBits":I
    .end local v11    # "sKey":Ljava/security/Key;
    :cond_d
    const-string v14, "AES-192-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 208
    const/16 v7, 0xc0

    .restart local v7    # "keyBits":I
    goto :goto_5

    .line 210
    .end local v7    # "keyBits":I
    :cond_e
    const-string v14, "AES-256-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 212
    const/16 v7, 0x100

    .restart local v7    # "keyBits":I
    goto :goto_5

    .line 216
    .end local v7    # "keyBits":I
    :cond_f
    new-instance v14, Lorg/spongycastle/openssl/EncryptionException;

    const-string v15, "unknown AES encryption with private key"

    invoke-direct {v14, v15}, Lorg/spongycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 222
    .end local v2    # "alg":Ljava/lang/String;
    .end local v12    # "salt":[B
    :cond_10
    new-instance v14, Lorg/spongycastle/openssl/EncryptionException;

    const-string v15, "unknown encryption with private key"

    invoke-direct {v14, v15}, Lorg/spongycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 230
    .restart local v2    # "alg":Ljava/lang/String;
    .restart local v4    # "c":Ljavax/crypto/Cipher;
    .restart local v11    # "sKey":Ljava/security/Key;
    .restart local v13    # "transformation":Ljava/lang/String;
    :cond_11
    const/4 v8, 0x2

    goto/16 :goto_2

    .line 238
    .restart local v8    # "mode":I
    :cond_12
    :try_start_1
    invoke-virtual {v4, v8, v11, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 242
    .end local v4    # "c":Ljavax/crypto/Cipher;
    .end local v8    # "mode":I
    :catch_0
    move-exception v6

    .line 244
    .local v6, "e":Ljava/lang/Exception;
    new-instance v14, Lorg/spongycastle/openssl/EncryptionException;

    const-string v15, "exception using cipher - please check password and data."

    invoke-direct {v14, v15, v6}, Lorg/spongycastle/openssl/EncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
.end method

.method static generateSecretKeyForPKCS5Scheme2(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "iterationCount"    # I

    .prologue
    .line 81
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>()V

    .line 83
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    invoke-static {p1}, Lorg/spongycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 88
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lorg/spongycastle/openssl/PEMUtilities;->getKeySize(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-direct {v2, v1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method private static getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;
    .locals 1
    .param p0, "password"    # [C
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "keyLength"    # I
    .param p3, "salt"    # [B

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/spongycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[BZ)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private static getKey([CLjava/lang/String;I[BZ)Ljavax/crypto/SecretKey;
    .locals 6
    .param p0, "password"    # [C
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "keyLength"    # I
    .param p3, "salt"    # [B
    .param p4, "des2"    # Z

    .prologue
    .line 264
    new-instance v2, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v2}, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    .line 266
    .local v2, "pGen":Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;
    invoke-static {p0}, Lorg/spongycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;->init([B[B)V

    .line 269
    mul-int/lit8 v3, p2, 0x8

    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 270
    .local v1, "keyParam":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 271
    .local v0, "key":[B
    if-eqz p4, :cond_0

    array-length v3, v0

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 274
    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v5, 0x8

    invoke-static {v0, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    :cond_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, v0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method static getKeySize(Ljava/lang/String;)I
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Lorg/spongycastle/openssl/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no key size for algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    sget-object v0, Lorg/spongycastle/openssl/PEMUtilities;->KEYSIZES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static isPKCS12(Lorg/spongycastle/asn1/DERObjectIdentifier;)Z
    .locals 2
    .param p0, "algOid"    # Lorg/spongycastle/asn1/DERObjectIdentifier;

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isPKCS5Scheme1(Lorg/spongycastle/asn1/DERObjectIdentifier;)Z
    .locals 1
    .param p0, "algOid"    # Lorg/spongycastle/asn1/DERObjectIdentifier;

    .prologue
    .line 66
    sget-object v0, Lorg/spongycastle/openssl/PEMUtilities;->PKCS5_SCHEME_1:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isPKCS5Scheme2(Lorg/spongycastle/asn1/DERObjectIdentifier;)Z
    .locals 1
    .param p0, "algOid"    # Lorg/spongycastle/asn1/DERObjectIdentifier;

    .prologue
    .line 71
    sget-object v0, Lorg/spongycastle/openssl/PEMUtilities;->PKCS5_SCHEME_2:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
