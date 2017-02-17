.class public Lcom/esotericsoftware/kryo/serializers/JavaSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "JavaSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p3, "type"    # Ljava/lang/Class;

    .prologue
    .line 39
    :try_start_0
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGraphContext()Lcom/esotericsoftware/kryo/util/ObjectMap;

    move-result-object v1

    .line 40
    .local v1, "graphContext":Lcom/esotericsoftware/kryo/util/ObjectMap;
    invoke-virtual {v1, p0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/ObjectInputStream;

    .line 41
    .local v2, "objectStream":Ljava/io/ObjectInputStream;
    if-nez v2, :cond_0

    .line 42
    new-instance v2, Ljava/io/ObjectInputStream;

    .end local v2    # "objectStream":Ljava/io/ObjectInputStream;
    invoke-direct {v2, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 43
    .restart local v2    # "objectStream":Ljava/io/ObjectInputStream;
    invoke-virtual {v1, p0, v2}, Lcom/esotericsoftware/kryo/util/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_0
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 46
    .end local v1    # "graphContext":Lcom/esotericsoftware/kryo/util/ObjectMap;
    .end local v2    # "objectStream":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Lcom/esotericsoftware/kryo/KryoException;

    const-string v4, "Error during Java deserialization."

    invoke-direct {v3, v4, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 5
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 24
    :try_start_0
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGraphContext()Lcom/esotericsoftware/kryo/util/ObjectMap;

    move-result-object v1

    .line 25
    .local v1, "graphContext":Lcom/esotericsoftware/kryo/util/ObjectMap;
    invoke-virtual {v1, p0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/ObjectOutputStream;

    .line 26
    .local v2, "objectStream":Ljava/io/ObjectOutputStream;
    if-nez v2, :cond_0

    .line 27
    new-instance v2, Ljava/io/ObjectOutputStream;

    .end local v2    # "objectStream":Ljava/io/ObjectOutputStream;
    invoke-direct {v2, p2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    .restart local v2    # "objectStream":Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p0, v2}, Lcom/esotericsoftware/kryo/util/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_0
    invoke-virtual {v2, p3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-void

    .line 32
    .end local v1    # "graphContext":Lcom/esotericsoftware/kryo/util/ObjectMap;
    .end local v2    # "objectStream":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v0

    .line 33
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Lcom/esotericsoftware/kryo/KryoException;

    const-string v4, "Error during Java serialization."

    invoke-direct {v3, v4, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
