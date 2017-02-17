.class public Lcom/mwr/dz/Agent;
.super Ljava/lang/Object;
.source "Agent.java"


# static fields
.field private static final AGENT_ID:Ljava/lang/String; = "agent:uid"

.field public static final DEFAULT_KEYSTORE:Ljava/lang/String; = "agent.bks"

.field public static final DEFAULT_TRUSTSTORE:Ljava/lang/String; = "ca.bks"

.field private static DEFAULT_UIDS:[Ljava/lang/String; = null

.field private static final INSTANCE:Lcom/mwr/dz/Agent;

.field public static final TAG:Ljava/lang/String; = "agent"


# instance fields
.field private client_service_connection:Lcom/mwr/dz/service_connectors/ClientServiceConnection;

.field private context:Landroid/content/Context;

.field private endpoint_manager:Lcom/mwr/dz/models/EndpointManager;

.field private messenger:Landroid/os/Messenger;

.field private server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

.field private server_service_connection:Lcom/mwr/dz/service_connectors/ServerServiceConnection;

.field private uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 31
    const-string v2, "9774d56d682e549c"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 32
    const-string v2, "0000000000000000"

    aput-object v2, v0, v1

    .line 30
    sput-object v0, Lcom/mwr/dz/Agent;->DEFAULT_UIDS:[Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/mwr/dz/Agent;

    invoke-direct {v0}, Lcom/mwr/dz/Agent;-><init>()V

    sput-object v0, Lcom/mwr/dz/Agent;->INSTANCE:Lcom/mwr/dz/Agent;

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/mwr/dz/Agent;->client_service_connection:Lcom/mwr/dz/service_connectors/ClientServiceConnection;

    .line 44
    iput-object v0, p0, Lcom/mwr/dz/Agent;->context:Landroid/content/Context;

    .line 45
    iput-object v0, p0, Lcom/mwr/dz/Agent;->endpoint_manager:Lcom/mwr/dz/models/EndpointManager;

    .line 46
    iput-object v0, p0, Lcom/mwr/dz/Agent;->messenger:Landroid/os/Messenger;

    .line 47
    iput-object v0, p0, Lcom/mwr/dz/Agent;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    .line 48
    iput-object v0, p0, Lcom/mwr/dz/Agent;->server_service_connection:Lcom/mwr/dz/service_connectors/ServerServiceConnection;

    .line 49
    iput-object v0, p0, Lcom/mwr/dz/Agent;->uid:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private copyResourceToFile(ILjava/io/FileOutputStream;)V
    .locals 4
    .param p1, "resId"    # I
    .param p2, "file"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v3, p0, Lcom/mwr/dz/Agent;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 97
    .local v1, "in":Ljava/io/InputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 99
    .local v0, "buf":[B
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 100
    .local v2, "len":I
    :goto_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 105
    return-void

    .line 101
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 103
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0
.end method

.method private createRandomUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x40

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mwr/dz/Agent;->getMercuryContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getCustomUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/mwr/dz/Agent;->getSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "agent:uid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/mwr/dz/Agent;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/mwr/dz/Agent;->INSTANCE:Lcom/mwr/dz/Agent;

    return-object v0
.end method

.method private static isDefaultUID(Ljava/lang/String;)Z
    .locals 6
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 62
    if-nez p0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 65
    :cond_1
    sget-object v3, Lcom/mwr/dz/Agent;->DEFAULT_UIDS:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 66
    .local v0, "default_uid":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 67
    const/4 v1, 0x1

    goto :goto_0

    .line 65
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public bindServices()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mwr/dz/Agent;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mwr/dz/Agent;->getClientService()Lcom/mwr/dz/service_connectors/ClientServiceConnection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mwr/dz/services/ClientService;->startAndBindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 75
    iget-object v0, p0, Lcom/mwr/dz/Agent;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mwr/dz/Agent;->getServerService()Lcom/mwr/dz/service_connectors/ServerServiceConnection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mwr/dz/services/ServerService;->startAndBindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 76
    return-void
.end method

.method public createDefaultKeyMaterial()V
    .locals 5

    .prologue
    .line 80
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mwr/dz/Agent;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "agent.bks"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    const/high16 v1, 0x7f050000

    iget-object v2, p0, Lcom/mwr/dz/Agent;->context:Landroid/content/Context;

    const-string v3, "agent.bks"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mwr/dz/Agent;->copyResourceToFile(ILjava/io/FileOutputStream;)V

    .line 82
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mwr/dz/Agent;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ca.bks"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    const v1, 0x7f050001

    iget-object v2, p0, Lcom/mwr/dz/Agent;->context:Landroid/content/Context;

    const-string v3, "ca.bks"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mwr/dz/Agent;->copyResourceToFile(ILjava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "agent"

    const-string v2, "Failed to write default key material."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getClientService()Lcom/mwr/dz/service_connectors/ClientServiceConnection;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mwr/dz/Agent;->client_service_connection:Lcom/mwr/dz/service_connectors/ClientServiceConnection;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/mwr/dz/service_connectors/ClientServiceConnection;

    invoke-direct {v0}, Lcom/mwr/dz/service_connectors/ClientServiceConnection;-><init>()V

    iput-object v0, p0, Lcom/mwr/dz/Agent;->client_service_connection:Lcom/mwr/dz/service_connectors/ClientServiceConnection;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/mwr/dz/Agent;->client_service_connection:Lcom/mwr/dz/service_connectors/ClientServiceConnection;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/mwr/jdiesel/api/DeviceInfo;
    .locals 5

    .prologue
    .line 119
    new-instance v0, Lcom/mwr/jdiesel/api/DeviceInfo;

    invoke-virtual {p0}, Lcom/mwr/dz/Agent;->getUID()Ljava/lang/String;

    move-result-object v1

    .line 120
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 121
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 122
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 119
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mwr/jdiesel/api/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getEndpointManager()Lcom/mwr/dz/models/EndpointManager;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mwr/dz/Agent;->endpoint_manager:Lcom/mwr/dz/models/EndpointManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mwr/dz/Agent;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Lcom/mwr/dz/models/EndpointManager;

    iget-object v1, p0, Lcom/mwr/dz/Agent;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mwr/dz/models/EndpointManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mwr/dz/Agent;->endpoint_manager:Lcom/mwr/dz/models/EndpointManager;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/mwr/dz/Agent;->endpoint_manager:Lcom/mwr/dz/models/EndpointManager;

    return-object v0
.end method

.method public getMercuryContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mwr/dz/Agent;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mwr/dz/Agent;->messenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/mwr/dz/service_connectors/IncomingReplyHandler;

    invoke-static {}, Lcom/mwr/dz/Agent;->getInstance()Lcom/mwr/dz/Agent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mwr/dz/service_connectors/IncomingReplyHandler;-><init>(Lcom/mwr/dz/Agent;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mwr/dz/Agent;->messenger:Landroid/os/Messenger;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/mwr/dz/Agent;->messenger:Landroid/os/Messenger;

    return-object v0
.end method

.method public getServerParameters()Lcom/mwr/jdiesel/api/connectors/Server;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mwr/dz/Agent;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-direct {v0}, Lcom/mwr/jdiesel/api/connectors/Server;-><init>()V

    iput-object v0, p0, Lcom/mwr/dz/Agent;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    .line 147
    new-instance v0, Lcom/mwr/dz/models/ServerSettings;

    invoke-direct {v0}, Lcom/mwr/dz/models/ServerSettings;-><init>()V

    iget-object v1, p0, Lcom/mwr/dz/Agent;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v0, v1}, Lcom/mwr/dz/models/ServerSettings;->load(Lcom/mwr/jdiesel/api/connectors/Server;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/mwr/dz/Agent;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    return-object v0
.end method

.method public getServerService()Lcom/mwr/dz/service_connectors/ServerServiceConnection;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mwr/dz/Agent;->server_service_connection:Lcom/mwr/dz/service_connectors/ServerServiceConnection;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/mwr/dz/service_connectors/ServerServiceConnection;

    invoke-direct {v0}, Lcom/mwr/dz/service_connectors/ServerServiceConnection;-><init>()V

    iput-object v0, p0, Lcom/mwr/dz/Agent;->server_service_connection:Lcom/mwr/dz/service_connectors/ServerServiceConnection;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/mwr/dz/Agent;->server_service_connection:Lcom/mwr/dz/service_connectors/ServerServiceConnection;

    return-object v0
.end method

.method public getSettings()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mwr/dz/Agent;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mwr/dz/Agent;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/mwr/dz/Agent;->getCustomUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mwr/dz/Agent;->uid:Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/mwr/dz/Agent;->uid:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mwr/dz/Agent;->uid:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/mwr/dz/Agent;->uid:Ljava/lang/String;

    .line 181
    :goto_0
    return-object v1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/mwr/dz/Agent;->getMercuryContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mwr/dz/Agent;->uid:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/mwr/dz/Agent;->uid:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mwr/dz/Agent;->uid:Ljava/lang/String;

    invoke-static {v1}, Lcom/mwr/dz/Agent;->isDefaultUID(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    :cond_1
    invoke-direct {p0}, Lcom/mwr/dz/Agent;->createRandomUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mwr/dz/Agent;->uid:Ljava/lang/String;

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/mwr/dz/Agent;->getSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 178
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "agent:uid"

    iget-object v2, p0, Lcom/mwr/dz/Agent;->uid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    iget-object v1, p0, Lcom/mwr/dz/Agent;->uid:Ljava/lang/String;

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/dz/Agent;->context:Landroid/content/Context;

    .line 187
    invoke-virtual {p0}, Lcom/mwr/dz/Agent;->createDefaultKeyMaterial()V

    .line 188
    return-void
.end method

.method public unbindServices()V
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/mwr/dz/Agent;->getClientService()Lcom/mwr/dz/service_connectors/ClientServiceConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/mwr/dz/Agent;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mwr/dz/service_connectors/ClientServiceConnection;->unbind(Landroid/content/Context;)V

    .line 192
    invoke-virtual {p0}, Lcom/mwr/dz/Agent;->getServerService()Lcom/mwr/dz/service_connectors/ServerServiceConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/mwr/dz/Agent;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mwr/dz/service_connectors/ServerServiceConnection;->unbind(Landroid/content/Context;)V

    .line 193
    return-void
.end method
