.class final Lcom/prey/beta/actions/PreyBetaActionsRunner$1;
.super Ljava/lang/Object;
.source "PreyBetaActionsRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/beta/actions/PreyBetaActionsRunner;->getInstructionsNewThread(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/prey/beta/actions/PreyBetaActionsRunner$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    :try_start_0
    const-string v0, "_________New Thread"

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/prey/beta/actions/PreyBetaActionsRunner$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/prey/beta/actions/PreyBetaActionsRunner;->getInstructions(Landroid/content/Context;)Ljava/util/List;
    invoke-static {v0}, Lcom/prey/beta/actions/PreyBetaActionsRunner;->access$000(Landroid/content/Context;)Ljava/util/List;
    :try_end_0
    .catch Lcom/prey/exceptions/PreyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0
.end method
