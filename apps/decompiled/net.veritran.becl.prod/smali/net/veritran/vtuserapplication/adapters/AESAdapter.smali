.class public abstract Lnet/veritran/vtuserapplication/adapters/AESAdapter;
.super Ljava/lang/Object;


# static fields
.field public static final BLOCK_SIZE:I = 0x10

.field protected static final PAD_BYTE:B = -0x16t

.field public static final _fixedIV:[B

.field private static a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x10

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->a:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->_fixedIV:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x65t
        0x75t
        0x72t
        0x6ft
        0x73t
        0x65t
        0x74t
        0x33t
        0x30t
        0x31t
        0x30t
        0x76t
        0x65t
        0x72t
        0x69t
        0x74t
    .end array-data

    :array_1
    .array-data 1
        -0x2dt
        -0xat
        -0x51t
        0x5bt
        -0x38t
        0x5t
        0x7t
        -0x6et
        -0x26t
        0x5at
        0x5et
        -0x7ct
        0x44t
        -0x79t
        -0x63t
        0x5ct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B[B[BZZ)[B
    .locals 1

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-static {p0}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->prepareBlockArray([B)[B

    move-result-object p0

    :cond_0
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getSecurityLibrary()Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;->getAESAdapter()Lnet/veritran/vtuserapplication/utils/security/AESAdapterInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lnet/veritran/vtuserapplication/utils/security/AESAdapterInterface;->process([B[B[BZ)[B

    move-result-object v0

    if-eqz p3, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->clearPadding([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method protected static clearPadding([B)[B
    .locals 4

    :try_start_0
    array-length v0, p0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p0, v1

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->decrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lnet/veritran/vtuserapplication/utils/Hexa;->hexaToBytes(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->_fixedIV:[B

    invoke-static {p1}, Lnet/veritran/vtuserapplication/utils/Hexa;->hexaToBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->a([B[B[BZZ)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lnet/veritran/vtuserapplication/utils/Hexa;->hexaToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1}, Lnet/veritran/vtuserapplication/utils/Hexa;->hexaToBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, p2, v2, v3, v4}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->a([B[B[BZZ)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static decrypt(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lnet/veritran/vtuserapplication/utils/Hexa;->hexaToBytes(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->_fixedIV:[B

    invoke-static {}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->getEncKey()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->a([B[B[BZZ)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static decrypt(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lnet/veritran/vtuserapplication/utils/Hexa;->hexaToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->getEncKey()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, p1, v2, v3, v4}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->a([B[B[BZZ)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static getEncKey()[B
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->a:[B

    return-object v0
.end method

.method public static pinKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5([B)[B

    move-result-object v0

    invoke-static {p0, v0}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->processEncrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static prepareBlockArray([B)[B
    .locals 4

    const/4 v3, 0x0

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x10

    array-length v1, p0

    add-int/lit8 v1, v1, 0x10

    sub-int/2addr v1, v0

    new-array v2, v1, [B

    array-length v0, p0

    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_0

    const/16 v3, -0x16

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    array-length v3, p0

    sub-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    return-object v2
.end method

.method public static processEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v1, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->_fixedIV:[B

    invoke-static {p1}, Lnet/veritran/vtuserapplication/utils/Hexa;->hexaToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v1, v2, v3, v3}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->a([B[B[BZZ)[B

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/utils/Hexa;->bytesToHexa([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static processEncrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p2}, Lnet/veritran/vtuserapplication/utils/Hexa;->hexaToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1}, Lnet/veritran/vtuserapplication/utils/Hexa;->hexaToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v1, v2, v3, v3}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->a([B[B[BZZ)[B

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/utils/Hexa;->bytesToHexa([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static processEncrypt(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->getEncKey()[B

    move-result-object v1

    invoke-static {v0, p1, v1, v2, v2}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->a([B[B[BZZ)[B

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/utils/Hexa;->bytesToHexa([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setEncKey([B)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->a:[B

    return-void
.end method

.method public static transKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->_fixedIV:[B

    invoke-static {p0, v0}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->processEncrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static transKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5([B)[B

    move-result-object v0

    invoke-static {p0, v0}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->processEncrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static transKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lnet/veritran/vtuserapplication/utils/Hexa;->hexaToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5([B)[B

    move-result-object v1

    invoke-static {}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->getEncKey()[B

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->a([B[B[BZZ)[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/veritran/vtuserapplication/utils/Hexa;->bytesToHexa([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
