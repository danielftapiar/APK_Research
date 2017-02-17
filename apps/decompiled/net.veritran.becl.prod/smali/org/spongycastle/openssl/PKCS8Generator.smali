.class public Lorg/spongycastle/openssl/PKCS8Generator;
.super Ljava/lang/Object;
.source "PKCS8Generator.java"

# interfaces
.implements Lorg/spongycastle/util/io/pem/PemObjectGenerator;


# static fields
.field public static final AES_128_CBC:Ljava/lang/String;

.field public static final AES_192_CBC:Ljava/lang/String;

.field public static final AES_256_CBC:Ljava/lang/String;

.field public static final DES3_CBC:Ljava/lang/String;

.field public static final PBE_SHA1_2DES:Ljava/lang/String;

.field public static final PBE_SHA1_3DES:Ljava/lang/String;

.field public static final PBE_SHA1_RC2_128:Ljava/lang/String;

.field public static final PBE_SHA1_RC2_40:Ljava/lang/String;

.field public static final PBE_SHA1_RC4_128:Ljava/lang/String;

.field public static final PBE_SHA1_RC4_40:Ljava/lang/String;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private cipher:Ljavax/crypto/Cipher;

.field private iterationCount:I

.field private key:Ljava/security/PrivateKey;

.field private paramGen:Ljava/security/AlgorithmParameterGenerator;

.field private password:[C

.field private random:Ljava/security/SecureRandom;

.field private secKeyFact:Ljavax/crypto/SecretKeyFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/openssl/PKCS8Generator;->AES_128_CBC:Ljava/lang/String;

    .line 44
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/openssl/PKCS8Generator;->AES_192_CBC:Ljava/lang/String;

    .line 45
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/openssl/PKCS8Generator;->AES_256_CBC:Ljava/lang/String;

    .line 47
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/openssl/PKCS8Generator;->DES3_CBC:Ljava/lang/String;

    .line 49
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC4:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/openssl/PKCS8Generator;->PBE_SHA1_RC4_128:Ljava/lang/String;

    .line 50
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC4:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/openssl/PKCS8Generator;->PBE_SHA1_RC4_40:Ljava/lang/String;

    .line 51
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/openssl/PKCS8Generator;->PBE_SHA1_3DES:Ljava/lang/String;

    .line 52
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd2_KeyTripleDES_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/openssl/PKCS8Generator;->PBE_SHA1_2DES:Ljava/lang/String;

    .line 53
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC2_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/openssl/PKCS8Generator;->PBE_SHA1_RC2_128:Ljava/lang/String;

    .line 54
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbewithSHAAnd40BitRC2_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/openssl/PKCS8Generator;->PBE_SHA1_RC2_40:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 0
    .param p1, "key"    # Ljava/security/PrivateKey;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/spongycastle/openssl/PKCS8Generator;->key:Ljava/security/PrivateKey;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {p3}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 89
    .local v0, "prov":Ljava/security/Provider;
    if-nez v0, :cond_0

    .line 91
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/openssl/PKCS8Generator;->init(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/Provider;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/Provider;)V
    .locals 0
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/openssl/PKCS8Generator;->init(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/Provider;)V

    .line 109
    return-void
.end method

.method private init(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/Provider;)V
    .locals 5
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 114
    iput-object p1, p0, Lorg/spongycastle/openssl/PKCS8Generator;->key:Ljava/security/PrivateKey;

    .line 115
    iput-object p2, p0, Lorg/spongycastle/openssl/PKCS8Generator;->algorithm:Ljava/lang/String;

    .line 116
    const/16 v2, 0x800

    iput v2, p0, Lorg/spongycastle/openssl/PKCS8Generator;->iterationCount:I

    .line 120
    :try_start_0
    invoke-static {p2, p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/openssl/PKCS8Generator;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    new-instance v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "algOID":Lorg/spongycastle/asn1/DERObjectIdentifier;
    invoke-static {v0}, Lorg/spongycastle/openssl/PEMUtilities;->isPKCS5Scheme2(Lorg/spongycastle/asn1/DERObjectIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-static {p2, p3}, Ljava/security/AlgorithmParameterGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameterGenerator;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/openssl/PKCS8Generator;->paramGen:Ljava/security/AlgorithmParameterGenerator;

    .line 136
    :goto_0
    return-void

    .line 122
    .end local v0    # "algOID":Lorg/spongycastle/asn1/DERObjectIdentifier;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found, but padding not available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    .restart local v0    # "algOID":Lorg/spongycastle/asn1/DERObjectIdentifier;
    :cond_0
    invoke-static {p2, p3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/openssl/PKCS8Generator;->secKeyFact:Ljavax/crypto/SecretKeyFactory;

    goto :goto_0
.end method


# virtual methods
.method public generate()Lorg/spongycastle/util/io/pem/PemObject;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/io/pem/PemGenerationException;
        }
    .end annotation

    .prologue
    .line 162
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/openssl/PKCS8Generator;->key:Ljava/security/PrivateKey;

    invoke-interface {v13}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v7

    .line 164
    .local v7, "keyData":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/openssl/PKCS8Generator;->algorithm:Ljava/lang/String;

    if-nez v13, :cond_0

    .line 166
    new-instance v13, Lorg/spongycastle/util/io/pem/PemObject;

    const-string v14, "PRIVATE KEY"

    invoke-direct {v13, v14, v7}, Lorg/spongycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    .line 236
    :goto_0
    return-object v13

    .line 169
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/openssl/PKCS8Generator;->algorithm:Ljava/lang/String;

    invoke-direct {v1, v13}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "algOID":Lorg/spongycastle/asn1/DERObjectIdentifier;
    invoke-static {v1}, Lorg/spongycastle/openssl/PEMUtilities;->isPKCS5Scheme2(Lorg/spongycastle/asn1/DERObjectIdentifier;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 173
    const/16 v13, 0x14

    new-array v10, v13, [B

    .line 175
    .local v10, "salt":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/openssl/PKCS8Generator;->random:Ljava/security/SecureRandom;

    if-nez v13, :cond_1

    .line 177
    new-instance v13, Ljava/security/SecureRandom;

    invoke-direct {v13}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/spongycastle/openssl/PKCS8Generator;->random:Ljava/security/SecureRandom;

    .line 180
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/openssl/PKCS8Generator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v13, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 182
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/openssl/PKCS8Generator;->algorithm:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/openssl/PKCS8Generator;->password:[C

    move-object/from16 v0, p0

    iget v15, v0, Lorg/spongycastle/openssl/PKCS8Generator;->iterationCount:I

    invoke-static {v13, v14, v10, v15}, Lorg/spongycastle/openssl/PEMUtilities;->generateSecretKeyForPKCS5Scheme2(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 184
    .local v6, "key":Ljavax/crypto/SecretKey;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/openssl/PKCS8Generator;->paramGen:Ljava/security/AlgorithmParameterGenerator;

    invoke-virtual {v13}, Ljava/security/AlgorithmParameterGenerator;->generateParameters()Ljava/security/AlgorithmParameters;

    move-result-object v8

    .line 188
    .local v8, "params":Ljava/security/AlgorithmParameters;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/openssl/PKCS8Generator;->cipher:Ljavax/crypto/Cipher;

    const/4 v14, 0x1

    invoke-virtual {v13, v14, v6, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 190
    new-instance v11, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;

    new-instance v13, Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/openssl/PKCS8Generator;->algorithm:Ljava/lang/String;

    invoke-direct {v13, v14}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v14

    invoke-static {v14}, Lorg/spongycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Object;

    move-result-object v14

    invoke-direct {v11, v13, v14}, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 191
    .local v11, "scheme":Lorg/spongycastle/asn1/pkcs/EncryptionScheme;
    new-instance v4, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    sget-object v13, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v14, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;

    move-object/from16 v0, p0

    iget v15, v0, Lorg/spongycastle/openssl/PKCS8Generator;->iterationCount:I

    invoke-direct {v14, v10, v15}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;-><init>([BI)V

    invoke-direct {v4, v13, v14}, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 193
    .local v4, "func":Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;
    new-instance v12, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 195
    .local v12, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v12, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 196
    invoke-virtual {v12, v11}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 198
    new-instance v5, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    new-instance v13, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v14, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v15, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;

    new-instance v16, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct/range {v15 .. v16}, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-direct {v13, v14, v15}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/openssl/PKCS8Generator;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v14, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v14

    invoke-direct {v5, v13, v14}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 200
    .local v5, "info":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    new-instance v13, Lorg/spongycastle/util/io/pem/PemObject;

    const-string v14, "ENCRYPTED PRIVATE KEY"

    invoke-virtual {v5}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncoded()[B

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lorg/spongycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 202
    .end local v4    # "func":Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;
    .end local v5    # "info":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v11    # "scheme":Lorg/spongycastle/asn1/pkcs/EncryptionScheme;
    .end local v12    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :catch_0
    move-exception v3

    .line 204
    .local v3, "e":Ljava/io/IOException;
    new-instance v13, Lorg/spongycastle/util/io/pem/PemGenerationException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v3}, Lorg/spongycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 206
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 208
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v13, Lorg/spongycastle/util/io/pem/PemGenerationException;

    invoke-virtual {v3}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v3}, Lorg/spongycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 211
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    .end local v6    # "key":Ljavax/crypto/SecretKey;
    .end local v8    # "params":Ljava/security/AlgorithmParameters;
    .end local v10    # "salt":[B
    :cond_2
    invoke-static {v1}, Lorg/spongycastle/openssl/PEMUtilities;->isPKCS12(Lorg/spongycastle/asn1/DERObjectIdentifier;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 213
    const/16 v13, 0x14

    new-array v10, v13, [B

    .line 215
    .restart local v10    # "salt":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/openssl/PKCS8Generator;->random:Ljava/security/SecureRandom;

    if-nez v13, :cond_3

    .line 217
    new-instance v13, Ljava/security/SecureRandom;

    invoke-direct {v13}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/spongycastle/openssl/PKCS8Generator;->random:Ljava/security/SecureRandom;

    .line 220
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/openssl/PKCS8Generator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v13, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 224
    :try_start_1
    new-instance v9, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/openssl/PKCS8Generator;->password:[C

    invoke-direct {v9, v13}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 225
    .local v9, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/spongycastle/openssl/PKCS8Generator;->iterationCount:I

    invoke-direct {v2, v10, v13}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 227
    .local v2, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/openssl/PKCS8Generator;->cipher:Ljavax/crypto/Cipher;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/openssl/PKCS8Generator;->secKeyFact:Ljavax/crypto/SecretKeyFactory;

    invoke-virtual {v15, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v15

    invoke-virtual {v13, v14, v15, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 229
    new-instance v12, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 231
    .restart local v12    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v13, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v13, v10}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v12, v13}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 232
    new-instance v13, Lorg/spongycastle/asn1/DERInteger;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/spongycastle/openssl/PKCS8Generator;->iterationCount:I

    invoke-direct {v13, v14}, Lorg/spongycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v12, v13}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 234
    new-instance v5, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    new-instance v13, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v14, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    new-instance v15, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v15, v12}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v14, v15}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-direct {v13, v1, v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/openssl/PKCS8Generator;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v14, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v14

    invoke-direct {v5, v13, v14}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 236
    .restart local v5    # "info":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    new-instance v13, Lorg/spongycastle/util/io/pem/PemObject;

    const-string v14, "ENCRYPTED PRIVATE KEY"

    invoke-virtual {v5}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncoded()[B

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lorg/spongycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 238
    .end local v2    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v5    # "info":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v9    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v12    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :catch_2
    move-exception v3

    .line 240
    .local v3, "e":Ljava/io/IOException;
    new-instance v13, Lorg/spongycastle/util/io/pem/PemGenerationException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v3}, Lorg/spongycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 242
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 244
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v13, Lorg/spongycastle/util/io/pem/PemGenerationException;

    invoke-virtual {v3}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v3}, Lorg/spongycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 249
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    .end local v10    # "salt":[B
    :cond_4
    new-instance v13, Lorg/spongycastle/util/io/pem/PemGenerationException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unknown algorithm: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/openssl/PKCS8Generator;->algorithm:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/spongycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method public setIterationCount(I)Lorg/spongycastle/openssl/PKCS8Generator;
    .locals 0
    .param p1, "iterationCount"    # I

    .prologue
    .line 154
    iput p1, p0, Lorg/spongycastle/openssl/PKCS8Generator;->iterationCount:I

    .line 156
    return-object p0
.end method

.method public setPassword([C)Lorg/spongycastle/openssl/PKCS8Generator;
    .locals 0
    .param p1, "password"    # [C

    .prologue
    .line 147
    iput-object p1, p0, Lorg/spongycastle/openssl/PKCS8Generator;->password:[C

    .line 149
    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/spongycastle/openssl/PKCS8Generator;
    .locals 0
    .param p1, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 140
    iput-object p1, p0, Lorg/spongycastle/openssl/PKCS8Generator;->random:Ljava/security/SecureRandom;

    .line 142
    return-object p0
.end method
