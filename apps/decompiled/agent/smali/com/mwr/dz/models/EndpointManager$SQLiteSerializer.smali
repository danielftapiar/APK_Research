.class Lcom/mwr/dz/models/EndpointManager$SQLiteSerializer;
.super Ljava/lang/Object;
.source "EndpointManager.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/connectors/Endpoint$EndpointSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/dz/models/EndpointManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SQLiteSerializer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mwr/dz/models/EndpointManager;


# direct methods
.method private constructor <init>(Lcom/mwr/dz/models/EndpointManager;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mwr/dz/models/EndpointManager$SQLiteSerializer;->this$0:Lcom/mwr/dz/models/EndpointManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mwr/dz/models/EndpointManager;Lcom/mwr/dz/models/EndpointManager$SQLiteSerializer;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mwr/dz/models/EndpointManager$SQLiteSerializer;-><init>(Lcom/mwr/dz/models/EndpointManager;)V

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/Object;)Lcom/mwr/jdiesel/api/connectors/Endpoint;
    .locals 13
    .param p1, "ser"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 57
    move-object v10, p1

    check-cast v10, Landroid/database/Cursor;

    .line 59
    .local v10, "cur":Landroid/database/Cursor;
    new-instance v0, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v9, :cond_0

    move v5, v9

    :goto_0
    const/4 v6, 0x5

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v12, 0x8

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-ne v12, v9, :cond_1

    :goto_1
    invoke-direct/range {v0 .. v9}, Lcom/mwr/jdiesel/api/connectors/Endpoint;-><init>(ILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    move v5, v11

    goto :goto_0

    :cond_1
    move v9, v11

    goto :goto_1
.end method

.method public serialize(Lcom/mwr/jdiesel/api/connectors/Endpoint;)Ljava/lang/Object;
    .locals 5
    .param p1, "endpoint"    # Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 64
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 66
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "host"

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "port"

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v4, "ssl"

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->isSSL()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    const-string v1, "ssl_truststore_path"

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getSSLTrustStorePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "ssl_truststore_password"

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getSSLTrustStorePassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "password"

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "active"

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 75
    return-object v0

    :cond_0
    move v1, v3

    .line 69
    goto :goto_0

    :cond_1
    move v2, v3

    .line 73
    goto :goto_1
.end method
