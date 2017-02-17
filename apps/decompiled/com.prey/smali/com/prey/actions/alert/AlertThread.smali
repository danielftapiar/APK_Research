.class public Lcom/prey/actions/alert/AlertThread;
.super Ljava/lang/Thread;
.source "AlertThread.java"


# instance fields
.field private ctx:Landroid/content/Context;

.field private description:Ljava/lang/String;

.field private messageId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "messageId"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/prey/actions/alert/AlertThread;->ctx:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/prey/actions/alert/AlertThread;->description:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/prey/actions/alert/AlertThread;->messageId:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 34
    :try_start_0
    const-string v5, "started alert"

    invoke-static {v5}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 35
    const-string v4, "title"

    .line 36
    .local v4, "title":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "title_message"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v5, "alert_message"

    iget-object v6, p0, Lcom/prey/actions/alert/AlertThread;->description:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/prey/actions/alert/AlertThread;->ctx:Landroid/content/Context;

    const-class v6, Lcom/prey/activities/PopUpAlertActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v3, "popup":Landroid/content/Intent;
    const/high16 v5, 0x8000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 44
    const-string v5, "description_message"

    iget-object v6, p0, Lcom/prey/actions/alert/AlertThread;->description:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object v5, p0, Lcom/prey/actions/alert/AlertThread;->ctx:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 47
    iget-object v5, p0, Lcom/prey/actions/alert/AlertThread;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/prey/PreyConfig;->setNextAlert(Z)V

    .line 49
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v5

    iget-object v6, p0, Lcom/prey/actions/alert/AlertThread;->ctx:Landroid/content/Context;

    const-string v7, "processed"

    iget-object v8, p0, Lcom/prey/actions/alert/AlertThread;->messageId:Ljava/lang/String;

    const-string v9, "start"

    const-string v10, "alert"

    const-string v11, "started"

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, "i":I
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/prey/PreyStatus;->getInstance()Lcom/prey/PreyStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prey/PreyStatus;->isPreyPopUpOnclick()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0xa

    if-ge v2, v5, :cond_0

    .line 53
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Lcom/prey/actions/alert/AlertThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :catch_0
    move-exception v5

    .line 58
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v5

    iget-object v6, p0, Lcom/prey/actions/alert/AlertThread;->ctx:Landroid/content/Context;

    const-string v7, "start"

    const-string v8, "alert"

    const-string v9, "stopped"

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    .line 59
    iget-object v5, p0, Lcom/prey/actions/alert/AlertThread;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v5

    const-string v6, "alert_started"

    invoke-virtual {v5, v6}, Lcom/prey/PreyConfig;->setLastEvent(Ljava/lang/String;)V

    .line 60
    const-string v5, "stopped alert"

    invoke-static {v5}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 65
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "i":I
    .end local v3    # "popup":Landroid/content/Intent;
    .end local v4    # "title":Ljava/lang/String;
    :goto_1
    return-void

    .line 61
    :catch_1
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed alert: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v5

    iget-object v6, p0, Lcom/prey/actions/alert/AlertThread;->ctx:Landroid/content/Context;

    iget-object v7, p0, Lcom/prey/actions/alert/AlertThread;->messageId:Ljava/lang/String;

    const-string v8, "start"

    const-string v9, "alert"

    const-string v10, "failed"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    goto :goto_1
.end method
