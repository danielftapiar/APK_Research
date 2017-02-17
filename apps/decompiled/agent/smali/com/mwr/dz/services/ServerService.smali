.class public Lcom/mwr/dz/services/ServerService;
.super Lcom/mwr/dz/services/ConnectorService;
.source "ServerService.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$connectors$Connector$Status:[I = null

.field public static final MSG_GET_DETAILED_SERVER_STATUS:I = 0x15

.field public static final MSG_GET_SERVER_STATUS:I = 0x16

.field public static final MSG_GET_SSL_FINGERPRINT:I = 0x17

.field public static final MSG_START_SERVER:I = 0x18

.field public static final MSG_STOP_SERVER:I = 0x19


# instance fields
.field private server:Lcom/mwr/jdiesel/api/links/Server;

.field private server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;


# direct methods
.method static synthetic $SWITCH_TABLE$com$mwr$jdiesel$api$connectors$Connector$Status()[I
    .locals 3

    .prologue
    .line 22
    sget-object v0, Lcom/mwr/dz/services/ServerService;->$SWITCH_TABLE$com$mwr$jdiesel$api$connectors$Connector$Status:[I

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
    sput-object v0, Lcom/mwr/dz/services/ServerService;->$SWITCH_TABLE$com$mwr$jdiesel$api$connectors$Connector$Status:[I

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
    .line 22
    invoke-direct {p0}, Lcom/mwr/dz/services/ConnectorService;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/dz/services/ServerService;->server:Lcom/mwr/jdiesel/api/links/Server;

    .line 31
    new-instance v0, Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/connectors/Server;-><init>()V

    iput-object v0, p0, Lcom/mwr/dz/services/ServerService;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    .line 22
    return-void
.end method

.method public static startAndBindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceConnection"    # Landroid/content/ServiceConnection;

    .prologue
    .line 195
    sget-boolean v1, Lcom/mwr/dz/services/ServerService;->running:Z

    if-nez v1, :cond_0

    .line 196
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mwr/dz/services/ServerService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 198
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mwr/dz/services/ServerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 200
    return-void
.end method


# virtual methods
.method public getDetailedStatus()Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "connector:enabled"

    iget-object v2, p0, Lcom/mwr/dz/services/ServerService;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/connectors/Server;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    const-string v1, "server:password"

    iget-object v2, p0, Lcom/mwr/dz/services/ServerService;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/connectors/Server;->hasPassword()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    const-string v1, "server:ssl"

    iget-object v2, p0, Lcom/mwr/dz/services/ServerService;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/connectors/Server;->isSSL()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    invoke-static {}, Lcom/mwr/dz/services/ServerService;->$SWITCH_TABLE$com$mwr$jdiesel$api$connectors$Connector$Status()[I

    move-result-object v1

    iget-object v2, p0, Lcom/mwr/dz/services/ServerService;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/connectors/Server;->getStatus()Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 57
    :pswitch_0
    const-string v1, "connector:connected"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    const-string v1, "connector:opensessions"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    :goto_0
    return-object v0

    .line 42
    :pswitch_1
    const-string v1, "connector:connected"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    const-string v1, "connector:opensessions"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 47
    :pswitch_2
    const-string v1, "connector:connected"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    const-string v1, "connector:opensessions"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 52
    :pswitch_3
    const-string v1, "connector:connected"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    const-string v1, "connector:opensessions"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getServerFingerprint()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v0, "data":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/mwr/dz/services/ServerService;->server:Lcom/mwr/jdiesel/api/links/Server;

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "certificate:fingerprint"

    iget-object v2, p0, Lcom/mwr/dz/services/ServerService;->server:Lcom/mwr/jdiesel/api/links/Server;

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/links/Server;->getHostCertificateFingerprint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_0
    return-object v0

    .line 71
    :cond_0
    const-string v1, "certificate:fingerprint"

    const-string v2, "No running server."

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStatus()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "server"

    iget-object v2, p0, Lcom/mwr/dz/services/ServerService;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/connectors/Server;->getStatus()Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v4, 0x7f060041

    .line 86
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 89
    :pswitch_0
    const/4 v2, 0x0

    const/16 v3, 0x15

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 90
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/mwr/dz/services/ServerService;->getDetailedStatus()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 92
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    .end local v1    # "message":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v4}, Lcom/mwr/dz/services/ServerService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    const/4 v2, 0x0

    const/16 v3, 0x16

    :try_start_1
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 102
    .restart local v1    # "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/mwr/dz/services/ServerService;->getStatus()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 104
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 106
    .end local v1    # "message":Landroid/os/Message;
    :catch_1
    move-exception v0

    .line 107
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v4}, Lcom/mwr/dz/services/ServerService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_2
    const/4 v2, 0x0

    const/16 v3, 0x17

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 114
    .restart local v1    # "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/mwr/dz/services/ServerService;->getServerFingerprint()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 116
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 118
    .end local v1    # "message":Landroid/os/Message;
    :catch_2
    move-exception v0

    .line 119
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v4}, Lcom/mwr/dz/services/ServerService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_3
    :try_start_3
    invoke-virtual {p0}, Lcom/mwr/dz/services/ServerService;->startServer()V

    .line 127
    const/4 v2, 0x0

    const/16 v3, 0x16

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 128
    .restart local v1    # "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/mwr/dz/services/ServerService;->getStatus()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 130
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 132
    .end local v1    # "message":Landroid/os/Message;
    :catch_3
    move-exception v0

    .line 133
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v4}, Lcom/mwr/dz/services/ServerService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 139
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_4
    :try_start_4
    invoke-virtual {p0}, Lcom/mwr/dz/services/ServerService;->stopServer()V

    .line 141
    const/4 v2, 0x0

    const/16 v3, 0x16

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 142
    .restart local v1    # "message":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/mwr/dz/services/ServerService;->getStatus()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 144
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 146
    .end local v1    # "message":Landroid/os/Message;
    :catch_4
    move-exception v0

    .line 147
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v4}, Lcom/mwr/dz/services/ServerService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/mwr/dz/services/ConnectorService;->onCreate()V

    .line 172
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mwr/dz/services/ServerService;->running:Z

    .line 174
    iget-object v0, p0, Lcom/mwr/dz/services/ServerService;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    new-instance v1, Lcom/mwr/dz/services/ServerService$1;

    invoke-direct {v1, p0}, Lcom/mwr/dz/services/ServerService$1;-><init>(Lcom/mwr/dz/services/ServerService;)V

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/connectors/Server;->addObserver(Ljava/util/Observer;)V

    .line 186
    iget-object v0, p0, Lcom/mwr/dz/services/ServerService;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->OFFLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/connectors/Server;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 187
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mwr/dz/services/ServerService;->running:Z

    .line 192
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 156
    invoke-super {p0, p1, p2, p3}, Lcom/mwr/dz/services/ConnectorService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 158
    .local v0, "ret_val":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string v2, "com.mwr.dz.START_EMBEDDED"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mwr/dz/services/ServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mwr/dz/Agent;->setContext(Landroid/content/Context;)V

    .line 160
    invoke-virtual {p0}, Lcom/mwr/dz/services/ServerService;->startServer()V

    .line 163
    :cond_0
    return v0
.end method

.method public startServer()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 203
    iget-object v0, p0, Lcom/mwr/dz/services/ServerService;->server:Lcom/mwr/jdiesel/api/links/Server;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/mwr/dz/models/ServerSettings;

    invoke-direct {v0}, Lcom/mwr/dz/models/ServerSettings;-><init>()V

    iget-object v1, p0, Lcom/mwr/dz/services/ServerService;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v0, v1}, Lcom/mwr/dz/models/ServerSettings;->load(Lcom/mwr/jdiesel/api/connectors/Server;)V

    .line 206
    iget-object v0, p0, Lcom/mwr/dz/services/ServerService;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    iput-boolean v3, v0, Lcom/mwr/jdiesel/api/connectors/Server;->enabled:Z

    .line 207
    new-instance v0, Lcom/mwr/jdiesel/api/links/Server;

    iget-object v1, p0, Lcom/mwr/dz/services/ServerService;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mwr/dz/Agent;->getDeviceInfo()Lcom/mwr/jdiesel/api/DeviceInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mwr/jdiesel/api/links/Server;-><init>(Lcom/mwr/jdiesel/api/connectors/Server;Lcom/mwr/jdiesel/api/DeviceInfo;)V

    iput-object v0, p0, Lcom/mwr/dz/services/ServerService;->server:Lcom/mwr/jdiesel/api/links/Server;

    .line 208
    iget-object v0, p0, Lcom/mwr/dz/services/ServerService;->server:Lcom/mwr/jdiesel/api/links/Server;

    iget-object v1, p0, Lcom/mwr/dz/services/ServerService;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Server;->getLogger()Lcom/mwr/jdiesel/logger/Logger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/links/Server;->setLogger(Lcom/mwr/jdiesel/logger/Logger;)V

    .line 209
    iget-object v0, p0, Lcom/mwr/dz/services/ServerService;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/connectors/Server;->getLogger()Lcom/mwr/jdiesel/logger/Logger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/logger/Logger;->addOnLogMessageListener(Lcom/mwr/jdiesel/logger/OnLogMessageListener;)V

    .line 211
    iget-object v0, p0, Lcom/mwr/dz/services/ServerService;->server:Lcom/mwr/jdiesel/api/links/Server;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/links/Server;->start()V

    .line 213
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const v1, 0x7f060023

    invoke-virtual {p0, v1}, Lcom/mwr/dz/services/ServerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mwr/dz/services/ServerService;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/connectors/Server;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 215
    :cond_0
    return-void
.end method

.method public stopServer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 218
    iget-object v0, p0, Lcom/mwr/dz/services/ServerService;->server:Lcom/mwr/jdiesel/api/links/Server;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/mwr/dz/services/ServerService;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    iput-boolean v4, v0, Lcom/mwr/jdiesel/api/connectors/Server;->enabled:Z

    .line 220
    iget-object v0, p0, Lcom/mwr/dz/services/ServerService;->server:Lcom/mwr/jdiesel/api/links/Server;

    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/links/Server;->stopConnector()V

    .line 222
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const v1, 0x7f060024

    invoke-virtual {p0, v1}, Lcom/mwr/dz/services/ServerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mwr/dz/services/ServerService;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v3}, Lcom/mwr/jdiesel/api/connectors/Server;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mwr/dz/services/ServerService;->server:Lcom/mwr/jdiesel/api/links/Server;

    .line 226
    :cond_0
    return-void
.end method
