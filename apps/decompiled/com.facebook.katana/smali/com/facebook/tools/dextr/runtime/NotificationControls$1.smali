.class Lcom/facebook/tools/dextr/runtime/NotificationControls$1;
.super Ljava/lang/Object;
.source "NotificationControls.java"

# interfaces
.implements Lcom/facebook/content/ActionReceiver;


# instance fields
.field final synthetic a:Lcom/facebook/tools/dextr/runtime/NotificationControls;


# direct methods
.method constructor <init>(Lcom/facebook/tools/dextr/runtime/NotificationControls;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls$1;->a:Lcom/facebook/tools/dextr/runtime/NotificationControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/content/BroadcastReceiverLike;)V
    .locals 2

    .prologue
    .line 63
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls$1;->a:Lcom/facebook/tools/dextr/runtime/NotificationControls;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls$1;->a:Lcom/facebook/tools/dextr/runtime/NotificationControls;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->a(Lcom/facebook/tools/dextr/runtime/NotificationControls;)Lcom/facebook/tools/dextr/runtime/NotificationControls$NotificationCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls$1;->a:Lcom/facebook/tools/dextr/runtime/NotificationControls;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->b(Lcom/facebook/tools/dextr/runtime/NotificationControls;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls$1;->a:Lcom/facebook/tools/dextr/runtime/NotificationControls;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->a(Lcom/facebook/tools/dextr/runtime/NotificationControls;)Lcom/facebook/tools/dextr/runtime/NotificationControls$NotificationCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/tools/dextr/runtime/NotificationControls$NotificationCallbacks;->b()V

    .line 71
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/NotificationControls$1;->a:Lcom/facebook/tools/dextr/runtime/NotificationControls;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/NotificationControls;->a(Lcom/facebook/tools/dextr/runtime/NotificationControls;)Lcom/facebook/tools/dextr/runtime/NotificationControls$NotificationCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/tools/dextr/runtime/NotificationControls$NotificationCallbacks;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
