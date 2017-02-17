.class public Lnet/veritran/vtuserapplication/utils/security/SecurityFactory;
.super Ljava/lang/Object;


# static fields
.field private static a:Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getSecurityLibrary()Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    move-result-object v0

    sput-object v0, Lnet/veritran/vtuserapplication/utils/security/SecurityFactory;->a:Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAESAdapter()Lnet/veritran/vtuserapplication/utils/security/AESAdapterInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/utils/security/SecurityFactory;->a:Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "AESAdapter not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/utils/security/SecurityFactory;->a:Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;->getAESAdapter()Lnet/veritran/vtuserapplication/utils/security/AESAdapterInterface;

    move-result-object v0

    return-object v0
.end method

.method public static getBigInteger()Lnet/veritran/vtuserapplication/utils/security/VTBigIntegerInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/utils/security/SecurityFactory;->a:Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "BigInteger not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/utils/security/SecurityFactory;->a:Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;->generateBiginteger()Lnet/veritran/vtuserapplication/utils/security/VTBigIntegerInterface;

    move-result-object v0

    return-object v0
.end method

.method public static getBigInteger(Ljava/lang/String;I)Lnet/veritran/vtuserapplication/utils/security/VTBigIntegerInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/utils/security/SecurityFactory;->a:Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "BigInteger not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/utils/security/SecurityFactory;->a:Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    invoke-interface {v0, p0, p1}, Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;->generateBigInteger(Ljava/lang/String;I)Lnet/veritran/vtuserapplication/utils/security/VTBigIntegerInterface;

    move-result-object v0

    return-object v0
.end method

.method public static getDiffieHellmanImplementation()Lnet/veritran/vtuserapplication/utils/security/DiffieHellmanInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/utils/security/SecurityFactory;->a:Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "DiffieHellman not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/utils/security/SecurityFactory;->a:Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;->getDiffieHellmanImplementation()Lnet/veritran/vtuserapplication/utils/security/DiffieHellmanInterface;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5Digest()Lnet/veritran/vtuserapplication/utils/security/DigestInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/utils/security/SecurityFactory;->a:Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "MD5Digest not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/utils/security/SecurityFactory;->a:Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;->getMD5Digest()Lnet/veritran/vtuserapplication/utils/security/DigestInterface;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA1Digest()Lnet/veritran/vtuserapplication/utils/security/DigestInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/utils/security/SecurityFactory;->a:Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "SHA1Digest not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/utils/security/SecurityFactory;->a:Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;->getSHA1Digest()Lnet/veritran/vtuserapplication/utils/security/DigestInterface;

    move-result-object v0

    return-object v0
.end method
