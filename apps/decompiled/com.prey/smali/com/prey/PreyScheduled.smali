.class public Lcom/prey/PreyScheduled;
.super Ljava/lang/Object;
.source "PreyScheduled.java"


# static fields
.field private static instance:Lcom/prey/PreyScheduled;


# instance fields
.field private alarmIntent:Landroid/app/PendingIntent;

.field private alarmMgr:Landroid/app/AlarmManager;

.field private context:Landroid/content/Context;

.field private minute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/prey/PreyScheduled;->instance:Lcom/prey/PreyScheduled;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/prey/PreyScheduled;->context:Landroid/content/Context;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/prey/PreyScheduled;->minute:I

    .line 24
    iput-object v1, p0, Lcom/prey/PreyScheduled;->alarmMgr:Landroid/app/AlarmManager;

    .line 25
    iput-object v1, p0, Lcom/prey/PreyScheduled;->alarmIntent:Landroid/app/PendingIntent;

    .line 28
    iput-object p1, p0, Lcom/prey/PreyScheduled;->context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/prey/PreyScheduled;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-class v1, Lcom/prey/PreyScheduled;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/prey/PreyScheduled;->instance:Lcom/prey/PreyScheduled;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/prey/PreyScheduled;

    invoke-direct {v0, p0}, Lcom/prey/PreyScheduled;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/prey/PreyScheduled;->instance:Lcom/prey/PreyScheduled;

    .line 35
    :cond_0
    sget-object v0, Lcom/prey/PreyScheduled;->instance:Lcom/prey/PreyScheduled;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/prey/PreyScheduled;->alarmMgr:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_________________shutdown scheduled ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/prey/PreyScheduled;->minute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]alarmIntent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/prey/PreyScheduled;->alarmMgr:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/prey/PreyScheduled;->alarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 62
    :cond_0
    return-void
.end method

.method public run(I)V
    .locals 10
    .param p1, "interval"    # I

    .prologue
    const v4, 0xea60

    const/4 v1, 0x0

    .line 39
    iget-object v8, p0, Lcom/prey/PreyScheduled;->context:Landroid/content/Context;

    .line 40
    .local v8, "ctx":Landroid/content/Context;
    iget v0, p0, Lcom/prey/PreyScheduled;->minute:I

    if-eq v0, p1, :cond_0

    invoke-static {v8}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prey/PreyConfig;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/prey/PreyScheduled;->reset()V

    .line 42
    iput p1, p0, Lcom/prey/PreyScheduled;->minute:I

    .line 43
    new-instance v9, Landroid/content/Intent;

    iget-object v0, p0, Lcom/prey/PreyScheduled;->context:Landroid/content/Context;

    const-class v2, Lcom/prey/receivers/AlarmScheduledReceiver;

    invoke-direct {v9, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v9, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/prey/PreyScheduled;->context:Landroid/content/Context;

    invoke-static {v0, v1, v9, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/prey/PreyScheduled;->alarmIntent:Landroid/app/PendingIntent;

    .line 45
    iget-object v0, p0, Lcom/prey/PreyScheduled;->context:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/prey/PreyScheduled;->alarmMgr:Landroid/app/AlarmManager;

    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 47
    .local v7, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v0, v2, :cond_1

    .line 49
    iget-object v0, p0, Lcom/prey/PreyScheduled;->alarmMgr:Landroid/app/AlarmManager;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    mul-int/2addr v4, p1

    int-to-long v4, v4

    iget-object v6, p0, Lcom/prey/PreyScheduled;->alarmIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 53
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_____________start scheduled ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/prey/PreyScheduled;->minute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] alarmIntent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 55
    .end local v7    # "calendar":Ljava/util/Calendar;
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 51
    .restart local v7    # "calendar":Ljava/util/Calendar;
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v0, p0, Lcom/prey/PreyScheduled;->alarmMgr:Landroid/app/AlarmManager;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    mul-int/2addr v4, p1

    int-to-long v4, v4

    iget-object v6, p0, Lcom/prey/PreyScheduled;->alarmIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
