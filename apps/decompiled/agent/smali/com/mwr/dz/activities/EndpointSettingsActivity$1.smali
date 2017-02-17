.class Lcom/mwr/dz/activities/EndpointSettingsActivity$1;
.super Ljava/lang/Object;
.source "EndpointSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mwr/dz/activities/EndpointSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mwr/dz/activities/EndpointSettingsActivity;


# direct methods
.method constructor <init>(Lcom/mwr/dz/activities/EndpointSettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity$1;->this$0:Lcom/mwr/dz/activities/EndpointSettingsActivity;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity$1;->this$0:Lcom/mwr/dz/activities/EndpointSettingsActivity;

    # getter for: Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;
    invoke-static {v2}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->access$0(Lcom/mwr/dz/activities/EndpointSettingsActivity;)Lcom/mwr/jdiesel/api/connectors/Endpoint;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/mwr/jdiesel/api/connectors/Endpoint;->enabled:Z

    .line 127
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity$1;->this$0:Lcom/mwr/dz/activities/EndpointSettingsActivity;

    # getter for: Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;
    invoke-static {v2}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->access$0(Lcom/mwr/dz/activities/EndpointSettingsActivity;)Lcom/mwr/jdiesel/api/connectors/Endpoint;

    move-result-object v2

    sget-object v3, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->UPDATING:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v2, v3}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 130
    :try_start_0
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/Agent;->getClientService()Lcom/mwr/dz/service_connectors/ClientServiceConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity$1;->this$0:Lcom/mwr/dz/activities/EndpointSettingsActivity;

    # getter for: Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;
    invoke-static {v3}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->access$0(Lcom/mwr/dz/activities/EndpointSettingsActivity;)Lcom/mwr/jdiesel/api/connectors/Endpoint;

    move-result-object v3

    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/dz/Agent;->getMessenger()Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->stopEndpoint(Lcom/mwr/jdiesel/api/connectors/Endpoint;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/Agent;->getEndpointManager()Lcom/mwr/dz/models/EndpointManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity$1;->this$0:Lcom/mwr/dz/activities/EndpointSettingsActivity;

    # getter for: Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;
    invoke-static {v3}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->access$0(Lcom/mwr/dz/activities/EndpointSettingsActivity;)Lcom/mwr/jdiesel/api/connectors/Endpoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mwr/dz/models/EndpointManager;->remove(Lcom/mwr/jdiesel/api/connectors/Endpoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "endpoint:deleted"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    const-string v2, "endpoint:id"

    iget-object v3, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity$1;->this$0:Lcom/mwr/dz/activities/EndpointSettingsActivity;

    # getter for: Lcom/mwr/dz/activities/EndpointSettingsActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;
    invoke-static {v3}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->access$0(Lcom/mwr/dz/activities/EndpointSettingsActivity;)Lcom/mwr/jdiesel/api/connectors/Endpoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity$1;->this$0:Lcom/mwr/dz/activities/EndpointSettingsActivity;

    invoke-virtual {v2}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 140
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 142
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity$1;->this$0:Lcom/mwr/dz/activities/EndpointSettingsActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 143
    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointSettingsActivity$1;->this$0:Lcom/mwr/dz/activities/EndpointSettingsActivity;

    invoke-virtual {v2}, Lcom/mwr/dz/activities/EndpointSettingsActivity;->finish()V

    .line 145
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 132
    :catch_0
    move-exception v2

    goto :goto_0
.end method
