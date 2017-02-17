.class public Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;
.super Ljavax/crypto/KeyAgreementSpi;
.source "KeyAgreement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement$MQVwithSHA1KDF;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement$DHwithSHA1KDF;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement$MQV;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement$DHC;,
        Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement$DH;
    }
.end annotation


# static fields
.field private static final algorithms:Ljava/util/Hashtable;

.field private static final converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;


# instance fields
.field private agreement:Lorg/spongycastle/crypto/BasicAgreement;

.field private kaAlgorithm:Ljava/lang/String;

.field private kdf:Lorg/spongycastle/crypto/DerivationFunction;

.field private parameters:Lorg/spongycastle/crypto/params/ECDomainParameters;

.field private result:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 51
    new-instance v3, Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v3}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;-><init>()V

    sput-object v3, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    .line 52
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    sput-object v3, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    .line 56
    new-instance v0, Ljava/lang/Integer;

    const/16 v3, 0x80

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 57
    .local v0, "i128":Ljava/lang/Integer;
    new-instance v1, Ljava/lang/Integer;

    const/16 v3, 0xc0

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 58
    .local v1, "i192":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 60
    .local v2, "i256":Ljava/lang/Integer;
    sget-object v3, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v3, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v3, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v3, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v3, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v3, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_wrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v3, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    sget-object v4, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMS3DESwrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;)V
    .locals 0
    .param p1, "kaAlgorithm"    # Ljava/lang/String;
    .param p2, "agreement"    # Lorg/spongycastle/crypto/BasicAgreement;
    .param p3, "kdf"    # Lorg/spongycastle/crypto/DerivationFunction;

    .prologue
    .line 85
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    .line 86
    iput-object p1, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->agreement:Lorg/spongycastle/crypto/BasicAgreement;

    .line 88
    iput-object p3, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    .line 89
    return-void
.end method

.method private bigIntToBytes(Ljava/math/BigInteger;)[B
    .locals 3
    .param p1, "r"    # Ljava/math/BigInteger;

    .prologue
    .line 78
    sget-object v0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    sget-object v1, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    iget-object v2, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->parameters:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->getX()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lorg/spongycastle/math/ec/ECFieldElement;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static getSimpleName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 267
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "fullName":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initFromKey(Ljava/security/Key;)V
    .locals 9
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v6, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->agreement:Lorg/spongycastle/crypto/BasicAgreement;

    instance-of v6, v6, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;

    if-eqz v6, :cond_2

    .line 224
    instance-of v6, p1, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;

    if-nez v6, :cond_0

    .line 226
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " key agreement requires "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;

    invoke-static {v8}, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for initialisation"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move-object v3, p1

    .line 230
    check-cast v3, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;

    .line 231
    .local v3, "mqvPrivKey":Lorg/spongycastle/jce/interfaces/MQVPrivateKey;
    invoke-interface {v3}, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;->getStaticPrivateKey()Ljava/security/PrivateKey;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/jce/provider/asymmetric/ec/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 233
    .local v5, "staticPrivKey":Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    invoke-interface {v3}, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;->getEphemeralPrivateKey()Ljava/security/PrivateKey;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/jce/provider/asymmetric/ec/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 236
    .local v0, "ephemPrivKey":Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    const/4 v1, 0x0

    .line 237
    .local v1, "ephemPubKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    invoke-interface {v3}, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;->getEphemeralPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 239
    invoke-interface {v3}, Lorg/spongycastle/jce/interfaces/MQVPrivateKey;->getEphemeralPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/jce/provider/asymmetric/ec/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    .end local v1    # "ephemPubKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    check-cast v1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 243
    .restart local v1    # "ephemPubKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    :cond_1
    new-instance v2, Lorg/spongycastle/crypto/params/MQVPrivateParameters;

    invoke-direct {v2, v5, v0, v1}, Lorg/spongycastle/crypto/params/MQVPrivateParameters;-><init>(Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)V

    .line 244
    .local v2, "localParams":Lorg/spongycastle/crypto/params/MQVPrivateParameters;
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->parameters:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 248
    iget-object v6, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->agreement:Lorg/spongycastle/crypto/BasicAgreement;

    invoke-interface {v6, v2}, Lorg/spongycastle/crypto/BasicAgreement;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 263
    .end local v0    # "ephemPrivKey":Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .end local v1    # "ephemPubKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .end local v2    # "localParams":Lorg/spongycastle/crypto/params/MQVPrivateParameters;
    .end local v3    # "mqvPrivKey":Lorg/spongycastle/jce/interfaces/MQVPrivateKey;
    .end local v5    # "staticPrivKey":Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .end local p1    # "key":Ljava/security/Key;
    :goto_0
    return-void

    .line 252
    .restart local p1    # "key":Ljava/security/Key;
    :cond_2
    instance-of v6, p1, Lorg/spongycastle/jce/interfaces/ECPrivateKey;

    if-nez v6, :cond_3

    .line 254
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " key agreement requires "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lorg/spongycastle/jce/interfaces/ECPrivateKey;

    invoke-static {v8}, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for initialisation"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 258
    :cond_3
    check-cast p1, Ljava/security/PrivateKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-static {p1}, Lorg/spongycastle/jce/provider/asymmetric/ec/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 259
    .local v4, "privKey":Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->parameters:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 261
    iget-object v6, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->agreement:Lorg/spongycastle/crypto/BasicAgreement;

    invoke-interface {v6, v4}, Lorg/spongycastle/crypto/BasicAgreement;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_0
.end method


# virtual methods
.method protected engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 7
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "lastPhase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v4, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->parameters:Lorg/spongycastle/crypto/params/ECDomainParameters;

    if-nez v4, :cond_0

    .line 98
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not initialised."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 101
    :cond_0
    if-nez p2, :cond_1

    .line 103
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " can only be between two parties."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 107
    :cond_1
    iget-object v4, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->agreement:Lorg/spongycastle/crypto/BasicAgreement;

    instance-of v4, v4, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;

    if-eqz v4, :cond_3

    .line 109
    instance-of v4, p1, Lorg/spongycastle/jce/interfaces/MQVPublicKey;

    if-nez v4, :cond_2

    .line 111
    new-instance v4, Ljava/security/InvalidKeyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " key agreement requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lorg/spongycastle/jce/interfaces/MQVPublicKey;

    invoke-static {v6}, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for doPhase"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    move-object v1, p1

    .line 115
    check-cast v1, Lorg/spongycastle/jce/interfaces/MQVPublicKey;

    .line 116
    .local v1, "mqvPubKey":Lorg/spongycastle/jce/interfaces/MQVPublicKey;
    invoke-interface {v1}, Lorg/spongycastle/jce/interfaces/MQVPublicKey;->getStaticKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/jce/provider/asymmetric/ec/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 118
    .local v3, "staticKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    invoke-interface {v1}, Lorg/spongycastle/jce/interfaces/MQVPublicKey;->getEphemeralKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/jce/provider/asymmetric/ec/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 121
    .local v0, "ephemKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    new-instance v2, Lorg/spongycastle/crypto/params/MQVPublicParameters;

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/crypto/params/MQVPublicParameters;-><init>(Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)V

    .line 138
    .end local v0    # "ephemKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .end local v1    # "mqvPubKey":Lorg/spongycastle/jce/interfaces/MQVPublicKey;
    .end local v3    # "staticKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    .end local p1    # "key":Ljava/security/Key;
    .local v2, "pubKey":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    iget-object v4, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->agreement:Lorg/spongycastle/crypto/BasicAgreement;

    invoke-interface {v4, v2}, Lorg/spongycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->result:Ljava/math/BigInteger;

    .line 140
    const/4 v4, 0x0

    return-object v4

    .line 127
    .end local v2    # "pubKey":Lorg/spongycastle/crypto/CipherParameters;
    .restart local p1    # "key":Ljava/security/Key;
    :cond_3
    instance-of v4, p1, Lorg/spongycastle/jce/interfaces/ECPublicKey;

    if-nez v4, :cond_4

    .line 129
    new-instance v4, Ljava/security/InvalidKeyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " key agreement requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lorg/spongycastle/jce/interfaces/ECPublicKey;

    invoke-static {v6}, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for doPhase"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 133
    :cond_4
    check-cast p1, Ljava/security/PublicKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-static {p1}, Lorg/spongycastle/jce/provider/asymmetric/ec/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .restart local v2    # "pubKey":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0
.end method

.method protected engineGenerateSecret([BI)I
    .locals 4
    .param p1, "sharedSecret"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->engineGenerateSecret()[B

    move-result-object v0

    .line 162
    .local v0, "secret":[B
    array-length v1, p1

    sub-int/2addr v1, p2

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 164
    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->kaAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key agreement: need "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_0
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    array-length v1, v0

    return v1
.end method

.method protected engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 7
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v4, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v4}, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v3

    .line 178
    .local v3, "secret":[B
    iget-object v4, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    if-eqz v4, :cond_1

    .line 180
    sget-object v4, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 182
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown algorithm encountered: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 185
    :cond_0
    sget-object v4, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->algorithms:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 187
    .local v1, "keySize":I
    new-instance v2, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;

    new-instance v4, Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-direct {v4, p1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4, v1, v3}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;I[B)V

    .line 189
    .local v2, "params":Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;
    div-int/lit8 v4, v1, 0x8

    new-array v0, v4, [B

    .line 190
    .local v0, "keyBytes":[B
    iget-object v4, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    invoke-interface {v4, v2}, Lorg/spongycastle/crypto/DerivationFunction;->init(Lorg/spongycastle/crypto/DerivationParameters;)V

    .line 191
    iget-object v4, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    const/4 v5, 0x0

    array-length v6, v0

    invoke-interface {v4, v0, v5, v6}, Lorg/spongycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 192
    move-object v3, v0

    .line 199
    .end local v0    # "keyBytes":[B
    .end local v1    # "keySize":I
    .end local v2    # "params":Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;
    :cond_1
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, v3, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v4
.end method

.method protected engineGenerateSecret()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "KDF can only be used when algorithm is known"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->result:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->bigIntToBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->initFromKey(Ljava/security/Key;)V

    .line 217
    return-void
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lorg/spongycastle/jce/provider/asymmetric/ec/KeyAgreement;->initFromKey(Ljava/security/Key;)V

    .line 209
    return-void
.end method
