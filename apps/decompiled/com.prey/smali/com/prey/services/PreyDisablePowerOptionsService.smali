.class public Lcom/prey/services/PreyDisablePowerOptionsService;
.super Landroid/app/Service;
.source "PreyDisablePowerOptionsService.java"


# instance fields
.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    const-string v0, "PreyDisablePowerOptionsService  create ________"

    invoke-static {v0}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/prey/receivers/PreyDisablePowerOptionsReceiver;

    invoke-direct {v0}, Lcom/prey/receivers/PreyDisablePowerOptionsReceiver;-><init>()V

    iput-object v0, p0, Lcom/prey/services/PreyDisablePowerOptionsService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 36
    return-void
.end method

.method private schedule()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x2710

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 80
    const-string v3, "PreyDisablePowerOptionsService  schedule_________"

    invoke-static {v3}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 81
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/prey/services/PreyDisablePowerOptionsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/prey/receivers/AlarmDisablePowerReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/prey/services/PreyDisablePowerOptionsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 83
    .local v0, "alarmDisablePower":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/prey/services/PreyDisablePowerOptionsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 84
    .local v1, "alarmMgr":Landroid/app/AlarmManager;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_0

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v8

    invoke-virtual {v1, v6, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v8

    invoke-virtual {v1, v6, v4, v5, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 49
    const-string v2, "PreyDisablePowerOptionsService  onDestroy__________"

    invoke-static {v2}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/prey/services/PreyDisablePowerOptionsService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/prey/services/PreyDisablePowerOptionsService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/prey/services/PreyDisablePowerOptionsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prey/PreyConfig;->isDisablePowerOptions()Z

    move-result v0

    .line 56
    .local v0, "disablePowerOptions":Z
    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/prey/services/PreyDisablePowerOptionsService;->schedule()V

    .line 60
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/prey/services/PreyDisablePowerOptionsService;->stopForeground(Z)V

    .line 61
    return-void

    .line 52
    .end local v0    # "disablePowerOptions":Z
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error, cause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 44
    const-string v0, "PreyDisablePowerOptionsService  start ________"

    invoke-static {v0}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "i"    # I
    .param p3, "j"    # I

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/prey/services/PreyDisablePowerOptionsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prey/PreyConfig;->isDisablePowerOptions()Z

    move-result v0

    .line 65
    .local v0, "disablePowerOptions":Z
    if-eqz v0, :cond_0

    .line 66
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "intentfilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/prey/services/PreyDisablePowerOptionsService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/prey/services/PreyDisablePowerOptionsService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    .end local v1    # "intentfilter":Landroid/content/IntentFilter;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/prey/services/PreyDisablePowerOptionsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prey/PreyConfig;->isDisablePowerOptions()Z

    move-result v0

    .line 74
    .local v0, "disablePowerOptions":Z
    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/prey/services/PreyDisablePowerOptionsService;->schedule()V

    .line 77
    :cond_0
    return-void
.end method
