.class public Lnet/veritran/vtuserapplication/adapters/DigestAdapter;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0, p1}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->a([BI)[B

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/utils/Hexa;->bytesToHexa([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method private static a([BI)[B
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getSecurityLibrary()Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;->getMD5Digest()Lnet/veritran/vtuserapplication/utils/security/DigestInterface;

    move-result-object v0

    :goto_0
    array-length v1, p0

    invoke-interface {v0, p0, v2, v1}, Lnet/veritran/vtuserapplication/utils/security/DigestInterface;->update([BII)V

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/security/DigestInterface;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    invoke-interface {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/security/DigestInterface;->doFinal([BI)V

    return-object v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getSecurityLibrary()Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;->getSHA1Digest()Lnet/veritran/vtuserapplication/utils/security/DigestInterface;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getSecurityLibrary()Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;->getSHA256Digest()Lnet/veritran/vtuserapplication/utils/security/DigestInterface;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getSecurityLibrary()Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;->getSHA512Digest()Lnet/veritran/vtuserapplication/utils/security/DigestInterface;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5([B)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha1([B)[B
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha256(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha256([B)[B
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha512(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha512([B)[B
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->a([BI)[B

    move-result-object v0

    return-object v0
.end method
