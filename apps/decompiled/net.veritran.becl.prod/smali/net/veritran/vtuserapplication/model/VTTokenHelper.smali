.class public Lnet/veritran/vtuserapplication/model/VTTokenHelper;
.super Ljava/lang/Object;


# static fields
.field private static a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

.field private static b:Lnet/veritran/vtuserapplication/core/VTTokenManager;

.field private static c:Lnet/veritran/vtuserapplication/core/ApplicationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(ZI)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->b:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    invoke-virtual {v0, p2}, Lnet/veritran/vtuserapplication/core/VTTokenManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->cryptData(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->b:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    invoke-virtual {v0, p2}, Lnet/veritran/vtuserapplication/core/VTTokenManager;->getField(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x5

    const-string v2, "General exception"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->cryptData(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->b:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    invoke-virtual {v1, p3, v0}, Lnet/veritran/vtuserapplication/core/VTTokenManager;->setField(ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p3}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->a(ZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x3

    const-string v2, "Error trying to save data"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static getInstance(Lnet/veritran/vtuserapplication/core/VTTokenManager;Lnet/veritran/vtuserapplication/core/ApplicationManager;)Lnet/veritran/vtuserapplication/model/VTTokenHelper;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;-><init>()V

    sput-object v0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    sput-object p0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->b:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    sput-object p1, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->c:Lnet/veritran/vtuserapplication/core/ApplicationManager;

    sget-object v0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->a:Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    goto :goto_0
.end method


# virtual methods
.method public cryptData(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenHash()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lnet/veritran/vtuserapplication/adapters/DigestAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/16 v1, 0xa

    const-string v2, "Token TOKEN_PASSWORD is not a valid password"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->cryptData(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cryptData(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {p1, p3}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->processEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/16 v1, 0xc

    const-string v2, "Data to process is empty. Nothing to encrypt/decrypt!"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1, p3}, Lnet/veritran/vtuserapplication/adapters/AESAdapter;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTokenGenerationCnt(Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->a(ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenHash()Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->b:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/VTTokenManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenLastUsedTime(Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/4 v2, 0x6

    if-eqz p1, :cond_0

    sget-object v0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->b:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    sget-object v1, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->b:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/core/VTTokenManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->cryptData(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->b:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    sget-object v1, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->b:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/core/VTTokenManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTokenRepositoryVersion()I
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->b:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/VTTokenManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTokenSalt()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->b:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/VTTokenManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenSalt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->b:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/VTTokenManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->cryptData(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenSeed(Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    sget-object v0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->c:Lnet/veritran/vtuserapplication/core/ApplicationManager;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/ApplicationManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->cryptData(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->c:Lnet/veritran/vtuserapplication/core/ApplicationManager;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/ApplicationManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTokenSerialNumber(Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    sget-object v0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->b:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/VTTokenManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->cryptData(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->b:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/VTTokenManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTokenValidationCnt(Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->a(ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenValidationWrongCounter(Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->a(ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAppAdministrativeMode(I)V
    .locals 3

    sget-object v0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->c:Lnet/veritran/vtuserapplication/core/ApplicationManager;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/ApplicationManager;->setField(ILjava/lang/String;)V

    return-void
.end method

.method public setTokenGenerationCnt(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->a(Ljava/lang/String;ZI)V

    return-void
.end method

.method public setTokenHash(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->b:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lnet/veritran/vtuserapplication/core/VTTokenManager;->setField(ILjava/lang/String;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x3

    const-string v2, "Error trying to save data"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public setTokenLastUsedTime(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->cryptData(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->b:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lnet/veritran/vtuserapplication/core/VTTokenManager;->setField(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenLastUsedTime(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x2

    const-string v2, "Error trying to save data"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public setTokenRepositoryVersion(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->b:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/VTTokenManager;->setField(ILjava/lang/String;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenRepositoryVersion()I

    move-result v0

    if-eq p1, v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x3

    const-string v2, "Error trying to save data"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public setTokenSalt(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->b:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lnet/veritran/vtuserapplication/core/VTTokenManager;->setField(ILjava/lang/String;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenSalt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x3

    const-string v2, "Error trying to save data"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public setTokenSalt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->cryptData(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->b:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/core/VTTokenManager;->setField(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenSalt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x3

    const-string v2, "Error trying to save data"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public setTokenSeed(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->cryptData(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->c:Lnet/veritran/vtuserapplication/core/ApplicationManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/core/ApplicationManager;->setField(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenSeed(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x3

    const-string v2, "Error trying to save data"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public setTokenSerialNumber(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->cryptData(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->b:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    invoke-virtual {v0, v1, p1}, Lnet/veritran/vtuserapplication/core/VTTokenManager;->setField(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getTokenSerialNumber(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x2

    const-string v2, "Error trying to save data"

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public setTokenValidationCnt(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/4 v0, 0x7

    invoke-direct {p0, p1, p2, v0}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->a(Ljava/lang/String;ZI)V

    return-void
.end method

.method public setTokenValidationWrongCounter(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, p1, p2, v0}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->a(Ljava/lang/String;ZI)V

    return-void
.end method
