.class public Lorg/spongycastle/ocsp/CertificateID;
.super Ljava/lang/Object;
.source "CertificateID.java"


# static fields
.field public static final HASH_SHA1:Ljava/lang/String; = "1.3.14.3.2.26"


# instance fields
.field private final id:Lorg/spongycastle/asn1/ocsp/CertID;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "hashAlgorithm"    # Ljava/lang/String;
    .param p2, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "number"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;
        }
    .end annotation

    .prologue
    .line 70
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/ocsp/CertificateID;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 3
    .param p1, "hashAlgorithm"    # Ljava/lang/String;
    .param p2, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "number"    # Ljava/math/BigInteger;
    .param p4, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v1, Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-direct {v1, p1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/asn1/DEREncodable;)V

    .line 58
    .local v0, "hashAlg":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v1, Lorg/spongycastle/asn1/DERInteger;

    invoke-direct {v1, p3}, Lorg/spongycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v0, p2, v1, p4}, Lorg/spongycastle/ocsp/CertificateID;->createCertID(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/cert/X509Certificate;Lorg/spongycastle/asn1/DERInteger;Ljava/lang/String;)Lorg/spongycastle/asn1/ocsp/CertID;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ocsp/CertID;)V
    .locals 2
    .param p1, "id"    # Lorg/spongycastle/asn1/ocsp/CertID;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'id\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    .line 35
    return-void
.end method

.method private static createCertID(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/cert/X509Certificate;Lorg/spongycastle/asn1/DERInteger;Ljava/lang/String;)Lorg/spongycastle/asn1/ocsp/CertID;
    .locals 11
    .param p0, "hashAlg"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p1, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "serialNumber"    # Lorg/spongycastle/asn1/DERInteger;
    .param p3, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;
        }
    .end annotation

    .prologue
    .line 147
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p3}, Lorg/spongycastle/ocsp/OCSPUtil;->createDigestInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 150
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-static {p1}, Lorg/spongycastle/jce/PrincipalUtil;->getSubjectX509Principal(Ljava/security/cert/X509Certificate;)Lorg/spongycastle/jce/X509Principal;

    move-result-object v6

    .line 152
    .local v6, "issuerName":Lorg/spongycastle/jce/X509Principal;
    invoke-virtual {v6}, Lorg/spongycastle/jce/X509Principal;->getEncoded()[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 154
    new-instance v7, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 155
    .local v7, "issuerNameHash":Lorg/spongycastle/asn1/ASN1OctetString;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 157
    .local v4, "issuerKey":Ljava/security/PublicKey;
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v8

    invoke-direct {v0, v8}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 158
    .local v0, "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v8

    invoke-static {v8}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    .line 160
    .local v3, "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 162
    new-instance v5, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 164
    .local v5, "issuerKeyHash":Lorg/spongycastle/asn1/ASN1OctetString;
    new-instance v8, Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-direct {v8, p0, v7, v5, p2}, Lorg/spongycastle/asn1/ocsp/CertID;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/DERInteger;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .line 166
    .end local v0    # "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local v4    # "issuerKey":Ljava/security/PublicKey;
    .end local v5    # "issuerKeyHash":Lorg/spongycastle/asn1/ASN1OctetString;
    .end local v6    # "issuerName":Lorg/spongycastle/jce/X509Principal;
    .end local v7    # "issuerNameHash":Lorg/spongycastle/asn1/ASN1OctetString;
    :catch_0
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Lorg/spongycastle/ocsp/OCSPException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "problem creating ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8
.end method

.method public static deriveCertificateID(Lorg/spongycastle/ocsp/CertificateID;Ljava/math/BigInteger;)Lorg/spongycastle/ocsp/CertificateID;
    .locals 6
    .param p0, "original"    # Lorg/spongycastle/ocsp/CertificateID;
    .param p1, "newSerialNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 138
    new-instance v0, Lorg/spongycastle/ocsp/CertificateID;

    new-instance v1, Lorg/spongycastle/asn1/ocsp/CertID;

    iget-object v2, p0, Lorg/spongycastle/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ocsp/CertID;->getIssuerNameHash()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ocsp/CertID;->getIssuerKeyHash()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v4

    new-instance v5, Lorg/spongycastle/asn1/DERInteger;

    invoke-direct {v5, p1}, Lorg/spongycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/spongycastle/asn1/ocsp/CertID;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/DERInteger;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/ocsp/CertificateID;-><init>(Lorg/spongycastle/asn1/ocsp/CertID;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 112
    instance-of v1, p1, Lorg/spongycastle/ocsp/CertificateID;

    if-nez v1, :cond_0

    .line 114
    const/4 v1, 0x0

    .line 119
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 117
    check-cast v0, Lorg/spongycastle/ocsp/CertificateID;

    .line 119
    .local v0, "obj":Lorg/spongycastle/ocsp/CertificateID;
    iget-object v1, p0, Lorg/spongycastle/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ocsp/CertID;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v1

    iget-object v2, v0, Lorg/spongycastle/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ocsp/CertID;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getHashAlgOID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/spongycastle/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerKeyHash()[B
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/spongycastle/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/CertID;->getIssuerKeyHash()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getIssuerNameHash()[B
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/spongycastle/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/CertID;->getIssuerNameHash()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/CertID;->getSerialNumber()Lorg/spongycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/spongycastle/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/CertID;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERObject;->hashCode()I

    move-result v0

    return v0
.end method

.method public matchesIssuer(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 2
    .param p1, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lorg/spongycastle/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/CertID;->getHashAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ocsp/CertID;->getSerialNumber()Lorg/spongycastle/asn1/DERInteger;

    move-result-object v1

    invoke-static {v0, p1, v1, p2}, Lorg/spongycastle/ocsp/CertificateID;->createCertID(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/cert/X509Certificate;Lorg/spongycastle/asn1/DERInteger;Ljava/lang/String;)Lorg/spongycastle/asn1/ocsp/CertID;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ocsp/CertID;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/ocsp/CertID;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/spongycastle/ocsp/CertificateID;->id:Lorg/spongycastle/asn1/ocsp/CertID;

    return-object v0
.end method
