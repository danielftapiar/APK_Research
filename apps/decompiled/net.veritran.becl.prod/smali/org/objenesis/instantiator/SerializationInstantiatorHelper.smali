.class public Lorg/objenesis/instantiator/SerializationInstantiatorHelper;
.super Ljava/lang/Object;
.source "SerializationInstantiatorHelper.java"


# static fields
.field static class$java$io$Serializable:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 39
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

.method public static getNonSerializableSuperClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .param p0, "type"    # Ljava/lang/Class;

    .prologue
    .line 38
    move-object v0, p0

    .line 39
    .local v0, "result":Ljava/lang/Class;
    :cond_0
    sget-object v1, Lorg/objenesis/instantiator/SerializationInstantiatorHelper;->class$java$io$Serializable:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.io.Serializable"

    invoke-static {v1}, Lorg/objenesis/instantiator/SerializationInstantiatorHelper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/objenesis/instantiator/SerializationInstantiatorHelper;->class$java$io$Serializable:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Bad class hierarchy: No non-serializable parents"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_1
    sget-object v1, Lorg/objenesis/instantiator/SerializationInstantiatorHelper;->class$java$io$Serializable:Ljava/lang/Class;

    goto :goto_0

    .line 45
    :cond_2
    return-object v0
.end method
