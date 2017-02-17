.class public Lorg/spongycastle/jce/examples/PKCS12Example;
.super Ljava/lang/Object;
.source "PKCS12Example.java"


# static fields
.field static passwd:[C

.field static v1CertGen:Lorg/spongycastle/x509/X509V1CertificateGenerator;

.field static v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0xb

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/jce/examples/PKCS12Example;->passwd:[C

    .line 42
    new-instance v0, Lorg/spongycastle/x509/X509V1CertificateGenerator;

    invoke-direct {v0}, Lorg/spongycastle/x509/X509V1CertificateGenerator;-><init>()V

    sput-object v0, Lorg/spongycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/spongycastle/x509/X509V1CertificateGenerator;

    .line 43
    new-instance v0, Lorg/spongycastle/x509/X509V3CertificateGenerator;

    invoke-direct {v0}, Lorg/spongycastle/x509/X509V3CertificateGenerator;-><init>()V

    sput-object v0, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    return-void

    .line 40
    :array_0
    .array-data 2
        0x68s
        0x65s
        0x6cs
        0x6cs
        0x6fs
        0x20s
        0x77s
        0x6fs
        0x72s
        0x6cs
        0x64s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/Certificate;
    .locals 12
    .param p0, "pubKey"    # Ljava/security/PublicKey;
    .param p1, "caPrivKey"    # Ljava/security/PrivateKey;
    .param p2, "caPubKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 182
    .local v4, "sAttrs":Ljava/util/Hashtable;
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 184
    .local v5, "sOrder":Ljava/util/Vector;
    sget-object v6, Lorg/spongycastle/jce/X509Principal;->C:Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v7, "AU"

    invoke-virtual {v4, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v6, Lorg/spongycastle/jce/X509Principal;->O:Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v7, "The Legion of the Bouncy Castle"

    invoke-virtual {v4, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v6, Lorg/spongycastle/jce/X509Principal;->OU:Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v7, "Bouncy Intermediate Certificate"

    invoke-virtual {v4, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v6, Lorg/spongycastle/jce/X509Principal;->EmailAddress:Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v7, "feedback-crypto@spongycastle.org"

    invoke-virtual {v4, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v6, Lorg/spongycastle/jce/X509Principal;->C:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 190
    sget-object v6, Lorg/spongycastle/jce/X509Principal;->O:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 191
    sget-object v6, Lorg/spongycastle/jce/X509Principal;->OU:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 192
    sget-object v6, Lorg/spongycastle/jce/X509Principal;->EmailAddress:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 197
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 198
    .local v0, "attrs":Ljava/util/Hashtable;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 200
    .local v3, "order":Ljava/util/Vector;
    sget-object v6, Lorg/spongycastle/jce/X509Principal;->C:Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v7, "AU"

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v6, Lorg/spongycastle/jce/X509Principal;->O:Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v7, "The Legion of the Bouncy Castle"

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v6, Lorg/spongycastle/jce/X509Principal;->L:Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v7, "Melbourne"

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v6, Lorg/spongycastle/jce/X509Principal;->CN:Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v7, "Eric H. Echidna"

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v6, Lorg/spongycastle/jce/X509Principal;->EmailAddress:Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v7, "feedback-crypto@spongycastle.org"

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v6, Lorg/spongycastle/jce/X509Principal;->C:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 207
    sget-object v6, Lorg/spongycastle/jce/X509Principal;->O:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 208
    sget-object v6, Lorg/spongycastle/jce/X509Principal;->L:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 209
    sget-object v6, Lorg/spongycastle/jce/X509Principal;->CN:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 210
    sget-object v6, Lorg/spongycastle/jce/X509Principal;->EmailAddress:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 215
    sget-object v6, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v6}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->reset()V

    .line 217
    sget-object v6, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    const-wide/16 v8, 0x3

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 218
    sget-object v6, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    new-instance v7, Lorg/spongycastle/jce/X509Principal;

    invoke-direct {v7, v5, v4}, Lorg/spongycastle/jce/X509Principal;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    invoke-virtual {v6, v7}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Lorg/spongycastle/asn1/x509/X509Name;)V

    .line 219
    sget-object v6, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide v10, 0x9a7ec800L

    sub-long/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    .line 220
    sget-object v6, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide v10, 0x9a7ec800L

    add-long/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    .line 221
    sget-object v6, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    new-instance v7, Lorg/spongycastle/jce/X509Principal;

    invoke-direct {v7, v3, v0}, Lorg/spongycastle/jce/X509Principal;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    invoke-virtual {v6, v7}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Lorg/spongycastle/asn1/x509/X509Name;)V

    .line 222
    sget-object v6, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v6, p0}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    .line 223
    sget-object v6, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    const-string v7, "SHA1WithRSAEncryption"

    invoke-virtual {v6, v7}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    .line 228
    sget-object v6, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    sget-object v7, Lorg/spongycastle/asn1/x509/X509Extensions;->SubjectKeyIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v8, 0x0

    new-instance v9, Lorg/spongycastle/x509/extension/SubjectKeyIdentifierStructure;

    invoke-direct {v9, p0}, Lorg/spongycastle/x509/extension/SubjectKeyIdentifierStructure;-><init>(Ljava/security/PublicKey;)V

    invoke-virtual {v6, v7, v8, v9}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->addExtension(Lorg/spongycastle/asn1/DERObjectIdentifier;ZLorg/spongycastle/asn1/DEREncodable;)V

    .line 233
    sget-object v6, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    sget-object v7, Lorg/spongycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v8, 0x0

    new-instance v9, Lorg/spongycastle/x509/extension/AuthorityKeyIdentifierStructure;

    invoke-direct {v9, p2}, Lorg/spongycastle/x509/extension/AuthorityKeyIdentifierStructure;-><init>(Ljava/security/PublicKey;)V

    invoke-virtual {v6, v7, v8, v9}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->addExtension(Lorg/spongycastle/asn1/DERObjectIdentifier;ZLorg/spongycastle/asn1/DEREncodable;)V

    .line 238
    sget-object v6, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v6, p1}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 240
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v6}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 242
    invoke-virtual {v2, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    move-object v1, v2

    .line 244
    check-cast v1, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 253
    .local v1, "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v6, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lorg/spongycastle/asn1/DERBMPString;

    const-string v8, "Eric\'s Key"

    invoke-direct {v7, v8}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6, v7}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 256
    sget-object v6, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lorg/spongycastle/x509/extension/SubjectKeyIdentifierStructure;

    invoke-direct {v7, p0}, Lorg/spongycastle/x509/extension/SubjectKeyIdentifierStructure;-><init>(Ljava/security/PublicKey;)V

    invoke-interface {v1, v6, v7}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 260
    return-object v2
.end method

.method public static createIntermediateCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Ljava/security/cert/Certificate;
    .locals 12
    .param p0, "pubKey"    # Ljava/security/PublicKey;
    .param p1, "caPrivKey"    # Ljava/security/PrivateKey;
    .param p2, "caCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide v10, 0x9a7ec800L

    const/4 v8, 0x0

    .line 106
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 107
    .local v0, "attrs":Ljava/util/Hashtable;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 109
    .local v3, "order":Ljava/util/Vector;
    sget-object v4, Lorg/spongycastle/jce/X509Principal;->C:Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v5, "AU"

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v4, Lorg/spongycastle/jce/X509Principal;->O:Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v5, "The Legion of the Bouncy Castle"

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v4, Lorg/spongycastle/jce/X509Principal;->OU:Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v5, "Bouncy Intermediate Certificate"

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v4, Lorg/spongycastle/jce/X509Principal;->EmailAddress:Lorg/spongycastle/asn1/DERObjectIdentifier;

    const-string v5, "feedback-crypto@spongycastle.org"

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v4, Lorg/spongycastle/jce/X509Principal;->C:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 115
    sget-object v4, Lorg/spongycastle/jce/X509Principal;->O:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 116
    sget-object v4, Lorg/spongycastle/jce/X509Principal;->OU:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 117
    sget-object v4, Lorg/spongycastle/jce/X509Principal;->EmailAddress:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 122
    sget-object v4, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v4}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->reset()V

    .line 124
    sget-object v4, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 125
    sget-object v4, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    invoke-static {p2}, Lorg/spongycastle/jce/PrincipalUtil;->getSubjectX509Principal(Ljava/security/cert/X509Certificate;)Lorg/spongycastle/jce/X509Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Lorg/spongycastle/asn1/x509/X509Name;)V

    .line 126
    sget-object v4, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    .line 127
    sget-object v4, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v10

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    .line 128
    sget-object v4, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    new-instance v5, Lorg/spongycastle/jce/X509Principal;

    invoke-direct {v5, v3, v0}, Lorg/spongycastle/jce/X509Principal;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Lorg/spongycastle/asn1/x509/X509Name;)V

    .line 129
    sget-object v4, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v4, p0}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    .line 130
    sget-object v4, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    const-string v5, "SHA1WithRSAEncryption"

    invoke-virtual {v4, v5}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    .line 135
    sget-object v4, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    sget-object v5, Lorg/spongycastle/asn1/x509/X509Extensions;->SubjectKeyIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lorg/spongycastle/x509/extension/SubjectKeyIdentifierStructure;

    invoke-direct {v6, p0}, Lorg/spongycastle/x509/extension/SubjectKeyIdentifierStructure;-><init>(Ljava/security/PublicKey;)V

    invoke-virtual {v4, v5, v8, v6}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->addExtension(Lorg/spongycastle/asn1/DERObjectIdentifier;ZLorg/spongycastle/asn1/DEREncodable;)V

    .line 140
    sget-object v4, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    sget-object v5, Lorg/spongycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lorg/spongycastle/x509/extension/AuthorityKeyIdentifierStructure;

    invoke-direct {v6, p2}, Lorg/spongycastle/x509/extension/AuthorityKeyIdentifierStructure;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v4, v5, v8, v6}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->addExtension(Lorg/spongycastle/asn1/DERObjectIdentifier;ZLorg/spongycastle/asn1/DEREncodable;)V

    .line 145
    sget-object v4, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    sget-object v5, Lorg/spongycastle/asn1/x509/X509Extensions;->BasicConstraints:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v6, 0x1

    new-instance v7, Lorg/spongycastle/asn1/x509/BasicConstraints;

    invoke-direct {v7, v8}, Lorg/spongycastle/asn1/x509/BasicConstraints;-><init>(I)V

    invoke-virtual {v4, v5, v6, v7}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->addExtension(Lorg/spongycastle/asn1/DERObjectIdentifier;ZLorg/spongycastle/asn1/DEREncodable;)V

    .line 150
    sget-object v4, Lorg/spongycastle/jce/examples/PKCS12Example;->v3CertGen:Lorg/spongycastle/x509/X509V3CertificateGenerator;

    invoke-virtual {v4, p1}, Lorg/spongycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 152
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 154
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    move-object v1, v2

    .line 156
    check-cast v1, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 162
    .local v1, "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/spongycastle/asn1/DERBMPString;

    const-string v6, "Bouncy Intermediate Certificate"

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4, v5}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 166
    return-object v2
.end method

.method public static createMasterCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;)Ljava/security/cert/Certificate;
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

    .line 56
    const-string v2, "C=AU, O=The Legion of the Bouncy Castle, OU=Bouncy Primary Certificate"

    .line 61
    .local v2, "issuer":Ljava/lang/String;
    const-string v3, "C=AU, O=The Legion of the Bouncy Castle, OU=Bouncy Primary Certificate"

    .line 67
    .local v3, "subject":Ljava/lang/String;
    sget-object v4, Lorg/spongycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/spongycastle/x509/X509V1CertificateGenerator;

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/x509/X509V1CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 68
    sget-object v4, Lorg/spongycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/spongycastle/x509/X509V1CertificateGenerator;

    new-instance v5, Lorg/spongycastle/jce/X509Principal;

    invoke-direct {v5, v2}, Lorg/spongycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/x509/X509V1CertificateGenerator;->setIssuerDN(Lorg/spongycastle/asn1/x509/X509Name;)V

    .line 69
    sget-object v4, Lorg/spongycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/spongycastle/x509/X509V1CertificateGenerator;

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/x509/X509V1CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    .line 70
    sget-object v4, Lorg/spongycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/spongycastle/x509/X509V1CertificateGenerator;

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/x509/X509V1CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    .line 71
    sget-object v4, Lorg/spongycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/spongycastle/x509/X509V1CertificateGenerator;

    new-instance v5, Lorg/spongycastle/jce/X509Principal;

    invoke-direct {v5, v3}, Lorg/spongycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/x509/X509V1CertificateGenerator;->setSubjectDN(Lorg/spongycastle/asn1/x509/X509Name;)V

    .line 72
    sget-object v4, Lorg/spongycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/spongycastle/x509/X509V1CertificateGenerator;

    invoke-virtual {v4, p0}, Lorg/spongycastle/x509/X509V1CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    .line 73
    sget-object v4, Lorg/spongycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/spongycastle/x509/X509V1CertificateGenerator;

    const-string v5, "SHA1WithRSAEncryption"

    invoke-virtual {v4, v5}, Lorg/spongycastle/x509/X509V1CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    .line 75
    sget-object v4, Lorg/spongycastle/jce/examples/PKCS12Example;->v1CertGen:Lorg/spongycastle/x509/X509V1CertificateGenerator;

    invoke-virtual {v4, p1}, Lorg/spongycastle/x509/X509V1CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 77
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 79
    invoke-virtual {v1, p0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    move-object v0, v1

    .line 81
    check-cast v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 87
    .local v0, "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/spongycastle/asn1/DERBMPString;

    const-string v6, "Bouncy Primary Certificate"

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4, v5}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 91
    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 30
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 267
    new-instance v6, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v6}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 272
    new-instance v26, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "b4a7e46170574f16a97082b22be58b6a2a629798419be12872a4bdba626cfae9900f76abfb12139dce5de56564fab2b6543165a040c606887420e33d91ed7ed7"

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "11"

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v26

    invoke-direct {v0, v6, v7}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 276
    .local v26, "pubKeySpec":Ljava/security/spec/RSAPublicKeySpec;
    new-instance v3, Ljava/security/spec/RSAPrivateCrtKeySpec;

    new-instance v4, Ljava/math/BigInteger;

    const-string v6, "b4a7e46170574f16a97082b22be58b6a2a629798419be12872a4bdba626cfae9900f76abfb12139dce5de56564fab2b6543165a040c606887420e33d91ed7ed7"

    const/16 v7, 0x10

    invoke-direct {v4, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "11"

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "9f66f6b05410cd503b2709e88115d55daced94d1a34d4e32bf824d0dde6028ae79c5f07b580f5dce240d7111f7ddb130a7945cd7d957d1920994da389f490c89"

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "c0a0758cdf14256f78d4708c86becdead1b50ad4ad6c5c703e2168fbf37884cb"

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    const-string v9, "f01734d7960ea60070f1b06f2bb81bfac48ff192ae18451d5e56c734a5aab8a5"

    const/16 v10, 0x10

    invoke-direct {v8, v9, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "b54bb9edff22051d9ee60f9351a48591b6500a319429c069a3e335a1d6171391"

    const/16 v11, 0x10

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v10, Ljava/math/BigInteger;

    const-string v11, "d3d83daf2a0cecd3367ae6f8ae1aeb82e9ac2f816c6fc483533d8297dd7884cd"

    const/16 v12, 0x10

    invoke-direct {v10, v11, v12}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v11, Ljava/math/BigInteger;

    const-string v12, "b8f52fc6f38593dabb661d3f50f8897f8106eee68b1bce78a95b132b4e5b5d19"

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v3 .. v11}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 289
    .local v3, "privKeySpec":Ljava/security/spec/RSAPrivateCrtKeySpec;
    new-instance v23, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "8de0d113c5e736969c8d2b047a243f8fe18edad64cde9e842d3669230ca486f7cfdde1f8eec54d1905fff04acc85e61093e180cadc6cea407f193d44bb0e9449b8dbb49784cd9e36260c39e06a947299978c6ed8300724e887198cfede20f3fbde658fa2bd078be946a392bd349f2b49c486e20c405588e306706c9017308e69"

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "ffff"

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 294
    .local v23, "intPubKeySpec":Ljava/security/spec/RSAPublicKeySpec;
    new-instance v4, Ljava/security/spec/RSAPrivateCrtKeySpec;

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "8de0d113c5e736969c8d2b047a243f8fe18edad64cde9e842d3669230ca486f7cfdde1f8eec54d1905fff04acc85e61093e180cadc6cea407f193d44bb0e9449b8dbb49784cd9e36260c39e06a947299978c6ed8300724e887198cfede20f3fbde658fa2bd078be946a392bd349f2b49c486e20c405588e306706c9017308e69"

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "ffff"

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "7deb1b194a85bcfd29cf871411468adbc987650903e3bacc8338c449ca7b32efd39ffc33bc84412fcd7df18d23ce9d7c25ea910b1ae9985373e0273b4dca7f2e0db3b7314056ac67fd277f8f89cf2fd73c34c6ca69f9ba477143d2b0e2445548aa0b4a8473095182631da46844c356f5e5c7522eb54b5a33f11d730ead9c0cff"

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    const-string v9, "ef4cede573cea47f83699b814de4302edb60eefe426c52e17bd7870ec7c6b7a24fe55282ebb73775f369157726fcfb988def2b40350bdca9e5b418340288f649"

    const/16 v10, 0x10

    invoke-direct {v8, v9, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "97c7737d1b9a0088c3c7b528539247fd2a1593e7e01cef18848755be82f4a45aa093276cb0cbf118cb41117540a78f3fc471ba5d69f0042274defc9161265721"

    const/16 v11, 0x10

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v10, Ljava/math/BigInteger;

    const-string v11, "6c641094e24d172728b8da3c2777e69adfd0839085be7e38c7c4a2dd00b1ae969f2ec9d23e7e37090fcd449a40af0ed463fe1c612d6810d6b4f58b7bfa31eb5f"

    const/16 v12, 0x10

    invoke-direct {v10, v11, v12}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v11, Ljava/math/BigInteger;

    const-string v12, "70b7123e8e69dfa76feb1236d0a686144b00e9232ed52b73847e74ef3af71fb45ccb24261f40d27f98101e230cf27b977a5d5f1f15f6cf48d5cb1da2a3a3b87f"

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v12, Ljava/math/BigInteger;

    const-string v13, "e38f5750d97e270996a286df2e653fd26c242106436f5bab0f4c7a9e654ce02665d5a281f2c412456f2d1fa26586ef04a9adac9004ca7f913162cb28e13bf40d"

    const/16 v28, 0x10

    move/from16 v0, v28

    invoke-direct {v12, v13, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v4 .. v12}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 307
    .local v4, "intPrivKeySpec":Ljava/security/spec/RSAPrivateCrtKeySpec;
    new-instance v17, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "b259d2d6e627a768c94be36164c2d9fc79d97aab9253140e5bf17751197731d6f7540d2509e7b9ffee0a70a6e26d56e92d2edd7f85aba85600b69089f35f6bdbf3c298e05842535d9f064e6b0391cb7d306e0a2d20c4dfb4e7b49a9640bdea26c10ad69c3f05007ce2513cee44cfe01998e62b6c3637d3fc0391079b26ee36d5"

    const/16 v8, 0x10

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "11"

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 311
    .local v17, "caPubKeySpec":Ljava/security/spec/RSAPublicKeySpec;
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

    const/16 v28, 0x10

    move/from16 v0, v28

    invoke-direct {v12, v13, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v13, Ljava/math/BigInteger;

    const-string v28, "dae7651ee69ad1d081ec5e7188ae126f6004ff39556bde90e0b870962fa7b926d070686d8244fe5a9aa709a95686a104614834b0ada4b10f53197a5cb4c97339"

    const/16 v29, 0x10

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v13, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v5 .. v13}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 326
    .local v5, "caPrivKeySpec":Ljava/security/spec/RSAPrivateCrtKeySpec;
    const-string v6, "RSA"

    sget-object v7, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v20

    .line 327
    .local v20, "fact":Ljava/security/KeyFactory;
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v15

    .line 328
    .local v15, "caPrivKey":Ljava/security/PrivateKey;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v16

    .line 329
    .local v16, "caPubKey":Ljava/security/PublicKey;
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v21

    .line 330
    .local v21, "intPrivKey":Ljava/security/PrivateKey;
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v22

    .line 331
    .local v22, "intPubKey":Ljava/security/PublicKey;
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v24

    .line 332
    .local v24, "privKey":Ljava/security/PrivateKey;
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v25

    .line 334
    .local v25, "pubKey":Ljava/security/PublicKey;
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/security/cert/Certificate;

    move-object/from16 v18, v0

    .line 336
    .local v18, "chain":[Ljava/security/cert/Certificate;
    const/4 v6, 0x2

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lorg/spongycastle/jce/examples/PKCS12Example;->createMasterCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;)Ljava/security/cert/Certificate;

    move-result-object v7

    aput-object v7, v18, v6

    .line 337
    const/4 v7, 0x1

    const/4 v6, 0x2

    aget-object v6, v18, v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, v22

    invoke-static {v0, v15, v6}, Lorg/spongycastle/jce/examples/PKCS12Example;->createIntermediateCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Ljava/security/cert/Certificate;

    move-result-object v6

    aput-object v6, v18, v7

    .line 338
    const/4 v6, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/spongycastle/jce/examples/PKCS12Example;->createCert(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/Certificate;

    move-result-object v7

    aput-object v7, v18, v6

    move-object/from16 v14, v24

    .line 343
    check-cast v14, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 353
    .local v14, "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v6, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lorg/spongycastle/asn1/DERBMPString;

    const-string v8, "Eric\'s Key"

    invoke-direct {v7, v8}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v14, v6, v7}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 356
    sget-object v6, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lorg/spongycastle/x509/extension/SubjectKeyIdentifierStructure;

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Lorg/spongycastle/x509/extension/SubjectKeyIdentifierStructure;-><init>(Ljava/security/PublicKey;)V

    invoke-interface {v14, v6, v7}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 363
    const-string v6, "PKCS12"

    sget-object v7, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v27

    .line 365
    .local v27, "store":Ljava/security/KeyStore;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 371
    const-string v6, "Eric\'s Key"

    const/4 v7, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-virtual {v0, v6, v1, v7, v2}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 373
    new-instance v19, Ljava/io/FileOutputStream;

    const-string v6, "id.p12"

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 375
    .local v19, "fOut":Ljava/io/FileOutputStream;
    sget-object v6, Lorg/spongycastle/jce/examples/PKCS12Example;->passwd:[C

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 377
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    .line 378
    return-void
.end method
