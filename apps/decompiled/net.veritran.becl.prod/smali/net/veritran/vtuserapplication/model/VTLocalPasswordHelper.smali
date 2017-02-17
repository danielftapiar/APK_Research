.class public Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;
.super Ljava/lang/Object;


# static fields
.field private static a:Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

.field private static b:Lnet/veritran/vtuserapplication/core/LocalPasswordManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Lnet/veritran/vtuserapplication/core/LocalPasswordManager;Lnet/veritran/vtuserapplication/core/ApplicationManager;)Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->a:Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;-><init>()V

    sput-object v0, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->a:Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

    sput-object p0, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->b:Lnet/veritran/vtuserapplication/core/LocalPasswordManager;

    sget-object v0, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->a:Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

    goto :goto_0
.end method


# virtual methods
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

.method public destroyLocalPassword()V
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->b:Lnet/veritran/vtuserapplication/core/LocalPasswordManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->cleanAllFields()V

    return-void
.end method

.method public getLocalPassword()Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->b:Lnet/veritran/vtuserapplication/core/LocalPasswordManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPasswordSalt()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->b:Lnet/veritran/vtuserapplication/core/LocalPasswordManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPasswordSalt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->b:Lnet/veritran/vtuserapplication/core/LocalPasswordManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->cryptData(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLocalPassword(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->b:Lnet/veritran/vtuserapplication/core/LocalPasswordManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->setField(ILjava/lang/String;)V

    return-void
.end method

.method public setLocalPasswordSalt(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    sget-object v0, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->b:Lnet/veritran/vtuserapplication/core/LocalPasswordManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->setField(ILjava/lang/String;)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->getLocalPasswordSalt()Ljava/lang/String;

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

.method public setLocalPasswordSalt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/VTStateException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2, p2}, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->cryptData(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->b:Lnet/veritran/vtuserapplication/core/LocalPasswordManager;

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->setField(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->getLocalPasswordSalt(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p2}, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->getLocalPasswordSalt(Ljava/lang/String;)Ljava/lang/String;

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
