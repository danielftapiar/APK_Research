.class public Lcom/mwr/dz/models/EndpointManager;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EndpointManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/dz/models/EndpointManager$OnDatasetChangeListener;,
        Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;,
        Lcom/mwr/dz/models/EndpointManager$SQLiteSerializer;
    }
.end annotation


# static fields
.field public static final ACTIVE_COLUMN:Ljava/lang/String; = "active"

.field private static final DATABASE_VERSION:I = 0x4

.field private static final DB_FILE_NAME:Ljava/lang/String; = "drozer.db"

.field public static final HOST_COLUMN:Ljava/lang/String; = "host"

.field public static final ID_COLUMN:Ljava/lang/String; = "id"

.field public static final NAME_COLUMN:Ljava/lang/String; = "name"

.field public static final PASSWORD_COLUMN:Ljava/lang/String; = "password"

.field public static final PORT_COLUMN:Ljava/lang/String; = "port"

.field public static final SSL_ENABLED_COLUMN:Ljava/lang/String; = "ssl"

.field public static final SSL_TRUSTSTORE_PASSWORD_COLUMN:Ljava/lang/String; = "ssl_truststore_password"

.field public static final SSL_TRUSTSTORE_PATH_COLUMN:Ljava/lang/String; = "ssl_truststore_path"

.field private static final TABLE_NAME:Ljava/lang/String; = "endpoints"


# instance fields
.field private endpoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mwr/jdiesel/api/connectors/Endpoint;",
            ">;"
        }
    .end annotation
.end field

.field private on_dataset_change_listener:Lcom/mwr/dz/models/EndpointManager$OnDatasetChangeListener;

.field private on_endpoint_status_change_listener:Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;

.field private final serializer:Lcom/mwr/dz/models/EndpointManager$SQLiteSerializer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 86
    const-string v0, "drozer.db"

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 80
    iput-object v2, p0, Lcom/mwr/dz/models/EndpointManager;->endpoints:Ljava/util/ArrayList;

    .line 81
    iput-object v2, p0, Lcom/mwr/dz/models/EndpointManager;->on_dataset_change_listener:Lcom/mwr/dz/models/EndpointManager$OnDatasetChangeListener;

    .line 82
    iput-object v2, p0, Lcom/mwr/dz/models/EndpointManager;->on_endpoint_status_change_listener:Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;

    .line 83
    new-instance v0, Lcom/mwr/dz/models/EndpointManager$SQLiteSerializer;

    invoke-direct {v0, p0, v2}, Lcom/mwr/dz/models/EndpointManager$SQLiteSerializer;-><init>(Lcom/mwr/dz/models/EndpointManager;Lcom/mwr/dz/models/EndpointManager$SQLiteSerializer;)V

    iput-object v0, p0, Lcom/mwr/dz/models/EndpointManager;->serializer:Lcom/mwr/dz/models/EndpointManager$SQLiteSerializer;

    .line 87
    return-void
.end method

.method static synthetic access$0(Lcom/mwr/dz/models/EndpointManager;)Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mwr/dz/models/EndpointManager;->on_endpoint_status_change_listener:Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;

    return-object v0
.end method

.method private getFromDatabase(I)Lcom/mwr/jdiesel/api/connectors/Endpoint;
    .locals 12
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 211
    const/4 v10, 0x0

    .line 213
    .local v10, "endpoint":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    invoke-virtual {p0}, Lcom/mwr/dz/models/EndpointManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 214
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "endpoints"

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 216
    .local v9, "cur":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    .local v11, "has_item":Z
    :goto_0
    if-nez v11, :cond_0

    .line 245
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 246
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 248
    return-object v10

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/mwr/dz/models/EndpointManager;->serializer:Lcom/mwr/dz/models/EndpointManager$SQLiteSerializer;

    invoke-static {v1, v9}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->deserialize(Lcom/mwr/jdiesel/api/connectors/Endpoint$EndpointSerializer;Ljava/lang/Object;)Lcom/mwr/jdiesel/api/connectors/Endpoint;

    move-result-object v10

    .line 218
    new-instance v1, Lcom/mwr/dz/models/EndpointManager$2;

    invoke-direct {v1, p0}, Lcom/mwr/dz/models/EndpointManager$2;-><init>(Lcom/mwr/dz/models/EndpointManager;)V

    invoke-virtual {v10, v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->addObserver(Ljava/util/Observer;)V

    .line 239
    sget-object v1, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->OFFLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    invoke-virtual {v10, v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->setStatus(Lcom/mwr/jdiesel/api/connectors/Connector$Status;)V

    .line 242
    iget-object v1, p0, Lcom/mwr/dz/models/EndpointManager;->endpoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    goto :goto_0
.end method


# virtual methods
.method public activeSize()I
    .locals 5

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "ctr":I
    invoke-virtual {p0}, Lcom/mwr/dz/models/EndpointManager;->all()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 97
    return v0

    .line 92
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 93
    .local v1, "e":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getStatus()Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    move-result-object v3

    sget-object v4, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ONLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    if-ne v3, v4, :cond_0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public add(Lcom/mwr/jdiesel/api/connectors/Endpoint;)Z
    .locals 6
    .param p1, "endpoint"    # Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/mwr/dz/models/EndpointManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 102
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "endpoints"

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/mwr/dz/models/EndpointManager;->serializer:Lcom/mwr/dz/models/EndpointManager$SQLiteSerializer;

    invoke-virtual {p1, v3}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->serialize(Lcom/mwr/jdiesel/api/connectors/Endpoint$EndpointSerializer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 103
    .local v1, "id":J
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 105
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 106
    long-to-int v3, v1

    invoke-virtual {p1, v3}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->setId(I)V

    .line 107
    iget-object v3, p0, Lcom/mwr/dz/models/EndpointManager;->endpoints:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v3, p0, Lcom/mwr/dz/models/EndpointManager;->on_dataset_change_listener:Lcom/mwr/dz/models/EndpointManager$OnDatasetChangeListener;

    if-eqz v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/mwr/dz/models/EndpointManager;->on_dataset_change_listener:Lcom/mwr/dz/models/EndpointManager$OnDatasetChangeListener;

    invoke-interface {v3, p0}, Lcom/mwr/dz/models/EndpointManager$OnDatasetChangeListener;->onDatasetChange(Lcom/mwr/dz/models/EndpointManager;)V

    .line 112
    :cond_0
    const/4 v3, 0x1

    .line 115
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public all()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mwr/jdiesel/api/connectors/Endpoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v1, p0, Lcom/mwr/dz/models/EndpointManager;->endpoints:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mwr/dz/models/EndpointManager;->endpoints:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {p0}, Lcom/mwr/dz/models/EndpointManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 124
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "endpoints"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 126
    .local v9, "cur":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    .local v11, "has_item":Z
    :goto_0
    if-nez v11, :cond_1

    .line 152
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 153
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 156
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cur":Landroid/database/Cursor;
    .end local v11    # "has_item":Z
    :cond_0
    iget-object v1, p0, Lcom/mwr/dz/models/EndpointManager;->endpoints:Ljava/util/ArrayList;

    return-object v1

    .line 127
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "cur":Landroid/database/Cursor;
    .restart local v11    # "has_item":Z
    :cond_1
    iget-object v1, p0, Lcom/mwr/dz/models/EndpointManager;->serializer:Lcom/mwr/dz/models/EndpointManager$SQLiteSerializer;

    invoke-static {v1, v9}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->deserialize(Lcom/mwr/jdiesel/api/connectors/Endpoint$EndpointSerializer;Ljava/lang/Object;)Lcom/mwr/jdiesel/api/connectors/Endpoint;

    move-result-object v10

    .line 128
    .local v10, "e":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    new-instance v1, Lcom/mwr/dz/models/EndpointManager$1;

    invoke-direct {v1, p0}, Lcom/mwr/dz/models/EndpointManager$1;-><init>(Lcom/mwr/dz/models/EndpointManager;)V

    invoke-virtual {v10, v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->addObserver(Ljava/util/Observer;)V

    .line 149
    iget-object v1, p0, Lcom/mwr/dz/models/EndpointManager;->endpoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    goto :goto_0
.end method

.method public anyActive()Z
    .locals 4

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/mwr/dz/models/EndpointManager;->all()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 160
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 161
    .local v0, "e":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getStatus()Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    move-result-object v2

    sget-object v3, Lcom/mwr/jdiesel/api/connectors/Connector$Status;->ONLINE:Lcom/mwr/jdiesel/api/connectors/Connector$Status;

    if-ne v2, v3, :cond_0

    .line 162
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public get(I)Lcom/mwr/jdiesel/api/connectors/Endpoint;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/mwr/dz/models/EndpointManager;->all()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    invoke-direct {p0, p1}, Lcom/mwr/dz/models/EndpointManager;->getFromDatabase(I)Lcom/mwr/jdiesel/api/connectors/Endpoint;

    move-result-object v0

    :goto_0
    return-object v0

    .line 169
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 170
    .local v0, "endpoint":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    invoke-virtual {v0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0
.end method

.method public get(IZ)Lcom/mwr/jdiesel/api/connectors/Endpoint;
    .locals 11
    .param p1, "id"    # I
    .param p2, "reload"    # Z

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-virtual {p0, p1}, Lcom/mwr/dz/models/EndpointManager;->get(I)Lcom/mwr/jdiesel/api/connectors/Endpoint;

    move-result-object v9

    .line 181
    .local v9, "endpoint":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    if-eqz v9, :cond_1

    if-eqz p2, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/mwr/dz/models/EndpointManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 183
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "endpoints"

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v9}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 185
    .local v8, "cur":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 187
    .local v10, "fresh":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/mwr/dz/models/EndpointManager;->serializer:Lcom/mwr/dz/models/EndpointManager$SQLiteSerializer;

    invoke-static {v1, v8}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->deserialize(Lcom/mwr/jdiesel/api/connectors/Endpoint$EndpointSerializer;Ljava/lang/Object;)Lcom/mwr/jdiesel/api/connectors/Endpoint;

    move-result-object v10

    .line 190
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 191
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 193
    if-eqz v10, :cond_2

    .line 194
    invoke-virtual {v9, v10}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->setAttributes(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V

    .line 199
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cur":Landroid/database/Cursor;
    .end local v10    # "fresh":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    :cond_1
    return-object v9

    .line 196
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cur":Landroid/database/Cursor;
    .restart local v10    # "fresh":Lcom/mwr/jdiesel/api/connectors/Endpoint;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "could not load Endpoint "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from the database"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 253
    const-string v0, "CREATE TABLE IF NOT EXISTS endpoints (id integer PRIMARY KEY AUTOINCREMENT, name varchar(255) NOT NULL, host varchar(255) NOT NULL, port integer NOT NULL, ssl integer DEFAULT 0 NOT NULL, ssl_truststore_path varchar(255) DEFAULT \'\' NOT NULL, ssl_truststore_password varchar(255) DEFAULT \'\' NOT NULL, password varchar(255) DEFAULT \'\' NOT NULL, active integer DEFAULT 0 NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 267
    const-string v0, "EndpointManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upgrading database from version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    .line 270
    const-string v0, "ALTER TABLE endpoints ADD ssl integer DEFAULT 0 NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 271
    const-string v0, "ALTER TABLE endpoints ADD ssl_truststore_path ssl_truststore_path varchar(255) DEFAULT \'\' NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 272
    const-string v0, "ALTER TABLE endpoints ADD ssl_truststore_password varchar(255) DEFAULT \'\' NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 275
    :cond_0
    const/4 v0, 0x2

    if-gt p2, v0, :cond_1

    .line 276
    const-string v0, "ALTER TABLE endpoints ADD password varchar(255) DEFAULT \'\' NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 278
    :cond_1
    const/4 v0, 0x3

    if-gt p2, v0, :cond_2

    .line 279
    const-string v0, "ALTER TABLE endpoints ADD active integer DEFAULT 0 NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 280
    :cond_2
    return-void
.end method

.method public remove(Lcom/mwr/jdiesel/api/connectors/Endpoint;)Z
    .locals 8
    .param p1, "endpoint"    # Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 283
    invoke-virtual {p0}, Lcom/mwr/dz/models/EndpointManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 284
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "endpoints"

    const-string v5, "id=?"

    new-array v6, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 285
    .local v1, "rows":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 287
    if-ne v1, v2, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/mwr/dz/models/EndpointManager;->all()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 290
    iget-object v3, p0, Lcom/mwr/dz/models/EndpointManager;->on_dataset_change_listener:Lcom/mwr/dz/models/EndpointManager$OnDatasetChangeListener;

    if-eqz v3, :cond_0

    .line 291
    iget-object v3, p0, Lcom/mwr/dz/models/EndpointManager;->on_dataset_change_listener:Lcom/mwr/dz/models/EndpointManager$OnDatasetChangeListener;

    invoke-interface {v3, p0}, Lcom/mwr/dz/models/EndpointManager$OnDatasetChangeListener;->onDatasetChange(Lcom/mwr/dz/models/EndpointManager;)V

    .line 296
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public setActive(IZ)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "state"    # Z

    .prologue
    .line 203
    const-string v2, "Endpoint Manager"

    if-eqz p2, :cond_0

    const-string v1, "Enabled"

    :goto_0
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "active"

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    invoke-virtual {p0}, Lcom/mwr/dz/models/EndpointManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "endpoints"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 208
    return-void

    .line 203
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    const-string v1, "Disabled"

    goto :goto_0

    .line 206
    .restart local v0    # "cv":Landroid/content/ContentValues;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setOnDatasetChangeListener(Lcom/mwr/dz/models/EndpointManager$OnDatasetChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mwr/dz/models/EndpointManager$OnDatasetChangeListener;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/mwr/dz/models/EndpointManager;->on_dataset_change_listener:Lcom/mwr/dz/models/EndpointManager$OnDatasetChangeListener;

    .line 302
    return-void
.end method

.method public setOnEndpointStatusChangeListener(Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/mwr/dz/models/EndpointManager;->on_endpoint_status_change_listener:Lcom/mwr/dz/models/EndpointManager$OnEndpointStatusChangeListener;

    .line 306
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/mwr/dz/models/EndpointManager;->all()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public update(Lcom/mwr/jdiesel/api/connectors/Endpoint;)Z
    .locals 9
    .param p1, "endpoint"    # Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 313
    invoke-virtual {p0}, Lcom/mwr/dz/models/EndpointManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 314
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "endpoints"

    iget-object v2, p0, Lcom/mwr/dz/models/EndpointManager;->serializer:Lcom/mwr/dz/models/EndpointManager$SQLiteSerializer;

    invoke-virtual {p1, v2}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->serialize(Lcom/mwr/jdiesel/api/connectors/Endpoint$EndpointSerializer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v6, "id=?"

    new-array v7, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v0, v5, v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 315
    .local v1, "rows":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 317
    if-ne v1, v3, :cond_1

    .line 318
    invoke-virtual {p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mwr/dz/models/EndpointManager;->get(I)Lcom/mwr/jdiesel/api/connectors/Endpoint;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->setAttributes(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V

    .line 320
    iget-object v2, p0, Lcom/mwr/dz/models/EndpointManager;->on_dataset_change_listener:Lcom/mwr/dz/models/EndpointManager$OnDatasetChangeListener;

    if-eqz v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/mwr/dz/models/EndpointManager;->on_dataset_change_listener:Lcom/mwr/dz/models/EndpointManager$OnDatasetChangeListener;

    invoke-interface {v2, p0}, Lcom/mwr/dz/models/EndpointManager$OnDatasetChangeListener;->onDatasetChange(Lcom/mwr/dz/models/EndpointManager;)V

    :cond_0
    move v2, v3

    .line 326
    :goto_0
    return v2

    :cond_1
    move v2, v4

    goto :goto_0
.end method
