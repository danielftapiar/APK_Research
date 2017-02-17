.class final Lcom/esotericsoftware/kryo/serializers/FieldSerializerAnnotationsUtil;
.super Ljava/lang/Object;
.source "FieldSerializerAnnotationsUtil.java"


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V
    .locals 0
    .param p1, "serializer"    # Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public processAnnotatedFields(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V
    .locals 26
    .param p1, "fieldSerializer"    # Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    .prologue
    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->getFields()[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v9

    .line 44
    .local v9, "fields":[Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    const/4 v10, 0x0

    .local v10, "i":I
    array-length v15, v9

    .local v15, "n":I
    :goto_0
    if-ge v10, v15, :cond_11

    .line 45
    aget-object v23, v9, v10

    invoke-virtual/range {v23 .. v23}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v8

    .line 48
    .local v8, "field":Ljava/lang/reflect/Field;
    const-class v23, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 49
    const-class v23, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v23

    check-cast v23, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;

    invoke-interface/range {v23 .. v23}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$Bind;->value()Ljava/lang/Class;

    move-result-object v18

    .line 50
    .local v18, "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/esotericsoftware/kryo/Serializer;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->getKryo()Lcom/esotericsoftware/kryo/Kryo;

    move-result-object v23

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/esotericsoftware/kryo/factories/ReflectionSerializerFactory;->makeSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v16

    .line 51
    .local v16, "s":Lcom/esotericsoftware/kryo/Serializer;
    aget-object v23, v9, v10

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setSerializer(Lcom/esotericsoftware/kryo/Serializer;)V

    .line 54
    .end local v16    # "s":Lcom/esotericsoftware/kryo/Serializer;
    .end local v18    # "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/esotericsoftware/kryo/Serializer;>;"
    :cond_0
    const-class v23, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_1

    const-class v23, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 59
    :cond_1
    const-class v23, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 60
    aget-object v23, v9, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 61
    new-instance v23, Ljava/lang/RuntimeException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "CollectionSerialier.Bind cannot be used with field "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v9, v10

    invoke-virtual/range {v25 .. v25}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v9, v10

    invoke-virtual/range {v25 .. v25}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", because it has a serializer already."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 64
    :cond_2
    const-class v23, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;

    .line 66
    .local v3, "annotation":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;
    const-class v23, Ljava/util/Collection;

    aget-object v24, v9, v10

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 67
    invoke-interface {v3}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;->elementSerializer()Ljava/lang/Class;

    move-result-object v6

    .line 68
    .local v6, "elementSerializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/esotericsoftware/kryo/Serializer;>;"
    const-class v23, Lcom/esotericsoftware/kryo/Serializer;

    move-object/from16 v0, v23

    if-ne v6, v0, :cond_3

    const/4 v6, 0x0

    .line 69
    :cond_3
    if-nez v6, :cond_6

    const/4 v5, 0x0

    .line 71
    .local v5, "elementSerializer":Lcom/esotericsoftware/kryo/Serializer;
    :goto_1
    invoke-interface {v3}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;->elementsCanBeNull()Z

    move-result v7

    .line 72
    .local v7, "elementsCanBeNull":Z
    invoke-interface {v3}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;->elementClass()Ljava/lang/Class;

    move-result-object v4

    .line 73
    .local v4, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v23, Ljava/lang/Object;

    move-object/from16 v0, v23

    if-ne v4, v0, :cond_4

    const/4 v4, 0x0

    .line 74
    :cond_4
    new-instance v17, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;

    invoke-direct/range {v17 .. v17}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;-><init>()V

    .line 75
    .local v17, "serializer":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->setElementsCanBeNull(Z)V

    .line 76
    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;->setElementClass(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V

    .line 77
    aget-object v23, v9, v10

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setSerializer(Lcom/esotericsoftware/kryo/Serializer;)V

    .line 87
    .end local v3    # "annotation":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;
    .end local v4    # "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "elementSerializer":Lcom/esotericsoftware/kryo/Serializer;
    .end local v6    # "elementSerializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/esotericsoftware/kryo/Serializer;>;"
    .end local v7    # "elementsCanBeNull":Z
    .end local v17    # "serializer":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;
    :cond_5
    const-class v23, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 88
    aget-object v23, v9, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    .line 89
    new-instance v23, Ljava/lang/RuntimeException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "MapSerialier.Bind cannot be used with field "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v9, v10

    invoke-virtual/range {v25 .. v25}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v9, v10

    invoke-virtual/range {v25 .. v25}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", because it has a serializer already."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 69
    .restart local v3    # "annotation":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;
    .restart local v6    # "elementSerializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/esotericsoftware/kryo/Serializer;>;"
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->getKryo()Lcom/esotericsoftware/kryo/Kryo;

    move-result-object v23

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v6, v1}, Lcom/esotericsoftware/kryo/factories/ReflectionSerializerFactory;->makeSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v5

    goto/16 :goto_1

    .line 79
    .end local v6    # "elementSerializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/esotericsoftware/kryo/Serializer;>;"
    :cond_7
    new-instance v23, Ljava/lang/RuntimeException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "CollectionSerialier.Bind should be used only with fields implementing java.util.Collection, but field "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v9, v10

    invoke-virtual/range {v25 .. v25}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v9, v10

    invoke-virtual/range {v25 .. v25}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " does not implement it."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 92
    .end local v3    # "annotation":Lcom/esotericsoftware/kryo/serializers/CollectionSerializer$BindCollection;
    :cond_8
    const-class v23, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;

    .line 93
    .local v3, "annotation":Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;
    const-class v23, Ljava/util/Map;

    aget-object v24, v9, v10

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->field:Ljava/lang/reflect/Field;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 94
    invoke-interface {v3}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->valueSerializer()Ljava/lang/Class;

    move-result-object v21

    .line 95
    .local v21, "valueSerializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/esotericsoftware/kryo/Serializer;>;"
    invoke-interface {v3}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->keySerializer()Ljava/lang/Class;

    move-result-object v13

    .line 97
    .local v13, "keySerializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/esotericsoftware/kryo/Serializer;>;"
    const-class v23, Lcom/esotericsoftware/kryo/Serializer;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_9

    const/16 v21, 0x0

    .line 98
    :cond_9
    const-class v23, Lcom/esotericsoftware/kryo/Serializer;

    move-object/from16 v0, v23

    if-ne v13, v0, :cond_a

    const/4 v13, 0x0

    .line 100
    :cond_a
    if-nez v21, :cond_e

    const/16 v20, 0x0

    .line 102
    .local v20, "valueSerializer":Lcom/esotericsoftware/kryo/Serializer;
    :goto_2
    if-nez v13, :cond_f

    const/4 v12, 0x0

    .line 104
    .local v12, "keySerializer":Lcom/esotericsoftware/kryo/Serializer;
    :goto_3
    invoke-interface {v3}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->valuesCanBeNull()Z

    move-result v22

    .line 105
    .local v22, "valuesCanBeNull":Z
    invoke-interface {v3}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->keysCanBeNull()Z

    move-result v14

    .line 106
    .local v14, "keysCanBeNull":Z
    invoke-interface {v3}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->keyClass()Ljava/lang/Class;

    move-result-object v11

    .line 107
    .local v11, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v3}, Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;->valueClass()Ljava/lang/Class;

    move-result-object v19

    .line 109
    .local v19, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v23, Ljava/lang/Object;

    move-object/from16 v0, v23

    if-ne v11, v0, :cond_b

    const/4 v11, 0x0

    .line 110
    :cond_b
    const-class v23, Ljava/lang/Object;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_c

    const/16 v19, 0x0

    .line 112
    :cond_c
    new-instance v17, Lcom/esotericsoftware/kryo/serializers/MapSerializer;

    invoke-direct/range {v17 .. v17}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;-><init>()V

    .line 113
    .local v17, "serializer":Lcom/esotericsoftware/kryo/serializers/MapSerializer;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->setKeysCanBeNull(Z)V

    .line 114
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->setValuesCanBeNull(Z)V

    .line 115
    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->setKeyClass(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V

    .line 116
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->setValueClass(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V

    .line 117
    aget-object v23, v9, v10

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->setSerializer(Lcom/esotericsoftware/kryo/Serializer;)V

    .line 44
    .end local v3    # "annotation":Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;
    .end local v11    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "keySerializer":Lcom/esotericsoftware/kryo/Serializer;
    .end local v13    # "keySerializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/esotericsoftware/kryo/Serializer;>;"
    .end local v14    # "keysCanBeNull":Z
    .end local v17    # "serializer":Lcom/esotericsoftware/kryo/serializers/MapSerializer;
    .end local v19    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "valueSerializer":Lcom/esotericsoftware/kryo/Serializer;
    .end local v21    # "valueSerializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/esotericsoftware/kryo/Serializer;>;"
    .end local v22    # "valuesCanBeNull":Z
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 100
    .restart local v3    # "annotation":Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;
    .restart local v13    # "keySerializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/esotericsoftware/kryo/Serializer;>;"
    .restart local v21    # "valueSerializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/esotericsoftware/kryo/Serializer;>;"
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->getKryo()Lcom/esotericsoftware/kryo/Kryo;

    move-result-object v23

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/esotericsoftware/kryo/factories/ReflectionSerializerFactory;->makeSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v20

    goto :goto_2

    .line 102
    .restart local v20    # "valueSerializer":Lcom/esotericsoftware/kryo/Serializer;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->getKryo()Lcom/esotericsoftware/kryo/Kryo;

    move-result-object v23

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v13, v1}, Lcom/esotericsoftware/kryo/factories/ReflectionSerializerFactory;->makeSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v12

    goto :goto_3

    .line 119
    .end local v13    # "keySerializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/esotericsoftware/kryo/Serializer;>;"
    .end local v20    # "valueSerializer":Lcom/esotericsoftware/kryo/Serializer;
    .end local v21    # "valueSerializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/esotericsoftware/kryo/Serializer;>;"
    :cond_10
    new-instance v23, Ljava/lang/RuntimeException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "MapSerialier.Bind should be used only with fields implementing java.util.Map, but field "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v9, v10

    invoke-virtual/range {v25 .. v25}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v9, v10

    invoke-virtual/range {v25 .. v25}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " does not implement it."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 127
    .end local v3    # "annotation":Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    :cond_11
    return-void
.end method
