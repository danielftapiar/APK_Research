.class public Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
.source "CompatibleFieldSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/serializers/FieldSerializer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V
    .locals 0
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 26
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V

    .line 27
    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 18
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer<TT;>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual/range {p0 .. p3}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    .line 49
    .local v13, "object":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/kryo/Kryo;->getGraphContext()Lcom/esotericsoftware/kryo/util/ObjectMap;

    move-result-object v3

    .line 51
    .local v3, "context":Lcom/esotericsoftware/kryo/util/ObjectMap;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-object v4, v15

    check-cast v4, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 52
    .local v4, "fields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    if-nez v4, :cond_6

    .line 53
    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v9

    .line 54
    .local v9, "length":I
    sget-boolean v15, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v15, :cond_0

    const-string v15, "kryo"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Read "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " field names."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    new-array v11, v9, [Ljava/lang/String;

    .line 56
    .local v11, "names":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_1

    .line 57
    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v6

    .line 56
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 59
    :cond_1
    new-array v4, v9, [Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->getFields()[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v1

    .line 62
    .local v1, "allFields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    const/4 v6, 0x0

    array-length v10, v11

    .local v10, "n":I
    :goto_1
    if-ge v6, v10, :cond_5

    .line 63
    aget-object v14, v11, v6

    .line 64
    .local v14, "schemaName":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "ii":I
    array-length v12, v1

    .local v12, "nn":I
    :goto_2
    if-ge v7, v12, :cond_4

    .line 65
    aget-object v15, v1, v7

    iget-object v15, v15, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 66
    aget-object v15, v1, v7

    aput-object v15, v4, v6

    .line 62
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 64
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 70
    :cond_4
    sget-boolean v15, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v15, :cond_2

    const-string v15, "kryo"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Ignore obsolete field: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 72
    .end local v7    # "ii":I
    .end local v12    # "nn":I
    .end local v14    # "schemaName":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/esotericsoftware/kryo/util/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .end local v1    # "allFields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .end local v6    # "i":I
    .end local v9    # "length":I
    .end local v10    # "n":I
    .end local v11    # "names":[Ljava/lang/String;
    :cond_6
    new-instance v8, Lcom/esotericsoftware/kryo/io/InputChunked;

    const/16 v15, 0x400

    move-object/from16 v0, p2

    invoke-direct {v8, v0, v15}, Lcom/esotericsoftware/kryo/io/InputChunked;-><init>(Ljava/io/InputStream;I)V

    .line 76
    .local v8, "inputChunked":Lcom/esotericsoftware/kryo/io/InputChunked;
    invoke-virtual/range {p0 .. p0}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->getGenerics()[Ljava/lang/Class;

    move-result-object v15

    if-eqz v15, :cond_9

    const/4 v5, 0x1

    .line 77
    .local v5, "hasGenerics":Z
    :goto_4
    const/4 v6, 0x0

    .restart local v6    # "i":I
    array-length v10, v4

    .restart local v10    # "n":I
    :goto_5
    if-ge v6, v10, :cond_b

    .line 78
    aget-object v2, v4, v6

    .line 79
    .local v2, "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    if-eqz v2, :cond_7

    if-eqz v5, :cond_7

    .line 83
    iget-object v15, v2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v15}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->getField(Ljava/lang/String;)Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v2

    .line 85
    :cond_7
    if-nez v2, :cond_a

    .line 86
    sget-boolean v15, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v15, :cond_8

    const-string v15, "kryo"

    const-string v16, "Skip obsolete field."

    invoke-static/range {v15 .. v16}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_8
    invoke-virtual {v8}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunks()V

    .line 77
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 76
    .end local v2    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .end local v5    # "hasGenerics":Z
    .end local v6    # "i":I
    .end local v10    # "n":I
    :cond_9
    const/4 v5, 0x0

    goto :goto_4

    .line 90
    .restart local v2    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .restart local v5    # "hasGenerics":Z
    .restart local v6    # "i":I
    .restart local v10    # "n":I
    :cond_a
    invoke-virtual {v2, v8, v13}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v8}, Lcom/esotericsoftware/kryo/io/InputChunked;->nextChunks()V

    goto :goto_6

    .line 93
    .end local v2    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_b
    return-object v13
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 8
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Output;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer<TT;>;"
    .local p3, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/CompatibleFieldSerializer;->getFields()[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v1

    .line 31
    .local v1, "fields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGraphContext()Lcom/esotericsoftware/kryo/util/ObjectMap;

    move-result-object v0

    .line 32
    .local v0, "context":Lcom/esotericsoftware/kryo/util/ObjectMap;
    invoke-virtual {v0, p0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 33
    const/4 v5, 0x0

    invoke-virtual {v0, p0, v5}, Lcom/esotericsoftware/kryo/util/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-boolean v5, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v5, :cond_0

    const-string v5, "kryo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Write "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " field names."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    array-length v5, v1

    const/4 v6, 0x1

    invoke-virtual {p2, v5, v6}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    .line 36
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 37
    aget-object v5, v1, v2

    iget-object v5, v5, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/esotericsoftware/kryo/io/Output;->writeString(Ljava/lang/String;)V

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_1
    new-instance v4, Lcom/esotericsoftware/kryo/io/OutputChunked;

    const/16 v5, 0x400

    invoke-direct {v4, p2, v5}, Lcom/esotericsoftware/kryo/io/OutputChunked;-><init>(Ljava/io/OutputStream;I)V

    .line 41
    .local v4, "outputChunked":Lcom/esotericsoftware/kryo/io/OutputChunked;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    array-length v3, v1

    .restart local v3    # "n":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 42
    aget-object v5, v1, v2

    invoke-virtual {v5, v4, p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v4}, Lcom/esotericsoftware/kryo/io/OutputChunked;->endChunks()V

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 45
    :cond_2
    return-void
.end method
