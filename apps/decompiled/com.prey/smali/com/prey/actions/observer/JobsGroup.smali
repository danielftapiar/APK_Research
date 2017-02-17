.class public Lcom/prey/actions/observer/JobsGroup;
.super Ljava/lang/Object;
.source "JobsGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/actions/observer/JobsGroup$PreyActionRunner;
    }
.end annotation


# instance fields
.field private actionModules:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Lcom/prey/actions/observer/ActionJob;",
            ">;"
        }
    .end annotation
.end field

.field private creationTime:J

.field private ctx:Landroid/content/Context;

.field private finished:Z

.field private id:J

.field private modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/prey/actions/observer/ActionJob;",
            ">;"
        }
    .end annotation
.end field

.field private queue:Lcom/prey/actions/observer/JobsQueue;

.field private reportModules:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Lcom/prey/actions/observer/ActionJob;",
            ">;"
        }
    .end annotation
.end field

.field private running:Z

.field private runningJobs:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private syncResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/prey/actions/observer/ActionResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 3
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/prey/actions/PreyAction;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/prey/actions/PreyAction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-direct {p0, p2}, Lcom/prey/actions/observer/JobsGroup;->initialize(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prey/actions/PreyAction;

    .line 52
    .local v0, "preyAction":Lcom/prey/actions/PreyAction;
    new-instance v2, Lcom/prey/actions/observer/ActionJob;

    invoke-direct {v2, v0, p0, p2}, Lcom/prey/actions/observer/ActionJob;-><init>(Lcom/prey/actions/PreyAction;Lcom/prey/actions/observer/JobsGroup;Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/prey/actions/observer/JobsGroup;->addJobToGroup(Lcom/prey/actions/observer/ActionJob;)V

    goto :goto_0

    .line 54
    .end local v0    # "preyAction":Lcom/prey/actions/PreyAction;
    :cond_0
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 57
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 58
    .local v0, "rnd":Ljava/util/Random;
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/prey/actions/observer/JobsGroup;->id:J

    .line 59
    iput-object p1, p0, Lcom/prey/actions/observer/JobsGroup;->ctx:Landroid/content/Context;

    .line 60
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/prey/actions/observer/JobsGroup;->actionModules:Ljava/util/Hashtable;

    .line 61
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/prey/actions/observer/JobsGroup;->reportModules:Ljava/util/Hashtable;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/prey/actions/observer/JobsGroup;->creationTime:J

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/prey/actions/observer/JobsGroup;->syncResults:Ljava/util/ArrayList;

    .line 64
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/prey/actions/observer/JobsGroup;->runningJobs:Ljava/util/Hashtable;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/prey/actions/observer/JobsGroup;->modules:Ljava/util/List;

    .line 66
    return-void
.end method


# virtual methods
.method public addJobToGroup(Lcom/prey/actions/observer/ActionJob;)V
    .locals 4
    .param p1, "job"    # Lcom/prey/actions/observer/ActionJob;

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/prey/actions/observer/ActionJob;->isReportModuleJob()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/prey/actions/observer/JobsGroup;->reportModules:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/prey/actions/observer/ActionJob;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/prey/actions/observer/JobsGroup;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/prey/actions/observer/JobsGroup;->actionModules:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/prey/actions/observer/ActionJob;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 155
    iget-object v3, p0, Lcom/prey/actions/observer/JobsGroup;->runningJobs:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 157
    .local v2, "runningJobsId":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 159
    .local v0, "jobId":Ljava/lang/Long;
    iget-object v3, p0, Lcom/prey/actions/observer/JobsGroup;->runningJobs:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 160
    .local v1, "runningJob":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 163
    .end local v0    # "jobId":Ljava/lang/Long;
    .end local v1    # "runningJob":Ljava/lang/Thread;
    :cond_1
    return-void
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/prey/actions/observer/JobsGroup;->creationTime:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/prey/actions/observer/JobsGroup;->id:J

    return-wide v0
.end method

.method public getResults()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/prey/actions/observer/ActionResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/prey/actions/observer/JobsGroup;->syncResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasReportModules()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/prey/actions/observer/JobsGroup;->reportModules:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/prey/actions/observer/JobsGroup;->finished:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/prey/actions/observer/JobsGroup;->running:Z

    return v0
.end method

.method public jobFinished(Lcom/prey/actions/observer/ActionJob;)V
    .locals 4
    .param p1, "job"    # Lcom/prey/actions/observer/ActionJob;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/prey/actions/observer/JobsGroup;->syncResults:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/prey/actions/observer/ActionJob;->getResult()Lcom/prey/actions/observer/ActionResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/prey/actions/observer/JobsGroup;->runningJobs:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/prey/actions/observer/ActionJob;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/prey/actions/observer/JobsGroup;->runningJobs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/prey/actions/observer/JobsGroup;->queue:Lcom/prey/actions/observer/JobsQueue;

    iget-object v1, p0, Lcom/prey/actions/observer/JobsGroup;->ctx:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lcom/prey/actions/observer/JobsQueue;->groupFinished(Lcom/prey/actions/observer/JobsGroup;Landroid/content/Context;)V

    .line 128
    :cond_0
    return-void
.end method

.method public run(Lcom/prey/actions/observer/JobsQueue;Z)V
    .locals 8
    .param p1, "queue"    # Lcom/prey/actions/observer/JobsQueue;
    .param p2, "isMissing"    # Z

    .prologue
    .line 77
    iput-object p1, p0, Lcom/prey/actions/observer/JobsGroup;->queue:Lcom/prey/actions/observer/JobsQueue;

    .line 80
    new-instance v3, Lcom/prey/actions/PreyExecutionWaitNotify;

    invoke-direct {v3}, Lcom/prey/actions/PreyExecutionWaitNotify;-><init>()V

    .line 81
    .local v3, "waitNotifyPriority":Lcom/prey/actions/PreyExecutionWaitNotify;
    iget-object v4, p0, Lcom/prey/actions/observer/JobsGroup;->modules:Ljava/util/List;

    new-instance v5, Lcom/prey/actions/compare/CompareAction;

    invoke-direct {v5}, Lcom/prey/actions/compare/CompareAction;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 83
    iget-object v4, p0, Lcom/prey/actions/observer/JobsGroup;->modules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prey/actions/observer/ActionJob;

    .line 85
    .local v0, "actionJob":Lcom/prey/actions/observer/ActionJob;
    invoke-virtual {v0}, Lcom/prey/actions/observer/ActionJob;->isReportModuleJob()Z

    move-result v5

    if-nez v5, :cond_2

    .line 86
    invoke-virtual {v0}, Lcom/prey/actions/observer/ActionJob;->getAction()Lcom/prey/actions/PreyAction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prey/actions/PreyAction;->getPriority()I

    move-result v5

    if-lez v5, :cond_1

    .line 87
    invoke-virtual {v0}, Lcom/prey/actions/observer/ActionJob;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 88
    .local v2, "syncJobId":Ljava/lang/Long;
    new-instance v1, Ljava/lang/Thread;

    new-instance v5, Lcom/prey/actions/observer/JobsGroup$PreyActionRunner;

    iget-object v6, p0, Lcom/prey/actions/observer/JobsGroup;->ctx:Landroid/content/Context;

    invoke-direct {v5, p0, v0, v6, v3}, Lcom/prey/actions/observer/JobsGroup$PreyActionRunner;-><init>(Lcom/prey/actions/observer/JobsGroup;Lcom/prey/actions/observer/ActionJob;Landroid/content/Context;Lcom/prey/actions/PreyExecutionWaitNotify;)V

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 89
    .local v1, "actionJobRun":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 91
    .end local v1    # "actionJobRun":Ljava/lang/Thread;
    .end local v2    # "syncJobId":Ljava/lang/Long;
    :cond_1
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 95
    :cond_2
    if-eqz p2, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/prey/actions/observer/ActionJob;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 97
    .restart local v2    # "syncJobId":Ljava/lang/Long;
    new-instance v1, Ljava/lang/Thread;

    new-instance v5, Lcom/prey/actions/observer/JobsGroup$PreyActionRunner;

    iget-object v6, p0, Lcom/prey/actions/observer/JobsGroup;->ctx:Landroid/content/Context;

    invoke-direct {v5, p0, v0, v6, v3}, Lcom/prey/actions/observer/JobsGroup$PreyActionRunner;-><init>(Lcom/prey/actions/observer/JobsGroup;Lcom/prey/actions/observer/ActionJob;Landroid/content/Context;Lcom/prey/actions/PreyExecutionWaitNotify;)V

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 98
    .restart local v1    # "actionJobRun":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 99
    iget-object v5, p0, Lcom/prey/actions/observer/JobsGroup;->runningJobs:Ljava/util/Hashtable;

    invoke-virtual {v5, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    .end local v0    # "actionJob":Lcom/prey/actions/observer/ActionJob;
    .end local v1    # "actionJobRun":Ljava/lang/Thread;
    .end local v2    # "syncJobId":Ljava/lang/Long;
    :cond_3
    invoke-virtual {v3}, Lcom/prey/actions/PreyExecutionWaitNotify;->doNotify()V

    .line 121
    return-void
.end method
