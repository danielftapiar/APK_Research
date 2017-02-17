.class public Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
.source "TaggedFieldSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$Tag;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/serializers/FieldSerializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private deprecated:[Z

.field private tags:[I

.field private writeFieldCount:I


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V
    .locals 0
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 29
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected initializeCachedFields()V
    .locals 7

    .prologue
    .line 33
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer<TT;>;"
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->getFields()[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v1

    .line 35
    .local v1, "fields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 36
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 37
    .local v0, "field":Ljava/lang/reflect/Field;
    const-class v4, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$Tag;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_1

    .line 38
    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v4, :cond_0

    const-string v4, "kryo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring field without tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    aget-object v4, v1, v2

    invoke-super {p0, v4}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->removeField(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)V

    .line 35
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_2
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->getFields()[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v1

    .line 44
    array-length v4, v1

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->tags:[I

    .line 45
    array-length v4, v1

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->deprecated:[Z

    .line 46
    array-length v4, v1

    iput v4, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->writeFieldCount:I

    .line 47
    const/4 v2, 0x0

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_4

    .line 48
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 49
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->tags:[I

    const-class v4, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$Tag;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$Tag;

    invoke-interface {v4}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer$Tag;->value()I

    move-result v4

    aput v4, v5, v2

    .line 50
    const-class v4, Ljava/lang/Deprecated;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 51
    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->deprecated:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v2

    .line 52
    iget v4, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->writeFieldCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->writeFieldCount:I

    .line 47
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 56
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_4
    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->removedFields:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 57
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 13
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
    .line 80
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer<TT;>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual/range {p0 .. p3}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    .line 81
    .local v7, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v7}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 82
    const/4 v10, 0x1

    invoke-virtual {p2, v10}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    .line 83
    .local v1, "fieldCount":I
    iget-object v9, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->tags:[I

    .line 84
    .local v9, "tags":[I
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->getFields()[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v2

    .line 85
    .local v2, "fields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    const/4 v3, 0x0

    .local v3, "i":I
    move v5, v1

    .local v5, "n":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 86
    const/4 v10, 0x1

    invoke-virtual {p2, v10}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v8

    .line 88
    .local v8, "tag":I
    const/4 v0, 0x0

    .line 89
    .local v0, "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    const/4 v4, 0x0

    .local v4, "ii":I
    array-length v6, v9

    .local v6, "nn":I
    :goto_1
    if-ge v4, v6, :cond_0

    .line 90
    aget v10, v9, v4

    if-ne v10, v8, :cond_1

    .line 91
    aget-object v0, v2, v4

    .line 95
    :cond_0
    if-nez v0, :cond_2

    new-instance v10, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown field tag: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->getType()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 89
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v0, p2, v7}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .end local v4    # "ii":I
    .end local v6    # "nn":I
    .end local v8    # "tag":I
    :cond_3
    return-object v7
.end method

.method public removeField(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)V
    .locals 0
    .param p1, "field"    # Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    .prologue
    .line 65
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer<TT;>;"
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->removeField(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;)V

    .line 66
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->initializeCachedFields()V

    .line 67
    return-void
.end method

.method public removeField(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 60
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer<TT;>;"
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->removeField(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->initializeCachedFields()V

    .line 62
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 5
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
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;, "Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer<TT;>;"
    .local p3, "object":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x1

    .line 70
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->getFields()[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v0

    .line 71
    .local v0, "fields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    iget v3, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->writeFieldCount:I

    invoke-virtual {p2, v3, v4}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 73
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->deprecated:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    .line 72
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/TaggedFieldSerializer;->tags:[I

    aget v3, v3, v1

    invoke-virtual {p2, v3, v4}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    .line 75
    aget-object v3, v0, v1

    invoke-virtual {v3, p2, p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    goto :goto_1

    .line 77
    :cond_1
    return-void
.end method
