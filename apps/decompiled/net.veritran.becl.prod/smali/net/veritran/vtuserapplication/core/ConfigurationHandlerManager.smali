.class public Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;
.super Ljava/lang/Object;


# static fields
.field private static b:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;


# instance fields
.field private a:Lnet/veritran/vtuserapplication/persistence/RepositoryManager;

.field private c:Lnet/veritran/vtuserapplication/core/ApplicationManager;

.field private d:Lnet/veritran/vtuserapplication/core/ArraysManager;

.field private e:Lnet/veritran/vtuserapplication/core/RegisterManager;

.field private f:Lnet/veritran/vtuserapplication/core/StateManager;

.field private g:Lnet/veritran/vtuserapplication/core/VTTokenManager;

.field private h:Lnet/veritran/vtuserapplication/core/LocalPasswordManager;

.field private i:Lnet/veritran/vtuserapplication/core/VascoDPManager;

.field private j:Lnet/veritran/vtuserapplication/core/VersionManager;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->getInstance()Lnet/veritran/vtuserapplication/persistence/RepositoryManager;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->a:Lnet/veritran/vtuserapplication/persistence/RepositoryManager;

    new-instance v1, Lnet/veritran/vtuserapplication/core/ApplicationManager;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->a:Lnet/veritran/vtuserapplication/persistence/RepositoryManager;

    const-string v2, "APM"

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->getRepository(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;

    invoke-direct {v1, v0}, Lnet/veritran/vtuserapplication/core/ApplicationManager;-><init>(Lnet/veritran/vtuserapplication/persistence/ApplicationRepository;)V

    iput-object v1, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->c:Lnet/veritran/vtuserapplication/core/ApplicationManager;

    new-instance v1, Lnet/veritran/vtuserapplication/core/ArraysManager;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->a:Lnet/veritran/vtuserapplication/persistence/RepositoryManager;

    const-string v2, "ARY"

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->getRepository(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/persistence/ArrayRepository;

    invoke-direct {v1, v0}, Lnet/veritran/vtuserapplication/core/ArraysManager;-><init>(Lnet/veritran/vtuserapplication/persistence/ArrayRepository;)V

    iput-object v1, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->d:Lnet/veritran/vtuserapplication/core/ArraysManager;

    new-instance v0, Lnet/veritran/vtuserapplication/core/MessageBufferManager;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/core/MessageBufferManager;-><init>()V

    new-instance v1, Lnet/veritran/vtuserapplication/core/RegisterManager;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->a:Lnet/veritran/vtuserapplication/persistence/RepositoryManager;

    const-string v2, "RMA"

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->getRepository(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/persistence/RegisterRepository;

    invoke-direct {v1, v0}, Lnet/veritran/vtuserapplication/core/RegisterManager;-><init>(Lnet/veritran/vtuserapplication/persistence/RegisterRepository;)V

    iput-object v1, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->e:Lnet/veritran/vtuserapplication/core/RegisterManager;

    new-instance v1, Lnet/veritran/vtuserapplication/core/StateManager;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->a:Lnet/veritran/vtuserapplication/persistence/RepositoryManager;

    const-string v2, "STM"

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->getRepository(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/persistence/StateRepository;

    invoke-direct {v1, v0}, Lnet/veritran/vtuserapplication/core/StateManager;-><init>(Lnet/veritran/vtuserapplication/persistence/StateRepository;)V

    iput-object v1, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->f:Lnet/veritran/vtuserapplication/core/StateManager;

    new-instance v1, Lnet/veritran/vtuserapplication/core/VTTokenManager;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->a:Lnet/veritran/vtuserapplication/persistence/RepositoryManager;

    const-string v2, "TOM"

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->getRepository(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/persistence/VTTokenRepository;

    invoke-direct {v1, v0}, Lnet/veritran/vtuserapplication/core/VTTokenManager;-><init>(Lnet/veritran/vtuserapplication/persistence/VTTokenRepository;)V

    iput-object v1, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->g:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    new-instance v1, Lnet/veritran/vtuserapplication/core/VascoDPManager;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->a:Lnet/veritran/vtuserapplication/persistence/RepositoryManager;

    const-string v2, "VTM"

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->getRepository(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/persistence/VascoDPRepository;

    invoke-direct {v1, v0}, Lnet/veritran/vtuserapplication/core/VascoDPManager;-><init>(Lnet/veritran/vtuserapplication/persistence/VascoDPRepository;)V

    iput-object v1, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->i:Lnet/veritran/vtuserapplication/core/VascoDPManager;

    new-instance v1, Lnet/veritran/vtuserapplication/core/VersionManager;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->a:Lnet/veritran/vtuserapplication/persistence/RepositoryManager;

    const-string v2, "VEM"

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->getRepository(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/persistence/VersionRepository;

    invoke-direct {v1, v0}, Lnet/veritran/vtuserapplication/core/VersionManager;-><init>(Lnet/veritran/vtuserapplication/persistence/VersionRepository;)V

    iput-object v1, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    new-instance v1, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->a:Lnet/veritran/vtuserapplication/persistence/RepositoryManager;

    const-string v2, "LPM"

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->getRepository(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;

    invoke-direct {v1, v0}, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;-><init>(Lnet/veritran/vtuserapplication/persistence/VTLocalPasswordRepository;)V

    iput-object v1, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->h:Lnet/veritran/vtuserapplication/core/LocalPasswordManager;

    return-void
.end method

.method public static getInstance()Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->b:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;-><init>()V

    sput-object v0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->b:Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addArray(Lnet/veritran/vtuserapplication/core/elements/ArrayElement;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->d:Lnet/veritran/vtuserapplication/core/ArraysManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ArraysManager;->add(Lnet/veritran/vtuserapplication/core/elements/ArrayElement;)V

    return-void
.end method

.method public addRegister(Lnet/veritran/vtuserapplication/core/elements/TokenElement;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->e:Lnet/veritran/vtuserapplication/core/RegisterManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/RegisterManager;->add(Lnet/veritran/vtuserapplication/core/elements/TokenElement;)V

    return-void
.end method

.method public bulkStoreState([Lnet/veritran/vtuserapplication/comm/messages/MessageState;)V
    .locals 1

    array-length v0, p1

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->setStatesToUpdate(I)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->f:Lnet/veritran/vtuserapplication/core/StateManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/StateManager;->bulkStoreState([Lnet/veritran/vtuserapplication/comm/messages/MessageState;)V

    return-void
.end method

.method public checkForUpdates(Z)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lnet/veritran/vtuserapplication/comm/MessageManager;->getInstance()Lnet/veritran/vtuserapplication/comm/MessageManager;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/comm/MessageManager;->setNextState(I)V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getConfigurationVersionTo()I

    move-result v2

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getConfigurationVersion()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getConfigurationVersion()I

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->verifyConfigurationVersion()V

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->gotoState(I)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->getLastUpdatedStateId()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->verifyConfigurationVersion()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/comm/MessageManager;->retakeConfigurationUpdate()V

    goto :goto_0
.end method

.method public cleanAllArrays([I)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->d:Lnet/veritran/vtuserapplication/core/ArraysManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ArraysManager;->deleteAll([I)V

    return-void
.end method

.method public cleanAllRegisters([I)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->e:Lnet/veritran/vtuserapplication/core/RegisterManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/RegisterManager;->deleteAll([I)V

    return-void
.end method

.method public cleanAllRegistersUnconditionlly()V
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->e:Lnet/veritran/vtuserapplication/core/RegisterManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/RegisterManager;->deleteAll(Z)V

    return-void
.end method

.method public cleanArray(I)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->d:Lnet/veritran/vtuserapplication/core/ArraysManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ArraysManager;->deleteStorageElement(I)V

    return-void
.end method

.method public configurationUpdateFinished()Z
    .locals 8

    const/16 v7, 0xe

    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0x8

    const/4 v3, 0x1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/16 v1, 0xa

    iget-object v2, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    invoke-virtual {v2, v6}, Lnet/veritran/vtuserapplication/core/VersionManager;->getField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/16 v1, 0xb

    iget-object v2, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    invoke-virtual {v2, v7}, Lnet/veritran/vtuserapplication/core/VersionManager;->getField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/16 v1, 0x9

    iget-object v2, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    invoke-virtual {v2, v5}, Lnet/veritran/vtuserapplication/core/VersionManager;->getField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/4 v1, 0x2

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/4 v1, 0x3

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/core/VersionManager;->getField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/4 v1, 0x7

    iget-object v2, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/core/VersionManager;->getField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const-string v1, " "

    invoke-virtual {v0, v4, v1}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const-string v1, "0"

    invoke-virtual {v0, v5, v1}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const-string v1, "0"

    invoke-virtual {v0, v6, v1}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const-string v1, "0"

    invoke-virtual {v0, v7, v1}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/16 v1, 0x15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    return v3
.end method

.method public deleteState(II)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->f:Lnet/veritran/vtuserapplication/core/StateManager;

    invoke-virtual {v0, p1, p2}, Lnet/veritran/vtuserapplication/core/StateManager;->removeState(II)V

    return-void
.end method

.method public getAESWorkingKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->c:Lnet/veritran/vtuserapplication/core/ApplicationManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/ApplicationManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppAdministrativeMode()I
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->c:Lnet/veritran/vtuserapplication/core/ApplicationManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/ApplicationManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getArray(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->d:Lnet/veritran/vtuserapplication/core/ArraysManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ArraysManager;->get(I)Lnet/veritran/vtuserapplication/core/elements/ArrayElement;

    move-result-object v0

    return-object v0
.end method

.method public getArraysList(Z)[I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->d:Lnet/veritran/vtuserapplication/core/ArraysManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/ArraysManager;->getArraysList(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/VersionManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationTypeTo()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/VersionManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationVersion()I
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/VersionManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getConfigurationVersionTo()I
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/VersionManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getConnectionTimeout()I
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/VersionManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLastRespondedSequenceNumber()I
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->c:Lnet/veritran/vtuserapplication/core/ApplicationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/ApplicationManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLastSynchroSuccess()J
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/VersionManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSynchroTried()J
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/VersionManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastUpdatedBannerGroup()I
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/VersionManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLastUpdatedBannerId()I
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/VersionManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLastUpdatedImageId()I
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/VersionManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLastUpdatedStateGroup()I
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/VersionManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLastUpdatedStateId()I
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/VersionManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->e:Lnet/veritran/vtuserapplication/core/RegisterManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/RegisterManager;->get(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->c:Lnet/veritran/vtuserapplication/core/ApplicationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/ApplicationManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSessionTimeout()I
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/VersionManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStartState()I
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/VersionManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getState(II)Lnet/veritran/vtuserapplication/states/State;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/vtuserapplication/states/InvalidStateTypeException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTerminalId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->c:Lnet/veritran/vtuserapplication/core/ApplicationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/core/ApplicationManager;->getField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVTLocalPasswordHelper()Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->h:Lnet/veritran/vtuserapplication/core/LocalPasswordManager;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->c:Lnet/veritran/vtuserapplication/core/ApplicationManager;

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;->getInstance(Lnet/veritran/vtuserapplication/core/LocalPasswordManager;Lnet/veritran/vtuserapplication/core/ApplicationManager;)Lnet/veritran/vtuserapplication/model/VTLocalPasswordHelper;

    move-result-object v0

    return-object v0
.end method

.method public getVTTokenHelper()Lnet/veritran/vtuserapplication/model/VTTokenHelper;
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->g:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->c:Lnet/veritran/vtuserapplication/core/ApplicationManager;

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/model/VTTokenHelper;->getInstance(Lnet/veritran/vtuserapplication/core/VTTokenManager;Lnet/veritran/vtuserapplication/core/ApplicationManager;)Lnet/veritran/vtuserapplication/model/VTTokenHelper;

    move-result-object v0

    return-object v0
.end method

.method public hardClean(IIZ)V
    .locals 3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->a:Lnet/veritran/vtuserapplication/persistence/RepositoryManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->getRepositories()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/persistence/RepositoryInterface;

    if-eqz p3, :cond_1

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/persistence/RepositoryInterface;->delete()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lnet/veritran/vtuserapplication/persistence/RepositoryInterface;->deleteOnHardClean()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/persistence/RepositoryInterface;->delete()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->c:Lnet/veritran/vtuserapplication/core/ApplicationManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/ApplicationManager;->init()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->g:Lnet/veritran/vtuserapplication/core/VTTokenManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/VTTokenManager;->init()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->i:Lnet/veritran/vtuserapplication/core/VascoDPManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/VascoDPManager;->init()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/VersionManager;->init()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->h:Lnet/veritran/vtuserapplication/core/LocalPasswordManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/LocalPasswordManager;->init()V

    return-void
.end method

.method public hardClean(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->hardClean(IIZ)V

    return-void
.end method

.method public notifyCloseApplication()V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->a:Lnet/veritran/vtuserapplication/persistence/RepositoryManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/persistence/RepositoryManager;->notifyCloseApplication()V

    return-void
.end method

.method public processSpecialState(I)I
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->f:Lnet/veritran/vtuserapplication/core/StateManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/StateManager;->processSpecialState(I)I

    move-result v0

    return v0
.end method

.method public registersDebug()V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->e:Lnet/veritran/vtuserapplication/core/RegisterManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/RegisterManager;->debug()V

    return-void
.end method

.method public saveState(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->f:Lnet/veritran/vtuserapplication/core/StateManager;

    invoke-virtual {v0, p1, p2, p3}, Lnet/veritran/vtuserapplication/core/StateManager;->storeState(IILjava/lang/String;)V

    return-void
.end method

.method public setAESWorkingKey(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->c:Lnet/veritran/vtuserapplication/core/ApplicationManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lnet/veritran/vtuserapplication/core/ApplicationManager;->setField(ILjava/lang/String;)V

    return-void
.end method

.method public setAppAdministrativeMode(I)V
    .locals 3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->c:Lnet/veritran/vtuserapplication/core/ApplicationManager;

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

.method public setConfigurationTypeTo(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    return-void
.end method

.method public setConfigurationVersionTo(I)V
    .locals 3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    return-void
.end method

.method public setLastRespondedSequenceNumber(I)V
    .locals 3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->c:Lnet/veritran/vtuserapplication/core/ApplicationManager;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/ApplicationManager;->setField(ILjava/lang/String;)V

    return-void
.end method

.method public setLastSynchroSuccess()V
    .locals 4

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/16 v1, 0x15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    return-void
.end method

.method public setLastSynchroTried()V
    .locals 4

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/16 v1, 0x14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    return-void
.end method

.method public setLastUpdatedBannerGroup(I)V
    .locals 3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    return-void
.end method

.method public setLastUpdatedBannerId(I)V
    .locals 3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    return-void
.end method

.method public setLastUpdatedImageId(I)V
    .locals 3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    return-void
.end method

.method public setLastUpdatedStateGroup(I)V
    .locals 3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    return-void
.end method

.method public setLastUpdatedStateId(I)V
    .locals 3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    return-void
.end method

.method public setNextConnectionTimeout(I)V
    .locals 3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/16 v1, 0xe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    return-void
.end method

.method public setNextSessionTimeout(I)V
    .locals 3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/16 v1, 0xd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    return-void
.end method

.method public setNextStartState(I)V
    .locals 3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->j:Lnet/veritran/vtuserapplication/core/VersionManager;

    const/16 v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/VersionManager;->setField(ILjava/lang/String;)V

    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 3

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->c:Lnet/veritran/vtuserapplication/core/ApplicationManager;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/core/ApplicationManager;->setField(ILjava/lang/String;)V

    return-void
.end method

.method public setStatesToUpdate(I)V
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->f:Lnet/veritran/vtuserapplication/core/StateManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/core/StateManager;->setStatesToUpdate(I)V

    return-void
.end method

.method public setTerminalId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/core/ConfigurationHandlerManager;->c:Lnet/veritran/vtuserapplication/core/ApplicationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lnet/veritran/vtuserapplication/core/ApplicationManager;->setField(ILjava/lang/String;)V

    return-void
.end method
