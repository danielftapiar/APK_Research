.class final Lcom/prey/beta/actions/PreyBetaController$1;
.super Ljava/lang/Object;
.source "PreyBetaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/beta/actions/PreyBetaController;->startPrey(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cmd:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/prey/beta/actions/PreyBetaController$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/prey/beta/actions/PreyBetaController$1;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 42
    iget-object v1, p0, Lcom/prey/beta/actions/PreyBetaController$1;->val$context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/prey/beta/actions/PreyBetaController$1;->val$context:Landroid/content/Context;

    const-class v4, Lcom/prey/beta/services/PreyBetaRunnerService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 43
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/prey/beta/actions/PreyBetaController$1;->val$context:Landroid/content/Context;

    const-class v2, Lcom/prey/beta/services/PreyBetaRunnerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, "intentStart":Landroid/content/Intent;
    iget-object v1, p0, Lcom/prey/beta/actions/PreyBetaController$1;->val$cmd:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 45
    const-string v1, "cmd"

    iget-object v2, p0, Lcom/prey/beta/actions/PreyBetaController$1;->val$cmd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/prey/beta/actions/PreyBetaController$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 48
    return-void
.end method
