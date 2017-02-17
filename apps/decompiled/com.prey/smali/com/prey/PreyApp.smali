.class public Lcom/prey/PreyApp;
.super Landroid/app/Application;
.source "PreyApp.java"


# instance fields
.field public mLastPause:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 25
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 27
    const-wide/16 v6, 0x0

    :try_start_0
    iput-wide v6, p0, Lcom/prey/PreyApp;->mLastPause:J

    .line 28
    const-string v6, "__________________"

    invoke-static {v6}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 29
    const-string v6, "Application launched!"

    invoke-static {v6}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 30
    const-string v6, "__________________"

    invoke-static {v6}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 32
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/PreyConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "deviceKey":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InstallationDate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prey/PreyConfig;->getInstallationDate()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 35
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/PreyConfig;->getInstallationDate()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-nez v6, :cond_0

    .line 36
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/prey/PreyConfig;->setInstallationDate(J)V

    .line 37
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v6

    const/16 v7, 0x7d0

    invoke-virtual {v6, p0, v7}, Lcom/prey/net/PreyWebServices;->sendEvent(Landroid/content/Context;I)V

    .line 39
    :cond_0
    const/16 v6, 0x10

    invoke-static {v6}, Lcom/prey/PreyUtils;->randomAlphaNumeric(I)Ljava/lang/String;

    move-result-object v5

    .line 40
    .local v5, "sessionId":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#######sessionId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 41
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/prey/PreyConfig;->setSessionId(Ljava/lang/String;)V

    .line 42
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/PreyConfig;->getPreyVersion()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "PreyVersion":Ljava/lang/String;
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/PreyConfig;->getPreferencePreyVersion()Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "preferencePreyVersion":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 45
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/prey/PreyConfig;->setPreferencePreyVersion(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, p0, v7}, Lcom/prey/net/PreyWebServices;->sendEvent(Landroid/content/Context;I)V

    .line 48
    :cond_1
    if-eqz v1, :cond_2

    const-string v6, ""

    if-eq v1, v6, :cond_2

    .line 49
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/PreyConfig;->registerC2dm()V

    .line 50
    new-instance v6, Lcom/prey/PreyApp$1;

    invoke-direct {v6, p0}, Lcom/prey/PreyApp$1;-><init>(Lcom/prey/PreyApp;)V

    .line 54
    invoke-virtual {v6}, Lcom/prey/PreyApp$1;->start()V

    .line 55
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/prey/actions/fileretrieval/FileretrievalService;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v3, "intentFile":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/prey/PreyApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 57
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/PreyConfig;->isMissing()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 58
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/PreyConfig;->getIntervalReport()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v6, ""

    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prey/PreyConfig;->getIntervalReport()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 59
    invoke-static {p0}, Lcom/prey/actions/report/ReportScheduled;->getInstance(Landroid/content/Context;)Lcom/prey/actions/report/ReportScheduled;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/actions/report/ReportScheduled;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "PreyVersion":Ljava/lang/String;
    .end local v1    # "deviceKey":Ljava/lang/String;
    .end local v3    # "intentFile":Landroid/content/Intent;
    .end local v4    # "preferencePreyVersion":Ljava/lang/String;
    .end local v5    # "sessionId":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error PreyApp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
