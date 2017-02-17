.class public Lorg/spongycastle/crypto/tls/Certificate;
.super Ljava/lang/Object;
.source "Certificate.java"


# static fields
.field public static final EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;


# instance fields
.field protected certs:[Lorg/spongycastle/asn1/x509/X509CertificateStructure;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lorg/spongycastle/crypto/tls/Certificate;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/Certificate;-><init>([Lorg/spongycastle/asn1/x509/X509CertificateStructure;)V

    sput-object v0, Lorg/spongycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;

    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/x509/X509CertificateStructure;)V
    .locals 2
    .param p1, "certs"    # [Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'certs\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/Certificate;->certs:[Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    .line 106
    return-void
.end method

.method protected static parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/Certificate;
    .locals 11
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v5

    .line 37
    .local v5, "left":I
    if-nez v5, :cond_0

    .line 39
    sget-object v9, Lorg/spongycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;

    .line 63
    :goto_0
    return-object v9

    .line 41
    :cond_0
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 42
    .local v8, "tmp":Ljava/util/Vector;
    :cond_1
    if-lez v5, :cond_2

    .line 44
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v7

    .line 45
    .local v7, "size":I
    add-int/lit8 v9, v7, 0x3

    sub-int/2addr v5, v9

    .line 46
    new-array v2, v7, [B

    .line 47
    .local v2, "buf":[B
    invoke-static {v2, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    .line 48
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 49
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 50
    .local v0, "ais":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v6

    .line 51
    .local v6, "o":Lorg/spongycastle/asn1/DERObject;
    invoke-static {v6}, Lorg/spongycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    if-lez v9, :cond_1

    .line 54
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Sorry, there is garbage data left after the certificate"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 58
    .end local v0    # "ais":Lorg/spongycastle/asn1/ASN1InputStream;
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "buf":[B
    .end local v6    # "o":Lorg/spongycastle/asn1/DERObject;
    .end local v7    # "size":I
    :cond_2
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v3, v9, [Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    .line 59
    .local v3, "certs":[Lorg/spongycastle/asn1/x509/X509CertificateStructure;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v4, v9, :cond_3

    .line 61
    invoke-virtual {v8, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    aput-object v9, v3, v4

    .line 59
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 63
    :cond_3
    new-instance v9, Lorg/spongycastle/crypto/tls/Certificate;

    invoke-direct {v9, v3}, Lorg/spongycastle/crypto/tls/Certificate;-><init>([Lorg/spongycastle/asn1/x509/X509CertificateStructure;)V

    goto :goto_0
.end method


# virtual methods
.method protected encode(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 75
    .local v1, "encCerts":Ljava/util/Vector;
    const/4 v3, 0x0

    .line 76
    .local v3, "totalSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/Certificate;->certs:[Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 78
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/Certificate;->certs:[Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    aget-object v4, v4, v2

    const-string v5, "DER"

    invoke-virtual {v4, v5}, Lorg/spongycastle/asn1/x509/X509CertificateStructure;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 79
    .local v0, "encCert":[B
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 80
    array-length v4, v0

    add-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "encCert":[B
    :cond_0
    add-int/lit8 v4, v3, 0x3

    invoke-static {v4, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 84
    invoke-static {v3, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 86
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 88
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    .line 89
    .restart local v0    # "encCert":[B
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque24([BLjava/io/OutputStream;)V

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    .end local v0    # "encCert":[B
    :cond_1
    return-void
.end method

.method public getCerts()[Lorg/spongycastle/asn1/x509/X509CertificateStructure;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/Certificate;->certs:[Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    array-length v1, v1

    new-array v0, v1, [Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    .line 114
    .local v0, "result":[Lorg/spongycastle/asn1/x509/X509CertificateStructure;
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/Certificate;->certs:[Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/Certificate;->certs:[Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/Certificate;->certs:[Lorg/spongycastle/asn1/x509/X509CertificateStructure;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
