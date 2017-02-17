.class public Lcom/prey/events/receivers/EventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EventReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    invoke-static {p1, p2}, Lcom/prey/events/factories/EventFactory;->getEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/prey/events/Event;

    move-result-object v0

    .line 23
    .local v0, "event":Lcom/prey/events/Event;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/prey/events/manager/EventManagerRunner;

    invoke-direct {v2, p1, v0}, Lcom/prey/events/manager/EventManagerRunner;-><init>(Landroid/content/Context;Lcom/prey/events/Event;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 25
    return-void
.end method
