.class Lcom/mwr/dz/services/ClientService$1;
.super Ljava/lang/Object;
.source "ClientService.java"

# interfaces
.implements Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mwr/dz/services/ClientService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mwr/dz/services/ClientService;


# direct methods
.method constructor <init>(Lcom/mwr/dz/services/ClientService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mwr/dz/services/ClientService$1;->this$0:Lcom/mwr/dz/services/ClientService;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndpointStarted(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V
    .locals 0
    .param p1, "endpoint"    # Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .prologue
    .line 202
    return-void
.end method

.method public onEndpointStatusChanged(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V
    .locals 3
    .param p1, "endpoint"    # Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .prologue
    .line 206
    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 207
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/mwr/dz/services/ClientService$1;->this$0:Lcom/mwr/dz/services/ClientService;

    invoke-virtual {v1}, Lcom/mwr/dz/services/ClientService;->getEndpointsStatus()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 209
    iget-object v1, p0, Lcom/mwr/dz/services/ClientService$1;->this$0:Lcom/mwr/dz/services/ClientService;

    invoke-virtual {v1, v0}, Lcom/mwr/dz/services/ClientService;->sendToAllMessengers(Landroid/os/Message;)V

    .line 210
    return-void
.end method

.method public onEndpointStopped(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V
    .locals 0
    .param p1, "endpoint"    # Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .prologue
    .line 199
    return-void
.end method
