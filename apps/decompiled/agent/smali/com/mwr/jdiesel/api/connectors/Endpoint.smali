.class public Lcom/mwr/jdiesel/api/connectors/Endpoint;
.super Lcom/mwr/jdiesel/api/connectors/Connector;
.source "Endpoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/jdiesel/api/connectors/Endpoint$EndpointSerializer;,
        Lcom/mwr/jdiesel/api/connectors/Endpoint$OnDetailedStatusListener;
    }
.end annotation


# static fields
.field public static final ENDPOINT_DELETED:Ljava/lang/String; = "endpoint:deleted"

.field public static final ENDPOINT_HOST:Ljava/lang/String; = "endpoint:host"

.field public static final ENDPOINT_ID:Ljava/lang/String; = "endpoint:id"

.field public static final ENDPOINT_NAME:Ljava/lang/String; = "endpoint:name"

.field public static final ENDPOINT_PASSWORD:Ljava/lang/String; = "endpoint:password"

.field public static final ENDPOINT_PORT:Ljava/lang/String; = "endpoint:port"

.field public static final ENDPOINT_SSL:Ljava/lang/String; = "endpoint:ssl"

.field public static final ENDPOINT_TRUSTSTORE_PASSWORD:Ljava/lang/String; = "endpoint:ts:password"

.field public static final ENDPOINT_TRUSTSTORE_PATH:Ljava/lang/String; = "endpoint:ts:path"


# instance fields
.field private active:Z

.field private host:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private on_detailed_status_listener:Lcom/mwr/jdiesel/api/connectors/Endpoint$OnDetailedStatusListener;

.field private password:Ljava/lang/String;

.field private port:I

.field private ssl:Z

.field private ssl_truststore_password:Ljava/lang/String;

.field private ssl_truststore_path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 65
    const/4 v0, -0x1

    const-string v1, "Endpoint"

    const-string v2, "drozer.local"

    const/16 v3, 0x7ab7

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mwr/jdiesel/api/connectors/Endpoint;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I

    .prologue
    const/4 v5, 0x0

    .line 73
    const-string v6, "/data/data/com.mwr.dz/files/ca.bks"

    const-string v7, "drozer"

    const-string v8, ""

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lcom/mwr/jdiesel/api/connectors/Endpoint;-><init>(ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "ssl"    # Z
    .param p6, "ssl_truststore_path"    # Ljava/lang/String;
    .param p7, "ssl_truststore_password"    # Ljava/lang/String;
    .param p8, "password"    # Ljava/lang/String;
    .param p9, "active"    # Z

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/mwr/jdiesel/api/connectors/Connector;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->id:I

    .line 53
    const-string v0, "Endpoint"

    iput-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->name:Ljava/lang/String;

    .line 54
    const-string v0, "drozer.local"

    iput-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->host:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->password:Ljava/lang/String;

    .line 56
    const/16 v0, 0x7ab7

    iput v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->port:I

    .line 57
    iput-boolean v1, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->ssl:Z

    .line 58
    const-string v0, "drozer"

    iput-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->ssl_truststore_password:Ljava/lang/String;

    .line 59
    const-string v0, "/data/data/com.mwr.dz/files/ca.bks"

    iput-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->ssl_truststore_path:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->active:Z

    .line 77
    iput p1, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->id:I

    .line 78
    iput-object p2, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->name:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->host:Ljava/lang/String;

    .line 80
    iput-object p8, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->password:Ljava/lang/String;

    .line 81
    iput p4, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->port:I

    .line 82
    iput-boolean p5, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->ssl:Z

    .line 83
    iput-object p7, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->ssl_truststore_password:Ljava/lang/String;

    .line 84
    iput-object p6, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->ssl_truststore_path:Ljava/lang/String;

    .line 85
    iput-boolean p9, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->active:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "ssl"    # Z
    .param p5, "ssl_truststore_path"    # Ljava/lang/String;
    .param p6, "ssl_truststore_password"    # Ljava/lang/String;
    .param p7, "password"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v1, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/mwr/jdiesel/api/connectors/Endpoint;-><init>(ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    return-void
.end method

.method public static deserialize(Lcom/mwr/jdiesel/api/connectors/Endpoint$EndpointSerializer;Ljava/lang/Object;)Lcom/mwr/jdiesel/api/connectors/Endpoint;
    .locals 1
    .param p0, "serializer"    # Lcom/mwr/jdiesel/api/connectors/Endpoint$EndpointSerializer;
    .param p1, "serialized"    # Ljava/lang/Object;

    .prologue
    .line 89
    invoke-interface {p0, p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint$EndpointSerializer;->deserialize(Ljava/lang/Object;)Lcom/mwr/jdiesel/api/connectors/Endpoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->port:I

    return v0
.end method

.method public getSSLTrustStorePassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->ssl_truststore_password:Ljava/lang/String;

    return-object v0
.end method

.method public getSSLTrustStorePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->ssl_truststore_path:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustManager()Ljavax/net/ssl/TrustManager;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->isSSL()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    :try_start_0
    new-instance v1, Lcom/mwr/common/tls/trust_managers/KeyStoreTrustManager;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getSSLTrustStorePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getSSLTrustStorePassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/mwr/common/tls/trust_managers/KeyStoreTrustManager;-><init>(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-object v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "getTrustManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 136
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v1, v2

    .line 140
    goto :goto_0
.end method

.method public hasPassword()Z
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getPassword()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->active:Z

    return v0
.end method

.method public isNew()Z
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSSL()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->ssl:Z

    return v0
.end method

.method public serialize(Lcom/mwr/jdiesel/api/connectors/Endpoint$EndpointSerializer;)Ljava/lang/Object;
    .locals 1
    .param p1, "serializer"    # Lcom/mwr/jdiesel/api/connectors/Endpoint$EndpointSerializer;

    .prologue
    .line 157
    invoke-interface {p1, p0}, Lcom/mwr/jdiesel/api/connectors/Endpoint$EndpointSerializer;->serialize(Lcom/mwr/jdiesel/api/connectors/Endpoint;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setAttributes(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V
    .locals 2
    .param p1, "endpoint"    # Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->host:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->password:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->port:I

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getPort()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 169
    iget-boolean v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->ssl:Z

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->isSSL()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->ssl_truststore_password:Ljava/lang/String;

    iget-object v1, p1, Lcom/mwr/jdiesel/api/connectors/Endpoint;->ssl_truststore_password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->ssl_truststore_path:Ljava/lang/String;

    iget-object v1, p1, Lcom/mwr/jdiesel/api/connectors/Endpoint;->ssl_truststore_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-boolean v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->active:Z

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->isActive()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->host:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->name:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->password:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getPort()I

    move-result v0

    iput v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->port:I

    .line 178
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->isSSL()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->ssl:Z

    .line 179
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getSSLTrustStorePassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->ssl_truststore_password:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getSSLTrustStorePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->ssl_truststore_path:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->isActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->active:Z

    .line 183
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->setChanged()V

    .line 184
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->notifyObservers()V

    .line 186
    :cond_1
    return-void
.end method

.method public setDetailedStatus(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "status"    # Landroid/os/Bundle;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->on_detailed_status_listener:Lcom/mwr/jdiesel/api/connectors/Endpoint$OnDetailedStatusListener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->on_detailed_status_listener:Lcom/mwr/jdiesel/api/connectors/Endpoint$OnDetailedStatusListener;

    invoke-interface {v0, p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint$OnDetailedStatusListener;->onDetailedStatus(Landroid/os/Bundle;)V

    .line 191
    :cond_0
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 194
    iput p1, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->id:I

    .line 195
    return-void
.end method

.method public setOnDetailedStatusListener(Lcom/mwr/jdiesel/api/connectors/Endpoint$OnDetailedStatusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mwr/jdiesel/api/connectors/Endpoint$OnDetailedStatusListener;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->on_detailed_status_listener:Lcom/mwr/jdiesel/api/connectors/Endpoint$OnDetailedStatusListener;

    .line 199
    return-void
.end method

.method public toConnectionString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 205
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->host:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->port:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toInetAddress()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 221
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s (%s:%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->host:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/mwr/jdiesel/api/connectors/Endpoint;->port:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getPassword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
