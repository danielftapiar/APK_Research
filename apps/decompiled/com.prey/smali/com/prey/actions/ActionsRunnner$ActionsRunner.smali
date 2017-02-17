.class Lcom/prey/actions/ActionsRunnner$ActionsRunner;
.super Ljava/lang/Object;
.source "ActionsRunnner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/actions/ActionsRunnner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionsRunner"
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private preyConfig:Lcom/prey/PreyConfig;

.field private preyControlStatus:Lcom/prey/actions/ReportActionResponse;

.field final synthetic this$0:Lcom/prey/actions/ActionsRunnner;


# direct methods
.method public constructor <init>(Lcom/prey/actions/ActionsRunnner;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/prey/actions/ActionsRunnner;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/prey/actions/ActionsRunnner$ActionsRunner;->this$0:Lcom/prey/actions/ActionsRunnner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/actions/ActionsRunnner$ActionsRunner;->preyConfig:Lcom/prey/PreyConfig;

    .line 40
    iput-object p2, p0, Lcom/prey/actions/ActionsRunnner$ActionsRunner;->ctx:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private getInstructionsAndRun(Lcom/prey/actions/PreyExecutionWaitNotify;Z)Z
    .locals 1
    .param p1, "waitNotify"    # Lcom/prey/actions/PreyExecutionWaitNotify;
    .param p2, "runIfNotMissing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 45
    iget-object v3, p0, Lcom/prey/actions/ActionsRunnner$ActionsRunner;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/prey/actions/ActionsRunnner$ActionsRunner;->preyConfig:Lcom/prey/PreyConfig;

    .line 46
    iget-object v3, p0, Lcom/prey/actions/ActionsRunnner$ActionsRunner;->preyConfig:Lcom/prey/PreyConfig;

    invoke-virtual {v3, v4}, Lcom/prey/PreyConfig;->isThisDeviceAlreadyRegisteredWithPrey(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    new-instance v2, Lcom/prey/actions/PreyExecutionWaitNotify;

    invoke-direct {v2}, Lcom/prey/actions/PreyExecutionWaitNotify;-><init>()V

    .line 48
    .local v2, "waitNotify":Lcom/prey/actions/PreyExecutionWaitNotify;
    iget-object v3, p0, Lcom/prey/actions/ActionsRunnner$ActionsRunner;->preyConfig:Lcom/prey/PreyConfig;

    invoke-virtual {v3}, Lcom/prey/PreyConfig;->isRunOnce()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    :try_start_0
    iget-object v3, p0, Lcom/prey/actions/ActionsRunnner$ActionsRunner;->preyConfig:Lcom/prey/PreyConfig;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/prey/PreyConfig;->setRunOnce(Z)V

    .line 51
    iget-object v3, p0, Lcom/prey/actions/ActionsRunnner$ActionsRunner;->preyConfig:Lcom/prey/PreyConfig;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/prey/PreyConfig;->setMissing(Z)V

    .line 53
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/prey/actions/ActionsRunnner$ActionsRunner;->getInstructionsAndRun(Lcom/prey/actions/PreyExecutionWaitNotify;Z)Z

    move-result v1

    .line 54
    .local v1, "isMissing":Z
    iget-object v3, p0, Lcom/prey/actions/ActionsRunnner$ActionsRunner;->preyControlStatus:Lcom/prey/actions/ReportActionResponse;

    invoke-virtual {v3}, Lcom/prey/actions/ReportActionResponse;->getDelay()J

    move-result-wide v4

    sput-wide v4, Lcom/prey/services/PreyRunnerService;->interval:J

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/prey/services/PreyRunnerService;->pausedAt:J

    .line 56
    const-string v3, "Prey is set to run once. Waiting for the report to be sent (if any), then finishing"

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 57
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v2}, Lcom/prey/actions/PreyExecutionWaitNotify;->doWait()V
    :try_end_0
    .catch Lcom/prey/exceptions/PreyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1    # "isMissing":Z
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/prey/actions/ActionsRunnner$ActionsRunner;->ctx:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/prey/actions/ActionsRunnner$ActionsRunner;->ctx:Landroid/content/Context;

    const-class v6, Lcom/prey/services/PreyRunnerService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 91
    const-string v3, "Prey execution has finished!!"

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/prey/util/PreyTime;->getInstance()Lcom/prey/util/PreyTime;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/prey/util/PreyTime;->setRunning(Z)V

    .line 94
    .end local v2    # "waitNotify":Lcom/prey/actions/PreyExecutionWaitNotify;
    :cond_1
    return-void

    .line 61
    .restart local v2    # "waitNotify":Lcom/prey/actions/PreyExecutionWaitNotify;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lcom/prey/exceptions/PreyException;
    const-string v3, "Error while running once: "

    invoke-static {v3, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 66
    .end local v0    # "e":Lcom/prey/exceptions/PreyException;
    :cond_2
    const/4 v1, 0x1

    .line 67
    .restart local v1    # "isMissing":Z
    iget-object v3, p0, Lcom/prey/actions/ActionsRunnner$ActionsRunner;->preyConfig:Lcom/prey/PreyConfig;

    invoke-virtual {v3, v1}, Lcom/prey/PreyConfig;->setMissing(Z)V

    .line 69
    :goto_1
    iget-object v3, p0, Lcom/prey/actions/ActionsRunnner$ActionsRunner;->preyConfig:Lcom/prey/PreyConfig;

    invoke-virtual {v3}, Lcom/prey/PreyConfig;->isMissing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, v2, v3}, Lcom/prey/actions/ActionsRunnner$ActionsRunner;->getInstructionsAndRun(Lcom/prey/actions/PreyExecutionWaitNotify;Z)Z

    move-result v1

    .line 72
    iget-object v3, p0, Lcom/prey/actions/ActionsRunnner$ActionsRunner;->preyConfig:Lcom/prey/PreyConfig;

    invoke-virtual {v3, v1}, Lcom/prey/PreyConfig;->setMissing(Z)V

    .line 73
    if-eqz v1, :cond_3

    .line 74
    iget-object v3, p0, Lcom/prey/actions/ActionsRunnner$ActionsRunner;->preyControlStatus:Lcom/prey/actions/ReportActionResponse;

    invoke-virtual {v3}, Lcom/prey/actions/ReportActionResponse;->getDelay()J

    move-result-wide v4

    sput-wide v4, Lcom/prey/services/PreyRunnerService;->interval:J

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/prey/services/PreyRunnerService;->pausedAt:J

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now waiting ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/prey/actions/ActionsRunnner$ActionsRunner;->preyControlStatus:Lcom/prey/actions/ReportActionResponse;

    invoke-virtual {v4}, Lcom/prey/actions/ReportActionResponse;->getDelay()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] minutes before next execution"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lcom/prey/actions/ActionsRunnner$ActionsRunner;->preyControlStatus:Lcom/prey/actions/ReportActionResponse;

    invoke-virtual {v3}, Lcom/prey/actions/ReportActionResponse;->getDelay()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/prey/exceptions/PreyException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 80
    :catch_1
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 79
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :try_start_2
    const-string v3, "!! Device not marked as missing anymore. Stopping interval execution."

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/prey/exceptions/PreyException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 82
    :catch_2
    move-exception v0

    .line 86
    .local v0, "e":Lcom/prey/exceptions/PreyException;
    const-string v3, "Error while running on interval: "

    invoke-static {v3, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
