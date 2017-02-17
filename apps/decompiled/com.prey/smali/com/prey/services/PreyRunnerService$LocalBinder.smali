.class public Lcom/prey/services/PreyRunnerService$LocalBinder;
.super Landroid/os/Binder;
.source "PreyRunnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/services/PreyRunnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/services/PreyRunnerService;


# direct methods
.method public constructor <init>(Lcom/prey/services/PreyRunnerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/services/PreyRunnerService;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/prey/services/PreyRunnerService$LocalBinder;->this$0:Lcom/prey/services/PreyRunnerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/prey/services/PreyRunnerService;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/prey/services/PreyRunnerService$LocalBinder;->this$0:Lcom/prey/services/PreyRunnerService;

    return-object v0
.end method
