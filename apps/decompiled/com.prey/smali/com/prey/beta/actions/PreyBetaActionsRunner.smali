.class public Lcom/prey/beta/actions/PreyBetaActionsRunner;
.super Ljava/lang/Object;
.source "PreyBetaActionsRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cmd:Ljava/lang/String;

.field private ctx:Landroid/content/Context;

.field private messageId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cmd"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/prey/beta/actions/PreyBetaActionsRunner;->ctx:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/prey/beta/actions/PreyBetaActionsRunner;->cmd:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {p0}, Lcom/prey/beta/actions/PreyBetaActionsRunner;->getInstructions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getInstructions(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 95
    const-string v2, "______________________________"

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 96
    const-string v2, "_______getInstructions________"

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, "jsonObject":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :try_start_0
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/prey/net/PreyWebServices;->getActionsJsonToPerform(Landroid/content/Context;)Ljava/util/List;
    :try_end_0
    .catch Lcom/prey/exceptions/PreyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 104
    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Lcom/prey/exceptions/PreyException;
    const-string v2, "Exception getting device\'s xml instruction set"

    invoke-static {v2, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    throw v0
.end method

.method private static getInstructionsNewThread(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v2, Lcom/prey/json/parser/JSONParser;

    invoke-direct {v2}, Lcom/prey/json/parser/JSONParser;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/prey/json/parser/JSONParser;->getJSONFromTxt(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 81
    .local v1, "jsonObject":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    move-object v0, p0

    .line 82
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/prey/beta/actions/PreyBetaActionsRunner$1;

    invoke-direct {v3, v0}, Lcom/prey/beta/actions/PreyBetaActionsRunner$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 90
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 91
    return-object v1
.end method

.method private runInstructions(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/prey/actions/HttpDataService;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "jsonObject":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    const/4 v0, 0x0

    .line 109
    .local v0, "listData":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/HttpDataService;>;"
    iget-object v1, p0, Lcom/prey/beta/actions/PreyBetaActionsRunner;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/prey/actions/observer/ActionsController;->getInstance(Landroid/content/Context;)Lcom/prey/actions/observer/ActionsController;

    move-result-object v1

    iget-object v2, p0, Lcom/prey/beta/actions/PreyBetaActionsRunner;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/prey/actions/observer/ActionsController;->runActionJson(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 110
    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 45
    iget-object v6, p0, Lcom/prey/beta/actions/PreyBetaActionsRunner;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/prey/PreyConfig;->isThisDeviceAlreadyRegisteredWithPrey(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 46
    iget-object v6, p0, Lcom/prey/beta/actions/PreyBetaActionsRunner;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lcom/prey/managers/PreyTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/prey/managers/PreyTelephonyManager;

    move-result-object v4

    .line 47
    .local v4, "preyTelephony":Lcom/prey/managers/PreyTelephonyManager;
    iget-object v6, p0, Lcom/prey/beta/actions/PreyBetaActionsRunner;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lcom/prey/managers/PreyConnectivityManager;->getInstance(Landroid/content/Context;)Lcom/prey/managers/PreyConnectivityManager;

    move-result-object v3

    .line 48
    .local v3, "preyConnectivity":Lcom/prey/managers/PreyConnectivityManager;
    const/4 v0, 0x0

    .line 50
    .local v0, "connection":Z
    const/4 v2, 0x0

    .line 52
    .local v2, "jsonObject":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :try_start_0
    invoke-virtual {v4}, Lcom/prey/managers/PreyTelephonyManager;->isDataConnectivityEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Lcom/prey/managers/PreyConnectivityManager;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_5

    :cond_0
    move v0, v5

    .line 54
    :goto_0
    if-eqz v0, :cond_3

    .line 56
    :try_start_1
    iget-object v5, p0, Lcom/prey/beta/actions/PreyBetaActionsRunner;->cmd:Ljava/lang/String;

    if-eqz v5, :cond_1

    const-string v5, ""

    iget-object v6, p0, Lcom/prey/beta/actions/PreyBetaActionsRunner;->cmd:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 57
    :cond_1
    iget-object v5, p0, Lcom/prey/beta/actions/PreyBetaActionsRunner;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/prey/beta/actions/PreyBetaActionsRunner;->getInstructions(Landroid/content/Context;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 63
    :goto_1
    if-eqz v2, :cond_2

    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_7

    .line 64
    :cond_2
    const-string v5, "nothing"

    invoke-static {v5}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 73
    :cond_3
    :goto_2
    const-string v5, "Prey execution has finished!!"

    invoke-static {v5}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 76
    .end local v0    # "connection":Z
    .end local v2    # "jsonObject":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .end local v3    # "preyConnectivity":Lcom/prey/managers/PreyConnectivityManager;
    .end local v4    # "preyTelephony":Lcom/prey/managers/PreyTelephonyManager;
    :cond_4
    iget-object v5, p0, Lcom/prey/beta/actions/PreyBetaActionsRunner;->ctx:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/prey/beta/actions/PreyBetaActionsRunner;->ctx:Landroid/content/Context;

    const-class v8, Lcom/prey/beta/services/PreyBetaRunnerService;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 77
    return-void

    .line 52
    .restart local v0    # "connection":Z
    .restart local v2    # "jsonObject":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .restart local v3    # "preyConnectivity":Lcom/prey/managers/PreyConnectivityManager;
    .restart local v4    # "preyTelephony":Lcom/prey/managers/PreyTelephonyManager;
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :cond_6
    :try_start_3
    iget-object v5, p0, Lcom/prey/beta/actions/PreyBetaActionsRunner;->ctx:Landroid/content/Context;

    iget-object v6, p0, Lcom/prey/beta/actions/PreyBetaActionsRunner;->cmd:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/prey/beta/actions/PreyBetaActionsRunner;->getInstructionsNewThread(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    goto :goto_1

    .line 66
    :cond_7
    :try_start_4
    const-string v5, "runInstructions"

    invoke-static {v5}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, v2}, Lcom/prey/beta/actions/PreyBetaActionsRunner;->runInstructions(Ljava/util/List;)Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error, because:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 61
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public run()V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/prey/beta/actions/PreyBetaActionsRunner;->execute()V

    .line 41
    return-void
.end method
