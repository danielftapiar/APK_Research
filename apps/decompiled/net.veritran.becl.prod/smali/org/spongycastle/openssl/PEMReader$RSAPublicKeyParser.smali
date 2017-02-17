.class Lorg/spongycastle/openssl/PEMReader$RSAPublicKeyParser;
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
    name = "RSAPublicKeyParser"
.end annotation


# instance fields
.field private provider:Ljava/lang/String;

.field final synthetic this$0:Lorg/spongycastle/openssl/PEMReader;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openssl/PEMReader;Ljava/lang/String;)V
    .locals 0
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    .line 466
    iput-object p1, p0, Lorg/spongycastle/openssl/PEMReader$RSAPublicKeyParser;->this$0:Lorg/spongycastle/openssl/PEMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    iput-object p2, p0, Lorg/spongycastle/openssl/PEMReader$RSAPublicKeyParser;->provider:Ljava/lang/String;

    .line 468
    return-void
.end method


# virtual methods
.method public parseObject(Lorg/spongycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 11
    .param p1, "obj"    # Lorg/spongycastle/util/io/pem/PemObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    :try_start_0
    new-instance v1, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Lorg/spongycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 476
    .local v1, "ais":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v2

    .line 477
    .local v2, "asnObject":Lorg/spongycastle/asn1/DERObject;
    move-object v0, v2

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v7, v0

    .line 478
    .local v7, "sequence":Lorg/spongycastle/asn1/ASN1Sequence;
    new-instance v6, Lorg/spongycastle/asn1/x509/RSAPublicKeyStructure;

    invoke-direct {v6, v7}, Lorg/spongycastle/asn1/x509/RSAPublicKeyStructure;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 479
    .local v6, "rsaPubStructure":Lorg/spongycastle/asn1/x509/RSAPublicKeyStructure;
    new-instance v5, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/RSAPublicKeyStructure;->getModulus()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/RSAPublicKeyStructure;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 484
    .local v5, "keySpec":Ljava/security/spec/RSAPublicKeySpec;
    const-string v8, "RSA"

    iget-object v9, p0, Lorg/spongycastle/openssl/PEMReader$RSAPublicKeyParser;->provider:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 486
    .local v4, "keyFact":Ljava/security/KeyFactory;
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    return-object v8

    .line 488
    .end local v1    # "ais":Lorg/spongycastle/asn1/ASN1InputStream;
    .end local v2    # "asnObject":Lorg/spongycastle/asn1/DERObject;
    .end local v4    # "keyFact":Ljava/security/KeyFactory;
    .end local v5    # "keySpec":Ljava/security/spec/RSAPublicKeySpec;
    .end local v6    # "rsaPubStructure":Lorg/spongycastle/asn1/x509/RSAPublicKeyStructure;
    .end local v7    # "sequence":Lorg/spongycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v3

    .line 490
    .local v3, "e":Ljava/io/IOException;
    throw v3

    .line 492
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 494
    .local v3, "e":Ljava/security/NoSuchProviderException;
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can\'t find provider "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/spongycastle/openssl/PEMReader$RSAPublicKeyParser;->provider:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 496
    .end local v3    # "e":Ljava/security/NoSuchProviderException;
    :catch_2
    move-exception v3

    .line 498
    .local v3, "e":Ljava/lang/Exception;
    new-instance v8, Lorg/spongycastle/openssl/PEMException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "problem extracting key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Lorg/spongycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8
.end method
