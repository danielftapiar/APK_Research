.class public Lcom/mwr/dz/services/ClientService;
.super Lcom/mwr/dz/services/ConnectorService;
.source "ClientService.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$connectors$Connector$Status:[I = null

.field public static final MSG_GET_DETAILED_ENDPOINT_STATUS:I = 0xb

.field public static final MSG_GET_ENDPOINTS_STATUS:I = 0xc

.field public static final MSG_GET_SSL_FINGERPRINT:I = 0xd

.field public static final MSG_START_ENDPOINT:I = 0xe

.field public static final MSG_STOP_ENDPOINT:I = 0xf


# instance fields
.field private clients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mwr/jdiesel/api/links/Client;",
            ">;"
        }
    .end annotation
.end field

.field private final endpoint_manager:Lcom/mwr/dz/models/EndpointManager;


# direct methods
.method static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$connectors$Connector$Status()[I
    .locals 3

    .prologue
    .line 21
    sget-object v0, Lcom/mwr/dz/services/ClientService;->$SWITCH_TABLE$com$mwr$jdiesel$api$connectors$Connector$Status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->values()[Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ACTIVE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->CONNECTING:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->OFFLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ONLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->UNKNOWN:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->UPDATING:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/mwr/dz/services/ClientService;->$SWITCH_TABLE$com$mwr$jdiesel$api$connectors$Connector$Status:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mwr/dz/services/ConnectorService;-><init>()V

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mwr/dz/services/ClientService;->clients:Landroid/util/SparseArray;

    .line 30
    new-instance v0, Lcom/mwr/dz/models/EndpointManager;

    invoke-direct {v0, p0}, Lcom/mwr/dz/models/EndpointManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mwr/dz/services/ClientService;->endpoint_manager:Lcom/mwr/dz/models/EndpointManager;

    .line 21
    return-void
.end method

.method public static startAndBindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceConnection"    # Landroid/content/ServiceConnection;

    .prologue
    .line 224
    sget-boolean v1, Lcom/mwr/dz/services/ClientService;->running:Z

    if-nez v1, :cond_0

    .line 225
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mwr/dz/services/ClientService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 227
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mwr/dz/services/ClientService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 229
    return-void
.end method


# virtual methods
.method public getEndpointDetailedStatus(I)Landroid/os/Bundle;
    .locals 6
    .param p1, "endpoint_id"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "data":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/mwr/dz/services/ClientService;->endpoint_manager:Lcom/mwr/dz/models/EndpointManager;

    invoke-virtual {v2, p1}, Lcom/mwr/dz/models/EndpointManager;->get(I)Lcom/mwr/jdiesel/api/connectors/Endpoint;

    move-result-object v1

    .line 36
    .local v1, "endpoint":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    const-string v2, "endpoint:id"

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    const-string v2, "connector:enabled"

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->isEnabled()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    const-string v2, "endpoint:password"

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->hasPassword()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    const-string v2, "endpoint:ssl"

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->isSSL()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    invoke-static {}, Lcom/mwr/dz/services/ClientService;->$SWITCH_TABLE$com$mwr$jdiesel$api$connectors$Connector$Status()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getStatus()Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 58
    :pswitch_0
    const-string v2, "connector:connected"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    const-string v2, "connector:opensessions"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    :goto_0
    return-object v0

    .line 43
    :pswitch_1
    const-string v2, "connector:connected"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    const-string v2, "connector:opensessions"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 48
    :pswitch_2
    const-string v2, "connector:connected"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    const-string v2, "connector:opensessions"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 53
    :pswitch_3
    const-string v2, "connector:connected"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    const-string v2, "connector:opensessions"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getEndpointFingerprint(I)Landroid/os/Bundle;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 67
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v1, "data":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/mwr/dz/services/ClientService;->clients:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/links/Client;

    .line 71
    .local v0, "client":Lcom/mwr/jdiesel/api/links/Client;
    if-eqz v0, :cond_0

    .line 72
    const-string v2, "certificate:fingerprint"

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/links/Client;->getPeerCertificateFingerprint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-object v1

    .line 74
    :cond_0
    const-string v2, "certificate:fingerprint"

    const-string v3, "No running client."

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getEndpointsStatus()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v0, "data":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/mwr/dz/services/ClientService;->endpoint_manager:Lcom/mwr/dz/models/EndpointManager;

    invoke-virtual {v2}, Lcom/mwr/dz/models/EndpointManager;->all()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    return-object v0

    .line 82
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 83
    .local v1, "e":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "endpoint-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getStatus()Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ordinal()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v5, 0x7f06003f

    .line 90
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 92
    .local v0, "data":Landroid/os/Bundle;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 95
    :pswitch_0
    const/4 v3, 0x0

    const/16 v4, 0xb

    :try_start_0
    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 96
    .local v2, "message":Landroid/os/Message;
    const-string v3, "endpoint:id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/mwr/dz/services/ClientService;->getEndpointDetailedStatus(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 98
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v2    # "message":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v5}, Lcom/mwr/dz/services/ClientService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    .end local v1    # "e":Landroid/os/RemoteException;
    :pswitch_1
    const/4 v3, 0x0

    const/16 v4, 0xc

    :try_start_1
    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 108
    .restart local v2    # "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/mwr/dz/services/ClientService;->getEndpointsStatus()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 110
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 112
    .end local v2    # "message":Landroid/os/Message;
    :catch_1
    move-exception v1

    .line 113
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v5}, Lcom/mwr/dz/services/ClientService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    .end local v1    # "e":Landroid/os/RemoteException;
    :pswitch_2
    const/4 v3, 0x0

    const/16 v4, 0xd

    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 120
    .restart local v2    # "message":Landroid/os/Message;
    const-string v3, "endpoint:id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/mwr/dz/services/ClientService;->getEndpointFingerprint(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 122
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 124
    .end local v2    # "message":Landroid/os/Message;
    :catch_2
    move-exception v1

    .line 125
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v5}, Lcom/mwr/dz/services/ClientService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    .end local v1    # "e":Landroid/os/RemoteException;
    :pswitch_3
    :try_start_3
    const-string v3, "endpoint:id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/mwr/dz/services/ClientService;->startEndpoint(I)V

    .line 133
    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 134
    .restart local v2    # "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/mwr/dz/services/ClientService;->getEndpointsStatus()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 136
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 138
    .end local v2    # "message":Landroid/os/Message;
    :catch_3
    move-exception v1

    .line 139
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v5}, Lcom/mwr/dz/services/ClientService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 145
    .end local v1    # "e":Landroid/os/RemoteException;
    :pswitch_4
    :try_start_4
    const-string v3, "endpoint:id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/mwr/dz/services/ClientService;->stopEndpoint(I)V

    .line 147
    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 148
    .restart local v2    # "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/mwr/dz/services/ClientService;->getEndpointsStatus()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 150
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 152
    .end local v2    # "message":Landroid/os/Message;
    :catch_4
    move-exception v1

    .line 153
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v5}, Lcom/mwr/dz/services/ClientService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 191
    invoke-super {p0}, Lcom/mwr/dz/services/ConnectorService;->onCreate()V

    .line 193
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mwr/dz/Agent;->setContext(Landroid/content/Context;)V

    .line 194
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mwr/dz/services/ClientService;->running:Z

    .line 196
    iget-object v1, p0, Lcom/mwr/dz/services/ClientService;->endpoint_manager:Lcom/mwr/dz/models/EndpointManager;

    new-instance v2, Lcom/mwr/dz/services/ClientService$1;

    invoke-direct {v2, p0}, Lcom/mwr/dz/services/ClientService$1;-><init>(Lcom/mwr/dz/services/ClientService;)V

    invoke-virtual {v1, v2}, Lcom/mwr/dz/models/EndpointManager;->setOnEndpointStatusChangeListener(Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;)V

    .line 214
    iget-object v1, p0, Lcom/mwr/dz/services/ClientService;->endpoint_manager:Lcom/mwr/dz/models/EndpointManager;

    invoke-virtual {v1}, Lcom/mwr/dz/models/EndpointManager;->all()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 216
    return-void

    .line 214
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 215
    .local v0, "e":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    sget-object v2, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->OFFLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v0, v2}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mwr/dz/services/ClientService;->running:Z

    .line 221
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 161
    invoke-super/range {p0 .. p3}, Lcom/mwr/dz/services/ConnectorService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v10

    .line 163
    .local v10, "ret_val":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    const-string v6, "com.mwr.dz.CREATE_ENDPOINT"

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 164
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mwr/dz/services/ClientService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mwr/dz/Agent;->setContext(Landroid/content/Context;)V

    .line 166
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 168
    .local v8, "endpoint_data":Landroid/os/Bundle;
    const-string v5, "name"

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "name":Ljava/lang/String;
    const-string v5, "host"

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "host":Ljava/lang/String;
    const-string v5, "port"

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 171
    .local v3, "port":I
    const-string v5, "ssl"

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 172
    .local v4, "ssl":Z
    const-string v5, "password"

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 173
    .local v9, "password":Ljava/lang/String;
    const-string v5, "ts_path"

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 174
    .local v12, "ts_path":Ljava/lang/String;
    const-string v5, "ts_password"

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 176
    .local v11, "ts_password":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 177
    new-instance v0, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    if-eqz v12, :cond_1

    move-object v5, v12

    :goto_0
    if-eqz v11, :cond_2

    move-object v6, v11

    :goto_1
    if-eqz v9, :cond_3

    move-object v7, v9

    :goto_2
    invoke-direct/range {v0 .. v7}, Lcom/mwr/jdiesel/api/connectors/Endpoint;-><init>(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v0, "new_endpoint":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    iget-object v5, p0, Lcom/mwr/dz/services/ClientService;->endpoint_manager:Lcom/mwr/dz/models/EndpointManager;

    invoke-virtual {v5, v0}, Lcom/mwr/dz/models/EndpointManager;->add(Lcom/mwr/jdiesel/api/connectors/Endpoint;)Z

    .line 180
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    const-string v6, "com.mwr.dz.START_ENDPOINT"

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/mwr/dz/services/ClientService;->startEndpoint(I)V

    .line 186
    .end local v0    # "new_endpoint":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v4    # "ssl":Z
    .end local v8    # "endpoint_data":Landroid/os/Bundle;
    .end local v9    # "password":Ljava/lang/String;
    .end local v11    # "ts_password":Ljava/lang/String;
    .end local v12    # "ts_path":Ljava/lang/String;
    :cond_0
    return v10

    .line 177
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "port":I
    .restart local v4    # "ssl":Z
    .restart local v8    # "endpoint_data":Landroid/os/Bundle;
    .restart local v9    # "password":Ljava/lang/String;
    .restart local v11    # "ts_password":Ljava/lang/String;
    .restart local v12    # "ts_path":Ljava/lang/String;
    :cond_1
    const-string v5, ""

    goto :goto_0

    :cond_2
    const-string v6, ""

    goto :goto_1

    :cond_3
    const-string v7, ""

    goto :goto_2
.end method

.method public startEndpoint(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 232
    iget-object v2, p0, Lcom/mwr/dz/services/ClientService;->clients:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/mwr/dz/services/ClientService;->endpoint_manager:Lcom/mwr/dz/models/EndpointManager;

    invoke-virtual {v2, p1, v4}, Lcom/mwr/dz/models/EndpointManager;->get(IZ)Lcom/mwr/jdiesel/api/connectors/Endpoint;

    move-result-object v1

    .line 235
    .local v1, "endpoint":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/Agent;->getEndpointManager()Lcom/mwr/dz/models/EndpointManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/mwr/dz/models/EndpointManager;->setActive(IZ)V

    .line 237
    new-instance v0, Lcom/mwr/jdiesel/api/links/Client;

    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/Agent;->getDeviceInfo()Lcom/mwr/jdiesel/api/DeviceInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mwr/jdiesel/api/links/Client;-><init>(Lcom/mwr/jdiesel/api/connectors/Endpoint;Lcom/mwr/jdiesel/api/DeviceInfo;)V

    .line 238
    .local v0, "client":Lcom/mwr/jdiesel/api/links/Client;
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getLogger()Lcom/mwr/jdiesel/logger/Logger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mwr/jdiesel/api/links/Client;->setLogger(Lcom/mwr/jdiesel/logger/Logger;)V

    .line 239
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getLogger()Lcom/mwr/jdiesel/logger/Logger;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/mwr/jdiesel/logger/Logger;->addOnLogMessageListener(Lcom/mwr/jdiesel/logger/OnLogMessageListener;)V

    .line 241
    iget-object v2, p0, Lcom/mwr/dz/services/ClientService;->clients:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    iput-boolean v4, v1, Lcom/mwr/jdiesel/api/connectors/Endpoint;->enabled:Z

    .line 244
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/links/Client;->start()V

    .line 246
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const v3, 0x7f06003a

    invoke-virtual {p0, v3}, Lcom/mwr/dz/services/ClientService;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->toConnectionString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 248
    .end local v0    # "client":Lcom/mwr/jdiesel/api/links/Client;
    .end local v1    # "endpoint":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    :cond_0
    return-void
.end method

.method public stopEndpoint(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    .line 251
    iget-object v2, p0, Lcom/mwr/dz/services/ClientService;->endpoint_manager:Lcom/mwr/dz/models/EndpointManager;

    invoke-virtual {v2, p1}, Lcom/mwr/dz/models/EndpointManager;->get(I)Lcom/mwr/jdiesel/api/connectors/Endpoint;

    move-result-object v1

    .line 252
    .local v1, "endpoint":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    iget-object v2, p0, Lcom/mwr/dz/services/ClientService;->clients:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/links/Client;

    .line 254
    .local v0, "client":Lcom/mwr/jdiesel/api/links/Client;
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/Agent;->getEndpointManager()Lcom/mwr/dz/models/EndpointManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v6}, Lcom/mwr/dz/models/EndpointManager;->setActive(IZ)V

    .line 256
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/links/Client;->stopConnector()V

    .line 258
    iput-boolean v6, v1, Lcom/mwr/jdiesel/api/connectors/Endpoint;->enabled:Z

    .line 260
    iget-object v2, p0, Lcom/mwr/dz/services/ClientService;->clients:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 262
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const v3, 0x7f06003b

    invoke-virtual {p0, v3}, Lcom/mwr/dz/services/ClientService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->toConnectionString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 264
    :cond_0
    return-void
.end method
