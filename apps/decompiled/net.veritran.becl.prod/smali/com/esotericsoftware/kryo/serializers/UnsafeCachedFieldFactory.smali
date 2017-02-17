.class Lcom/esotericsoftware/kryo/serializers/UnsafeCachedFieldFactory;
.super Ljava/lang/Object;
.source "UnsafeCachedFieldFactory.java"

# interfaces
.implements Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedFieldFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCachedField(Ljava/lang/Class;Ljava/lang/reflect/Field;Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .locals 3
    .param p1, "fieldClass"    # Ljava/lang/Class;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "ser"    # Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    .prologue
    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 14
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_0

    .line 15
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeBooleanField;

    invoke-direct {v0, p2}, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeBooleanField;-><init>(Ljava/lang/reflect/Field;)V

    .line 39
    .local v0, "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :goto_0
    return-object v0

    .line 16
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_0
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_1

    .line 17
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeByteField;

    invoke-direct {v0, p2}, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeByteField;-><init>(Ljava/lang/reflect/Field;)V

    .restart local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    goto :goto_0

    .line 18
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_1
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_2

    .line 19
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeCharField;

    invoke-direct {v0, p2}, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeCharField;-><init>(Ljava/lang/reflect/Field;)V

    .restart local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    goto :goto_0

    .line 20
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_2
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_3

    .line 21
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeShortField;

    invoke-direct {v0, p2}, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeShortField;-><init>(Ljava/lang/reflect/Field;)V

    .restart local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    goto :goto_0

    .line 22
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_3
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_4

    .line 23
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeIntField;

    invoke-direct {v0, p2}, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeIntField;-><init>(Ljava/lang/reflect/Field;)V

    .restart local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    goto :goto_0

    .line 24
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_4
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_5

    .line 25
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeLongField;

    invoke-direct {v0, p2}, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeLongField;-><init>(Ljava/lang/reflect/Field;)V

    .restart local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    goto :goto_0

    .line 26
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_5
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_6

    .line 27
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeFloatField;

    invoke-direct {v0, p2}, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeFloatField;-><init>(Ljava/lang/reflect/Field;)V

    .restart local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    goto :goto_0

    .line 28
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_6
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_7

    .line 29
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeDoubleField;

    invoke-direct {v0, p2}, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeDoubleField;-><init>(Ljava/lang/reflect/Field;)V

    .restart local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    goto :goto_0

    .line 31
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_7
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeObjectField;

    invoke-direct {v0, p3}, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeObjectField;-><init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V

    .restart local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    goto :goto_0

    .line 33
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_8
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_a

    iget-object v1, p3, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Kryo;->getReferences()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p3, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Kryo;->getReferenceResolver()Lcom/esotericsoftware/kryo/ReferenceResolver;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/esotericsoftware/kryo/ReferenceResolver;->useReferences(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 35
    :cond_9
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeStringField;

    invoke-direct {v0, p2}, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeStringField;-><init>(Ljava/lang/reflect/Field;)V

    .restart local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    goto :goto_0

    .line 37
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_a
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeObjectField;

    invoke-direct {v0, p3}, Lcom/esotericsoftware/kryo/serializers/UnsafeCacheFields$UnsafeObjectField;-><init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V

    .restart local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    goto :goto_0
.end method
