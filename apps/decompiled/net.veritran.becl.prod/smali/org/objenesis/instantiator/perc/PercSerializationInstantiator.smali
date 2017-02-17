.class public Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;
.super Ljava/lang/Object;
.source "PercSerializationInstantiator.java"

# interfaces
.implements Lorg/objenesis/instantiator/ObjectInstantiator;


# static fields
.field static class$java$io$ObjectInputStream:Ljava/lang/Class;

.field static class$java$io$Serializable:Ljava/lang/Class;

.field static class$java$lang$Class:Ljava/lang/Class;

.field static class$java$lang$Object:Ljava/lang/Class;

.field static class$java$lang$String:Ljava/lang/Class;


# instance fields
.field private final newInstanceMethod:Ljava/lang/reflect/Method;

.field private typeArgs:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 13
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v7, p1

    .line 46
    .local v7, "unserializableType":Ljava/lang/Class;
    :goto_0
    sget-object v8, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$java$io$Serializable:Ljava/lang/Class;

    if-nez v8, :cond_0

    const-string v8, "java.io.Serializable"

    invoke-static {v8}, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$java$io$Serializable:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 47
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_0

    .line 46
    :cond_0
    sget-object v8, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$java$io$Serializable:Ljava/lang/Class;

    goto :goto_1

    .line 52
    :cond_1
    :try_start_0
    const-string v8, "COM.newmonics.PercClassLoader.Method"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 54
    .local v5, "percMethodClass":Ljava/lang/Class;
    sget-object v8, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$java$io$ObjectInputStream:Ljava/lang/Class;

    if-nez v8, :cond_2

    const-string v8, "java.io.ObjectInputStream"

    invoke-static {v8}, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$java$io$ObjectInputStream:Ljava/lang/Class;

    move-object v9, v8

    :goto_2
    const-string v10, "noArgConstruct"

    const/4 v8, 0x3

    new-array v11, v8, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v8, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v8, :cond_3

    const-string v8, "java.lang.Class"

    invoke-static {v8}, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$java$lang$Class:Ljava/lang/Class;

    :goto_3
    aput-object v8, v11, v12

    const/4 v12, 0x1

    sget-object v8, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v8, :cond_4

    const-string v8, "java.lang.Object"

    invoke-static {v8}, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$java$lang$Object:Ljava/lang/Class;

    :goto_4
    aput-object v8, v11, v12

    const/4 v8, 0x2

    aput-object v5, v11, v8

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, p0, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->newInstanceMethod:Ljava/lang/reflect/Method;

    .line 56
    iget-object v8, p0, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->newInstanceMethod:Ljava/lang/reflect/Method;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 59
    const-string v8, "COM.newmonics.PercClassLoader.PercClass"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 60
    .local v3, "percClassClass":Ljava/lang/Class;
    const-string v9, "getPercClass"

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v8, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v8, :cond_5

    const-string v8, "java.lang.Class"

    invoke-static {v8}, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$java$lang$Class:Ljava/lang/Class;

    :goto_5
    aput-object v8, v10, v11

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 62
    .local v2, "getPercClassMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 63
    .local v6, "someObject":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "findMethod"

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v8, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$java$lang$String:Ljava/lang/Class;

    if-nez v8, :cond_6

    const-string v8, "java.lang.String"

    invoke-static {v8}, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$java$lang$String:Ljava/lang/Class;

    :goto_6
    aput-object v8, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 65
    .local v1, "findMethodMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "<init>()V"

    aput-object v10, v8, v9

    invoke-virtual {v1, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 67
    .local v4, "percMethod":Ljava/lang/Object;
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object v4, v8, v9

    iput-object v8, p0, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->typeArgs:[Ljava/lang/Object;

    .line 82
    return-void

    .line 54
    .end local v1    # "findMethodMethod":Ljava/lang/reflect/Method;
    .end local v2    # "getPercClassMethod":Ljava/lang/reflect/Method;
    .end local v3    # "percClassClass":Ljava/lang/Class;
    .end local v4    # "percMethod":Ljava/lang/Object;
    .end local v6    # "someObject":Ljava/lang/Object;
    :cond_2
    sget-object v8, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$java$io$ObjectInputStream:Ljava/lang/Class;

    move-object v9, v8

    goto/16 :goto_2

    :cond_3
    sget-object v8, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$java$lang$Class:Ljava/lang/Class;

    goto/16 :goto_3

    :cond_4
    sget-object v8, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_4

    .line 60
    .restart local v3    # "percClassClass":Ljava/lang/Class;
    :cond_5
    sget-object v8, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$java$lang$Class:Ljava/lang/Class;

    goto :goto_5

    .line 63
    .restart local v2    # "getPercClassMethod":Ljava/lang/reflect/Method;
    .restart local v6    # "someObject":Ljava/lang/Object;
    :cond_6
    sget-object v8, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->class$java$lang$String:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_6

    .line 70
    .end local v2    # "getPercClassMethod":Ljava/lang/reflect/Method;
    .end local v3    # "percClassClass":Ljava/lang/Class;
    .end local v5    # "percMethodClass":Ljava/lang/Class;
    .end local v6    # "someObject":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v8, Lorg/objenesis/ObjenesisException;

    invoke-direct {v8, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 73
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v8, Lorg/objenesis/ObjenesisException;

    invoke-direct {v8, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 76
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v8, Lorg/objenesis/ObjenesisException;

    invoke-direct {v8, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 79
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v8, Lorg/objenesis/ObjenesisException;

    invoke-direct {v8, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
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
.method public newInstance()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->newInstanceMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;->typeArgs:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 91
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
