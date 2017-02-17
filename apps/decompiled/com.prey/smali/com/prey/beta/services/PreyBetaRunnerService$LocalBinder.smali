.class public Lcom/prey/beta/services/PreyBetaRunnerService$LocalBinder;
.super Landroid/os/Binder;
.source "PreyBetaRunnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/beta/services/PreyBetaRunnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/beta/services/PreyBetaRunnerService;


# direct methods
.method public constructor <init>(Lcom/prey/beta/services/PreyBetaRunnerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/beta/services/PreyBetaRunnerService;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/prey/beta/services/PreyBetaRunnerService$LocalBinder;->this$0:Lcom/prey/beta/services/PreyBetaRunnerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/prey/beta/services/PreyBetaRunnerService;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/prey/beta/services/PreyBetaRunnerService$LocalBinder;->this$0:Lcom/prey/beta/services/PreyBetaRunnerService;

    return-object v0
.end method
