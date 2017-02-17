.class public Lcom/mwr/dz/activities/EndpointActivity;
.super Lcom/mwr/dz/activities/ConnectorActivity;
.source "EndpointActivity.java"

# interfaces
.implements Ljava/util/Observer;
.implements Lcom/mwr/jdiesel/api/connectors/Endpoint$OnDetailedStatusListener;


# instance fields
.field private endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

.field private endpoint_enabled:Landroid/widget/CompoundButton;

.field private endpoint_messages:Landroid/widget/ListView;

.field private endpoint_status_indicator:Lcom/mwr/dz/views/ConnectorStatusIndicator;

.field private volatile setting_endpoint:Z

.field protected spinner:Landroid/app/Dialog;

.field private status_connected:Lcom/mwr/dz/views/CheckListItemView;

.field private status_enabled:Lcom/mwr/dz/views/CheckListItemView;

.field private status_password:Lcom/mwr/dz/views/CheckListItemView;

.field private status_sessions:Lcom/mwr/dz/views/CheckListItemView;

.field private status_ssl:Lcom/mwr/dz/views/CheckListItemView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lcom/mwr/dz/activities/ConnectorActivity;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 25
    iput-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint_enabled:Landroid/widget/CompoundButton;

    .line 26
    iput-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint_messages:Landroid/widget/ListView;

    .line 27
    iput-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint_status_indicator:Lcom/mwr/dz/views/ConnectorStatusIndicator;

    .line 31
    iput-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->status_connected:Lcom/mwr/dz/views/CheckListItemView;

    .line 32
    iput-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->status_enabled:Lcom/mwr/dz/views/CheckListItemView;

    .line 33
    iput-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->status_password:Lcom/mwr/dz/views/CheckListItemView;

    .line 34
    iput-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->status_sessions:Lcom/mwr/dz/views/CheckListItemView;

    .line 35
    iput-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->status_ssl:Lcom/mwr/dz/views/CheckListItemView;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->setting_endpoint:Z

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/mwr/dz/activities/EndpointActivity;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->setting_endpoint:Z

    return v0
.end method

.method private setEndpoint(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V
    .locals 4
    .param p1, "endpoint"    # Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->deleteObserver(Ljava/util/Observer;)V

    .line 118
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->setting_endpoint:Z

    .line 119
    iput-object p1, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 121
    iget-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/dz/activities/EndpointActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint_enabled:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 124
    iget-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint_messages:Landroid/widget/ListView;

    new-instance v1, Lcom/mwr/dz/views/logger/LogMessageAdapter;

    invoke-virtual {p0}, Lcom/mwr/dz/activities/EndpointActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getLogger()Lcom/mwr/jdiesel/logger/Logger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mwr/dz/views/logger/LogMessageAdapter;-><init>(Landroid/content/Context;Lcom/mwr/jdiesel/logger/Logger;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    iget-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint_status_indicator:Lcom/mwr/dz/views/ConnectorStatusIndicator;

    iget-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v0, v1}, Lcom/mwr/dz/views/ConnectorStatusIndicator;->setConnector(Lcom/mwr/jdiesel/api/connectors/Connector;)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->setting_endpoint:Z

    .line 128
    iget-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->addObserver(Ljava/util/Observer;)V

    .line 129
    iget-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->setOnDetailedStatusListener(Lcom/mwr/jdiesel/api/connectors/Endpoint$OnDetailedStatusListener;)V

    .line 130
    return-void
.end method


# virtual methods
.method protected getDetailedEndpointStatus()V
    .locals 4

    .prologue
    .line 41
    :try_start_0
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/dz/Agent;->getClientService()Lcom/mwr/dz/service_connectors/ClientServiceConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v2

    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/dz/Agent;->getMessenger()Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->getDetailedEndpointStatus(ILandroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Landroid/os/RemoteException;
    const v1, 0x7f060015

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/mwr/dz/activities/ConnectorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/mwr/dz/activities/EndpointActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    .local v0, "extras":Landroid/os/Bundle;
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/mwr/dz/activities/EndpointActivity;->setContentView(I)V

    .line 56
    const v1, 0x7f090004

    invoke-virtual {p0, v1}, Lcom/mwr/dz/activities/EndpointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mwr/dz/views/ConnectorStatusIndicator;

    iput-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint_status_indicator:Lcom/mwr/dz/views/ConnectorStatusIndicator;

    .line 58
    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Lcom/mwr/dz/activities/EndpointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint_enabled:Landroid/widget/CompoundButton;

    .line 59
    iget-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint_enabled:Landroid/widget/CompoundButton;

    new-instance v2, Lcom/mwr/dz/activities/EndpointActivity$1;

    invoke-direct {v2, p0}, Lcom/mwr/dz/activities/EndpointActivity$1;-><init>(Lcom/mwr/dz/activities/EndpointActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 74
    const v1, 0x7f09000d

    invoke-virtual {p0, v1}, Lcom/mwr/dz/activities/EndpointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint_messages:Landroid/widget/ListView;

    .line 75
    iget-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint_messages:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 76
    iget-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint_messages:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 78
    const v1, 0x7f09000a

    invoke-virtual {p0, v1}, Lcom/mwr/dz/activities/EndpointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mwr/dz/views/CheckListItemView;

    iput-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->status_connected:Lcom/mwr/dz/views/CheckListItemView;

    .line 79
    const v1, 0x7f090009

    invoke-virtual {p0, v1}, Lcom/mwr/dz/activities/EndpointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mwr/dz/views/CheckListItemView;

    iput-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->status_enabled:Lcom/mwr/dz/views/CheckListItemView;

    .line 80
    const v1, 0x7f090008

    invoke-virtual {p0, v1}, Lcom/mwr/dz/activities/EndpointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mwr/dz/views/CheckListItemView;

    iput-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->status_password:Lcom/mwr/dz/views/CheckListItemView;

    .line 81
    const v1, 0x7f09000b

    invoke-virtual {p0, v1}, Lcom/mwr/dz/activities/EndpointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mwr/dz/views/CheckListItemView;

    iput-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->status_sessions:Lcom/mwr/dz/views/CheckListItemView;

    .line 82
    const v1, 0x7f090007

    invoke-virtual {p0, v1}, Lcom/mwr/dz/activities/EndpointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mwr/dz/views/CheckListItemView;

    iput-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->status_ssl:Lcom/mwr/dz/views/CheckListItemView;

    .line 84
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/dz/Agent;->getEndpointManager()Lcom/mwr/dz/models/EndpointManager;

    move-result-object v1

    const-string v2, "endpoint:id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mwr/dz/models/EndpointManager;->get(I)Lcom/mwr/jdiesel/api/connectors/Endpoint;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mwr/dz/activities/EndpointActivity;->setEndpoint(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V

    .line 85
    invoke-virtual {p0}, Lcom/mwr/dz/activities/EndpointActivity;->refreshStatus()V

    .line 86
    return-void
.end method

.method public onDetailedStatus(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "status"    # Landroid/os/Bundle;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->status_connected:Lcom/mwr/dz/views/CheckListItemView;

    const-string v1, "connector:connected"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/dz/views/CheckListItemView;->setStatus(Z)V

    .line 91
    iget-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->status_enabled:Lcom/mwr/dz/views/CheckListItemView;

    const-string v1, "connector:enabled"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/dz/views/CheckListItemView;->setStatus(Z)V

    .line 92
    iget-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->status_password:Lcom/mwr/dz/views/CheckListItemView;

    const-string v1, "endpoint:password"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/dz/views/CheckListItemView;->setStatus(Z)V

    .line 93
    iget-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->status_sessions:Lcom/mwr/dz/views/CheckListItemView;

    const-string v1, "connector:opensessions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mwr/dz/views/CheckListItemView;->setStatus(Z)V

    .line 94
    iget-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->status_ssl:Lcom/mwr/dz/views/CheckListItemView;

    const-string v1, "endpoint:ssl"

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

    .line 156
    iget-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->spinner:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/mwr/dz/activities/EndpointActivity;->spinner:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 159
    :cond_0
    if-eqz p1, :cond_1

    .line 160
    invoke-virtual {p0, v1, p1}, Lcom/mwr/dz/activities/EndpointActivity;->createInformationDialog(ILjava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_1
    const v0, 0x7f06004b

    invoke-virtual {p0, v1, v0}, Lcom/mwr/dz/activities/EndpointActivity;->createInformationDialog(II)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method protected refreshStatus()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/mwr/dz/activities/EndpointActivity;->getDetailedEndpointStatus()V

    .line 103
    return-void
.end method

.method protected showFingerprintDialog()V
    .locals 6

    .prologue
    const v5, 0x7f06004a

    .line 134
    iget-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->isSSL()Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    const v1, 0x7f060049

    invoke-virtual {p0, v5, v1}, Lcom/mwr/dz/activities/EndpointActivity;->createInformationDialog(II)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 152
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getStatus()Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    move-result-object v1

    sget-object v2, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ACTIVE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getStatus()Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    move-result-object v1

    sget-object v2, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ONLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    if-eq v1, v2, :cond_1

    .line 138
    const v1, 0x7f06002f

    invoke-virtual {p0, v5, v1}, Lcom/mwr/dz/activities/EndpointActivity;->createInformationDialog(II)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p0, v5}, Lcom/mwr/dz/activities/EndpointActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f060008

    invoke-virtual {p0, v2}, Lcom/mwr/dz/activities/EndpointActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->spinner:Landroid/app/Dialog;

    .line 144
    :try_start_0
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/dz/Agent;->getClientService()Lcom/mwr/dz/service_connectors/ClientServiceConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v2

    new-instance v3, Landroid/os/Messenger;

    new-instance v4, Lcom/mwr/dz/activities/ConnectorActivity$IncomingFingerprintHandler;

    invoke-direct {v4, p0}, Lcom/mwr/dz/activities/ConnectorActivity$IncomingFingerprintHandler;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v3}, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->getPeerFingerprint(ILandroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->spinner:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 149
    const v1, 0x7f06004b

    invoke-virtual {p0, v5, v1}, Lcom/mwr/dz/activities/EndpointActivity;->createInformationDialog(II)Landroid/app/Dialog;

    goto :goto_0
.end method

.method protected startEndpoint()V
    .locals 4

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mwr/jdiesel/api/connectors/Endpoint;->enabled:Z

    .line 168
    iget-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    sget-object v2, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->UPDATING:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1, v2}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 170
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/dz/Agent;->getClientService()Lcom/mwr/dz/service_connectors/ClientServiceConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/dz/Agent;->getMessenger()Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->startEndpoint(Lcom/mwr/jdiesel/api/connectors/Endpoint;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    sget-object v2, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->OFFLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1, v2}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 175
    const v1, 0x7f060015

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected stopEndpoint()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/mwr/jdiesel/api/connectors/Endpoint;->enabled:Z

    .line 182
    iget-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    sget-object v2, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->UPDATING:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1, v2}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 184
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mwr/dz/Agent;->getClientService()Lcom/mwr/dz/service_connectors/ClientServiceConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/dz/Agent;->getMessenger()Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->stopEndpoint(Lcom/mwr/jdiesel/api/connectors/Endpoint;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/mwr/dz/activities/EndpointActivity;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    sget-object v2, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->OFFLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1, v2}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 189
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
    .line 201
    check-cast p1, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .end local p1    # "observable":Ljava/util/Observable;
    invoke-direct {p0, p1}, Lcom/mwr/dz/activities/EndpointActivity;->setEndpoint(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V

    .line 202
    invoke-virtual {p0}, Lcom/mwr/dz/activities/EndpointActivity;->refreshStatus()V

    .line 203
    return-void
.end method
