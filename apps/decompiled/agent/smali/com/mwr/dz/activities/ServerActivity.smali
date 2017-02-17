.class public Lcom/mwr/dz/activities/ServerActivity;
.super Lcom/mwr/dz/activities/ConnectorActivity;
.source "ServerActivity.java"

# interfaces
.implements Ljava/util/Observer;
.implements Lcom/mwr/jdiesel/api/connectors/Server$OnDetailedStatusListener;


# instance fields
.field private parameters:Lcom/mwr/jdiesel/api/connectors/Server;

.field private server_enabled:Landroid/widget/CompoundButton;

.field private server_messages:Landroid/widget/ListView;

.field private server_status_indicator:Lcom/mwr/dz/views/ConnectorStatusIndicator;

.field private volatile setting_server:Z

.field private spinner:Landroid/app/Dialog;

.field private status_enabled:Lcom/mwr/dz/views/CheckListItemView;

.field private status_listening:Lcom/mwr/dz/views/CheckListItemView;

.field private status_password:Lcom/mwr/dz/views/CheckListItemView;

.field private status_sessions:Lcom/mwr/dz/views/CheckListItemView;

.field private status_ssl:Lcom/mwr/dz/views/CheckListItemView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Lcom/mwr/dz/activities/ConnectorActivity;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    .line 28
    iput-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->server_enabled:Landroid/widget/CompoundButton;

    .line 29
    iput-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->server_messages:Landroid/widget/ListView;

    .line 30
    iput-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->server_status_indicator:Lcom/mwr/dz/views/ConnectorStatusIndicator;

    .line 32
    iput-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->status_enabled:Lcom/mwr/dz/views/CheckListItemView;

    .line 33
    iput-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->status_listening:Lcom/mwr/dz/views/CheckListItemView;

    .line 34
    iput-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->status_password:Lcom/mwr/dz/views/CheckListItemView;

    .line 35
    iput-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->status_sessions:Lcom/mwr/dz/views/CheckListItemView;

    .line 36
    iput-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->status_ssl:Lcom/mwr/dz/views/CheckListItemView;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/dz/activities/ServerActivity;->setting_server:Z

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/mwr/dz/activities/ServerActivity;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/mwr/dz/activities/ServerActivity;->setting_server:Z

    return v0
.end method

.method private setServerParameters(Lcom/mwr/jdiesel/api/connectors/Server;)V
    .locals 4
    .param p1, "parameters"    # Lcom/mwr/jdiesel/api/connectors/Server;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/connectors/Server;->deleteObserver(Ljava/util/Observer;)V

    .line 115
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mwr/dz/activities/ServerActivity;->setting_server:Z

    .line 116
    iput-object p1, p0, Lcom/mwr/dz/activities/ServerActivity;->parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    .line 118
    iget-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->server_enabled:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/mwr/dz/activities/ServerActivity;->parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Server;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 119
    iget-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->server_messages:Landroid/widget/ListView;

    new-instance v1, Lcom/mwr/dz/views/logger/LogMessageAdapter;

    invoke-virtual {p0}, Lcom/mwr/dz/activities/ServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mwr/dz/activities/ServerActivity;->parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/connectors/Server;->getLogger()Lcom/mwr/jdiesel/logger/Logger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mwr/dz/views/logger/LogMessageAdapter;-><init>(Landroid/content/Context;Lcom/mwr/jdiesel/logger/Logger;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    iget-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->server_status_indicator:Lcom/mwr/dz/views/ConnectorStatusIndicator;

    iget-object v1, p0, Lcom/mwr/dz/activities/ServerActivity;->parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v0, v1}, Lcom/mwr/dz/views/ConnectorStatusIndicator;->setConnector(Lcom/mwr/jdiesel/api/connectors/Connector;)V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/dz/activities/ServerActivity;->setting_server:Z

    .line 123
    iget-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/connectors/Server;->addObserver(Ljava/util/Observer;)V

    .line 124
    iget-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/connectors/Server;->setOnDetailedStatusListener(Lcom/mwr/jdiesel/api/connectors/Server$OnDetailedStatusListener;)V

    .line 125
    return-void
.end method


# virtual methods
.method protected getDetailedServerStatus()V
    .locals 3

    .prologue
    .line 42
    :try_start_0
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/dz/Agent;->getServerService()Lcom/mwr/dz/service_connectors/ServerServiceConnection;

    move-result-object v1

    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/Agent;->getMessenger()Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->getDetailedServerStatus(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Landroid/os/RemoteException;
    const v1, 0x7f060015

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/mwr/dz/activities/ConnectorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/mwr/dz/activities/ServerActivity;->setContentView(I)V

    .line 55
    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Lcom/mwr/dz/activities/ServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mwr/dz/views/ConnectorStatusIndicator;

    iput-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->server_status_indicator:Lcom/mwr/dz/views/ConnectorStatusIndicator;

    .line 57
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/mwr/dz/activities/ServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->server_enabled:Landroid/widget/CompoundButton;

    .line 58
    iget-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->server_enabled:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/mwr/dz/activities/ServerActivity$1;

    invoke-direct {v1, p0}, Lcom/mwr/dz/activities/ServerActivity$1;-><init>(Lcom/mwr/dz/activities/ServerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/mwr/dz/activities/ServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->server_messages:Landroid/widget/ListView;

    .line 74
    iget-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->server_messages:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 75
    iget-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->server_messages:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 77
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/mwr/dz/activities/ServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mwr/dz/views/CheckListItemView;

    iput-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->status_enabled:Lcom/mwr/dz/views/CheckListItemView;

    .line 78
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/mwr/dz/activities/ServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mwr/dz/views/CheckListItemView;

    iput-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->status_listening:Lcom/mwr/dz/views/CheckListItemView;

    .line 79
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/mwr/dz/activities/ServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mwr/dz/views/CheckListItemView;

    iput-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->status_password:Lcom/mwr/dz/views/CheckListItemView;

    .line 80
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/mwr/dz/activities/ServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mwr/dz/views/CheckListItemView;

    iput-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->status_sessions:Lcom/mwr/dz/views/CheckListItemView;

    .line 81
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/mwr/dz/activities/ServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mwr/dz/views/CheckListItemView;

    iput-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->status_ssl:Lcom/mwr/dz/views/CheckListItemView;

    .line 84
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/dz/Agent;->getServerParameters()Lcom/mwr/jdiesel/api/connectors/Server;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mwr/dz/activities/ServerActivity;->setServerParameters(Lcom/mwr/jdiesel/api/connectors/Server;)V

    .line 85
    invoke-virtual {p0}, Lcom/mwr/dz/activities/ServerActivity;->refreshStatus()V

    .line 86
    return-void
.end method

.method public onDetailedStatus(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "status"    # Landroid/os/Bundle;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->status_enabled:Lcom/mwr/dz/views/CheckListItemView;

    const-string v1, "connector:enabled"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/dz/views/CheckListItemView;->setStatus(Z)V

    .line 91
    iget-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->status_listening:Lcom/mwr/dz/views/CheckListItemView;

    const-string v1, "connector:connected"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/dz/views/CheckListItemView;->setStatus(Z)V

    .line 92
    iget-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->status_password:Lcom/mwr/dz/views/CheckListItemView;

    const-string v1, "server:password"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/dz/views/CheckListItemView;->setStatus(Z)V

    .line 93
    iget-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->status_sessions:Lcom/mwr/dz/views/CheckListItemView;

    const-string v1, "connector:opensessions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/dz/views/CheckListItemView;->setStatus(Z)V

    .line 94
    iget-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->status_ssl:Lcom/mwr/dz/views/CheckListItemView;

    const-string v1, "server:ssl"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/dz/views/CheckListItemView;->setStatus(Z)V

    .line 95
    return-void
.end method

.method public receiveFingerprint(Ljava/lang/String;)V
    .locals 2
    .param p1, "fingerprint"    # Ljava/lang/String;

    .prologue
    const v1, 0x7f06004a

    .line 153
    iget-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->spinner:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/mwr/dz/activities/ServerActivity;->spinner:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 156
    :cond_0
    if-eqz p1, :cond_1

    .line 157
    invoke-virtual {p0, v1, p1}, Lcom/mwr/dz/activities/ServerActivity;->createInformationDialog(ILjava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_1
    const v0, 0x7f06004b

    invoke-virtual {p0, v1, v0}, Lcom/mwr/dz/activities/ServerActivity;->createInformationDialog(II)Landroid/app/Dialog;

    goto :goto_0
.end method

.method protected refreshStatus()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/mwr/dz/activities/ServerActivity;->getDetailedServerStatus()V

    .line 103
    return-void
.end method

.method protected showFingerprintDialog()V
    .locals 5

    .prologue
    const v4, 0x7f06004a

    .line 131
    iget-object v1, p0, Lcom/mwr/dz/activities/ServerActivity;->parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Server;->isSSL()Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    const v1, 0x7f060049

    invoke-virtual {p0, v4, v1}, Lcom/mwr/dz/activities/ServerActivity;->createInformationDialog(II)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 149
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/mwr/dz/activities/ServerActivity;->parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Server;->getStatus()Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    move-result-object v1

    sget-object v2, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ACTIVE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/mwr/dz/activities/ServerActivity;->parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Server;->getStatus()Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    move-result-object v1

    sget-object v2, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ONLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    if-eq v1, v2, :cond_1

    .line 135
    const v1, 0x7f06002f

    invoke-virtual {p0, v4, v1}, Lcom/mwr/dz/activities/ServerActivity;->createInformationDialog(II)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0, v4}, Lcom/mwr/dz/activities/ServerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f060008

    invoke-virtual {p0, v2}, Lcom/mwr/dz/activities/ServerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mwr/dz/activities/ServerActivity;->spinner:Landroid/app/Dialog;

    .line 141
    :try_start_0
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/dz/Agent;->getServerService()Lcom/mwr/dz/service_connectors/ServerServiceConnection;

    move-result-object v1

    new-instance v2, Landroid/os/Messenger;

    new-instance v3, Lcom/mwr/dz/activities/ConnectorActivity$IncomingFingerprintHandler;

    invoke-direct {v3, p0}, Lcom/mwr/dz/activities/ConnectorActivity$IncomingFingerprintHandler;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->getHostFingerprint(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/mwr/dz/activities/ServerActivity;->spinner:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 146
    const v1, 0x7f06004b

    invoke-virtual {p0, v4, v1}, Lcom/mwr/dz/activities/ServerActivity;->createInformationDialog(II)Landroid/app/Dialog;

    goto :goto_0
.end method

.method protected startServer()V
    .locals 4

    .prologue
    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/mwr/dz/activities/ServerActivity;->parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mwr/jdiesel/api/connectors/Server;->enabled:Z

    .line 165
    iget-object v1, p0, Lcom/mwr/dz/activities/ServerActivity;->parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    sget-object v2, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->UPDATING:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1, v2}, Lcom/mwr/jdiesel/api/connectors/Server;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 167
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

    .line 174
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/mwr/dz/activities/ServerActivity;->parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    sget-object v2, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->OFFLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1, v2}, Lcom/mwr/jdiesel/api/connectors/Server;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 172
    const v1, 0x7f060015

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected stopServer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/mwr/dz/activities/ServerActivity;->parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/mwr/jdiesel/api/connectors/Server;->enabled:Z

    .line 179
    iget-object v1, p0, Lcom/mwr/dz/activities/ServerActivity;->parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    sget-object v2, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->UPDATING:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1, v2}, Lcom/mwr/jdiesel/api/connectors/Server;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 181
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

    .line 188
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/mwr/dz/activities/ServerActivity;->parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    sget-object v2, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->OFFLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1, v2}, Lcom/mwr/jdiesel/api/connectors/Server;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 186
    const v1, 0x7f060015

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 192
    check-cast p1, Lcom/mwr/jdiesel/api/connectors/Server;

    .end local p1    # "observable":Ljava/util/Observable;
    invoke-direct {p0, p1}, Lcom/mwr/dz/activities/ServerActivity;->setServerParameters(Lcom/mwr/jdiesel/api/connectors/Server;)V

    .line 193
    invoke-virtual {p0}, Lcom/mwr/dz/activities/ServerActivity;->refreshStatus()V

    .line 194
    return-void
.end method
