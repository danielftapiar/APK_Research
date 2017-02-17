.class public Lcom/prey/events/manager/EventManagerRunner;
.super Ljava/lang/Object;
.source "EventManagerRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private ctx:Landroid/content/Context;

.field private event:Lcom/prey/events/Event;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/prey/events/Event;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "event"    # Lcom/prey/events/Event;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/events/manager/EventManagerRunner;->ctx:Landroid/content/Context;

    .line 20
    iput-object p1, p0, Lcom/prey/events/manager/EventManagerRunner;->ctx:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/prey/events/manager/EventManagerRunner;->event:Lcom/prey/events/Event;

    .line 22
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/prey/events/manager/EventManagerRunner;->event:Lcom/prey/events/Event;

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckInReceiver IN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/prey/events/manager/EventManagerRunner;->event:Lcom/prey/events/Event;

    invoke-virtual {v1}, Lcom/prey/events/Event;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/prey/events/manager/EventManager;

    iget-object v1, p0, Lcom/prey/events/manager/EventManagerRunner;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/prey/events/manager/EventManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/prey/events/manager/EventManagerRunner;->event:Lcom/prey/events/Event;

    invoke-virtual {v0, v1}, Lcom/prey/events/manager/EventManager;->execute(Lcom/prey/events/Event;)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckInReceiver OUT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/prey/events/manager/EventManagerRunner;->event:Lcom/prey/events/Event;

    invoke-virtual {v1}, Lcom/prey/events/Event;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method
