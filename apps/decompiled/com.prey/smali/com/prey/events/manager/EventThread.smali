.class public Lcom/prey/events/manager/EventThread;
.super Ljava/lang/Thread;
.source "EventThread.java"


# instance fields
.field private ctx:Landroid/content/Context;

.field private event:Lcom/prey/events/Event;

.field private jsonObjectStatus:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/prey/events/Event;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "event"    # Lcom/prey/events/Event;
    .param p3, "jsonObjectStatus"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/prey/events/manager/EventThread;->ctx:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/prey/events/manager/EventThread;->event:Lcom/prey/events/Event;

    .line 27
    iput-object p3, p0, Lcom/prey/events/manager/EventThread;->jsonObjectStatus:Lorg/json/JSONObject;

    .line 28
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 32
    :try_start_0
    invoke-static {}, Lcom/prey/events/manager/EventControl;->getInstance()Lcom/prey/events/manager/EventControl;

    move-result-object v2

    iget-object v3, p0, Lcom/prey/events/manager/EventThread;->jsonObjectStatus:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/prey/events/manager/EventControl;->valida(Lorg/json/JSONObject;)Z

    move-result v1

    .line 33
    .local v1, "valida":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "valida:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " eventName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/prey/events/manager/EventThread;->event:Lcom/prey/events/Event;

    invoke-virtual {v3}, Lcom/prey/events/Event;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 34
    if-eqz v1, :cond_0

    .line 35
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v2

    iget-object v3, p0, Lcom/prey/events/manager/EventThread;->ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/prey/events/manager/EventThread;->event:Lcom/prey/events/Event;

    iget-object v5, p0, Lcom/prey/events/manager/EventThread;->jsonObjectStatus:Lorg/json/JSONObject;

    invoke-virtual {v2, v3, v4, v5}, Lcom/prey/net/PreyWebServices;->sendPreyHttpEvent(Landroid/content/Context;Lcom/prey/events/Event;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v1    # "valida":Z
    :cond_0
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
