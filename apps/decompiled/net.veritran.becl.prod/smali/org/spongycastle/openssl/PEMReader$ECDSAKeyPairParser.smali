.class Lorg/spongycastle/openssl/PEMReader$ECDSAKeyPairParser;
.super Lorg/spongycastle/openssl/PEMReader$KeyPairParser;
.source "PEMReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openssl/PEMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ECDSAKeyPairParser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/openssl/PEMReader;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openssl/PEMReader;Ljava/lang/String;)V
    .locals 0
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    .line 321
    iput-object p1, p0, Lorg/spongycastle/openssl/PEMReader$ECDSAKeyPairParser;->this$0:Lorg/spongycastle/openssl/PEMReader;

    .line 322
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/openssl/PEMReader$KeyPairParser;-><init>(Lorg/spongycastle/openssl/PEMReader;Ljava/lang/String;)V

    .line 323
    return-void
.end method


# virtual methods
.method public parseObject(Lorg/spongycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 12
    .param p1, "obj"    # Lorg/spongycastle/util/io/pem/PemObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/openssl/PEMReader$ECDSAKeyPairParser;->readKeyPair(Lorg/spongycastle/util/io/pem/PemObject;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v8

    .line 332
    .local v8, "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    new-instance v3, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;

    invoke-direct {v3, v8}, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 333
    .local v3, "pKey":Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v9, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;->getParameters()Lorg/spongycastle/asn1/ASN1Object;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 334
    .local v0, "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v4, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v9

    invoke-direct {v4, v0, v9}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/DERObject;)V

    .line 335
    .local v4, "privInfo":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    new-instance v6, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;->getPublicKey()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v9

    invoke-direct {v6, v0, v9}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 337
    .local v6, "pubInfo":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 338
    .local v5, "privSpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    new-instance v7, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 341
    .local v7, "pubSpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v9, "ECDSA"

    iget-object v10, p0, Lorg/spongycastle/openssl/PEMReader$ECDSAKeyPairParser;->provider:Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 344
    .local v2, "fact":Ljava/security/KeyFactory;
    new-instance v9, Ljava/security/KeyPair;

    invoke-virtual {v2, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v10

    invoke-virtual {v2, v5}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v9

    .line 348
    .end local v0    # "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .end local v2    # "fact":Ljava/security/KeyFactory;
    .end local v3    # "pKey":Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;
    .end local v4    # "privInfo":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v5    # "privSpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v6    # "pubInfo":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local v7    # "pubSpec":Ljava/security/spec/X509EncodedKeySpec;
    .end local v8    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Ljava/io/IOException;
    throw v1

    .line 352
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 354
    .local v1, "e":Ljava/lang/Exception;
    new-instance v9, Lorg/spongycastle/openssl/PEMException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "problem creating EC private key: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v1}, Lorg/spongycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9
.end method
