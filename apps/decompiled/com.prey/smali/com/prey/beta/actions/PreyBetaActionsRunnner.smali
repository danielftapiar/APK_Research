.class public Lcom/prey/beta/actions/PreyBetaActionsRunnner;
.super Ljava/lang/Object;
.source "PreyBetaActionsRunnner.java"


# instance fields
.field private cmd:Ljava/lang/String;

.field myActionsRunnerThread:Ljava/lang/Thread;

.field protected running:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prey/beta/actions/PreyBetaActionsRunnner;->running:Z

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/beta/actions/PreyBetaActionsRunnner;->myActionsRunnerThread:Ljava/lang/Thread;

    .line 19
    iput-object p1, p0, Lcom/prey/beta/actions/PreyBetaActionsRunnner;->cmd:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public run(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/prey/beta/actions/PreyBetaActionsRunner;

    iget-object v2, p0, Lcom/prey/beta/actions/PreyBetaActionsRunnner;->cmd:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/prey/beta/actions/PreyBetaActionsRunner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/prey/beta/actions/PreyBetaActionsRunnner;->myActionsRunnerThread:Ljava/lang/Thread;

    .line 24
    iget-object v0, p0, Lcom/prey/beta/actions/PreyBetaActionsRunnner;->myActionsRunnerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 26
    return-void
.end method
