.class public Lcom/prey/services/PreyBootService$LocalBinder;
.super Landroid/os/Binder;
.source "PreyBootService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/services/PreyBootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/services/PreyBootService;


# direct methods
.method public constructor <init>(Lcom/prey/services/PreyBootService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/services/PreyBootService;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/prey/services/PreyBootService$LocalBinder;->this$0:Lcom/prey/services/PreyBootService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/prey/services/PreyBootService;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/prey/services/PreyBootService$LocalBinder;->this$0:Lcom/prey/services/PreyBootService;

    return-object v0
.end method
