.class Lcom/mwr/dz/models/EndpointManager$1;
.super Ljava/lang/Object;
.source "EndpointManager.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mwr/dz/models/EndpointManager;->all()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mwr/dz/models/EndpointManager;


# direct methods
.method constructor <init>(Lcom/mwr/dz/models/EndpointManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mwr/dz/models/EndpointManager$1;->this$0:Lcom/mwr/dz/models/EndpointManager;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 132
    move-object v0, p1

    check-cast v0, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 134
    .local v0, "endpoint":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    iget-object v1, p0, Lcom/mwr/dz/models/EndpointManager$1;->this$0:Lcom/mwr/dz/models/EndpointManager;

    # getter for: Lcom/mwr/dz/models/EndpointManager;->on_endpoint_status_change_listener:Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;
    invoke-static {v1}, Lcom/mwr/dz/models/EndpointManager;->access$0(Lcom/mwr/dz/models/EndpointManager;)Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getStatus()Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    move-result-object v1

    sget-object v2, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ONLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    if-ne v1, v2, :cond_2

    .line 136
    iget-object v1, p0, Lcom/mwr/dz/models/EndpointManager$1;->this$0:Lcom/mwr/dz/models/EndpointManager;

    # getter for: Lcom/mwr/dz/models/EndpointManager;->on_endpoint_status_change_listener:Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;
    invoke-static {v1}, Lcom/mwr/dz/models/EndpointManager;->access$0(Lcom/mwr/dz/models/EndpointManager;)Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;->onEndpointStarted(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V

    .line 143
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mwr/dz/models/EndpointManager$1;->this$0:Lcom/mwr/dz/models/EndpointManager;

    # getter for: Lcom/mwr/dz/models/EndpointManager;->on_endpoint_status_change_listener:Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;
    invoke-static {v1}, Lcom/mwr/dz/models/EndpointManager;->access$0(Lcom/mwr/dz/models/EndpointManager;)Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;->onEndpointStatusChanged(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V

    .line 145
    :cond_1
    return-void

    .line 139
    :cond_2
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getStatus()Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    move-result-object v1

    sget-object v2, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->OFFLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    if-ne v1, v2, :cond_0

    .line 140
    iget-object v1, p0, Lcom/mwr/dz/models/EndpointManager$1;->this$0:Lcom/mwr/dz/models/EndpointManager;

    # getter for: Lcom/mwr/dz/models/EndpointManager;->on_endpoint_status_change_listener:Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;
    invoke-static {v1}, Lcom/mwr/dz/models/EndpointManager;->access$0(Lcom/mwr/dz/models/EndpointManager;)Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;->onEndpointStopped(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V

    goto :goto_0
.end method
