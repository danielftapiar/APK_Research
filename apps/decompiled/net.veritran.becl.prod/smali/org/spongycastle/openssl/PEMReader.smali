.class public Lorg/spongycastle/openssl/PEMReader;
.super Lorg/spongycastle/util/io/pem/PemReader;
.source "PEMReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/openssl/PEMReader$1;,
        Lorg/spongycastle/openssl/PEMReader$PrivateKeyParser;,
        Lorg/spongycastle/openssl/PEMReader$EncryptedPrivateKeyParser;,
        Lorg/spongycastle/openssl/PEMReader$ECNamedCurveSpecParser;,
        Lorg/spongycastle/openssl/PEMReader$X509AttributeCertificateParser;,
        Lorg/spongycastle/openssl/PEMReader$PKCS7Parser;,
        Lorg/spongycastle/openssl/PEMReader$PKCS10CertificationRequestParser;,
        Lorg/spongycastle/openssl/PEMReader$X509CRLParser;,
        Lorg/spongycastle/openssl/PEMReader$X509CertificateParser;,
        Lorg/spongycastle/openssl/PEMReader$RSAPublicKeyParser;,
        Lorg/spongycastle/openssl/PEMReader$PublicKeyParser;,
        Lorg/spongycastle/openssl/PEMReader$RSAKeyPairParser;,
        Lorg/spongycastle/openssl/PEMReader$ECDSAKeyPairParser;,
        Lorg/spongycastle/openssl/PEMReader$DSAKeyPairParser;,
        Lorg/spongycastle/openssl/PEMReader$KeyPairParser;
    }
.end annotation


# instance fields
.field private pFinder:Lorg/spongycastle/openssl/PasswordFinder;

.field private final parsers:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 87
    const/4 v0, 0x0

    sget-object v1, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lorg/spongycastle/openssl/PEMReader;-><init>(Ljava/io/Reader;Lorg/spongycastle/openssl/PasswordFinder;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/spongycastle/openssl/PasswordFinder;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "pFinder"    # Lorg/spongycastle/openssl/PasswordFinder;

    .prologue
    .line 100
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/openssl/PEMReader;-><init>(Ljava/io/Reader;Lorg/spongycastle/openssl/PasswordFinder;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/spongycastle/openssl/PasswordFinder;Ljava/lang/String;)V
    .locals 0
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "pFinder"    # Lorg/spongycastle/openssl/PasswordFinder;
    .param p3, "provider"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3, p3}, Lorg/spongycastle/openssl/PEMReader;-><init>(Ljava/io/Reader;Lorg/spongycastle/openssl/PasswordFinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/spongycastle/openssl/PasswordFinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "pFinder"    # Lorg/spongycastle/openssl/PasswordFinder;
    .param p3, "symProvider"    # Ljava/lang/String;
    .param p4, "asymProvider"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 133
    invoke-direct {p0, p1}, Lorg/spongycastle/util/io/pem/PemReader;-><init>(Ljava/io/Reader;)V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    .line 135
    iput-object p2, p0, Lorg/spongycastle/openssl/PEMReader;->pFinder:Lorg/spongycastle/openssl/PasswordFinder;

    .line 137
    iget-object v0, p0, Lorg/spongycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "CERTIFICATE REQUEST"

    new-instance v2, Lorg/spongycastle/openssl/PEMReader$PKCS10CertificationRequestParser;

    invoke-direct {v2, p0, v3}, Lorg/spongycastle/openssl/PEMReader$PKCS10CertificationRequestParser;-><init>(Lorg/spongycastle/openssl/PEMReader;Lorg/spongycastle/openssl/PEMReader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lorg/spongycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "NEW CERTIFICATE REQUEST"

    new-instance v2, Lorg/spongycastle/openssl/PEMReader$PKCS10CertificationRequestParser;

    invoke-direct {v2, p0, v3}, Lorg/spongycastle/openssl/PEMReader$PKCS10CertificationRequestParser;-><init>(Lorg/spongycastle/openssl/PEMReader;Lorg/spongycastle/openssl/PEMReader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lorg/spongycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "CERTIFICATE"

    new-instance v2, Lorg/spongycastle/openssl/PEMReader$X509CertificateParser;

    invoke-direct {v2, p0, p4}, Lorg/spongycastle/openssl/PEMReader$X509CertificateParser;-><init>(Lorg/spongycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lorg/spongycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "X509 CERTIFICATE"

    new-instance v2, Lorg/spongycastle/openssl/PEMReader$X509CertificateParser;

    invoke-direct {v2, p0, p4}, Lorg/spongycastle/openssl/PEMReader$X509CertificateParser;-><init>(Lorg/spongycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lorg/spongycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "X509 CRL"

    new-instance v2, Lorg/spongycastle/openssl/PEMReader$X509CRLParser;

    invoke-direct {v2, p0, p4}, Lorg/spongycastle/openssl/PEMReader$X509CRLParser;-><init>(Lorg/spongycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lorg/spongycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "PKCS7"

    new-instance v2, Lorg/spongycastle/openssl/PEMReader$PKCS7Parser;

    invoke-direct {v2, p0, v3}, Lorg/spongycastle/openssl/PEMReader$PKCS7Parser;-><init>(Lorg/spongycastle/openssl/PEMReader;Lorg/spongycastle/openssl/PEMReader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lorg/spongycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "ATTRIBUTE CERTIFICATE"

    new-instance v2, Lorg/spongycastle/openssl/PEMReader$X509AttributeCertificateParser;

    invoke-direct {v2, p0, v3}, Lorg/spongycastle/openssl/PEMReader$X509AttributeCertificateParser;-><init>(Lorg/spongycastle/openssl/PEMReader;Lorg/spongycastle/openssl/PEMReader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lorg/spongycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "EC PARAMETERS"

    new-instance v2, Lorg/spongycastle/openssl/PEMReader$ECNamedCurveSpecParser;

    invoke-direct {v2, p0, v3}, Lorg/spongycastle/openssl/PEMReader$ECNamedCurveSpecParser;-><init>(Lorg/spongycastle/openssl/PEMReader;Lorg/spongycastle/openssl/PEMReader$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lorg/spongycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "PUBLIC KEY"

    new-instance v2, Lorg/spongycastle/openssl/PEMReader$PublicKeyParser;

    invoke-direct {v2, p0, p4}, Lorg/spongycastle/openssl/PEMReader$PublicKeyParser;-><init>(Lorg/spongycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lorg/spongycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "RSA PUBLIC KEY"

    new-instance v2, Lorg/spongycastle/openssl/PEMReader$RSAPublicKeyParser;

    invoke-direct {v2, p0, p4}, Lorg/spongycastle/openssl/PEMReader$RSAPublicKeyParser;-><init>(Lorg/spongycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lorg/spongycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "RSA PRIVATE KEY"

    new-instance v2, Lorg/spongycastle/openssl/PEMReader$RSAKeyPairParser;

    invoke-direct {v2, p0, p4}, Lorg/spongycastle/openssl/PEMReader$RSAKeyPairParser;-><init>(Lorg/spongycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lorg/spongycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "DSA PRIVATE KEY"

    new-instance v2, Lorg/spongycastle/openssl/PEMReader$DSAKeyPairParser;

    invoke-direct {v2, p0, p4}, Lorg/spongycastle/openssl/PEMReader$DSAKeyPairParser;-><init>(Lorg/spongycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lorg/spongycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "EC PRIVATE KEY"

    new-instance v2, Lorg/spongycastle/openssl/PEMReader$ECDSAKeyPairParser;

    invoke-direct {v2, p0, p4}, Lorg/spongycastle/openssl/PEMReader$ECDSAKeyPairParser;-><init>(Lorg/spongycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lorg/spongycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "ENCRYPTED PRIVATE KEY"

    new-instance v2, Lorg/spongycastle/openssl/PEMReader$EncryptedPrivateKeyParser;

    invoke-direct {v2, p0, p3, p4}, Lorg/spongycastle/openssl/PEMReader$EncryptedPrivateKeyParser;-><init>(Lorg/spongycastle/openssl/PEMReader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lorg/spongycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    const-string v1, "PRIVATE KEY"

    new-instance v2, Lorg/spongycastle/openssl/PEMReader$PrivateKeyParser;

    invoke-direct {v2, p0, p4}, Lorg/spongycastle/openssl/PEMReader$PrivateKeyParser;-><init>(Lorg/spongycastle/openssl/PEMReader;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method static synthetic access$400(Lorg/spongycastle/openssl/PEMReader;)Lorg/spongycastle/openssl/PasswordFinder;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/openssl/PEMReader;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/spongycastle/openssl/PEMReader;->pFinder:Lorg/spongycastle/openssl/PasswordFinder;

    return-object v0
.end method


# virtual methods
.method public readObject()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/spongycastle/openssl/PEMReader;->readPemObject()Lorg/spongycastle/util/io/pem/PemObject;

    move-result-object v0

    .line 159
    .local v0, "obj":Lorg/spongycastle/util/io/pem/PemObject;
    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0}, Lorg/spongycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lorg/spongycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lorg/spongycastle/openssl/PEMReader;->parsers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/util/io/pem/PemObjectParser;

    invoke-interface {v2, v0}, Lorg/spongycastle/util/io/pem/PemObjectParser;->parseObject(Lorg/spongycastle/util/io/pem/PemObject;)Ljava/lang/Object;

    move-result-object v2

    .line 172
    .end local v1    # "type":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 168
    .restart local v1    # "type":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unrecognised object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    .end local v1    # "type":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
