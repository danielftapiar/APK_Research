.class public Lcom/mwr/dz/activities/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private endpoint_list_view:Lcom/mwr/dz/views/EndpointListView;

.field private server_list_row_view:Lcom/mwr/dz/views/ServerListRowView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/mwr/dz/activities/MainActivity;->endpoint_list_view:Lcom/mwr/dz/views/EndpointListView;

    .line 22
    iput-object v0, p0, Lcom/mwr/dz/activities/MainActivity;->server_list_row_view:Lcom/mwr/dz/views/ServerListRowView;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/mwr/dz/activities/MainActivity;Lcom/mwr/jdiesel/api/connectors/Endpoint;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/mwr/dz/activities/MainActivity;->launchEndpointActivity(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V

    return-void
.end method

.method static synthetic access$1(Lcom/mwr/dz/activities/MainActivity;Lcom/mwr/jdiesel/api/connectors/Endpoint;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/mwr/dz/activities/MainActivity;->startEndpoint(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V

    return-void
.end method

.method static synthetic access$2(Lcom/mwr/dz/activities/MainActivity;Lcom/mwr/jdiesel/api/connectors/Endpoint;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/mwr/dz/activities/MainActivity;->stopEndpoint(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V

    return-void
.end method

.method static synthetic access$3(Lcom/mwr/dz/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mwr/dz/activities/MainActivity;->launchServerActivity()V

    return-void
.end method

.method static synthetic access$4(Lcom/mwr/dz/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/mwr/dz/activities/MainActivity;->startServer()V

    return-void
.end method

.method static synthetic access$5(Lcom/mwr/dz/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/mwr/dz/activities/MainActivity;->stopServer()V

    return-void
.end method

.method private launchEndpointActivity(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V
    .locals 3
    .param p1, "endpoint"    # Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mwr/dz/activities/EndpointActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "endpoint:id"

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, v0}, Lcom/mwr/dz/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 29
    return-void
.end method

.method private launchServerActivity()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mwr/dz/activities/ServerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mwr/dz/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 33
    return-void
.end method

.method private startEndpoint(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V
    .locals 3
    .param p1, "endpoint"    # Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .prologue
    .line 141
    :try_start_0
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/dz/Agent;->getClientService()Lcom/mwr/dz/service_connectors/ClientServiceConnection;

    move-result-object v1

    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/Agent;->getMessenger()Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->startEndpoint(Lcom/mwr/jdiesel/api/connectors/Endpoint;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private startServer()V
    .locals 4

    .prologue
    .line 124
    :try_start_0
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/dz/Agent;->getServerService()Lcom/mwr/dz/service_connectors/ServerServiceConnection;

    move-result-object v1

    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/Agent;->getServerParameters()Lcom/mwr/jdiesel/api/connectors/Server;

    move-result-object v2

    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/dz/Agent;->getMessenger()Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->startServer(Lcom/mwr/jdiesel/api/connectors/Server;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopEndpoint(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V
    .locals 3
    .param p1, "endpoint"    # Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .prologue
    .line 150
    :try_start_0
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/dz/Agent;->getClientService()Lcom/mwr/dz/service_connectors/ClientServiceConnection;

    move-result-object v1

    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/Agent;->getMessenger()Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->stopEndpoint(Lcom/mwr/jdiesel/api/connectors/Endpoint;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopServer()V
    .locals 4

    .prologue
    .line 132
    :try_start_0
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/dz/Agent;->getServerService()Lcom/mwr/dz/service_connectors/ServerServiceConnection;

    move-result-object v1

    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/Agent;->getServerParameters()Lcom/mwr/jdiesel/api/connectors/Server;

    move-result-object v2

    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/dz/Agent;->getMessenger()Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->stopServer(Lcom/mwr/jdiesel/api/connectors/Server;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mwr/dz/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/dz/Agent;->setContext(Landroid/content/Context;)V

    .line 41
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/mwr/dz/activities/MainActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/mwr/dz/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mwr/dz/views/EndpointListView;

    iput-object v0, p0, Lcom/mwr/dz/activities/MainActivity;->endpoint_list_view:Lcom/mwr/dz/views/EndpointListView;

    .line 44
    iget-object v0, p0, Lcom/mwr/dz/activities/MainActivity;->endpoint_list_view:Lcom/mwr/dz/views/EndpointListView;

    new-instance v1, Lcom/mwr/dz/EndpointAdapter;

    invoke-virtual {p0}, Lcom/mwr/dz/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/dz/Agent;->getEndpointManager()Lcom/mwr/dz/models/EndpointManager;

    move-result-object v3

    .line 45
    new-instance v4, Lcom/mwr/dz/activities/MainActivity$1;

    invoke-direct {v4, p0}, Lcom/mwr/dz/activities/MainActivity$1;-><init>(Lcom/mwr/dz/activities/MainActivity;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/mwr/dz/EndpointAdapter;-><init>(Landroid/content/Context;Lcom/mwr/dz/models/EndpointManager;Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/mwr/dz/views/EndpointListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/mwr/dz/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mwr/dz/views/ServerListRowView;

    iput-object v0, p0, Lcom/mwr/dz/activities/MainActivity;->server_list_row_view:Lcom/mwr/dz/views/ServerListRowView;

    .line 63
    iget-object v0, p0, Lcom/mwr/dz/activities/MainActivity;->server_list_row_view:Lcom/mwr/dz/views/ServerListRowView;

    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/dz/Agent;->getServerParameters()Lcom/mwr/jdiesel/api/connectors/Server;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/dz/views/ServerListRowView;->setServerParameters(Lcom/mwr/jdiesel/api/connectors/Server;)V

    .line 64
    iget-object v0, p0, Lcom/mwr/dz/activities/MainActivity;->server_list_row_view:Lcom/mwr/dz/views/ServerListRowView;

    new-instance v1, Lcom/mwr/dz/activities/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/mwr/dz/activities/MainActivity$2;-><init>(Lcom/mwr/dz/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/mwr/dz/views/ServerListRowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/mwr/dz/activities/MainActivity;->server_list_row_view:Lcom/mwr/dz/views/ServerListRowView;

    new-instance v1, Lcom/mwr/dz/activities/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/mwr/dz/activities/MainActivity$3;-><init>(Lcom/mwr/dz/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/mwr/dz/views/ServerListRowView;->setServerViewListener(Lcom/mwr/dz/views/ServerListRowView$OnServerViewListener;)V

    .line 83
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/mwr/dz/activities/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 89
    :pswitch_0
    invoke-virtual {p0}, Lcom/mwr/dz/activities/MainActivity;->updateEndpointStatuses()V

    .line 90
    invoke-virtual {p0}, Lcom/mwr/dz/activities/MainActivity;->updateServerStatus()V

    goto :goto_0

    .line 94
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mwr/dz/activities/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/mwr/dz/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x7f090031
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 112
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/dz/Agent;->unbindServices()V

    .line 113
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 119
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/dz/Agent;->bindServices()V

    .line 120
    return-void
.end method

.method protected updateEndpointStatuses()V
    .locals 4

    .prologue
    .line 160
    :try_start_0
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/Agent;->getEndpointManager()Lcom/mwr/dz/models/EndpointManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/models/EndpointManager;->all()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/Agent;->getClientService()Lcom/mwr/dz/service_connectors/ClientServiceConnection;

    move-result-object v2

    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/dz/Agent;->getMessenger()Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->getEndpointStatuses(Landroid/os/Messenger;)V

    .line 171
    :goto_1
    return-void

    .line 160
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 161
    .local v0, "e":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    sget-object v3, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->UPDATING:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v0, v3}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    .end local v0    # "e":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/Agent;->getEndpointManager()Lcom/mwr/dz/models/EndpointManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/models/EndpointManager;->all()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 169
    const v2, 0x7f060015

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 166
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 167
    .local v1, "e2":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    sget-object v3, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->UNKNOWN:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1, v3}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    goto :goto_2
.end method

.method protected updateServerStatus()V
    .locals 3

    .prologue
    .line 175
    :try_start_0
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/dz/Agent;->getServerParameters()Lcom/mwr/jdiesel/api/connectors/Server;

    move-result-object v1

    sget-object v2, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->UPDATING:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1, v2}, Lcom/mwr/jdiesel/api/connectors/Server;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 177
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/dz/Agent;->getServerService()Lcom/mwr/dz/service_connectors/ServerServiceConnection;

    move-result-object v1

    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/Agent;->getMessenger()Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->getServerStatus(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/dz/Agent;->getServerParameters()Lcom/mwr/jdiesel/api/connectors/Server;

    move-result-object v1

    sget-object v2, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->UNKNOWN:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1, v2}, Lcom/mwr/jdiesel/api/connectors/Server;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 182
    const v1, 0x7f060015

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
