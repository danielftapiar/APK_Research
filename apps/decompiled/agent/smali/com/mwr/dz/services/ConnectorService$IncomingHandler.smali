.class Lcom/mwr/dz/services/ConnectorService$IncomingHandler;
.super Landroid/os/Handler;
.source "ConnectorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/dz/services/ConnectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IncomingHandler"
.end annotation


# instance fields
.field private final service:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mwr/dz/services/ConnectorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mwr/dz/services/ConnectorService;)V
    .locals 1
    .param p1, "service"    # Lcom/mwr/dz/services/ConnectorService;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mwr/dz/services/ConnectorService$IncomingHandler;->service:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    .local v0, "data":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/mwr/dz/services/ConnectorService$IncomingHandler;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mwr/dz/services/ConnectorService;

    .line 44
    .local v1, "service":Lcom/mwr/dz/services/ConnectorService;
    if-eqz v0, :cond_0

    const-string v2, "ctrl:no_cache_messenger"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 45
    :cond_0
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Lcom/mwr/dz/services/ConnectorService;->cacheMessenger(Landroid/os/Messenger;)V

    .line 47
    :cond_1
    invoke-virtual {v1, p1}, Lcom/mwr/dz/services/ConnectorService;->handleMessage(Landroid/os/Message;)V

    .line 48
    return-void
.end method
