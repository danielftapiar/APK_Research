.class final Lcom/esotericsoftware/kryo/serializers/FieldSerializerGenericsUtil;
.super Ljava/lang/Object;
.source "FieldSerializerGenericsUtil.java"


# instance fields
.field private kryo:Lcom/esotericsoftware/kryo/Kryo;

.field private serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer;)V
    .locals 1
    .param p1, "serializer"    # Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializerGenericsUtil;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    .line 32
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->getKryo()Lcom/esotericsoftware/kryo/Kryo;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializerGenericsUtil;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    .line 33
    return-void
.end method

.method public static getGenerics(Ljava/lang/reflect/Type;Lcom/esotericsoftware/kryo/Kryo;)[Ljava/lang/Class;
    .locals 13
    .param p0, "genericType"    # Ljava/lang/reflect/Type;
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;

    .prologue
    .line 212
    instance-of v10, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v10, :cond_2

    .line 213
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .end local p0    # "genericType":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 214
    .local v4, "componentType":Ljava/lang/reflect/Type;
    instance-of v10, v4, Ljava/lang/Class;

    if-eqz v10, :cond_1

    .line 215
    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/Class;

    const/4 v10, 0x0

    check-cast v4, Ljava/lang/Class;

    .end local v4    # "componentType":Ljava/lang/reflect/Type;
    aput-object v4, v6, v10

    .line 263
    :cond_0
    :goto_0
    return-object v6

    .line 217
    .restart local v4    # "componentType":Ljava/lang/reflect/Type;
    :cond_1
    invoke-static {v4, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializerGenericsUtil;->getGenerics(Ljava/lang/reflect/Type;Lcom/esotericsoftware/kryo/Kryo;)[Ljava/lang/Class;

    move-result-object v6

    goto :goto_0

    .line 219
    .end local v4    # "componentType":Ljava/lang/reflect/Type;
    .restart local p0    # "genericType":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v10, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v10, :cond_3

    const/4 v6, 0x0

    goto :goto_0

    .line 220
    :cond_3
    sget-boolean v10, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v10, :cond_4

    const-string v10, "kryo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Processing generic type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_4
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "genericType":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 222
    .local v1, "actualTypes":[Ljava/lang/reflect/Type;
    array-length v10, v1

    new-array v6, v10, [Ljava/lang/Class;

    .line 223
    .local v6, "generics":[Ljava/lang/Class;
    const/4 v5, 0x0

    .line 224
    .local v5, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v8, v1

    .local v8, "n":I
    :goto_1
    if-ge v7, v8, :cond_d

    .line 225
    aget-object v0, v1, v7

    .line 226
    .local v0, "actualType":Ljava/lang/reflect/Type;
    sget-boolean v10, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v10, :cond_5

    const-string v10, "kryo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Processing actual type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    invoke-static {v10, v11}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_5
    const-class v10, Ljava/lang/Object;

    aput-object v10, v6, v7

    .line 228
    instance-of v10, v0, Ljava/lang/Class;

    if-eqz v10, :cond_8

    .line 229
    check-cast v0, Ljava/lang/Class;

    .end local v0    # "actualType":Ljava/lang/reflect/Type;
    aput-object v0, v6, v7

    .line 260
    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 224
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 230
    .restart local v0    # "actualType":Ljava/lang/reflect/Type;
    :cond_8
    instance-of v10, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_9

    .line 231
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "actualType":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    aput-object v10, v6, v7

    goto :goto_2

    .line 232
    .restart local v0    # "actualType":Ljava/lang/reflect/Type;
    :cond_9
    instance-of v10, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v10, :cond_a

    .line 233
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenericsScope()Lcom/esotericsoftware/kryo/Generics;

    move-result-object v9

    .line 234
    .local v9, "scope":Lcom/esotericsoftware/kryo/Generics;
    if-eqz v9, :cond_7

    .line 235
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .end local v0    # "actualType":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/esotericsoftware/kryo/Generics;->getConcreteClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 236
    .local v2, "clazz":Ljava/lang/Class;
    if-eqz v2, :cond_7

    .line 237
    aput-object v2, v6, v7

    goto :goto_2

    .line 242
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v9    # "scope":Lcom/esotericsoftware/kryo/Generics;
    .restart local v0    # "actualType":Ljava/lang/reflect/Type;
    :cond_a
    instance-of v10, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v10, :cond_7

    .line 243
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .end local v0    # "actualType":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 244
    .restart local v4    # "componentType":Ljava/lang/reflect/Type;
    instance-of v10, v4, Ljava/lang/Class;

    if-eqz v10, :cond_b

    .line 245
    check-cast v4, Ljava/lang/Class;

    .end local v4    # "componentType":Ljava/lang/reflect/Type;
    const/4 v10, 0x0

    invoke-static {v4, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v6, v7

    goto :goto_2

    .line 246
    .restart local v4    # "componentType":Ljava/lang/reflect/Type;
    :cond_b
    instance-of v10, v4, Ljava/lang/reflect/TypeVariable;

    if-eqz v10, :cond_c

    .line 247
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenericsScope()Lcom/esotericsoftware/kryo/Generics;

    move-result-object v9

    .line 248
    .restart local v9    # "scope":Lcom/esotericsoftware/kryo/Generics;
    if-eqz v9, :cond_6

    .line 249
    check-cast v4, Ljava/lang/reflect/TypeVariable;

    .end local v4    # "componentType":Ljava/lang/reflect/Type;
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/esotericsoftware/kryo/Generics;->getConcreteClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 250
    .restart local v2    # "clazz":Ljava/lang/Class;
    if-eqz v2, :cond_6

    .line 251
    const/4 v10, 0x0

    invoke-static {v2, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v6, v7

    goto :goto_2

    .line 255
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v9    # "scope":Lcom/esotericsoftware/kryo/Generics;
    .restart local v4    # "componentType":Ljava/lang/reflect/Type;
    :cond_c
    invoke-static {v4, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializerGenericsUtil;->getGenerics(Ljava/lang/reflect/Type;Lcom/esotericsoftware/kryo/Kryo;)[Ljava/lang/Class;

    move-result-object v3

    .line 256
    .local v3, "componentGenerics":[Ljava/lang/Class;
    if-eqz v3, :cond_6

    const/4 v10, 0x0

    aget-object v10, v3, v10

    aput-object v10, v6, v7

    goto :goto_2

    .line 262
    .end local v3    # "componentGenerics":[Ljava/lang/Class;
    .end local v4    # "componentType":Ljava/lang/reflect/Type;
    :cond_d
    if-nez v5, :cond_0

    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private getTypeVarConcreteClass([Ljava/lang/Class;ILjava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "generics"    # [Ljava/lang/Class;
    .param p2, "typeVarNum"    # I
    .param p3, "typeVarName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 80
    if-eqz p1, :cond_0

    array-length v1, p1

    if-le v1, p2, :cond_0

    .line 82
    aget-object v1, p1, p2

    .line 91
    :goto_0
    return-object v1

    .line 85
    :cond_0
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v1, :cond_1

    const-string v1, "kryo"

    const-string v2, "Trying to use kryo.getGenericScope"

    invoke-static {v1, v2}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializerGenericsUtil;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Kryo;->getGenericsScope()Lcom/esotericsoftware/kryo/Generics;

    move-result-object v0

    .line 87
    .local v0, "scope":Lcom/esotericsoftware/kryo/Generics;
    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {v0, p3}, Lcom/esotericsoftware/kryo/Generics;->getConcreteClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 91
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method buildGenericsScope(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Generics;
    .locals 15
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "generics"    # [Ljava/lang/Class;

    .prologue
    .line 42
    move-object/from16 v6, p1

    .line 43
    .local v6, "typ":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 45
    .local v7, "typeParams":[Ljava/lang/reflect/TypeVariable;
    :goto_0
    if-eqz v6, :cond_1

    .line 46
    invoke-virtual {v6}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v7

    .line 47
    if-eqz v7, :cond_0

    array-length v12, v7

    if-nez v12, :cond_1

    .line 48
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    goto :goto_0

    .line 53
    :cond_1
    if-eqz v7, :cond_5

    array-length v12, v7

    if-lez v12, :cond_5

    .line 55
    const-string v12, "kryo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Class "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " has generic type parameters"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v11, 0x0

    .line 58
    .local v11, "typeVarNum":I
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v9, "typeVar2concreteClass":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class;>;"
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/reflect/TypeVariable;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v8, v1, v4

    .line 60
    .local v8, "typeVar":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v8}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v10

    .line 61
    .local v10, "typeVarName":Ljava/lang/String;
    sget-boolean v12, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v12, :cond_2

    .line 62
    const-string v12, "kryo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Type parameter variable: name="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " type bounds="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v8}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_2
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v11, v10}, Lcom/esotericsoftware/kryo/serializers/FieldSerializerGenericsUtil;->getTypeVarConcreteClass([Ljava/lang/Class;ILjava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 66
    .local v2, "concreteClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_3

    .line 67
    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-boolean v12, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v12, :cond_3

    const-string v12, "kryo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Concrete type used for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 59
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 73
    .end local v2    # "concreteClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "typeVar":Ljava/lang/reflect/TypeVariable;
    .end local v10    # "typeVarName":Ljava/lang/String;
    :cond_4
    new-instance v3, Lcom/esotericsoftware/kryo/Generics;

    invoke-direct {v3, v9}, Lcom/esotericsoftware/kryo/Generics;-><init>(Ljava/util/Map;)V

    .line 76
    .end local v1    # "arr$":[Ljava/lang/reflect/TypeVariable;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v9    # "typeVar2concreteClass":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class;>;"
    .end local v11    # "typeVarNum":I
    :goto_2
    return-object v3

    :cond_5
    const/4 v3, 0x0

    goto :goto_2
.end method

.method computeFieldGenerics(Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;[Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 18
    .param p1, "fieldGenericType"    # Ljava/lang/reflect/Type;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "fieldClass"    # [Ljava/lang/Class;

    .prologue
    .line 95
    const/4 v7, 0x0

    .line 96
    .local v7, "fieldGenerics":[Ljava/lang/Class;
    if-eqz p1, :cond_0

    .line 97
    move-object/from16 v0, p1

    instance-of v15, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializerGenericsUtil;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-virtual {v15}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->getGenericsScope()Lcom/esotericsoftware/kryo/Generics;

    move-result-object v15

    if-eqz v15, :cond_1

    move-object/from16 v14, p1

    .line 98
    check-cast v14, Ljava/lang/reflect/TypeVariable;

    .line 100
    .local v14, "typeVar":Ljava/lang/reflect/TypeVariable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializerGenericsUtil;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-virtual {v15}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->getGenericsScope()Lcom/esotericsoftware/kryo/Generics;

    move-result-object v15

    invoke-interface {v14}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/esotericsoftware/kryo/Generics;->getConcreteClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 101
    .local v6, "concreteClass":Ljava/lang/Class;
    if-eqz v6, :cond_0

    .line 102
    const/4 v15, 0x0

    aput-object v6, p3, v15

    .line 103
    const/4 v15, 0x1

    new-array v7, v15, [Ljava/lang/Class;

    .end local v7    # "fieldGenerics":[Ljava/lang/Class;
    const/4 v15, 0x0

    const/16 v16, 0x0

    aget-object v16, p3, v16

    aput-object v16, v7, v15

    .line 104
    .restart local v7    # "fieldGenerics":[Ljava/lang/Class;
    sget-boolean v15, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v15, :cond_0

    .line 105
    const-string v15, "kryo"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Determined concrete class of \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' to be "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v17, p3, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .end local v6    # "concreteClass":Ljava/lang/Class;
    .end local v14    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_0
    :goto_0
    return-object v7

    .line 107
    :cond_1
    move-object/from16 v0, p1

    instance-of v15, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v15, :cond_a

    move-object/from16 v10, p1

    .line 108
    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    .line 110
    .local v10, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 112
    .local v2, "actualTypeArguments":[Ljava/lang/reflect/Type;
    if-eqz v2, :cond_0

    .line 113
    array-length v15, v2

    new-array v7, v15, [Ljava/lang/Class;

    .line 114
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v15, v2

    if-ge v9, v15, :cond_9

    .line 115
    aget-object v12, v2, v9

    .line 116
    .local v12, "t":Ljava/lang/reflect/Type;
    instance-of v15, v12, Ljava/lang/Class;

    if-eqz v15, :cond_3

    .line 117
    check-cast v12, Ljava/lang/Class;

    .end local v12    # "t":Ljava/lang/reflect/Type;
    aput-object v12, v7, v9

    .line 114
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 118
    .restart local v12    # "t":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v15, v12, Ljava/lang/reflect/ParameterizedType;

    if-eqz v15, :cond_4

    .line 119
    check-cast v12, Ljava/lang/reflect/ParameterizedType;

    .end local v12    # "t":Ljava/lang/reflect/Type;
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v15

    check-cast v15, Ljava/lang/Class;

    aput-object v15, v7, v9

    goto :goto_2

    .line 120
    .restart local v12    # "t":Ljava/lang/reflect/Type;
    :cond_4
    instance-of v15, v12, Ljava/lang/reflect/TypeVariable;

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializerGenericsUtil;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-virtual {v15}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->getGenericsScope()Lcom/esotericsoftware/kryo/Generics;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 121
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializerGenericsUtil;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-virtual {v15}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->getGenericsScope()Lcom/esotericsoftware/kryo/Generics;

    move-result-object v15

    check-cast v12, Ljava/lang/reflect/TypeVariable;

    .end local v12    # "t":Ljava/lang/reflect/Type;
    invoke-interface {v12}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/esotericsoftware/kryo/Generics;->getConcreteClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v7, v9

    goto :goto_2

    .line 122
    .restart local v12    # "t":Ljava/lang/reflect/Type;
    :cond_5
    instance-of v15, v12, Ljava/lang/reflect/WildcardType;

    if-eqz v15, :cond_6

    .line 123
    const-class v15, Ljava/lang/Object;

    aput-object v15, v7, v9

    goto :goto_2

    .line 124
    :cond_6
    instance-of v15, v12, Ljava/lang/reflect/GenericArrayType;

    if-eqz v15, :cond_8

    .line 125
    check-cast v12, Ljava/lang/reflect/GenericArrayType;

    .end local v12    # "t":Ljava/lang/reflect/Type;
    invoke-interface {v12}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 126
    .local v5, "componentType":Ljava/lang/reflect/Type;
    instance-of v15, v5, Ljava/lang/Class;

    if-eqz v15, :cond_7

    .line 127
    check-cast v5, Ljava/lang/Class;

    .end local v5    # "componentType":Ljava/lang/reflect/Type;
    const/4 v15, 0x0

    invoke-static {v5, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v7, v9

    goto :goto_2

    .line 128
    .restart local v5    # "componentType":Ljava/lang/reflect/Type;
    :cond_7
    instance-of v15, v5, Ljava/lang/reflect/TypeVariable;

    if-eqz v15, :cond_2

    .line 129
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializerGenericsUtil;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-virtual {v15}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->getGenericsScope()Lcom/esotericsoftware/kryo/Generics;

    move-result-object v11

    .line 130
    .local v11, "scope":Lcom/esotericsoftware/kryo/Generics;
    if-eqz v11, :cond_2

    .line 131
    check-cast v5, Ljava/lang/reflect/TypeVariable;

    .end local v5    # "componentType":Ljava/lang/reflect/Type;
    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/esotericsoftware/kryo/Generics;->getConcreteClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 132
    .local v4, "clazz":Ljava/lang/Class;
    if-eqz v4, :cond_2

    .line 133
    const/4 v15, 0x0

    invoke-static {v4, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v7, v9

    goto :goto_2

    .line 138
    .end local v4    # "clazz":Ljava/lang/Class;
    .end local v11    # "scope":Lcom/esotericsoftware/kryo/Generics;
    .restart local v12    # "t":Ljava/lang/reflect/Type;
    :cond_8
    const/4 v15, 0x0

    aput-object v15, v7, v9

    goto/16 :goto_2

    .line 140
    .end local v12    # "t":Ljava/lang/reflect/Type;
    :cond_9
    sget-boolean v15, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v15, :cond_0

    if-eqz v7, :cond_0

    .line 141
    const-string v15, "kryo"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Determined concrete class of parametrized \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' to be "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " where type parameters are "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    .end local v2    # "actualTypeArguments":[Ljava/lang/reflect/Type;
    .end local v9    # "i":I
    .end local v10    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_a
    move-object/from16 v0, p1

    instance-of v15, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v15, :cond_0

    move-object/from16 v3, p1

    .line 146
    check-cast v3, Ljava/lang/reflect/GenericArrayType;

    .line 147
    .local v3, "arrayType":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v3}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 148
    .local v8, "genericComponentType":Ljava/lang/reflect/Type;
    const/4 v15, 0x1

    new-array v13, v15, [Ljava/lang/Class;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aget-object v16, p3, v16

    aput-object v16, v13, v15

    .line 149
    .local v13, "tmpFieldClass":[Ljava/lang/Class;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1, v13}, Lcom/esotericsoftware/kryo/serializers/FieldSerializerGenericsUtil;->computeFieldGenerics(Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;[Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v7

    .line 151
    sget-boolean v15, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v15, :cond_b

    if-eqz v7, :cond_b

    .line 152
    const-string v15, "kryo"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Determined concrete class of a generic array \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' to be "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " where type parameters are "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :cond_b
    sget-boolean v15, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v15, :cond_0

    const-string v15, "kryo"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Determined concrete class of \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' to be "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method newCachedFieldOfGenericType(Ljava/lang/reflect/Field;I[Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    .locals 11
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "accessIndex"    # I
    .param p3, "fieldClass"    # [Ljava/lang/Class;
    .param p4, "fieldGenericType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 165
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "kryo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of generic type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 170
    const-string v0, "kryo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field generic type is of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializerGenericsUtil;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-static {p4, v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializerGenericsUtil;->getGenerics(Ljava/lang/reflect/Type;Lcom/esotericsoftware/kryo/Kryo;)[Ljava/lang/Class;

    move-result-object v7

    .line 178
    .local v7, "cachedFieldGenerics":[Ljava/lang/Class;
    const/4 v0, 0x0

    aget-object v0, p3, v0

    invoke-virtual {p0, v0, v7}, Lcom/esotericsoftware/kryo/serializers/FieldSerializerGenericsUtil;->buildGenericsScope(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Generics;

    move-result-object v9

    .line 181
    .local v9, "scope":Lcom/esotericsoftware/kryo/Generics;
    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    instance-of v0, p4, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializerGenericsUtil;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->getGenericsScope()Lcom/esotericsoftware/kryo/Generics;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v10, p4

    .line 182
    check-cast v10, Ljava/lang/reflect/TypeVariable;

    .line 184
    .local v10, "typeVar":Ljava/lang/reflect/TypeVariable;
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializerGenericsUtil;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->getGenericsScope()Lcom/esotericsoftware/kryo/Generics;

    move-result-object v0

    invoke-interface {v10}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/Generics;->getConcreteClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 185
    .local v8, "concreteClass":Ljava/lang/Class;
    if-eqz v8, :cond_2

    .line 186
    new-instance v9, Lcom/esotericsoftware/kryo/Generics;

    .end local v9    # "scope":Lcom/esotericsoftware/kryo/Generics;
    invoke-direct {v9}, Lcom/esotericsoftware/kryo/Generics;-><init>()V

    .line 187
    .restart local v9    # "scope":Lcom/esotericsoftware/kryo/Generics;
    invoke-interface {v10}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v8}, Lcom/esotericsoftware/kryo/Generics;->add(Ljava/lang/String;Ljava/lang/Class;)V

    .line 191
    .end local v8    # "concreteClass":Ljava/lang/Class;
    .end local v10    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_2
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_3

    .line 192
    const-string v0, "kryo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generics scope of field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_3
    invoke-virtual {p0, p4, p1, p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializerGenericsUtil;->computeFieldGenerics(Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;[Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v5

    .line 196
    .local v5, "fieldGenerics":[Ljava/lang/Class;
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializerGenericsUtil;->serializer:Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    const/4 v1, 0x0

    aget-object v3, p3, v1

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->newMatchingCachedField(Ljava/lang/reflect/Field;ILjava/lang/Class;Ljava/lang/reflect/Type;[Ljava/lang/Class;)Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;

    move-result-object v6

    .line 198
    .local v6, "cachedField":Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
    if-eqz v5, :cond_4

    instance-of v0, v6, Lcom/esotericsoftware/kryo/serializers/ObjectField;

    if-eqz v0, :cond_4

    .line 199
    array-length v0, v5

    if-lez v0, :cond_4

    const/4 v0, 0x0

    aget-object v0, v5, v0

    if-eqz v0, :cond_4

    move-object v0, v6

    .line 202
    check-cast v0, Lcom/esotericsoftware/kryo/serializers/ObjectField;

    iput-object v5, v0, Lcom/esotericsoftware/kryo/serializers/ObjectField;->generics:[Ljava/lang/Class;

    .line 203
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_4

    const-string v0, "kryo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field generics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_4
    return-object v6
.end method
