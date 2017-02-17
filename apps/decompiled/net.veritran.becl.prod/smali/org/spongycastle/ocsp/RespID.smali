.class public Lorg/spongycastle/ocsp/RespID;
.super Ljava/lang/Object;
.source "RespID.java"


# instance fields
.field id:Lorg/spongycastle/asn1/ocsp/ResponderID;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 8
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    :try_start_0
    const-string v5, "SHA1"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/spongycastle/ocsp/OCSPUtil;->createDigestInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 43
    .local v1, "digest":Ljava/security/MessageDigest;
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 44
    .local v0, "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    .line 46
    .local v3, "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 48
    new-instance v4, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 50
    .local v4, "keyHash":Lorg/spongycastle/asn1/ASN1OctetString;
    new-instance v5, Lorg/spongycastle/asn1/ocsp/ResponderID;

    invoke-direct {v5, v4}, Lorg/spongycastle/asn1/ocsp/ResponderID;-><init>(Lorg/spongycastle/asn1/ASN1OctetString;)V

    iput-object v5, p0, Lorg/spongycastle/ocsp/RespID;->id:Lorg/spongycastle/asn1/ocsp/ResponderID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-void

    .line 52
    .end local v0    # "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local v4    # "keyHash":Lorg/spongycastle/asn1/ASN1OctetString;
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/spongycastle/ocsp/OCSPException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "problem creating ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 2
    .param p1, "name"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/spongycastle/asn1/ocsp/ResponderID;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ocsp/ResponderID;-><init>(Lorg/spongycastle/asn1/x500/X500Name;)V

    iput-object v0, p0, Lorg/spongycastle/ocsp/RespID;->id:Lorg/spongycastle/asn1/ocsp/ResponderID;

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ocsp/ResponderID;)V
    .locals 0
    .param p1, "id"    # Lorg/spongycastle/asn1/ocsp/ResponderID;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/spongycastle/ocsp/RespID;->id:Lorg/spongycastle/asn1/ocsp/ResponderID;

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 66
    instance-of v1, p1, Lorg/spongycastle/ocsp/RespID;

    if-nez v1, :cond_0

    .line 68
    const/4 v1, 0x0

    .line 73
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 71
    check-cast v0, Lorg/spongycastle/ocsp/RespID;

    .line 73
    .local v0, "obj":Lorg/spongycastle/ocsp/RespID;
    iget-object v1, p0, Lorg/spongycastle/ocsp/RespID;->id:Lorg/spongycastle/asn1/ocsp/ResponderID;

    iget-object v2, v0, Lorg/spongycastle/ocsp/RespID;->id:Lorg/spongycastle/asn1/ocsp/ResponderID;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ocsp/ResponderID;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/spongycastle/ocsp/RespID;->id:Lorg/spongycastle/asn1/ocsp/ResponderID;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/ResponderID;->hashCode()I

    move-result v0

    return v0
.end method

.method public toASN1Object()Lorg/spongycastle/asn1/ocsp/ResponderID;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/spongycastle/ocsp/RespID;->id:Lorg/spongycastle/asn1/ocsp/ResponderID;

    return-object v0
.end method
