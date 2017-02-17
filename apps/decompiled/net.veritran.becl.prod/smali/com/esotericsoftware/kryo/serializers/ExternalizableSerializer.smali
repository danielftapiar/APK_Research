.class public Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "ExternalizableSerializer.java"


# instance fields
.field private javaSerializerByType:Lcom/esotericsoftware/kryo/util/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/ObjectMap",
            "<",
            "Ljava/lang/Class;",
            "Lcom/esotericsoftware/kryo/serializers/JavaSerializer;",
            ">;"
        }
    .end annotation
.end field

.field private objectInput:Lcom/esotericsoftware/kryo/io/KryoObjectInput;

.field private objectOutput:Lcom/esotericsoftware/kryo/io/KryoObjectOutput;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->objectInput:Lcom/esotericsoftware/kryo/io/KryoObjectInput;

    .line 35
    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->objectOutput:Lcom/esotericsoftware/kryo/io/KryoObjectOutput;

    return-void
.end method

.method private getCachedSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/serializers/JavaSerializer;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->javaSerializerByType:Lcom/esotericsoftware/kryo/util/ObjectMap;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/esotericsoftware/kryo/util/ObjectMap;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->javaSerializerByType:Lcom/esotericsoftware/kryo/util/ObjectMap;

    .line 126
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->javaSerializerByType:Lcom/esotericsoftware/kryo/util/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/serializers/JavaSerializer;

    goto :goto_0
.end method

.method private getJavaSerializerIfRequired(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/serializers/JavaSerializer;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->getCachedSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/serializers/JavaSerializer;

    move-result-object v0

    .line 116
    .local v0, "javaSerializer":Lcom/esotericsoftware/kryo/serializers/JavaSerializer;
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->isJavaSerializerRequired(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/JavaSerializer;

    .end local v0    # "javaSerializer":Lcom/esotericsoftware/kryo/serializers/JavaSerializer;
    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/JavaSerializer;-><init>()V

    .line 120
    .restart local v0    # "javaSerializer":Lcom/esotericsoftware/kryo/serializers/JavaSerializer;
    :cond_0
    return-object v0
.end method

.method private getObjectInput(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)Ljava/io/ObjectInput;
    .locals 1
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->objectInput:Lcom/esotericsoftware/kryo/io/KryoObjectInput;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/esotericsoftware/kryo/io/KryoObjectInput;

    invoke-direct {v0, p1, p2}, Lcom/esotericsoftware/kryo/io/KryoObjectInput;-><init>(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->objectInput:Lcom/esotericsoftware/kryo/io/KryoObjectInput;

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->objectInput:Lcom/esotericsoftware/kryo/io/KryoObjectInput;

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->objectInput:Lcom/esotericsoftware/kryo/io/KryoObjectInput;

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/kryo/io/KryoObjectInput;->setInput(Lcom/esotericsoftware/kryo/io/Input;)V

    goto :goto_0
.end method

.method private getObjectOutput(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)Ljava/io/ObjectOutput;
    .locals 1
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->objectOutput:Lcom/esotericsoftware/kryo/io/KryoObjectOutput;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/esotericsoftware/kryo/io/KryoObjectOutput;

    invoke-direct {v0, p1, p2}, Lcom/esotericsoftware/kryo/io/KryoObjectOutput;-><init>(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->objectOutput:Lcom/esotericsoftware/kryo/io/KryoObjectOutput;

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->objectOutput:Lcom/esotericsoftware/kryo/io/KryoObjectOutput;

    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->objectOutput:Lcom/esotericsoftware/kryo/io/KryoObjectOutput;

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/kryo/io/KryoObjectOutput;->setOutput(Lcom/esotericsoftware/kryo/io/Output;)V

    goto :goto_0
.end method

.method private static hasInheritableReplaceMethod(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 6
    .param p0, "type"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 139
    const/4 v2, 0x0

    .line 140
    .local v2, "method":Ljava/lang/reflect/Method;
    move-object v0, p0

    .line 141
    .local v0, "current":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 143
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 150
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 147
    goto :goto_0
.end method

.method private isJavaSerializerRequired(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 133
    const-string v0, "writeReplace"

    invoke-static {p1, v0}, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->hasInheritableReplaceMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "readResolve"

    invoke-static {p1, v0}, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->hasInheritableReplaceMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readExternal(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p3, "type"    # Ljava/lang/Class;

    .prologue
    .line 69
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Externalizable;

    .line 70
    .local v1, "object":Ljava/io/Externalizable;
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->getObjectInput(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)Ljava/io/ObjectInput;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    .line 71
    return-object v1

    .line 72
    .end local v1    # "object":Ljava/io/Externalizable;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 74
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 76
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 78
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 80
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private writeExternal(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 2
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 59
    :try_start_0
    check-cast p3, Ljava/io/Externalizable;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->getObjectOutput(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)Ljava/io/ObjectOutput;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 62
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p3, "type"    # Ljava/lang/Class;

    .prologue
    .line 49
    invoke-direct {p0, p3}, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->getJavaSerializerIfRequired(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/serializers/JavaSerializer;

    move-result-object v0

    .line 50
    .local v0, "serializer":Lcom/esotericsoftware/kryo/serializers/JavaSerializer;
    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->readExternal(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 53
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/JavaSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 2
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 39
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->getJavaSerializerIfRequired(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/serializers/JavaSerializer;

    move-result-object v0

    .line 40
    .local v0, "serializer":Lcom/esotericsoftware/kryo/serializers/JavaSerializer;
    if-nez v0, :cond_0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->writeExternal(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/JavaSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    goto :goto_0
.end method
