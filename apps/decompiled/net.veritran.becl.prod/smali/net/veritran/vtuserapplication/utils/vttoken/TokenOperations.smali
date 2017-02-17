.class public Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;
    }
.end annotation


# static fields
.field public static final ERR001:Ljava/lang/String; = "Invalid Function ID."

.field public static final ERR002:Ljava/lang/String; = "ConfigurationManager not set."

.field public static final ERR003:Ljava/lang/String; = "Error trying to save data"

.field public static final ERR004:Ljava/lang/String; = "Error trying to parse a string to number"

.field public static final ERR005:Ljava/lang/String; = "General exception"

.field public static final ERR006:Ljava/lang/String; = "Challenge > than 128 bytes "

.field public static final ERR007:Ljava/lang/String; = "Next State is not a valid state."

.field public static final ERR010:Ljava/lang/String; = "Token TOKEN_PASSWORD is not a valid password"

.field public static final ERR011:Ljava/lang/String; = "CRC error"

.field public static final ERR012:Ljava/lang/String; = "Data to process is empty. Nothing to encrypt/decrypt!"

.field public static final ERR024:Ljava/lang/String; = "Password strength is weak"

.field public static final ERR026:Ljava/lang/String; = "Max number of retries reached!"

.field public static final ERR099:Ljava/lang/String; = "Internal time is misset"

.field public static final ERR100:Ljava/lang/String; = "Problems trying to parse data in prepareSessionData function"

.field public static final ERR101:Ljava/lang/String; = "Passwords does not match"

.field public static final ERR102:Ljava/lang/String; = "Not all the parameters are filled out"

.field public static final ERR103:Ljava/lang/String; = "Bad CRC"

.field public static final ERR104:Ljava/lang/String; = "Password wrong"

.field private static a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HMAC([B[B)[B
    .locals 7

    const/16 v6, 0x40

    const/4 v1, 0x0

    new-array v2, v6, [B

    new-array v3, v6, [B

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getSecurityLibrary()Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;->getSHA1Digest()Lnet/veritran/vtuserapplication/utils/security/DigestInterface;

    move-result-object v4

    array-length v0, p0

    if-le v0, v6, :cond_0

    array-length v0, p0

    invoke-interface {v4, p0, v1, v0}, Lnet/veritran/vtuserapplication/utils/security/DigestInterface;->update([BII)V

    invoke-interface {v4}, Lnet/veritran/vtuserapplication/utils/security/DigestInterface;->getDigestSize()I

    move-result v0

    new-array p0, v0, [B

    invoke-interface {v4, p0, v1}, Lnet/veritran/vtuserapplication/utils/security/DigestInterface;->doFinal([BI)V

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_2

    array-length v5, p0

    if-ge v0, v5, :cond_1

    aget-byte v5, p0, v0

    xor-int/lit8 v5, v5, 0x5c

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    aget-byte v5, p0, v0

    xor-int/lit8 v5, v5, 0x36

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v5, 0x5c

    aput-byte v5, v2, v0

    const/16 v5, 0x36

    aput-byte v5, v3, v0

    goto :goto_1

    :cond_2
    array-length v0, v3

    invoke-interface {v4, v3, v1, v0}, Lnet/veritran/vtuserapplication/utils/security/DigestInterface;->update([BII)V

    array-length v0, p1

    invoke-interface {v4, p1, v1, v0}, Lnet/veritran/vtuserapplication/utils/security/DigestInterface;->update([BII)V

    invoke-interface {v4}, Lnet/veritran/vtuserapplication/utils/security/DigestInterface;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-interface {v4, v0, v1}, Lnet/veritran/vtuserapplication/utils/security/DigestInterface;->doFinal([BI)V

    array-length v3, v2

    invoke-interface {v4, v2, v1, v3}, Lnet/veritran/vtuserapplication/utils/security/DigestInterface;->update([BII)V

    array-length v2, v0

    invoke-interface {v4, v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/security/DigestInterface;->update([BII)V

    invoke-interface {v4}, Lnet/veritran/vtuserapplication/utils/security/DigestInterface;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-interface {v4, v0, v1}, Lnet/veritran/vtuserapplication/utils/security/DigestInterface;->doFinal([BI)V

    return-object v0
.end method

.method public static HOTP([B[BI)J
    .locals 6

    const-string v0, "10000000000"

    const/4 v1, 0x0

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0, p1}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->HMAC([B[B)[B

    move-result-object v2

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0xf

    aget-byte v4, v2, v3

    and-int/lit8 v4, v4, 0x7f

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v4

    int-to-long v2, v2

    rem-long v0, v2, v0

    return-wide v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static checkVTTokenCRC(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->generateVTTokenCRC(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static checkVTTokenPassword(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x2

    const-string v2, "ConfigurationManager not set."

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/16 v1, 0x66

    const-string v2, "Not all the parameters are filled out"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenHash()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->passwordSalt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static clearVTTokenData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x2

    const-string v2, "ConfigurationManager not set."

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const-string v1, "f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenSeed(Ljava/lang/String;Z)V

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const-string v1, "f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenSerialNumber(Ljava/lang/String;Z)V

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const-string v1, "f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenHash(Ljava/lang/String;)V

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const-string v1, "0"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenGenerationCnt(Ljava/lang/String;Z)V

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenSeed(Ljava/lang/String;Z)V

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenSerialNumber(Ljava/lang/String;Z)V

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenHash(Ljava/lang/String;)V

    return-void
.end method

.method public static generateVTToken(Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x2

    const-string v2, "ConfigurationManager not set."

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p7, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->checkVTTokenCRC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/16 v1, 0x67

    const-string v2, "Bad CRC"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenSeed(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HOTP-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    invoke-static {p5, p6, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/utils/Hexa;->hexaToBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v2, 0x0

    array-length v3, v1

    rsub-int/lit8 v3, v3, 0x8

    array-length v5, v1

    invoke-static {v1, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    invoke-static {v4}, Lnet/veritran/vtuserapplication/utils/Hexa;->hexaToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getFunctionDigit()I

    move-result v2

    invoke-static {v1, v0, v2}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->HOTP([B[BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getFunctionDigit()I

    move-result v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOTP-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    :cond_3
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isChallengePresent()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VRTR-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    add-int/lit16 v0, v0, 0x80

    :cond_5
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isCounterPresent()Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, 0x8

    :cond_6
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isPINPresent()Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x14

    :cond_7
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isSessionPresent()Z

    move-result v1

    if-eqz v1, :cond_8

    add-int/lit8 v0, v0, 0x40

    :cond_8
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isTimeStampPresent()Z

    move-result v1

    if-eqz v1, :cond_9

    add-int/lit8 v0, v0, 0x8

    :cond_9
    new-array v3, v0, [B

    const/4 v0, 0x0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOTP-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v5, v0

    invoke-static {v0, v1, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, 0x1

    :cond_a
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isCounterPresent()Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0x10

    invoke-static {p5, p6, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/veritran/vtuserapplication/utils/Hexa;->hexaToBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v5, v1

    rsub-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v0

    array-length v6, v1

    invoke-static {v1, v2, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x8

    :cond_b
    const/4 v1, 0x0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isChallengePresent()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "VRTR-1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_c
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "OCRA-1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v5, 0x0

    aget-byte v5, v2, v5

    if-nez v5, :cond_d

    const/4 v1, 0x1

    :cond_d
    array-length v5, v2

    sub-int/2addr v5, v1

    const/16 v6, 0x80

    if-le v5, v6, :cond_14

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x6

    const-string v2, "Challenge > than 128 bytes "

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_e
    const/16 v2, 0x80

    new-array v2, v2, [B

    move-object v8, v2

    move v2, v1

    move-object v1, v8

    :goto_1
    array-length v5, v1

    sub-int/2addr v5, v2

    invoke-static {v1, v2, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit16 v0, v0, 0x80

    :cond_f
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isPINPresent()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {p2}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/veritran/vtuserapplication/utils/Hexa;->hexaToBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v5, 0x14

    invoke-static {v1, v2, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x14

    :cond_10
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isSessionPresent()Z

    move-result v1

    if-eqz v1, :cond_11

    :try_start_0
    const-string v1, "ISO8859_1"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_2
    const/16 v2, 0x40

    new-array v2, v2, [B

    array-length v5, v1

    const/16 v6, 0x40

    if-le v5, v6, :cond_13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x40

    invoke-static {v1, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    const/4 v1, 0x0

    array-length v5, v2

    invoke-static {v2, v1, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v2

    add-int/2addr v0, v1

    :cond_11
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations$CryptoMode;->isTimeStampPresent()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/16 v1, 0x10

    invoke-static {v6, v7, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/veritran/vtuserapplication/utils/Hexa;->hexaToBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v5, v1

    rsub-int/lit8 v5, v5, 0x8

    add-int/2addr v0, v5

    array-length v5, v1

    invoke-static {v1, v2, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    move-object v0, v3

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_2

    :cond_13
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v1

    invoke-static {v1, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_14
    move-object v8, v2

    move v2, v1

    move-object v1, v8

    goto :goto_1
.end method

.method public static generateVTTokenCRC(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    move v1, v2

    move v3, v0

    :goto_0
    if-ltz v1, :cond_0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int v5, v2, v1

    rem-int/lit8 v5, v5, 0x6

    add-int/lit8 v5, v5, 0x2

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    rem-int/lit8 v1, v3, 0xb

    rsub-int/lit8 v1, v1, 0xb

    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static getVTTokenBackUp()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x4

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const-string v1, "ConfigurationManager not set."

    invoke-direct {v0, v8, v1}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenRepositoryVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-virtual {v2, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenSeed(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->getStringWithLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-virtual {v2, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenSerialNumber(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->getStringWithLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-virtual {v2, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenGenerationCnt(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->getStringWithLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenSalt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->getStringWithLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenHash()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->getStringWithLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-virtual {v2, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenValidationCnt(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->getStringWithLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-virtual {v2, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenValidationWrongCounter(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->getStringWithLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-virtual {v2, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenLastUsedTime(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->getStringWithLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v3, ""

    const-string v2, ""

    const/16 v0, 0x384

    move v5, v0

    move v0, v1

    move-object v10, v2

    move-object v2, v3

    move v3, v1

    move-object v1, v10

    :goto_0
    const/16 v4, 0x3e8

    if-ge v5, v4, :cond_2

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v4

    invoke-virtual {v4, v5}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v9}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->getStringWithLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    move v4, v3

    move-object v3, v2

    :goto_1
    :try_start_0
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v2

    invoke-virtual {v2, v5}, Lnet/veritran/vtuserapplication/model/Model;->getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->serialize()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_2
    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v7, 0x5

    invoke-static {v2, v7}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->getStringWithLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v2, v3

    move v3, v4

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v2, ""

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move v4, v3

    move-object v3, v2

    goto/16 :goto_1
.end method

.method public static getVTTokenCounter()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x2

    const-string v2, "ConfigurationManager not set."

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenGenerationCnt(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVTTokenLastUsedTime()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x2

    const-string v2, "ConfigurationManager not set."

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenLastUsedTime(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVTTokenSeed()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x2

    const-string v2, "ConfigurationManager not set."

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenSeed(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVTTokenSerialNumber()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x2

    const-string v2, "ConfigurationManager not set."

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenSerialNumber(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVTTokenValidationCounter()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x2

    const-string v2, "ConfigurationManager not set."

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenValidationCnt(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVTTokenValidationWrongCounter()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x2

    const-string v2, "ConfigurationManager not set."

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenValidationWrongCounter(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static passwordSalt(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v3, 0x10

    if-eqz p1, :cond_2

    invoke-static {}, Lnet/veritran/vtuserapplication/utils/VTRandom;->getNewInstance()Lnet/veritran/vtuserapplication/utils/VTRandom;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/VTRandom;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-static {p0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenSalt(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v0, v3}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-static {p0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenSalt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static saveVTTokenData(Ljava/lang/String;Ljava/lang/String;JJJJZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x2

    const-string v2, "ConfigurationManager not set."

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-virtual {v0, p0, p10}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenSeed(Ljava/lang/String;Z)V

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p10}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenGenerationCnt(Ljava/lang/String;Z)V

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p10}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenValidationCnt(Ljava/lang/String;Z)V

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p10}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenValidationWrongCounter(Ljava/lang/String;Z)V

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p8, p9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p10}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenLastUsedTime(Ljava/lang/String;Z)V

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-virtual {v0, p1, p10}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenSerialNumber(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lnet/veritran/vtuserapplication/states/VTStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const-string v2, ""

    invoke-virtual {v1, v2, v3}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenSeed(Ljava/lang/String;Z)V

    sget-object v1, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const-string v2, "0"

    invoke-virtual {v1, v2, v3}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenGenerationCnt(Ljava/lang/String;Z)V

    sget-object v1, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const-string v2, "999999"

    invoke-virtual {v1, v2, v3}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenValidationCnt(Ljava/lang/String;Z)V

    sget-object v1, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const-string v2, "9223372036854775807"

    invoke-virtual {v1, v2, v3}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenLastUsedTime(Ljava/lang/String;Z)V

    throw v0
.end method

.method public static saveVTTokenPassword(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x2

    const-string v2, "ConfigurationManager not set."

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/16 v1, 0x65

    const-string v2, "Passwords does not match"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p2, :cond_2

    new-instance v0, Lnet/veritran/vtuserapplication/utils/Passwordmeter;

    invoke-direct {v0, p0, p3}, Lnet/veritran/vtuserapplication/utils/Passwordmeter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/Passwordmeter;->getScore()I

    move-result v0

    if-ge v0, p2, :cond_2

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/16 v1, 0x18

    const-string v2, "Password strength is weak"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->passwordSalt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenHash(Ljava/lang/String;)V

    return-object v0
.end method

.method public static setTokenSalt(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-virtual {v0, p0}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenSalt(Ljava/lang/String;)V

    return-void
.end method

.method public static setVTTokenBackUp(Ljava/lang/String;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/4 v9, 0x3

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x2

    const-string v2, "ConfigurationManager not set."

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/16 v2, 0x64

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error en Restore del backup "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x4

    :try_start_1
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget-object v0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenRepositoryVersion(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    :goto_0
    const/16 v4, 0x8

    if-ge v0, v4, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    sget-object v6, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenSeed(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_1
    sget-object v6, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenSerialNumber(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_2
    sget-object v6, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenGenerationCnt(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_3
    sget-object v6, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-virtual {v6, v5}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenSalt(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    sget-object v6, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-virtual {v6, v5}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenHash(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    sget-object v6, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenValidationCnt(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_6
    sget-object v6, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenValidationWrongCounter(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_7
    sget-object v6, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->setTokenLastUsedTime(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    if-lt v3, v9, :cond_7

    const/4 v0, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_4

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    if-ne v3, v9, :cond_2

    const/4 v0, 0x0

    const/4 v7, 0x2

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v3, v9, :cond_3

    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    const/4 v7, 0x3

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    if-ge v1, v2, :cond_7

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    if-ne v3, v9, :cond_5

    const/4 v0, 0x0

    const/4 v5, 0x3

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v3, v9, :cond_6

    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v6

    invoke-static {v4}, Lnet/veritran/vtuserapplication/core/elements/ArrayElement;->getInstance(Ljava/lang/String;)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v4

    invoke-virtual {v6, v4}, Lnet/veritran/vtuserapplication/model/Model;->addArray(Lnet/veritran/vtuserapplication/core/elements/ArrayElement;)V

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    const/4 v5, 0x5

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_6
    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_7

    :cond_7
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static setVTTokenHelper(Lnet/veritran/vtuserapplication/model/VTTokenHelper;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/utils/vttoken/TokenOperations;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    return-void
.end method
