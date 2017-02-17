.class public Lorg/objenesis/strategy/SerializingInstantiatorStrategy;
.super Lorg/objenesis/strategy/BaseInstantiatorStrategy;
.source "SerializingInstantiatorStrategy.java"


# static fields
.field static class$java$io$Serializable:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/objenesis/strategy/BaseInstantiatorStrategy;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 53
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public newInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;
    .locals 4
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 53
    sget-object v0, Lorg/objenesis/strategy/SerializingInstantiatorStrategy;->class$java$io$Serializable:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.io.Serializable"

    invoke-static {v0}, Lorg/objenesis/strategy/SerializingInstantiatorStrategy;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/objenesis/strategy/SerializingInstantiatorStrategy;->class$java$io$Serializable:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Lorg/objenesis/ObjenesisException;

    new-instance v1, Ljava/io/NotSerializableException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " not serializable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 53
    :cond_0
    sget-object v0, Lorg/objenesis/strategy/SerializingInstantiatorStrategy;->class$java$io$Serializable:Ljava/lang/Class;

    goto :goto_0

    .line 56
    :cond_1
    sget-object v0, Lorg/objenesis/strategy/SerializingInstantiatorStrategy;->JVM_NAME:Ljava/lang/String;

    const-string v1, "Java HotSpot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    sget-object v0, Lorg/objenesis/strategy/SerializingInstantiatorStrategy;->VM_VERSION:Ljava/lang/String;

    const-string v1, "1.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    new-instance v0, Lorg/objenesis/instantiator/sun/Sun13SerializationInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/sun/Sun13SerializationInstantiator;-><init>(Ljava/lang/Class;)V

    .line 68
    :goto_1
    return-object v0

    .line 61
    :cond_2
    sget-object v0, Lorg/objenesis/strategy/SerializingInstantiatorStrategy;->JVM_NAME:Ljava/lang/String;

    const-string v1, "GNU libgcj"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    new-instance v0, Lorg/objenesis/instantiator/gcj/GCJSerializationInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/gcj/GCJSerializationInstantiator;-><init>(Ljava/lang/Class;)V

    goto :goto_1

    .line 64
    :cond_3
    sget-object v0, Lorg/objenesis/strategy/SerializingInstantiatorStrategy;->JVM_NAME:Ljava/lang/String;

    const-string v1, "PERC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    new-instance v0, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;-><init>(Ljava/lang/Class;)V

    goto :goto_1

    .line 68
    :cond_4
    new-instance v0, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;-><init>(Ljava/lang/Class;)V

    goto :goto_1
.end method
