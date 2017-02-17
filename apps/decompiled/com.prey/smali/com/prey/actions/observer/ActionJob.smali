.class public Lcom/prey/actions/observer/ActionJob;
.super Ljava/lang/Object;
.source "ActionJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private action:Lcom/prey/actions/PreyAction;

.field private ctx:Landroid/content/Context;

.field private finished:Z

.field private id:J

.field private jobsGroup:Lcom/prey/actions/observer/JobsGroup;

.field private reportModuleJob:Z

.field private result:Lcom/prey/actions/observer/ActionResult;

.field private shouldStop:Z

.field private startedAt:J


# direct methods
.method public constructor <init>(Lcom/prey/actions/PreyAction;Lcom/prey/actions/observer/JobsGroup;Landroid/content/Context;)V
    .locals 3
    .param p1, "actionToRun"    # Lcom/prey/actions/PreyAction;
    .param p2, "jobsGroup"    # Lcom/prey/actions/observer/JobsGroup;
    .param p3, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v2, p0, Lcom/prey/actions/observer/ActionJob;->finished:Z

    .line 38
    iput-object p1, p0, Lcom/prey/actions/observer/ActionJob;->action:Lcom/prey/actions/PreyAction;

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/prey/actions/observer/ActionJob;->id:J

    .line 40
    invoke-virtual {p1}, Lcom/prey/actions/PreyAction;->isSyncAction()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prey/actions/observer/ActionJob;->reportModuleJob:Z

    .line 41
    iput-object p2, p0, Lcom/prey/actions/observer/ActionJob;->jobsGroup:Lcom/prey/actions/observer/JobsGroup;

    .line 42
    iput-boolean v2, p0, Lcom/prey/actions/observer/ActionJob;->shouldStop:Z

    .line 43
    iput-object p3, p0, Lcom/prey/actions/observer/ActionJob;->ctx:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private getRandomId()J
    .locals 4

    .prologue
    .line 106
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 107
    .local v0, "rnd":Ljava/util/Random;
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public finish(Lcom/prey/actions/observer/ActionResult;)V
    .locals 1
    .param p1, "result"    # Lcom/prey/actions/observer/ActionResult;

    .prologue
    const/4 v0, 0x1

    .line 95
    iput-object p1, p0, Lcom/prey/actions/observer/ActionJob;->result:Lcom/prey/actions/observer/ActionResult;

    .line 96
    iput-boolean v0, p0, Lcom/prey/actions/observer/ActionJob;->finished:Z

    .line 97
    iput-boolean v0, p0, Lcom/prey/actions/observer/ActionJob;->shouldStop:Z

    .line 98
    iget-object v0, p0, Lcom/prey/actions/observer/ActionJob;->jobsGroup:Lcom/prey/actions/observer/JobsGroup;

    invoke-virtual {v0, p0}, Lcom/prey/actions/observer/JobsGroup;->jobFinished(Lcom/prey/actions/observer/ActionJob;)V

    .line 99
    return-void
.end method

.method public getAction()Lcom/prey/actions/PreyAction;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/prey/actions/observer/ActionJob;->action:Lcom/prey/actions/PreyAction;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/prey/actions/observer/ActionJob;->id:J

    return-wide v0
.end method

.method public getResult()Lcom/prey/actions/observer/ActionResult;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/prey/actions/observer/ActionJob;->result:Lcom/prey/actions/observer/ActionResult;

    return-object v0
.end method

.method public getStartedAt()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/prey/actions/observer/ActionJob;->startedAt:J

    return-wide v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/prey/actions/observer/ActionJob;->finished:Z

    return v0
.end method

.method public isReportModuleJob()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/prey/actions/observer/ActionJob;->reportModuleJob:Z

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 72
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/prey/actions/observer/ActionJob;->startedAt:J

    .line 73
    iget-object v1, p0, Lcom/prey/actions/observer/ActionJob;->action:Lcom/prey/actions/PreyAction;

    iget-object v2, p0, Lcom/prey/actions/observer/ActionJob;->ctx:Landroid/content/Context;

    invoke-virtual {v1, p0, v2}, Lcom/prey/actions/PreyAction;->execute(Lcom/prey/actions/observer/ActionJob;Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/prey/exceptions/PreyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lcom/prey/exceptions/PreyException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while running job ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/prey/actions/observer/ActionJob;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/prey/exceptions/PreyException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAction(Lcom/prey/actions/PreyAction;)V
    .locals 0
    .param p1, "action"    # Lcom/prey/actions/PreyAction;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/prey/actions/observer/ActionJob;->action:Lcom/prey/actions/PreyAction;

    .line 60
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/prey/actions/observer/ActionJob;->id:J

    .line 68
    return-void
.end method

.method public setStartedAt(J)V
    .locals 1
    .param p1, "startedAt"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/prey/actions/observer/ActionJob;->startedAt:J

    .line 52
    return-void
.end method
