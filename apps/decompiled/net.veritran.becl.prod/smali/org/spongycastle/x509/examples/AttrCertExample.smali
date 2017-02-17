.class public Lorg/spongycastle/x509/examples/AttrCertExample;
.super Ljava/lang/Object;
.source "AttrCertExample.java"


# static fields
.field static v1CertGen:Lorg/spongycastle/x509/X509V1CertificateGenerator;

.field static v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/spongycastle/x509/X509V1CertificateGenerator;

    invoke-direct {v0}, Lorg/spongycastle/x509/X509V1CertificateGenerator;-><init>()V

    sput-object v0, Lorg/spongycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/spongycastle/x509/X509V1CertificateGenerator;

    .line 36
    new-instance v0, Lorg/spongycastle/x509/X509V3CertificateGenerator;

    invoke-direct {v0}, Lorg/spongycastle/x509/X509V3CertificateGenerator;-><init>()V

    sput-object v0, Lorg/spongycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAcIssuerCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    .locals 10
    .param p0, "pubKey"    # Ljava/security/PublicKey;
    .param p1, "privKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide v8, 0x9a7ec800L

    .line 49
    const-string v1, "C=AU, O=The Legion of the Bouncy Castle, OU=Bouncy Primary Certificate"

    .line 54
    .local v1, "issuer":Ljava/lang/String;
    const-string v2, "C=AU, O=The Legion of the Bouncy Castle, OU=Bouncy Primary Certificate"

    .line 60
    .local v2, "subject":Ljava/lang/String;
    sget-object v3, Lorg/spongycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/spongycastle/x509/X509V1CertificateGenerator;

    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/spongycastle/x509/X509V1CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 61
    sget-object v3, Lorg/spongycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/spongycastle/x509/X509V1CertificateGenerator;

    new-instance v4, Lorg/spongycastle/jce/X509Principal;

    invoke-direct {v4, v1}, Lorg/spongycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/spongycastle/x509/X509V1CertificateGenerator;->setIssuerDN(Lorg/spongycastle/asn1/x509/X509Name;)V

    .line 62
    sget-object v3, Lorg/spongycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/spongycastle/x509/X509V1CertificateGenerator;

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/spongycastle/x509/X509V1CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    .line 63
    sget-object v3, Lorg/spongycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/spongycastle/x509/X509V1CertificateGenerator;

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lorg/spongycastle/x509/X509V1CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    .line 64
    sget-object v3, Lorg/spongycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/spongycastle/x509/X509V1CertificateGenerator;

    new-instance v4, Lorg/spongycastle/jce/X509Principal;

    invoke-direct {v4, v2}, Lorg/spongycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/spongycastle/x509/X509V1CertificateGenerator;->setSubjectDN(Lorg/spongycastle/asn1/x509/X509Name;)V

    .line 65
    sget-object v3, Lorg/spongycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/spongycastle/x509/X509V1CertificateGenerator;

    invoke-virtual {v3, p0}, Lorg/spongycastle/x509/X509V1CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    .line 66
    sget-object v3, Lorg/spongycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/spongycastle/x509/X509V1CertificateGenerator;

    const-string v4, "SHA1WithRSAEncryption"

    invoke-virtual {v3, v4}, Lorg/spongycastle/x509/X509V1CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    .line 68
    sget-object v3, Lorg/spongycastle/x509/examples/AttrCertExample;->v1CertGen:Lorg/spongycastle/x509/X509V1CertificateGenerator;

    invoke-virtual {v3, p1}, Lorg/spongycastle/x509/X509V1CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 70
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 72
    invoke-virtual {v0, p0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 74
    return-object v0
.end method

.method public static createClientCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    .locals 10
    .param p0, "pubKey"    # Ljava/security/PublicKey;
    .param p1, "caPrivKey"    # Ljava/security/PrivateKey;
    .param p2, "caPubKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide v8, 0x9a7ec800L

    .line 89
    const-string v2, "C=AU, O=The Legion of the Bouncy Castle, OU=Bouncy Primary Certificate"

    .line 94
    .local v2, "issuer":Ljava/lang/String;
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 95
    .local v0, "attrs":Ljava/util/Hashtable;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 97
    .local v3, "order":Ljava/util/Vector;
    sget-object v4, Lorg/spongycastle/jce/X509Principal;->C:Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v5, "AU"

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v4, Lorg/spongycastle/jce/X509Principal;->O:Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v5, "The Legion of the Bouncy Castle"

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v4, Lorg/spongycastle/jce/X509Principal;->L:Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v5, "Melbourne"

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v4, Lorg/spongycastle/jce/X509Principal;->CN:Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v5, "Eric H. Echidna"

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v4, Lorg/spongycastle/jce/X509Principal;->EmailAddress:Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v5, "feedback-crypto@spongycastle.org"

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v4, Lorg/spongycastle/jce/X509Principal;->C:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 104
    sget-object v4, Lorg/spongycastle/jce/X509Principal;->O:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 105
    sget-object v4, Lorg/spongycastle/jce/X509Principal;->L:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 106
    sget-object v4, Lorg/spongycastle/jce/X509Principal;->CN:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 107
    sget-object v4, Lorg/spongycastle/jce/X509Principal;->EmailAddress:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 112
    sget-object v4, Lorg/spongycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v4}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->reset()V

    .line 114
    sget-object v4, Lorg/spongycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    const-wide/16 v6, 0x14

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 115
    sget-object v4, Lorg/spongycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    new-instance v5, Lorg/spongycastle/jce/X509Principal;

    invoke-direct {v5, v2}, Lorg/spongycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Lorg/spongycastle/asn1/x509/X509Name;)V

    .line 116
    sget-object v4, Lorg/spongycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    .line 117
    sget-object v4, Lorg/spongycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    .line 118
    sget-object v4, Lorg/spongycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    new-instance v5, Lorg/spongycastle/jce/X509Principal;

    invoke-direct {v5, v3, v0}, Lorg/spongycastle/jce/X509Principal;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Lorg/spongycastle/asn1/x509/X509Name;)V

    .line 119
    sget-object v4, Lorg/spongycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v4, p0}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    .line 120
    sget-object v4, Lorg/spongycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    const-string v5, "SHA1WithRSAEncryption"

    invoke-virtual {v4, v5}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    .line 126
    sget-object v4, Lorg/spongycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    sget-object v5, Lorg/spongycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v6, 0x0

    new-instance v7, Lorg/spongycastle/asn1/misc/NetscapeCertType;

    const/16 v8, 0x30

    invoke-direct {v7, v8}, Lorg/spongycastle/asn1/misc/NetscapeCertType;-><init>(I)V

    invoke-virtual {v4, v5, v6, v7}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->addExtension(Lorg/spongycastle/asn1/DERObjectIdentifier;ZLorg/spongycastle/asn1/DEREncodable;)V

    .line 131
    sget-object v4, Lorg/spongycastle/x509/examples/AttrCertExample;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v4, p1}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 133
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 135
    invoke-virtual {v1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 137
    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 36
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v6, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v6}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 148
    new-instance v31, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "b4a7e46170574f16a97082b22be58b6a2a629798419be12872a4bdba626cfae9900f76abfb12139dce5de56564fab2b6543165a040c606887420e33d91ed7ed7"

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "11"

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v31

    invoke-direct {v0, v6, v7}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 152
    .local v31, "pubKeySpec":Ljava/security/spec/RSAPublicKeySpec;
    new-instance v4, Ljava/security/spec/RSAPrivateCrtKeySpec;

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "b4a7e46170574f16a97082b22be58b6a2a629798419be12872a4bdba626cfae9900f76abfb12139dce5de56564fab2b6543165a040c606887420e33d91ed7ed7"

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "11"

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "9f66f6b05410cd503b2709e88115d55daced94d1a34d4e32bf824d0dde6028ae79c5f07b580f5dce240d7111f7ddb130a7945cd7d957d1920994da389f490c89"

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    const-string v9, "c0a0758cdf14256f78d4708c86becdead1b50ad4ad6c5c703e2168fbf37884cb"

    const/16 v10, 0x10

    invoke-direct {v8, v9, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "f01734d7960ea60070f1b06f2bb81bfac48ff192ae18451d5e56c734a5aab8a5"

    const/16 v11, 0x10

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v10, Ljava/math/BigInteger;

    const-string v11, "b54bb9edff22051d9ee60f9351a48591b6500a319429c069a3e335a1d6171391"

    const/16 v12, 0x10

    invoke-direct {v10, v11, v12}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v11, Ljava/math/BigInteger;

    const-string v12, "d3d83daf2a0cecd3367ae6f8ae1aeb82e9ac2f816c6fc483533d8297dd7884cd"

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v12, Ljava/math/BigInteger;

    const-string v13, "b8f52fc6f38593dabb661d3f50f8897f8106eee68b1bce78a95b132b4e5b5d19"

    const/16 v34, 0x10

    move/from16 v0, v34

    invoke-direct {v12, v13, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v4 .. v12}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 165
    .local v4, "privKeySpec":Ljava/security/spec/RSAPrivateCrtKeySpec;
    new-instance v22, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "b259d2d6e627a768c94be36164c2d9fc79d97aab9253140e5bf17751197731d6f7540d2509e7b9ffee0a70a6e26d56e92d2edd7f85aba85600b69089f35f6bdbf3c298e05842535d9f064e6b0391cb7d306e0a2d20c4dfb4e7b49a9640bdea26c10ad69c3f05007ce2513cee44cfe01998e62b6c3637d3fc0391079b26ee36d5"

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "11"

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    invoke-direct {v0, v6, v7}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 169
    .local v22, "caPubKeySpec":Ljava/security/spec/RSAPublicKeySpec;
    new-instance v5, Ljava/security/spec/RSAPrivateCrtKeySpec;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "b259d2d6e627a768c94be36164c2d9fc79d97aab9253140e5bf17751197731d6f7540d2509e7b9ffee0a70a6e26d56e92d2edd7f85aba85600b69089f35f6bdbf3c298e05842535d9f064e6b0391cb7d306e0a2d20c4dfb4e7b49a9640bdea26c10ad69c3f05007ce2513cee44cfe01998e62b6c3637d3fc0391079b26ee36d5"

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "11"

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    const-string v9, "92e08f83cc9920746989ca5034dcb384a094fb9c5a6288fcc4304424ab8f56388f72652d8fafc65a4b9020896f2cde297080f2a540e7b7ce5af0b3446e1258d1dd7f245cf54124b4c6e17da21b90a0ebd22605e6f45c9f136d7a13eaac1c0f7487de8bd6d924972408ebb58af71e76fd7b012a8d0e165f3ae2e5077a8648e619"

    const/16 v10, 0x10

    invoke-direct {v8, v9, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "f75e80839b9b9379f1cf1128f321639757dba514642c206bbbd99f9a4846208b3e93fbbe5e0527cc59b1d4b929d9555853004c7c8b30ee6a213c3d1bb7415d03"

    const/16 v11, 0x10

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v10, Ljava/math/BigInteger;

    const-string v11, "b892d9ebdbfc37e397256dd8a5d3123534d1f03726284743ddc6be3a709edb696fc40c7d902ed804c6eee730eee3d5b20bf6bd8d87a296813c87d3b3cc9d7947"

    const/16 v12, 0x10

    invoke-direct {v10, v11, v12}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v11, Ljava/math/BigInteger;

    const-string v12, "1d1a2d3ca8e52068b3094d501c9a842fec37f54db16e9a67070a8b3f53cc03d4257ad252a1a640eadd603724d7bf3737914b544ae332eedf4f34436cac25ceb5"

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v12, Ljava/math/BigInteger;

    const-string v13, "6c929e4e81672fef49d9c825163fec97c4b7ba7acb26c0824638ac22605d7201c94625770984f78a56e6e25904fe7db407099cad9b14588841b94f5ab498dded"

    const/16 v34, 0x10

    move/from16 v0, v34

    invoke-direct {v12, v13, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v13, Ljava/math/BigInteger;

    const-string v34, "dae7651ee69ad1d081ec5e7188ae126f6004ff39556bde90e0b870962fa7b926d070686d8244fe5a9aa709a95686a104614834b0ada4b10f53197a5cb4c97339"

    const/16 v35, 0x10

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-direct {v13, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v5 .. v13}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 182
    .local v5, "caPrivKeySpec":Ljava/security/spec/RSAPrivateCrtKeySpec;
    const-string v6, "RSA"

    sget-object v7, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v25

    .line 183
    .local v25, "fact":Ljava/security/KeyFactory;
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v20

    .line 184
    .local v20, "caPrivKey":Ljava/security/PrivateKey;
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v21

    .line 185
    .local v21, "caPubKey":Ljava/security/PublicKey;
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v29

    .line 186
    .local v29, "privKey":Ljava/security/PrivateKey;
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v30

    .line 193
    .local v30, "pubKey":Ljava/security/PublicKey;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/spongycastle/x509/examples/AttrCertExample;->createAcIssuerCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object v19

    .line 194
    .local v19, "caCert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, v30

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/spongycastle/x509/examples/AttrCertExample;->createClientCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    move-result-object v23

    .line 197
    .local v23, "clientCert":Ljava/security/cert/X509Certificate;
    new-instance v15, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;

    invoke-direct {v15}, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;-><init>()V

    .line 199
    .local v15, "acGen":Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;
    invoke-virtual {v15}, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->reset()V

    .line 204
    new-instance v6, Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Lorg/spongycastle/x509/AttributeCertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v15, v6}, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->setHolder(Lorg/spongycastle/x509/AttributeCertificateHolder;)V

    .line 207
    new-instance v6, Lorg/spongycastle/x509/AttributeCertificateIssuer;

    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/spongycastle/x509/AttributeCertificateIssuer;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    invoke-virtual {v15, v6}, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->setIssuer(Lorg/spongycastle/x509/AttributeCertificateIssuer;)V

    .line 213
    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "1"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 216
    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0xc350

    sub-long/2addr v8, v10

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v15, v6}, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    .line 219
    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0xc350

    add-long/2addr v8, v10

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v15, v6}, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    .line 222
    const-string v6, "SHA1WithRSAEncryption"

    invoke-virtual {v15, v6}, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    .line 225
    new-instance v32, Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v6, 0x1

    const-string v7, "DAU123456789"

    move-object/from16 v0, v32

    invoke-direct {v0, v6, v7}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 226
    .local v32, "roleName":Lorg/spongycastle/asn1/x509/GeneralName;
    new-instance v33, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v33 .. v33}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 227
    .local v33, "roleSyntax":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 230
    new-instance v18, Lorg/spongycastle/x509/X509Attribute;

    const-string v6, "2.5.24.72"

    new-instance v7, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v33

    invoke-direct {v7, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v18

    invoke-direct {v0, v6, v7}, Lorg/spongycastle/x509/X509Attribute;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 233
    .local v18, "attributes":Lorg/spongycastle/x509/X509Attribute;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->addAttribute(Lorg/spongycastle/x509/X509Attribute;)V

    .line 236
    sget-object v6, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0, v6}, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;)Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v16

    check-cast v16, Lorg/spongycastle/x509/X509V2AttributeCertificate;

    .line 245
    .local v16, "att":Lorg/spongycastle/x509/X509V2AttributeCertificate;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/x509/X509V2AttributeCertificate;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v26

    .line 246
    .local v26, "h":Lorg/spongycastle/x509/AttributeCertificateHolder;
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/AttributeCertificateHolder;->match(Ljava/security/cert/Certificate;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 248
    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 250
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " entity names found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 252
    :cond_0
    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getIssuer()[Ljava/security/Principal;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 254
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getIssuer()[Ljava/security/Principal;

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " issuer names found, serial number "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    :cond_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Matches original client x509 cert"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 261
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/x509/X509V2AttributeCertificate;->getIssuer()Lorg/spongycastle/x509/AttributeCertificateIssuer;

    move-result-object v28

    .line 262
    .local v28, "issuer":Lorg/spongycastle/x509/AttributeCertificateIssuer;
    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->match(Ljava/security/cert/Certificate;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 264
    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 266
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " entity names found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 268
    :cond_3
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Matches original ca x509 cert"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 272
    :cond_4
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "valid not before: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/x509/X509V2AttributeCertificate;->getNotBefore()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 273
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "valid not before: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/x509/X509V2AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/x509/X509V2AttributeCertificate;->checkValidity()V

    .line 280
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lorg/spongycastle/x509/X509V2AttributeCertificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    :try_start_1
    sget-object v6, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Lorg/spongycastle/x509/X509V2AttributeCertificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 299
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/x509/X509V2AttributeCertificate;->getAttributes()[Lorg/spongycastle/x509/X509Attribute;

    move-result-object v17

    .line 300
    .local v17, "attribs":[Lorg/spongycastle/x509/X509Attribute;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cert has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " attributes:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_2
    move-object/from16 v0, v17

    array-length v6, v0

    move/from16 v0, v27

    if-ge v0, v6, :cond_6

    .line 303
    aget-object v14, v17, v27

    .line 304
    .local v14, "a":Lorg/spongycastle/x509/X509Attribute;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v14}, Lorg/spongycastle/x509/X509Attribute;->getOID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v14}, Lorg/spongycastle/x509/X509Attribute;->getOID()Ljava/lang/String;

    move-result-object v6

    const-string v7, "2.5.24.72"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 310
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "rolesyntax read from cert!"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    :cond_5
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 282
    .end local v14    # "a":Lorg/spongycastle/x509/X509Attribute;
    .end local v17    # "attribs":[Lorg/spongycastle/x509/X509Attribute;
    .end local v27    # "i":I
    :catch_0
    move-exception v24

    .line 284
    .local v24, "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 293
    .end local v24    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v24

    .line 295
    .restart local v24    # "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 313
    .end local v24    # "e":Ljava/lang/Exception;
    .restart local v17    # "attribs":[Lorg/spongycastle/x509/X509Attribute;
    .restart local v27    # "i":I
    :cond_6
    return-void
.end method
