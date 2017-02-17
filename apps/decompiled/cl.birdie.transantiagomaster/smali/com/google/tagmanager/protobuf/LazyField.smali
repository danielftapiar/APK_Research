.class final Lcom/google/tagmanager/protobuf/LazyField;
.super Ljava/lang/Object;
.source "LazyField.java"


# instance fields
.field private bytes:Lcom/google/tagmanager/protobuf/ByteString;

.field private final defaultInstance:Lcom/google/tagmanager/protobuf/MessageLite;

.field private final extensionRegistry:Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;

.field private volatile value:Lcom/google/tagmanager/protobuf/MessageLite;


# direct methods
.method private ensureInitialized()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyField;->value:Lcom/google/tagmanager/protobuf/MessageLite;

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 103
    :cond_0
    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyField;->value:Lcom/google/tagmanager/protobuf/MessageLite;

    if-eqz v0, :cond_1

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 108
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyField;->bytes:Lcom/google/tagmanager/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyField;->defaultInstance:Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/MessageLite;->getParserForType()Lcom/google/tagmanager/protobuf/Parser;

    move-result-object v0

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/LazyField;->bytes:Lcom/google/tagmanager/protobuf/ByteString;

    iget-object v2, p0, Lcom/google/tagmanager/protobuf/LazyField;->extensionRegistry:Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;

    invoke-interface {v0, v1, v2}, Lcom/google/tagmanager/protobuf/Parser;->parseFrom(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/protobuf/MessageLite;

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/LazyField;->value:Lcom/google/tagmanager/protobuf/MessageLite;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/LazyField;->ensureInitialized()V

    .line 90
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyField;->value:Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getValue()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/LazyField;->ensureInitialized()V

    .line 40
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyField;->value:Lcom/google/tagmanager/protobuf/MessageLite;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/LazyField;->ensureInitialized()V

    .line 84
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyField;->value:Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/LazyField;->ensureInitialized()V

    .line 96
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/LazyField;->value:Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
