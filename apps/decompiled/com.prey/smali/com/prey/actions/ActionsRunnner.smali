.class public Lcom/prey/actions/ActionsRunnner;
.super Ljava/lang/Object;
.source "ActionsRunnner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/actions/ActionsRunnner$ActionsRunner;
    }
.end annotation


# instance fields
.field myActionsRunnerThread:Ljava/lang/Thread;

.field protected running:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prey/actions/ActionsRunnner;->running:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/actions/ActionsRunnner;->myActionsRunnerThread:Ljava/lang/Thread;

    .line 26
    return-void
.end method


# virtual methods
.method public run(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/prey/actions/ActionsRunnner$ActionsRunner;

    invoke-direct {v1, p0, p1}, Lcom/prey/actions/ActionsRunnner$ActionsRunner;-><init>(Lcom/prey/actions/ActionsRunnner;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/prey/actions/ActionsRunnner;->myActionsRunnerThread:Ljava/lang/Thread;

    .line 30
    iget-object v0, p0, Lcom/prey/actions/ActionsRunnner;->myActionsRunnerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 32
    return-void
.end method
