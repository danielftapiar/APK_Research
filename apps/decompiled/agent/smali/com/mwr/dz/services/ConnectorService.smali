.class public abstract Lcom/mwr/dz/services/ConnectorService;
.super Landroid/app/Service;
.source "ConnectorService.java"

# interfaces
.implements Lcom/mwr/jdiesel/logger/OnLogMessageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/dz/services/ConnectorService$IncomingHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Service;",
        "Lcom/mwr/jdiesel/logger/OnLogMessageListener",
        "<",
        "Lcom/mwr/jdiesel/api/connectors/Connector;",
        ">;"
    }
.end annotation


# static fields
.field public static final MSG_LOG_MESSAGE:I = 0x1

.field protected static running:Z


# instance fields
.field private final messenger:Landroid/os/Messenger;

.field private final messengers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mwr/dz/services/ConnectorService;->running:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/mwr/dz/services/ConnectorService$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/mwr/dz/services/ConnectorService$IncomingHandler;-><init>(Lcom/mwr/dz/services/ConnectorService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mwr/dz/services/ConnectorService;->messenger:Landroid/os/Messenger;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mwr/dz/services/ConnectorService;->messengers:Ljava/util/ArrayList;

    .line 21
    return-void
.end method


# virtual methods
.method protected broadcastLogMessageBundle(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 61
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 62
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/mwr/dz/services/ConnectorService;->sendToAllMessengers(Landroid/os/Message;)V

    .line 65
    return-void
.end method

.method public cacheMessenger(Landroid/os/Messenger;)V
    .locals 1
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mwr/dz/services/ConnectorService;->messengers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/mwr/dz/services/ConnectorService;->messengers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    return-void
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mwr/dz/services/ConnectorService;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onLogMessage(Lcom/mwr/jdiesel/logger/Logger;Lcom/mwr/jdiesel/logger/LogMessage;)V
    .locals 4
    .param p2, "message"    # Lcom/mwr/jdiesel/logger/LogMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mwr/jdiesel/logger/Logger",
            "<",
            "Lcom/mwr/jdiesel/api/connectors/Connector;",
            ">;",
            "Lcom/mwr/jdiesel/logger/LogMessage;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "logger":Lcom/mwr/jdiesel/logger/Logger;, "Lcom/mwr/jdiesel/logger/Logger<Lcom/mwr/jdiesel/api/connectors/Connector;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "connector:logmessage"

    invoke-virtual {p2}, Lcom/mwr/jdiesel/logger/LogMessage;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p1}, Lcom/mwr/jdiesel/logger/Logger;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/connectors/Connector;

    .line 95
    .local v0, "connector":Lcom/mwr/jdiesel/api/connectors/Connector;
    instance-of v2, v0, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    if-eqz v2, :cond_0

    .line 96
    const-string v2, "endpoint:id"

    check-cast v0, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .end local v0    # "connector":Lcom/mwr/jdiesel/api/connectors/Connector;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mwr/dz/services/ConnectorService;->broadcastLogMessageBundle(Landroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 102
    const/4 v0, 0x3

    return v0
.end method

.method protected sendToAllMessengers(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/mwr/dz/services/ConnectorService;->messengers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    return-void

    .line 110
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 112
    .local v0, "m":Landroid/os/Messenger;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v2

    goto :goto_0
.end method
