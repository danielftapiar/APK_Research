.class public Lcom/prey/actions/report/ReportScheduled;
.super Ljava/lang/Object;
.source "ReportScheduled.java"


# static fields
.field private static instance:Lcom/prey/actions/report/ReportScheduled;


# instance fields
.field private alarmMgr:Landroid/app/AlarmManager;

.field private context:Landroid/content/Context;

.field private pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/prey/actions/report/ReportScheduled;->instance:Lcom/prey/actions/report/ReportScheduled;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/prey/actions/report/ReportScheduled;->context:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/prey/actions/report/ReportScheduled;->alarmMgr:Landroid/app/AlarmManager;

    .line 29
    iput-object v0, p0, Lcom/prey/actions/report/ReportScheduled;->pendingIntent:Landroid/app/PendingIntent;

    .line 33
    iput-object p1, p0, Lcom/prey/actions/report/ReportScheduled;->context:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/prey/actions/report/ReportScheduled;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const-class v1, Lcom/prey/actions/report/ReportScheduled;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/prey/actions/report/ReportScheduled;->instance:Lcom/prey/actions/report/ReportScheduled;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/prey/actions/report/ReportScheduled;

    invoke-direct {v0, p0}, Lcom/prey/actions/report/ReportScheduled;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/prey/actions/report/ReportScheduled;->instance:Lcom/prey/actions/report/ReportScheduled;

    .line 41
    :cond_0
    sget-object v0, Lcom/prey/actions/report/ReportScheduled;->instance:Lcom/prey/actions/report/ReportScheduled;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public reset()V
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Lcom/prey/actions/report/ReportScheduled;->alarmMgr:Landroid/app/AlarmManager;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/prey/actions/report/ReportScheduled;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prey/PreyConfig;->getIntervalReport()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, "minute":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_________________shutdown report ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] alarmIntent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/prey/actions/report/ReportScheduled;->alarmMgr:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/prey/actions/report/ReportScheduled;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 89
    .end local v0    # "minute":I
    :cond_0
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const v6, 0xea60

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/prey/actions/report/ReportScheduled;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prey/PreyConfig;->getIntervalReport()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 49
    .local v9, "minute":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------ReportScheduled start minute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 52
    new-instance v8, Landroid/content/Intent;

    iget-object v0, p0, Lcom/prey/actions/report/ReportScheduled;->context:Landroid/content/Context;

    const-class v1, Lcom/prey/receivers/AlarmReportReceiver;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/prey/actions/report/ReportScheduled;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/prey/actions/report/ReportScheduled;->pendingIntent:Landroid/app/PendingIntent;

    .line 56
    iget-object v0, p0, Lcom/prey/actions/report/ReportScheduled;->context:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/prey/actions/report/ReportScheduled;->alarmMgr:Landroid/app/AlarmManager;

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 60
    const-string v0, "----------setRepeating"

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/prey/actions/report/ReportScheduled;->alarmMgr:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-int v4, v6, v9

    int-to-long v4, v4

    add-long/2addr v2, v4

    mul-int v4, v6, v9

    int-to-long v4, v4

    iget-object v6, p0, Lcom/prey/actions/report/ReportScheduled;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 74
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------start report ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ReportScheduled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 79
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "minute":I
    :goto_1
    return-void

    .line 63
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "minute":I
    :cond_0
    const-string v0, "----------setInexactRepeating"

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/prey/actions/report/ReportScheduled;->alarmMgr:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-int v4, v6, v9

    int-to-long v4, v4

    add-long/2addr v2, v4

    mul-int v4, v6, v9

    int-to-long v4, v4

    iget-object v6, p0, Lcom/prey/actions/report/ReportScheduled;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "minute":I
    :catch_0
    move-exception v7

    .line 76
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------Error ReportScheduled :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    goto :goto_1
.end method
