.class Lcom/esotericsoftware/kryo/serializers/ObjectCachedFieldFactory;
.super Ljava/lang/Object;
.source "ObjectCachedFieldFactory.java"

# interfaces
.implements Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedFieldFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCachedField(Ljava/lang/Class;Ljava/lang/reflect/Field;Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .locals 2
    .param p1, "fieldClass"    # Ljava/lang/Class;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "ser"    # Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    .prologue
    .line 19
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 20
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_0

    .line 21
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/ObjectField$ObjectBooleanField;

    invoke-direct {v0, p3}, Lcom/esotericsoftware/kryo/serializers/ObjectField$ObjectBooleanField;-><init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V

    .line 41
    .local v0, "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :goto_0
    return-object v0

    .line 22
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_0
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_1

    .line 23
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/ObjectField$ObjectByteField;

    invoke-direct {v0, p3}, Lcom/esotericsoftware/kryo/serializers/ObjectField$ObjectByteField;-><init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V

    .restart local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    goto :goto_0

    .line 24
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_1
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_2

    .line 25
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/ObjectField$ObjectCharField;

    invoke-direct {v0, p3}, Lcom/esotericsoftware/kryo/serializers/ObjectField$ObjectCharField;-><init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V

    .restart local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    goto :goto_0

    .line 26
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_2
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_3

    .line 27
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/ObjectField$ObjectShortField;

    invoke-direct {v0, p3}, Lcom/esotericsoftware/kryo/serializers/ObjectField$ObjectShortField;-><init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V

    .restart local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    goto :goto_0

    .line 28
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_3
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_4

    .line 29
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/ObjectField$ObjectIntField;

    invoke-direct {v0, p3}, Lcom/esotericsoftware/kryo/serializers/ObjectField$ObjectIntField;-><init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V

    .restart local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    goto :goto_0

    .line 30
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_4
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_5

    .line 31
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/ObjectField$ObjectLongField;

    invoke-direct {v0, p3}, Lcom/esotericsoftware/kryo/serializers/ObjectField$ObjectLongField;-><init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V

    .restart local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    goto :goto_0

    .line 32
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_5
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_6

    .line 33
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/ObjectField$ObjectFloatField;

    invoke-direct {v0, p3}, Lcom/esotericsoftware/kryo/serializers/ObjectField$ObjectFloatField;-><init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V

    .restart local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    goto :goto_0

    .line 34
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_6
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_7

    .line 35
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/ObjectField$ObjectDoubleField;

    invoke-direct {v0, p3}, Lcom/esotericsoftware/kryo/serializers/ObjectField$ObjectDoubleField;-><init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V

    .restart local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    goto :goto_0

    .line 37
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_7
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/ObjectField;

    invoke-direct {v0, p3}, Lcom/esotericsoftware/kryo/serializers/ObjectField;-><init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V

    .restart local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    goto :goto_0

    .line 40
    .end local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    :cond_8
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/ObjectField;

    invoke-direct {v0, p3}, Lcom/esotericsoftware/kryo/serializers/ObjectField;-><init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V

    .restart local v0    # "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    goto :goto_0
.end method
