.class public Lcom/prey/actions/observer/JobsQueue;
.super Ljava/lang/Object;
.source "JobsQueue.java"


# instance fields
.field private controller:Lcom/prey/actions/observer/ActionsController;

.field private jobs:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Lcom/prey/actions/observer/JobsGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/prey/actions/observer/ActionsController;)V
    .locals 1
    .param p1, "controller"    # Lcom/prey/actions/observer/ActionsController;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/prey/actions/observer/JobsQueue;->jobs:Ljava/util/Hashtable;

    .line 27
    iput-object p1, p0, Lcom/prey/actions/observer/JobsQueue;->controller:Lcom/prey/actions/observer/ActionsController;

    .line 28
    return-void
.end method


# virtual methods
.method public addAndRunJobGroup(Lcom/prey/actions/observer/JobsGroup;Landroid/content/Context;Z)V
    .locals 4
    .param p1, "jobsGroup"    # Lcom/prey/actions/observer/JobsGroup;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "isMissing"    # Z

    .prologue
    .line 38
    invoke-virtual {p0, p2}, Lcom/prey/actions/observer/JobsQueue;->finishRunningJobs(Landroid/content/Context;)V

    .line 39
    iget-object v0, p0, Lcom/prey/actions/observer/JobsQueue;->jobs:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/prey/actions/observer/JobsGroup;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p1, p0, p3}, Lcom/prey/actions/observer/JobsGroup;->run(Lcom/prey/actions/observer/JobsQueue;Z)V

    .line 41
    return-void
.end method

.method protected finishRunningJobs(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 49
    iget-object v3, p0, Lcom/prey/actions/observer/JobsQueue;->jobs:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 51
    .local v2, "jobsRunningId":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 53
    .local v1, "jobId":Ljava/lang/Long;
    iget-object v3, p0, Lcom/prey/actions/observer/JobsQueue;->jobs:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prey/actions/observer/JobsGroup;

    .line 54
    .local v0, "jobGroup":Lcom/prey/actions/observer/JobsGroup;
    iget-object v3, p0, Lcom/prey/actions/observer/JobsQueue;->controller:Lcom/prey/actions/observer/ActionsController;

    invoke-virtual {v0}, Lcom/prey/actions/observer/JobsGroup;->getResults()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/prey/actions/observer/ActionsController;->jobGroupFinished(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 55
    invoke-virtual {v0}, Lcom/prey/actions/observer/JobsGroup;->destroy()V

    .line 56
    iget-object v3, p0, Lcom/prey/actions/observer/JobsQueue;->jobs:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    .end local v0    # "jobGroup":Lcom/prey/actions/observer/JobsGroup;
    .end local v1    # "jobId":Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method public groupFinished(Lcom/prey/actions/observer/JobsGroup;Landroid/content/Context;)V
    .locals 4
    .param p1, "jobsGroup"    # Lcom/prey/actions/observer/JobsGroup;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/prey/actions/observer/JobsQueue;->jobs:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/prey/actions/observer/JobsGroup;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/prey/actions/observer/JobsQueue;->controller:Lcom/prey/actions/observer/ActionsController;

    invoke-virtual {p1}, Lcom/prey/actions/observer/JobsGroup;->getResults()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/prey/actions/observer/ActionsController;->jobGroupFinished(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 74
    return-void
.end method
