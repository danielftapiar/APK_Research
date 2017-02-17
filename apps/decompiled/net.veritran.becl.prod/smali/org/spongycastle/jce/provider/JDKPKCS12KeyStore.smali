.class public Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;
.super Ljava/security/KeyStoreSpi;
.source "JDKPKCS12KeyStore.java"

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lorg/spongycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$1;,
        Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;,
        Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$DefPKCS12KeyStore3DES;,
        Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$DefPKCS12KeyStore;,
        Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore3DES;,
        Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore;,
        Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    }
.end annotation


# static fields
.field static final CERTIFICATE:I = 0x1

.field static final KEY:I = 0x2

.field static final KEY_PRIVATE:I = 0x0

.field static final KEY_PUBLIC:I = 0x1

.field static final KEY_SECRET:I = 0x2

.field private static final MIN_ITERATIONS:I = 0x400

.field static final NULL:I = 0x0

.field private static final SALT_SIZE:I = 0x14

.field static final SEALED:I = 0x4

.field static final SECRET:I = 0x3

.field private static final bcProvider:Ljava/security/Provider;


# instance fields
.field private certAlgorithm:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field private certFact:Ljava/security/cert/CertificateFactory;

.field private certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

.field private chainCerts:Ljava/util/Hashtable;

.field private keyAlgorithm:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field private keyCerts:Ljava/util/Hashtable;

.field private keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

.field private localIds:Ljava/util/Hashtable;

.field protected random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    sput-object v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DERObjectIdentifier;)V
    .locals 4
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "keyAlgorithm"    # Lorg/spongycastle/asn1/DERObjectIdentifier;
    .param p3, "certAlgorithm"    # Lorg/spongycastle/asn1/DERObjectIdentifier;

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 88
    new-instance v1, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-direct {v1, v2}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    .line 89
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    .line 90
    new-instance v1, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-direct {v1, v2}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    .line 91
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    .line 92
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    .line 110
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    .line 162
    iput-object p2, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyAlgorithm:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 163
    iput-object p3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certAlgorithm:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 167
    if-eqz p1, :cond_0

    .line 169
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1, p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;

    .line 180
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t create cert factory - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$100(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;
    .param p1, "x1"    # Ljava/security/PublicKey;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    return-object v0
.end method

.method private static calculatePbeMac(Lorg/spongycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B
    .locals 7
    .param p0, "oid"    # Lorg/spongycastle/asn1/DERObjectIdentifier;
    .param p1, "salt"    # [B
    .param p2, "itCount"    # I
    .param p3, "password"    # [C
    .param p4, "wrongPkcs12Zero"    # Z
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1527
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v5, v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 1528
    .local v2, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 1529
    .local v0, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v4, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 1530
    .local v4, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v2, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/jce/provider/JCEPBEKey;

    .line 1531
    .local v1, "key":Lorg/spongycastle/jce/provider/JCEPBEKey;
    invoke-virtual {v1, p4}, Lorg/spongycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    .line 1533
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v5, v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 1534
    .local v3, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v3, v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1535
    invoke-virtual {v3, p5}, Ljavax/crypto/Mac;->update([B)V

    .line 1536
    invoke-virtual {v3}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v5

    return-object v5
.end method

.method private createSubjectKeyId(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 4
    .param p1, "pubKey"    # Ljava/security/PublicKey;

    .prologue
    .line 187
    :try_start_0
    new-instance v1, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 190
    .local v1, "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v2, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 192
    .end local v1    # "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "error creating key"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private doStore(Ljava/io/OutputStream;[CZ)V
    .locals 61
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .param p3, "useDEREncoding"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1132
    if-nez p2, :cond_0

    .line 1134
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1140
    :cond_0
    new-instance v47, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v47 .. v47}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1143
    .local v47, "keyS":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v50

    .line 1145
    .local v50, "ks":Ljava/util/Enumeration;
    :goto_0
    invoke-interface/range {v50 .. v50}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1147
    const/16 v4, 0x14

    new-array v0, v4, [B

    move-object/from16 v45, v0

    .line 1149
    .local v45, "kSalt":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1151
    invoke-interface/range {v50 .. v50}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/String;

    .line 1152
    .local v53, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/security/PrivateKey;

    .line 1153
    .local v58, "privKey":Ljava/security/PrivateKey;
    new-instance v44, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    const/16 v4, 0x400

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 1154
    .local v44, "kParams":Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyAlgorithm:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v44

    move-object/from16 v3, p2

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->wrapKey(Ljava/lang/String;Ljava/security/Key;Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;[C)[B

    move-result-object v41

    .line 1155
    .local v41, "kBytes":[B
    new-instance v39, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyAlgorithm:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v44 .. v44}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-direct {v0, v4, v5}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1156
    .local v39, "kAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v42, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1157
    .local v42, "kInfo":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    const/16 v18, 0x0

    .line 1158
    .local v18, "attrSet":Z
    new-instance v43, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v43 .. v43}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1160
    .local v43, "kName":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v58

    instance-of v4, v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_4

    move-object/from16 v21, v58

    .line 1162
    check-cast v21, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1166
    .local v21, "bagAttrs":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v54

    check-cast v54, Lorg/spongycastle/asn1/DERBMPString;

    .line 1167
    .local v54, "nm":Lorg/spongycastle/asn1/DERBMPString;
    if-eqz v54, :cond_1

    invoke-virtual/range {v54 .. v54}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1169
    :cond_1
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/spongycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1175
    :cond_2
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1177
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v32

    .line 1179
    .local v32, "ct":Ljava/security/cert/Certificate;
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1182
    .end local v32    # "ct":Ljava/security/cert/Certificate;
    :cond_3
    invoke-interface/range {v21 .. v21}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    .line 1184
    .local v35, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1186
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 1187
    .local v55, "oid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    new-instance v46, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v46 .. v46}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1189
    .local v46, "kSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v46

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1190
    new-instance v4, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1192
    const/16 v18, 0x1

    .line 1194
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    goto :goto_1

    .line 1198
    .end local v21    # "bagAttrs":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v46    # "kSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v54    # "nm":Lorg/spongycastle/asn1/DERBMPString;
    .end local v55    # "oid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    :cond_4
    if-nez v18, :cond_5

    .line 1203
    new-instance v46, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v46 .. v46}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1204
    .restart local v46    # "kSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v32

    .line 1206
    .restart local v32    # "ct":Ljava/security/cert/Certificate;
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1207
    new-instance v4, Lorg/spongycastle/asn1/DERSet;

    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1209
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1211
    new-instance v46, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v46    # "kSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v46 .. v46}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1213
    .restart local v46    # "kSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1214
    new-instance v4, Lorg/spongycastle/asn1/DERSet;

    new-instance v5, Lorg/spongycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1216
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1219
    .end local v32    # "ct":Ljava/security/cert/Certificate;
    .end local v46    # "kSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_5
    new-instance v40, Lorg/spongycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v42 .. v42}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v5

    new-instance v7, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v0, v43

    invoke-direct {v7, v0}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v40

    invoke-direct {v0, v4, v5, v7}, Lorg/spongycastle/asn1/pkcs/SafeBag;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DERObject;Lorg/spongycastle/asn1/ASN1Set;)V

    .line 1220
    .local v40, "kBag":Lorg/spongycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v47

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    goto/16 :goto_0

    .line 1223
    .end local v18    # "attrSet":Z
    .end local v39    # "kAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .end local v40    # "kBag":Lorg/spongycastle/asn1/pkcs/SafeBag;
    .end local v41    # "kBytes":[B
    .end local v42    # "kInfo":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v43    # "kName":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v44    # "kParams":Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v45    # "kSalt":[B
    .end local v53    # "name":Ljava/lang/String;
    .end local v58    # "privKey":Ljava/security/PrivateKey;
    :cond_6
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v47

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4}, Lorg/spongycastle/asn1/DERSequence;->getDEREncoded()[B

    move-result-object v48

    .line 1224
    .local v48, "keySEncoded":[B
    new-instance v49, Lorg/spongycastle/asn1/BERConstructedOctetString;

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/BERConstructedOctetString;-><init>([B)V

    .line 1229
    .local v49, "keyString":Lorg/spongycastle/asn1/BERConstructedOctetString;
    const/16 v4, 0x14

    new-array v0, v4, [B

    move-object/from16 v26, v0

    .line 1231
    .local v26, "cSalt":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1233
    new-instance v30, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v30 .. v30}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1234
    .local v30, "certSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v25, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    const/16 v4, 0x400

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 1235
    .local v25, "cParams":Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v6, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certAlgorithm:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1236
    .local v6, "cAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v34, Ljava/util/Hashtable;

    invoke-direct/range {v34 .. v34}, Ljava/util/Hashtable;-><init>()V

    .line 1238
    .local v34, "doneCerts":Ljava/util/Hashtable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v31

    .line 1239
    .local v31, "cs":Ljava/util/Enumeration;
    :goto_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1243
    :try_start_0
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/String;

    .line 1244
    .restart local v53    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v27

    .line 1245
    .local v27, "cert":Ljava/security/cert/Certificate;
    const/16 v22, 0x0

    .line 1246
    .local v22, "cAttrSet":Z
    new-instance v23, Lorg/spongycastle/asn1/pkcs/CertBag;

    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Lorg/spongycastle/asn1/pkcs/CertBag;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DERObject;)V

    .line 1249
    .local v23, "cBag":Lorg/spongycastle/asn1/pkcs/CertBag;
    new-instance v36, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v36 .. v36}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1251
    .local v36, "fName":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v27

    instance-of v4, v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_a

    .line 1253
    move-object/from16 v0, v27

    check-cast v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v21, v0

    .line 1257
    .restart local v21    # "bagAttrs":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v54

    check-cast v54, Lorg/spongycastle/asn1/DERBMPString;

    .line 1258
    .restart local v54    # "nm":Lorg/spongycastle/asn1/DERBMPString;
    if-eqz v54, :cond_7

    invoke-virtual/range {v54 .. v54}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1260
    :cond_7
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/spongycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1266
    :cond_8
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v4

    if-nez v4, :cond_9

    .line 1268
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1271
    :cond_9
    invoke-interface/range {v21 .. v21}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    .line 1273
    .restart local v35    # "e":Ljava/util/Enumeration;
    :goto_3
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1275
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 1276
    .restart local v55    # "oid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1278
    .local v37, "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v37

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1279
    new-instance v4, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1280
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1282
    const/16 v22, 0x1

    .line 1283
    goto :goto_3

    .line 1286
    .end local v21    # "bagAttrs":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v54    # "nm":Lorg/spongycastle/asn1/DERBMPString;
    .end local v55    # "oid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    :cond_a
    if-nez v22, :cond_b

    .line 1288
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1290
    .restart local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1291
    new-instance v4, Lorg/spongycastle/asn1/DERSet;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1292
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1294
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1296
    .restart local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1297
    new-instance v4, Lorg/spongycastle/asn1/DERSet;

    new-instance v5, Lorg/spongycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1299
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1302
    .end local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_b
    new-instance v60, Lorg/spongycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/pkcs/CertBag;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v5

    new-instance v7, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v5, v7}, Lorg/spongycastle/asn1/pkcs/SafeBag;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DERObject;Lorg/spongycastle/asn1/ASN1Set;)V

    .line 1304
    .local v60, "sBag":Lorg/spongycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1306
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1308
    .end local v22    # "cAttrSet":Z
    .end local v23    # "cBag":Lorg/spongycastle/asn1/pkcs/CertBag;
    .end local v27    # "cert":Ljava/security/cert/Certificate;
    .end local v36    # "fName":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v53    # "name":Ljava/lang/String;
    .end local v60    # "sBag":Lorg/spongycastle/asn1/pkcs/SafeBag;
    :catch_0
    move-exception v35

    .line 1310
    .local v35, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error encoding certificate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1314
    .end local v35    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v31

    .line 1315
    :cond_d
    :goto_4
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1319
    :try_start_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1320
    .local v29, "certId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/security/cert/Certificate;

    .line 1321
    .restart local v27    # "cert":Ljava/security/cert/Certificate;
    const/16 v22, 0x0

    .line 1323
    .restart local v22    # "cAttrSet":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_d

    .line 1328
    new-instance v23, Lorg/spongycastle/asn1/pkcs/CertBag;

    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Lorg/spongycastle/asn1/pkcs/CertBag;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DERObject;)V

    .line 1331
    .restart local v23    # "cBag":Lorg/spongycastle/asn1/pkcs/CertBag;
    new-instance v36, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v36 .. v36}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1333
    .restart local v36    # "fName":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v27

    instance-of v4, v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_11

    .line 1335
    move-object/from16 v0, v27

    check-cast v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v21, v0

    .line 1339
    .restart local v21    # "bagAttrs":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v54

    check-cast v54, Lorg/spongycastle/asn1/DERBMPString;

    .line 1340
    .restart local v54    # "nm":Lorg/spongycastle/asn1/DERBMPString;
    if-eqz v54, :cond_e

    invoke-virtual/range {v54 .. v54}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1342
    :cond_e
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/spongycastle/asn1/DERBMPString;

    move-object/from16 v0, v29

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1345
    :cond_f
    invoke-interface/range {v21 .. v21}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    .line 1347
    .local v35, "e":Ljava/util/Enumeration;
    :cond_10
    :goto_5
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1349
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 1355
    .restart local v55    # "oid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    sget-object v4, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1360
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1362
    .restart local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v37

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1363
    new-instance v4, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1364
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1366
    const/16 v22, 0x1

    .line 1367
    goto :goto_5

    .line 1370
    .end local v21    # "bagAttrs":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v54    # "nm":Lorg/spongycastle/asn1/DERBMPString;
    .end local v55    # "oid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    :cond_11
    if-nez v22, :cond_12

    .line 1372
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1374
    .restart local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1375
    new-instance v4, Lorg/spongycastle/asn1/DERSet;

    new-instance v5, Lorg/spongycastle/asn1/DERBMPString;

    move-object/from16 v0, v29

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1377
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1380
    .end local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_12
    new-instance v60, Lorg/spongycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/pkcs/CertBag;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v5

    new-instance v7, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v5, v7}, Lorg/spongycastle/asn1/pkcs/SafeBag;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DERObject;Lorg/spongycastle/asn1/ASN1Set;)V

    .line 1382
    .restart local v60    # "sBag":Lorg/spongycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1384
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 1386
    .end local v22    # "cAttrSet":Z
    .end local v23    # "cBag":Lorg/spongycastle/asn1/pkcs/CertBag;
    .end local v27    # "cert":Ljava/security/cert/Certificate;
    .end local v29    # "certId":Ljava/lang/String;
    .end local v36    # "fName":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v60    # "sBag":Lorg/spongycastle/asn1/pkcs/SafeBag;
    :catch_1
    move-exception v35

    .line 1388
    .local v35, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error encoding certificate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1392
    .end local v35    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v31

    .line 1393
    :cond_14
    :goto_6
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1397
    :try_start_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    .line 1398
    .local v29, "certId":Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/security/cert/Certificate;

    .line 1400
    .restart local v27    # "cert":Ljava/security/cert/Certificate;
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_14

    .line 1405
    new-instance v23, Lorg/spongycastle/asn1/pkcs/CertBag;

    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Lorg/spongycastle/asn1/pkcs/CertBag;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DERObject;)V

    .line 1408
    .restart local v23    # "cBag":Lorg/spongycastle/asn1/pkcs/CertBag;
    new-instance v36, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v36 .. v36}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1410
    .restart local v36    # "fName":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v27

    instance-of v4, v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_16

    .line 1412
    move-object/from16 v0, v27

    check-cast v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v21, v0

    .line 1413
    .restart local v21    # "bagAttrs":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    invoke-interface/range {v21 .. v21}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    .line 1415
    .local v35, "e":Ljava/util/Enumeration;
    :cond_15
    :goto_7
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1417
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 1423
    .restart local v55    # "oid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    sget-object v4, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 1428
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1430
    .restart local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v37

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1431
    new-instance v4, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1432
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    .line 1440
    .end local v21    # "bagAttrs":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v23    # "cBag":Lorg/spongycastle/asn1/pkcs/CertBag;
    .end local v27    # "cert":Ljava/security/cert/Certificate;
    .end local v29    # "certId":Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v36    # "fName":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v55    # "oid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    :catch_2
    move-exception v35

    .line 1442
    .local v35, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error encoding certificate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1436
    .end local v35    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v23    # "cBag":Lorg/spongycastle/asn1/pkcs/CertBag;
    .restart local v27    # "cert":Ljava/security/cert/Certificate;
    .restart local v29    # "certId":Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    .restart local v36    # "fName":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_16
    :try_start_3
    new-instance v60, Lorg/spongycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/pkcs/CertBag;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v5

    new-instance v7, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v5, v7}, Lorg/spongycastle/asn1/pkcs/SafeBag;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DERObject;Lorg/spongycastle/asn1/ASN1Set;)V

    .line 1438
    .restart local v60    # "sBag":Lorg/spongycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_6

    .line 1446
    .end local v23    # "cBag":Lorg/spongycastle/asn1/pkcs/CertBag;
    .end local v27    # "cert":Ljava/security/cert/Certificate;
    .end local v29    # "certId":Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    .end local v36    # "fName":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v60    # "sBag":Lorg/spongycastle/asn1/pkcs/SafeBag;
    :cond_17
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4}, Lorg/spongycastle/asn1/DERSequence;->getDEREncoded()[B

    move-result-object v9

    .line 1447
    .local v9, "certSeqEncoded":[B
    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->cryptData(ZLorg/spongycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v28

    .line 1448
    .local v28, "certBytes":[B
    new-instance v24, Lorg/spongycastle/asn1/pkcs/EncryptedData;

    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/spongycastle/asn1/BERConstructedOctetString;

    move-object/from16 v0, v28

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/BERConstructedOctetString;-><init>([B)V

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v6, v5}, Lorg/spongycastle/asn1/pkcs/EncryptedData;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1450
    .local v24, "cInfo":Lorg/spongycastle/asn1/pkcs/EncryptedData;
    const/4 v4, 0x2

    new-array v0, v4, [Lorg/spongycastle/asn1/pkcs/ContentInfo;

    move-object/from16 v38, v0

    const/4 v4, 0x0

    new-instance v5, Lorg/spongycastle/asn1/pkcs/ContentInfo;

    sget-object v7, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v49

    invoke-direct {v5, v7, v0}, Lorg/spongycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    aput-object v5, v38, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/spongycastle/asn1/pkcs/ContentInfo;

    sget-object v7, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->encryptedData:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/asn1/pkcs/EncryptedData;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lorg/spongycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    aput-object v5, v38, v4

    .line 1456
    .local v38, "info":[Lorg/spongycastle/asn1/pkcs/ContentInfo;
    new-instance v19, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;-><init>([Lorg/spongycastle/asn1/pkcs/ContentInfo;)V

    .line 1458
    .local v19, "auth":Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1460
    .local v20, "bOut":Ljava/io/ByteArrayOutputStream;
    if-eqz p3, :cond_18

    .line 1462
    new-instance v17, Lorg/spongycastle/asn1/DEROutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1469
    .local v17, "asn1Out":Lorg/spongycastle/asn1/DEROutputStream;
    :goto_8
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1471
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v57

    .line 1473
    .local v57, "pkg":[B
    new-instance v52, Lorg/spongycastle/asn1/pkcs/ContentInfo;

    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/spongycastle/asn1/BERConstructedOctetString;

    move-object/from16 v0, v57

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/BERConstructedOctetString;-><init>([B)V

    move-object/from16 v0, v52

    invoke-direct {v0, v4, v5}, Lorg/spongycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1478
    .local v52, "mainInfo":Lorg/spongycastle/asn1/pkcs/ContentInfo;
    const/16 v4, 0x14

    new-array v11, v4, [B

    .line 1479
    .local v11, "mSalt":[B
    const/16 v12, 0x400

    .line 1481
    .local v12, "itCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1483
    invoke-virtual/range {v52 .. v52}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v15

    .line 1489
    .local v15, "data":[B
    :try_start_4
    sget-object v10, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->id_SHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v14, 0x0

    move-object/from16 v13, p2

    invoke-static/range {v10 .. v15}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->calculatePbeMac(Lorg/spongycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B

    move-result-object v59

    .line 1491
    .local v59, "res":[B
    new-instance v16, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->id_SHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v5}, Lorg/spongycastle/asn1/DERNull;-><init>()V

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1492
    .local v16, "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v33, Lorg/spongycastle/asn1/x509/DigestInfo;

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/DigestInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1494
    .local v33, "dInfo":Lorg/spongycastle/asn1/x509/DigestInfo;
    new-instance v51, Lorg/spongycastle/asn1/pkcs/MacData;

    move-object/from16 v0, v51

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v11, v12}, Lorg/spongycastle/asn1/pkcs/MacData;-><init>(Lorg/spongycastle/asn1/x509/DigestInfo;[BI)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1504
    .local v51, "mData":Lorg/spongycastle/asn1/pkcs/MacData;
    new-instance v56, Lorg/spongycastle/asn1/pkcs/Pfx;

    move-object/from16 v0, v56

    move-object/from16 v1, v52

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/pkcs/Pfx;-><init>(Lorg/spongycastle/asn1/pkcs/ContentInfo;Lorg/spongycastle/asn1/pkcs/MacData;)V

    .line 1506
    .local v56, "pfx":Lorg/spongycastle/asn1/pkcs/Pfx;
    if-eqz p3, :cond_19

    .line 1508
    new-instance v17, Lorg/spongycastle/asn1/DEROutputStream;

    .end local v17    # "asn1Out":Lorg/spongycastle/asn1/DEROutputStream;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1515
    .restart local v17    # "asn1Out":Lorg/spongycastle/asn1/DEROutputStream;
    :goto_9
    move-object/from16 v0, v17

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1516
    return-void

    .line 1466
    .end local v11    # "mSalt":[B
    .end local v12    # "itCount":I
    .end local v15    # "data":[B
    .end local v16    # "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .end local v17    # "asn1Out":Lorg/spongycastle/asn1/DEROutputStream;
    .end local v33    # "dInfo":Lorg/spongycastle/asn1/x509/DigestInfo;
    .end local v51    # "mData":Lorg/spongycastle/asn1/pkcs/MacData;
    .end local v52    # "mainInfo":Lorg/spongycastle/asn1/pkcs/ContentInfo;
    .end local v56    # "pfx":Lorg/spongycastle/asn1/pkcs/Pfx;
    .end local v57    # "pkg":[B
    .end local v59    # "res":[B
    :cond_18
    new-instance v17, Lorg/spongycastle/asn1/BEROutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v17    # "asn1Out":Lorg/spongycastle/asn1/DEROutputStream;
    goto/16 :goto_8

    .line 1496
    .restart local v11    # "mSalt":[B
    .restart local v12    # "itCount":I
    .restart local v15    # "data":[B
    .restart local v52    # "mainInfo":Lorg/spongycastle/asn1/pkcs/ContentInfo;
    .restart local v57    # "pkg":[B
    :catch_3
    move-exception v35

    .line 1498
    .local v35, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error constructing MAC: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1512
    .end local v35    # "e":Ljava/lang/Exception;
    .restart local v16    # "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v33    # "dInfo":Lorg/spongycastle/asn1/x509/DigestInfo;
    .restart local v51    # "mData":Lorg/spongycastle/asn1/pkcs/MacData;
    .restart local v56    # "pfx":Lorg/spongycastle/asn1/pkcs/Pfx;
    .restart local v59    # "res":[B
    :cond_19
    new-instance v17, Lorg/spongycastle/asn1/BEROutputStream;

    .end local v17    # "asn1Out":Lorg/spongycastle/asn1/DEROutputStream;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v17    # "asn1Out":Lorg/spongycastle/asn1/DEROutputStream;
    goto :goto_9
.end method


# virtual methods
.method protected cryptData(ZLorg/spongycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B
    .locals 13
    .param p1, "forEncryption"    # Z
    .param p2, "algId"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "password"    # [C
    .param p4, "wrongPKCS12Zero"    # Z
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    .line 622
    .local v1, "algorithm":Ljava/lang/String;
    new-instance v8, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v10

    check-cast v10, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v8, v10}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 623
    .local v8, "pbeParams":Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v9, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 627
    .local v9, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :try_start_0
    sget-object v10, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v10}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    .line 628
    .local v6, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v10

    invoke-virtual {v8}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    invoke-direct {v3, v10, v11}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 631
    .local v3, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {v6, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/jce/provider/JCEPBEKey;

    .line 633
    .local v5, "key":Lorg/spongycastle/jce/provider/JCEPBEKey;
    move/from16 v0, p4

    invoke-virtual {v5, v0}, Lorg/spongycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    .line 635
    sget-object v10, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 636
    .local v2, "cipher":Ljavax/crypto/Cipher;
    if-eqz p1, :cond_0

    const/4 v7, 0x1

    .line 637
    .local v7, "mode":I
    :goto_0
    invoke-virtual {v2, v7, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 638
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    return-object v10

    .line 636
    .end local v7    # "mode":I
    :cond_0
    const/4 v7, 0x2

    goto :goto_0

    .line 640
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v5    # "key":Lorg/spongycastle/jce/provider/JCEPBEKey;
    .end local v6    # "keyFact":Ljavax/crypto/SecretKeyFactory;
    :catch_0
    move-exception v4

    .line 642
    .local v4, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception decrypting data - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public engineAliases()Ljava/util/Enumeration;
    .locals 5

    .prologue
    .line 206
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 208
    .local v2, "tab":Ljava/util/Hashtable;
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 209
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "cert"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 214
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 215
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 217
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    .local v0, "a":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 220
    const-string v3, "key"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 224
    .end local v0    # "a":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    return-object v3
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Key;

    .line 243
    .local v2, "k":Ljava/security/Key;
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 245
    .local v0, "c":Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    .line 247
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_0
    if-eqz v2, :cond_2

    .line 252
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 253
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 255
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .line 257
    .restart local v0    # "c":Ljava/security/cert/Certificate;
    :cond_1
    if-eqz v0, :cond_2

    .line 259
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .end local v1    # "id":Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_3

    if-nez v2, :cond_3

    .line 265
    new-instance v3, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no such entry as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 267
    :cond_3
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 277
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null alias passed to getCertificate."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 280
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v2, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 285
    .local v0, "c":Ljava/security/cert/Certificate;
    if-nez v0, :cond_1

    .line 287
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 288
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 290
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .line 298
    .end local v1    # "id":Ljava/lang/String;
    .restart local v0    # "c":Ljava/security/cert/Certificate;
    :cond_1
    :goto_0
    return-object v0

    .line 294
    .restart local v1    # "id":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .restart local v0    # "c":Ljava/security/cert/Certificate;
    goto :goto_0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 5
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    .line 304
    iget-object v4, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 305
    .local v0, "c":Ljava/util/Enumeration;
    iget-object v4, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 307
    .local v1, "k":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 309
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    .line 310
    .local v3, "tc":Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 312
    .local v2, "ta":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 332
    .end local v2    # "ta":Ljava/lang/String;
    .end local v3    # "tc":Ljava/security/cert/Certificate;
    :goto_0
    return-object v2

    .line 318
    :cond_1
    iget-object v4, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 319
    iget-object v4, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 321
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 323
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    .line 324
    .restart local v3    # "tc":Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 326
    .restart local v2    # "ta":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 332
    .end local v2    # "ta":Ljava/lang/String;
    .end local v3    # "tc":Ljava/security/cert/Certificate;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 20
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 338
    if-nez p1, :cond_0

    .line 340
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "null alias passed to getCertificateChain."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 343
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 345
    const/4 v7, 0x0

    .line 436
    :cond_1
    :goto_0
    return-object v7

    .line 348
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    .line 350
    .local v6, "c":Ljava/security/cert/Certificate;
    if-eqz v6, :cond_8

    .line 352
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 354
    .local v9, "cs":Ljava/util/Vector;
    :goto_1
    if-eqz v6, :cond_7

    move-object/from16 v16, v6

    .line 356
    check-cast v16, Ljava/security/cert/X509Certificate;

    .line 357
    .local v16, "x509c":Ljava/security/cert/X509Certificate;
    const/4 v13, 0x0

    .line 359
    .local v13, "nextC":Ljava/security/cert/Certificate;
    sget-object v17, Lorg/spongycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v5

    .line 360
    .local v5, "bytes":[B
    if-eqz v5, :cond_3

    .line 364
    :try_start_0
    new-instance v3, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v3, v5}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 366
    .local v3, "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v17

    check-cast v17, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    .line 367
    .local v4, "authBytes":[B
    new-instance v3, Lorg/spongycastle/asn1/ASN1InputStream;

    .end local v3    # "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 369
    .restart local v3    # "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    new-instance v12, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v17

    check-cast v17, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 370
    .local v12, "id":Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;
    invoke-virtual {v12}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v17

    if-eqz v17, :cond_3

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    new-instance v18, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v12}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;[B)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "nextC":Ljava/security/cert/Certificate;
    check-cast v13, Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v3    # "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    .end local v4    # "authBytes":[B
    .end local v12    # "id":Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;
    .restart local v13    # "nextC":Ljava/security/cert/Certificate;
    :cond_3
    if-nez v13, :cond_5

    .line 387
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v11

    .line 388
    .local v11, "i":Ljava/security/Principal;
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v14

    .line 390
    .local v14, "s":Ljava/security/Principal;
    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v10

    .line 394
    .local v10, "e":Ljava/util/Enumeration;
    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 397
    .local v8, "crt":Ljava/security/cert/X509Certificate;
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v15

    .line 398
    .local v15, "sub":Ljava/security/Principal;
    invoke-virtual {v15, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 402
    :try_start_1
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 403
    move-object v13, v8

    .line 415
    .end local v8    # "crt":Ljava/security/cert/X509Certificate;
    .end local v10    # "e":Ljava/util/Enumeration;
    .end local v11    # "i":Ljava/security/Principal;
    .end local v14    # "s":Ljava/security/Principal;
    .end local v15    # "sub":Ljava/security/Principal;
    :cond_5
    invoke-virtual {v9, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 416
    if-eq v13, v6, :cond_6

    .line 418
    move-object v6, v13

    goto/16 :goto_1

    .line 376
    .end local v13    # "nextC":Ljava/security/cert/Certificate;
    :catch_0
    move-exception v10

    .line 378
    .local v10, "e":Ljava/io/IOException;
    new-instance v17, Ljava/lang/RuntimeException;

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 422
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v13    # "nextC":Ljava/security/cert/Certificate;
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 426
    .end local v5    # "bytes":[B
    .end local v13    # "nextC":Ljava/security/cert/Certificate;
    .end local v16    # "x509c":Ljava/security/cert/X509Certificate;
    :cond_7
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v7, v0, [Ljava/security/cert/Certificate;

    .line 428
    .local v7, "certChain":[Ljava/security/cert/Certificate;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    array-length v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v11, v0, :cond_1

    .line 430
    invoke-virtual {v9, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/security/cert/Certificate;

    aput-object v17, v7, v11

    .line 428
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 436
    .end local v7    # "certChain":[Ljava/security/cert/Certificate;
    .end local v9    # "cs":Ljava/util/Vector;
    .end local v11    # "i":I
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 406
    .restart local v5    # "bytes":[B
    .restart local v8    # "crt":Ljava/security/cert/X509Certificate;
    .restart local v9    # "cs":Ljava/util/Vector;
    .local v10, "e":Ljava/util/Enumeration;
    .local v11, "i":Ljava/security/Principal;
    .restart local v13    # "nextC":Ljava/security/cert/Certificate;
    .restart local v14    # "s":Ljava/security/Principal;
    .restart local v15    # "sub":Ljava/security/Principal;
    .restart local v16    # "x509c":Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v17

    goto :goto_2
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 441
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 449
    if-nez p1, :cond_0

    .line 451
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getKey."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    return-object v0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 460
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 466
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 54
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    if-nez p1, :cond_1

    .line 1086
    :cond_0
    return-void

    .line 656
    :cond_1
    if-nez p2, :cond_2

    .line 658
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v6, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v3, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 661
    :cond_2
    new-instance v25, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 663
    .local v25, "bufIn":Ljava/io/BufferedInputStream;
    const/16 v3, 0xa

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 665
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedInputStream;->read()I

    move-result v38

    .line 667
    .local v38, "head":I
    const/16 v3, 0x30

    move/from16 v0, v38

    if-eq v0, v3, :cond_3

    .line 669
    new-instance v3, Ljava/io/IOException;

    const-string v6, "stream does not represent a PKCS12 key store"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 672
    :cond_3
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedInputStream;->reset()V

    .line 674
    new-instance v22, Lorg/spongycastle/asn1/ASN1InputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 675
    .local v22, "bIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v45

    check-cast v45, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 676
    .local v45, "obj":Lorg/spongycastle/asn1/ASN1Sequence;
    new-instance v23, Lorg/spongycastle/asn1/pkcs/Pfx;

    move-object/from16 v0, v23

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/Pfx;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 677
    .local v23, "bag":Lorg/spongycastle/asn1/pkcs/Pfx;
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/pkcs/Pfx;->getAuthSafe()Lorg/spongycastle/asn1/pkcs/ContentInfo;

    move-result-object v40

    .line 678
    .local v40, "info":Lorg/spongycastle/asn1/pkcs/ContentInfo;
    new-instance v30, Ljava/util/Vector;

    invoke-direct/range {v30 .. v30}, Ljava/util/Vector;-><init>()V

    .line 679
    .local v30, "chain":Ljava/util/Vector;
    const/16 v53, 0x0

    .line 680
    .local v53, "unmarkedKey":Z
    const/4 v13, 0x0

    .line 682
    .local v13, "wrongPKCS12Zero":Z
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/pkcs/Pfx;->getMacData()Lorg/spongycastle/asn1/pkcs/MacData;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 684
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/pkcs/Pfx;->getMacData()Lorg/spongycastle/asn1/pkcs/MacData;

    move-result-object v43

    .line 685
    .local v43, "mData":Lorg/spongycastle/asn1/pkcs/MacData;
    invoke-virtual/range {v43 .. v43}, Lorg/spongycastle/asn1/pkcs/MacData;->getMac()Lorg/spongycastle/asn1/x509/DigestInfo;

    move-result-object v33

    .line 686
    .local v33, "dInfo":Lorg/spongycastle/asn1/x509/DigestInfo;
    invoke-virtual/range {v33 .. v33}, Lorg/spongycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v16

    .line 687
    .local v16, "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual/range {v43 .. v43}, Lorg/spongycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v4

    .line 688
    .local v4, "salt":[B
    invoke-virtual/range {v43 .. v43}, Lorg/spongycastle/asn1/pkcs/MacData;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 690
    .local v5, "itCount":I
    invoke-virtual/range {v40 .. v40}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    .line 694
    .local v8, "data":[B
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->calculatePbeMac(Lorg/spongycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B

    move-result-object v50

    .line 695
    .local v50, "res":[B
    invoke-virtual/range {v33 .. v33}, Lorg/spongycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v34

    .line 697
    .local v34, "dig":[B
    move-object/from16 v0, v50

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_6

    .line 699
    move-object/from16 v0, p2

    array-length v3, v0

    if-lez v3, :cond_4

    .line 701
    new-instance v3, Ljava/io/IOException;

    const-string v6, "PKCS12 key store mac invalid - wrong password or corrupted file."

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 715
    .end local v34    # "dig":[B
    .end local v50    # "res":[B
    :catch_0
    move-exception v35

    .line 717
    .local v35, "e":Ljava/io/IOException;
    throw v35

    .line 705
    .end local v35    # "e":Ljava/io/IOException;
    .restart local v34    # "dig":[B
    .restart local v50    # "res":[B
    :cond_4
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    const/4 v7, 0x1

    move-object/from16 v6, p2

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->calculatePbeMac(Lorg/spongycastle/asn1/DERObjectIdentifier;[BI[CZ[B)[B

    move-result-object v50

    .line 707
    move-object/from16 v0, v50

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_5

    .line 709
    new-instance v3, Ljava/io/IOException;

    const-string v6, "PKCS12 key store mac invalid - wrong password or corrupted file."

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 719
    .end local v34    # "dig":[B
    .end local v50    # "res":[B
    :catch_1
    move-exception v35

    .line 721
    .local v35, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error constructing MAC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 712
    .end local v35    # "e":Ljava/lang/Exception;
    .restart local v34    # "dig":[B
    .restart local v50    # "res":[B
    :cond_5
    const/4 v13, 0x1

    .line 725
    .end local v4    # "salt":[B
    .end local v5    # "itCount":I
    .end local v8    # "data":[B
    .end local v16    # "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .end local v33    # "dInfo":Lorg/spongycastle/asn1/x509/DigestInfo;
    .end local v34    # "dig":[B
    .end local v43    # "mData":Lorg/spongycastle/asn1/pkcs/MacData;
    .end local v50    # "res":[B
    :cond_6
    new-instance v3, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    .line 726
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    .line 728
    invoke-virtual/range {v40 .. v40}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 730
    new-instance v22, Lorg/spongycastle/asn1/ASN1InputStream;

    .end local v22    # "bIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v40 .. v40}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 732
    .restart local v22    # "bIn":Lorg/spongycastle/asn1/ASN1InputStream;
    new-instance v20, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 733
    .local v20, "authSafe":Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;->getContentInfo()[Lorg/spongycastle/asn1/pkcs/ContentInfo;

    move-result-object v26

    .line 735
    .local v26, "c":[Lorg/spongycastle/asn1/pkcs/ContentInfo;
    const/16 v39, 0x0

    .local v39, "i":I
    :goto_0
    move-object/from16 v0, v26

    array-length v3, v0

    move/from16 v0, v39

    if-eq v0, v3, :cond_22

    .line 737
    aget-object v3, v26, v39

    invoke-virtual {v3}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 739
    new-instance v32, Lorg/spongycastle/asn1/ASN1InputStream;

    aget-object v3, v26, v39

    invoke-virtual {v3}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 740
    .local v32, "dIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v32 .. v32}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v51

    check-cast v51, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 742
    .local v51, "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    const/16 v41, 0x0

    .local v41, "j":I
    :goto_1
    invoke-virtual/range {v51 .. v51}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v41

    if-eq v0, v3, :cond_21

    .line 744
    new-instance v21, Lorg/spongycastle/asn1/pkcs/SafeBag;

    move-object/from16 v0, v51

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/pkcs/SafeBag;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 745
    .local v21, "b":Lorg/spongycastle/asn1/pkcs/SafeBag;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 747
    new-instance v36, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/spongycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 748
    .local v36, "eIn":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual/range {v36 .. v36}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v6, v1, v13}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->unwrapKey(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v49

    .local v49, "privKey":Ljava/security/PrivateKey;
    move-object/from16 v24, v49

    .line 753
    check-cast v24, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 754
    .local v24, "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v17, 0x0

    .line 755
    .local v17, "alias":Ljava/lang/String;
    const/16 v42, 0x0

    .line 757
    .local v42, "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 759
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    .line 760
    .local v35, "e":Ljava/util/Enumeration;
    :cond_7
    :goto_2
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 762
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 763
    .local v52, "sq":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v15

    check-cast v15, Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 764
    .local v15, "aOid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v19

    check-cast v19, Lorg/spongycastle/asn1/ASN1Set;

    .line 765
    .local v19, "attrSet":Lorg/spongycastle/asn1/ASN1Set;
    const/16 v18, 0x0

    .line 767
    .local v18, "attr":Lorg/spongycastle/asn1/DERObject;
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 769
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v18

    .end local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    check-cast v18, Lorg/spongycastle/asn1/DERObject;

    .line 771
    .restart local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v37

    .line 772
    .local v37, "existing":Lorg/spongycastle/asn1/DEREncodable;
    if-eqz v37, :cond_8

    .line 775
    invoke-interface/range {v37 .. v37}, Lorg/spongycastle/asn1/DEREncodable;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 777
    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 783
    :cond_8
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 787
    .end local v37    # "existing":Lorg/spongycastle/asn1/DEREncodable;
    :cond_9
    sget-object v3, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 789
    check-cast v18, Lorg/spongycastle/asn1/DERBMPString;

    .end local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    .line 790
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 792
    .restart local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    :cond_a
    sget-object v3, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v42, v18

    .line 794
    check-cast v42, Lorg/spongycastle/asn1/ASN1OctetString;

    goto :goto_2

    .line 799
    .end local v15    # "aOid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    .end local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    .end local v19    # "attrSet":Lorg/spongycastle/asn1/ASN1Set;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v52    # "sq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_b
    if-eqz v42, :cond_d

    .line 801
    new-instance v44, Ljava/lang/String;

    invoke-virtual/range {v42 .. v42}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 803
    .local v44, "name":Ljava/lang/String;
    if-nez v17, :cond_c

    .line 805
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v44

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 742
    .end local v17    # "alias":Ljava/lang/String;
    .end local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v36    # "eIn":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v42    # "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    .end local v44    # "name":Ljava/lang/String;
    .end local v49    # "privKey":Ljava/security/PrivateKey;
    :goto_3
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_1

    .line 809
    .restart local v17    # "alias":Ljava/lang/String;
    .restart local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v36    # "eIn":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .restart local v42    # "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    .restart local v44    # "name":Ljava/lang/String;
    .restart local v49    # "privKey":Ljava/security/PrivateKey;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 814
    .end local v44    # "name":Ljava/lang/String;
    :cond_d
    const/16 v53, 0x1

    .line 815
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const-string v6, "unmarked"

    move-object/from16 v0, v49

    invoke-virtual {v3, v6, v0}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 818
    .end local v17    # "alias":Ljava/lang/String;
    .end local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v36    # "eIn":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v42    # "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    .end local v49    # "privKey":Ljava/security/PrivateKey;
    :cond_e
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 820
    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 824
    :cond_f
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra in data "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 825
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v21 .. v21}, Lorg/spongycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 829
    .end local v21    # "b":Lorg/spongycastle/asn1/pkcs/SafeBag;
    .end local v32    # "dIn":Lorg/spongycastle/asn1/ASN1InputStream;
    .end local v41    # "j":I
    .end local v51    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_10
    aget-object v3, v26, v39

    invoke-virtual {v3}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->encryptedData:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 831
    new-instance v31, Lorg/spongycastle/asn1/pkcs/EncryptedData;

    aget-object v3, v26, v39

    invoke-virtual {v3}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/pkcs/EncryptedData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 832
    .local v31, "d":Lorg/spongycastle/asn1/pkcs/EncryptedData;
    const/4 v10, 0x0

    invoke-virtual/range {v31 .. v31}, Lorg/spongycastle/asn1/pkcs/EncryptedData;->getEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v11

    invoke-virtual/range {v31 .. v31}, Lorg/spongycastle/asn1/pkcs/EncryptedData;->getContent()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v14

    move-object/from16 v9, p0

    move-object/from16 v12, p2

    invoke-virtual/range {v9 .. v14}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->cryptData(ZLorg/spongycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v46

    .line 834
    .local v46, "octets":[B
    invoke-static/range {v46 .. v46}, Lorg/spongycastle/asn1/ASN1Object;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Object;

    move-result-object v51

    check-cast v51, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 836
    .restart local v51    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    const/16 v41, 0x0

    .restart local v41    # "j":I
    :goto_4
    invoke-virtual/range {v51 .. v51}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v41

    if-eq v0, v3, :cond_21

    .line 838
    new-instance v21, Lorg/spongycastle/asn1/pkcs/SafeBag;

    move-object/from16 v0, v51

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/pkcs/SafeBag;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 840
    .restart local v21    # "b":Lorg/spongycastle/asn1/pkcs/SafeBag;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 842
    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 836
    :goto_5
    add-int/lit8 v41, v41, 0x1

    goto :goto_4

    .line 844
    :cond_11
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 846
    new-instance v36, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/spongycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 847
    .restart local v36    # "eIn":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual/range {v36 .. v36}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v6, v1, v13}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->unwrapKey(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v49

    .restart local v49    # "privKey":Ljava/security/PrivateKey;
    move-object/from16 v24, v49

    .line 852
    check-cast v24, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 853
    .restart local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v17, 0x0

    .line 854
    .restart local v17    # "alias":Ljava/lang/String;
    const/16 v42, 0x0

    .line 856
    .restart local v42    # "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    .line 857
    .restart local v35    # "e":Ljava/util/Enumeration;
    :cond_12
    :goto_6
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 859
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 860
    .restart local v52    # "sq":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v15

    check-cast v15, Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 861
    .restart local v15    # "aOid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v19

    check-cast v19, Lorg/spongycastle/asn1/ASN1Set;

    .line 862
    .restart local v19    # "attrSet":Lorg/spongycastle/asn1/ASN1Set;
    const/16 v18, 0x0

    .line 864
    .restart local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-lez v3, :cond_14

    .line 866
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v18

    .end local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    check-cast v18, Lorg/spongycastle/asn1/DERObject;

    .line 868
    .restart local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v37

    .line 869
    .restart local v37    # "existing":Lorg/spongycastle/asn1/DEREncodable;
    if-eqz v37, :cond_13

    .line 872
    invoke-interface/range {v37 .. v37}, Lorg/spongycastle/asn1/DEREncodable;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 874
    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 880
    :cond_13
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 884
    .end local v37    # "existing":Lorg/spongycastle/asn1/DEREncodable;
    :cond_14
    sget-object v3, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 886
    check-cast v18, Lorg/spongycastle/asn1/DERBMPString;

    .end local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    .line 887
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 889
    .restart local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    :cond_15
    sget-object v3, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v42, v18

    .line 891
    check-cast v42, Lorg/spongycastle/asn1/ASN1OctetString;

    goto :goto_6

    .line 895
    .end local v15    # "aOid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    .end local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    .end local v19    # "attrSet":Lorg/spongycastle/asn1/ASN1Set;
    .end local v52    # "sq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_16
    new-instance v44, Ljava/lang/String;

    invoke-virtual/range {v42 .. v42}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 897
    .restart local v44    # "name":Ljava/lang/String;
    if-nez v17, :cond_17

    .line 899
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v44

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 903
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 906
    .end local v17    # "alias":Ljava/lang/String;
    .end local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v36    # "eIn":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v42    # "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    .end local v44    # "name":Ljava/lang/String;
    .end local v49    # "privKey":Ljava/security/PrivateKey;
    :cond_18
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 908
    new-instance v48, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/spongycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v48

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 909
    .local v48, "pIn":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static/range {v48 .. v48}, Lorg/spongycastle/jce/provider/JDKKeyFactory;->createPrivateKeyFromPrivateKeyInfo(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v49

    .restart local v49    # "privKey":Ljava/security/PrivateKey;
    move-object/from16 v24, v49

    .line 914
    check-cast v24, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 915
    .restart local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v17, 0x0

    .line 916
    .restart local v17    # "alias":Ljava/lang/String;
    const/16 v42, 0x0

    .line 918
    .restart local v42    # "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    .line 919
    .restart local v35    # "e":Ljava/util/Enumeration;
    :cond_19
    :goto_7
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 921
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 922
    .restart local v52    # "sq":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v15

    check-cast v15, Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 923
    .restart local v15    # "aOid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v19

    check-cast v19, Lorg/spongycastle/asn1/ASN1Set;

    .line 924
    .restart local v19    # "attrSet":Lorg/spongycastle/asn1/ASN1Set;
    const/16 v18, 0x0

    .line 926
    .restart local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-lez v3, :cond_1b

    .line 928
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v18

    .end local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    check-cast v18, Lorg/spongycastle/asn1/DERObject;

    .line 930
    .restart local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v37

    .line 931
    .restart local v37    # "existing":Lorg/spongycastle/asn1/DEREncodable;
    if-eqz v37, :cond_1a

    .line 934
    invoke-interface/range {v37 .. v37}, Lorg/spongycastle/asn1/DEREncodable;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 936
    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 942
    :cond_1a
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 946
    .end local v37    # "existing":Lorg/spongycastle/asn1/DEREncodable;
    :cond_1b
    sget-object v3, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 948
    check-cast v18, Lorg/spongycastle/asn1/DERBMPString;

    .end local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    .line 949
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 951
    .restart local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    :cond_1c
    sget-object v3, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v42, v18

    .line 953
    check-cast v42, Lorg/spongycastle/asn1/ASN1OctetString;

    goto :goto_7

    .line 957
    .end local v15    # "aOid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    .end local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    .end local v19    # "attrSet":Lorg/spongycastle/asn1/ASN1Set;
    .end local v52    # "sq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_1d
    new-instance v44, Ljava/lang/String;

    invoke-virtual/range {v42 .. v42}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 959
    .restart local v44    # "name":Ljava/lang/String;
    if-nez v17, :cond_1e

    .line 961
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v44

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 965
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 970
    .end local v17    # "alias":Ljava/lang/String;
    .end local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v42    # "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    .end local v44    # "name":Ljava/lang/String;
    .end local v48    # "pIn":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v49    # "privKey":Ljava/security/PrivateKey;
    :cond_1f
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra in encryptedData "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 971
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v21 .. v21}, Lorg/spongycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 977
    .end local v21    # "b":Lorg/spongycastle/asn1/pkcs/SafeBag;
    .end local v31    # "d":Lorg/spongycastle/asn1/pkcs/EncryptedData;
    .end local v41    # "j":I
    .end local v46    # "octets":[B
    .end local v51    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_20
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v26, v39

    invoke-virtual {v7}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 978
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v26, v39

    invoke-virtual {v7}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v7

    invoke-static {v7}, Lorg/spongycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 735
    :cond_21
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_0

    .line 983
    .end local v20    # "authSafe":Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v26    # "c":[Lorg/spongycastle/asn1/pkcs/ContentInfo;
    .end local v39    # "i":I
    :cond_22
    new-instance v3, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    .line 984
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    .line 985
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    .line 987
    const/16 v39, 0x0

    .restart local v39    # "i":I
    :goto_8
    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v39

    if-eq v0, v3, :cond_0

    .line 989
    move-object/from16 v0, v30

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/spongycastle/asn1/pkcs/SafeBag;

    .line 990
    .restart local v21    # "b":Lorg/spongycastle/asn1/pkcs/SafeBag;
    new-instance v28, Lorg/spongycastle/asn1/pkcs/CertBag;

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/spongycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/pkcs/CertBag;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 992
    .local v28, "cb":Lorg/spongycastle/asn1/pkcs/CertBag;
    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/asn1/pkcs/CertBag;->getCertId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v3

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 994
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported certificate type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/asn1/pkcs/CertBag;->getCertId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1001
    :cond_23
    :try_start_2
    new-instance v27, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/asn1/pkcs/CertBag;->getCertValue()Lorg/spongycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1003
    .local v27, "cIn":Ljava/io/ByteArrayInputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v29

    .line 1013
    .local v29, "cert":Ljava/security/cert/Certificate;
    const/16 v42, 0x0

    .line 1014
    .restart local v42    # "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    const/16 v17, 0x0

    .line 1016
    .restart local v17    # "alias":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 1018
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    .line 1019
    .restart local v35    # "e":Ljava/util/Enumeration;
    :cond_24
    :goto_9
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1021
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 1022
    .restart local v52    # "sq":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v47

    check-cast v47, Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 1023
    .local v47, "oid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Set;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v18

    check-cast v18, Lorg/spongycastle/asn1/DERObject;

    .line 1024
    .restart local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    const/16 v24, 0x0

    .line 1026
    .restart local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    move-object/from16 v0, v29

    instance-of v3, v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v3, :cond_26

    move-object/from16 v24, v29

    .line 1028
    check-cast v24, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1030
    move-object/from16 v0, v24

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v37

    .line 1031
    .restart local v37    # "existing":Lorg/spongycastle/asn1/DEREncodable;
    if-eqz v37, :cond_25

    .line 1034
    invoke-interface/range {v37 .. v37}, Lorg/spongycastle/asn1/DEREncodable;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1036
    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1005
    .end local v17    # "alias":Ljava/lang/String;
    .end local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    .end local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v27    # "cIn":Ljava/io/ByteArrayInputStream;
    .end local v29    # "cert":Ljava/security/cert/Certificate;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v37    # "existing":Lorg/spongycastle/asn1/DEREncodable;
    .end local v42    # "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    .end local v47    # "oid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    .end local v52    # "sq":Lorg/spongycastle/asn1/ASN1Sequence;
    :catch_2
    move-exception v35

    .line 1007
    .local v35, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1042
    .restart local v17    # "alias":Ljava/lang/String;
    .restart local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    .restart local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v27    # "cIn":Ljava/io/ByteArrayInputStream;
    .restart local v29    # "cert":Ljava/security/cert/Certificate;
    .local v35, "e":Ljava/util/Enumeration;
    .restart local v37    # "existing":Lorg/spongycastle/asn1/DEREncodable;
    .restart local v42    # "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    .restart local v47    # "oid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    .restart local v52    # "sq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_25
    move-object/from16 v0, v24

    move-object/from16 v1, v47

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 1046
    .end local v37    # "existing":Lorg/spongycastle/asn1/DEREncodable;
    :cond_26
    sget-object v3, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1048
    check-cast v18, Lorg/spongycastle/asn1/DERBMPString;

    .end local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_9

    .line 1050
    .restart local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    :cond_27
    sget-object v3, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    move-object/from16 v42, v18

    .line 1052
    check-cast v42, Lorg/spongycastle/asn1/ASN1OctetString;

    goto/16 :goto_9

    .line 1057
    .end local v18    # "attr":Lorg/spongycastle/asn1/DERObject;
    .end local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v47    # "oid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    .end local v52    # "sq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    move-object/from16 v0, v29

    invoke-virtual {v3, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    if-eqz v53, :cond_2a

    .line 1061
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1063
    new-instance v44, Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 1065
    .restart local v44    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const-string v7, "unmarked"

    invoke-virtual {v6, v7}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v44

    invoke-virtual {v3, v0, v6}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 987
    .end local v44    # "name":Ljava/lang/String;
    :cond_29
    :goto_a
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_8

    .line 1074
    :cond_2a
    if-eqz v42, :cond_2b

    .line 1076
    new-instance v44, Ljava/lang/String;

    invoke-virtual/range {v42 .. v42}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 1078
    .restart local v44    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    .end local v44    # "name":Ljava/lang/String;
    :cond_2b
    if-eqz v17, :cond_29

    .line 1082
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is a key entry with the name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 480
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v1, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 499
    instance-of v1, p2, Ljava/security/PrivateKey;

    if-eqz v1, :cond_0

    if-nez p4, :cond_0

    .line 501
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "no certificate chain for private key"

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 504
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v1, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 506
    invoke-virtual {p0, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->engineDeleteEntry(Ljava/lang/String;)V

    .line 509
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v1, p1, p2}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 510
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-virtual {v1, p1, v2}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 512
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p4

    if-eq v0, v1, :cond_2

    .line 514
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v2, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    aget-object v3, p4, v0

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    aget-object v3, p4, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    :cond_2
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 489
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .locals 5

    .prologue
    .line 520
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 522
    .local v2, "tab":Ljava/util/Hashtable;
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 523
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 525
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "cert"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 528
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 529
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 531
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 532
    .local v0, "a":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 534
    const-string v3, "key"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 538
    .end local v0    # "a":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v3

    return v3
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->doStore(Ljava/io/OutputStream;[CZ)V

    .line 1127
    return-void
.end method

.method public engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 6
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1091
    if-nez p1, :cond_0

    .line 1093
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\'param\' arg cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1096
    :cond_0
    instance-of v3, p1, Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;

    if-nez v3, :cond_1

    .line 1098
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No support for \'param\' of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object v0, p1

    .line 1102
    check-cast v0, Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;

    .line 1105
    .local v0, "bcParam":Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v2

    .line 1106
    .local v2, "protParam":Ljava/security/KeyStore$ProtectionParameter;
    if-nez v2, :cond_2

    .line 1108
    const/4 v1, 0x0

    .line 1120
    .end local v2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    .local v1, "password":[C
    :goto_0
    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;->isUseDEREncoding()Z

    move-result v4

    invoke-direct {p0, v3, v1, v4}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->doStore(Ljava/io/OutputStream;[CZ)V

    .line 1121
    return-void

    .line 1110
    .end local v1    # "password":[C
    .restart local v2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :cond_2
    instance-of v3, v2, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v3, :cond_3

    .line 1112
    check-cast v2, Ljava/security/KeyStore$PasswordProtection;

    .end local v2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    invoke-virtual {v2}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v1

    .restart local v1    # "password":[C
    goto :goto_0

    .line 1116
    .end local v1    # "password":[C
    .restart local v2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No support for protection parameter of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setRandom(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "rand"    # Ljava/security/SecureRandom;

    .prologue
    .line 201
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    .line 202
    return-void
.end method

.method protected unwrapKey(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;
    .locals 13
    .param p1, "algId"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "data"    # [B
    .param p3, "password"    # [C
    .param p4, "wrongPKCS12Zero"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "algorithm":Ljava/lang/String;
    new-instance v8, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v10

    check-cast v10, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v8, v10}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 551
    .local v8, "pbeParams":Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v9, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 556
    .local v9, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :try_start_0
    sget-object v10, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v10}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    .line 558
    .local v6, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v10

    invoke-virtual {v8}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    invoke-direct {v3, v10, v11}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 562
    .local v3, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {v6, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 564
    .local v5, "k":Ljavax/crypto/SecretKey;
    move-object v0, v5

    check-cast v0, Lorg/spongycastle/jce/provider/JCEPBEKey;

    move-object v10, v0

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Lorg/spongycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    .line 566
    sget-object v10, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 568
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v10, 0x4

    invoke-virtual {v2, v10, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 571
    const-string v10, ""

    const/4 v11, 0x2

    invoke-virtual {v2, p2, v10, v11}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v7

    check-cast v7, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    .local v7, "out":Ljava/security/PrivateKey;
    return-object v7

    .line 573
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v5    # "k":Ljavax/crypto/SecretKey;
    .end local v6    # "keyFact":Ljavax/crypto/SecretKeyFactory;
    .end local v7    # "out":Ljava/security/PrivateKey;
    :catch_0
    move-exception v4

    .line 575
    .local v4, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception unwrapping private key - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method protected wrapKey(Ljava/lang/String;Ljava/security/Key;Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;[C)[B
    .locals 9
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "pbeParams"    # Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;
    .param p4, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 588
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v5, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 593
    .local v5, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :try_start_0
    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {p1, v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 595
    .local v3, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p3}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v6

    invoke-virtual {p3}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-direct {v1, v6, v7}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 599
    .local v1, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {p1, v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 601
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x3

    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 603
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 610
    .local v4, "out":[B
    return-object v4

    .line 605
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v3    # "keyFact":Ljavax/crypto/SecretKeyFactory;
    .end local v4    # "out":[B
    :catch_0
    move-exception v2

    .line 607
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception encrypting data - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
