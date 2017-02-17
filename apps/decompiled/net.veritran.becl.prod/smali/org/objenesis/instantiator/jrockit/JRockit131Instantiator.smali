.class public Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;
.super Ljava/lang/Object;
.source "JRockit131Instantiator.java"

# interfaces
.implements Lorg/objenesis/instantiator/ObjectInstantiator;


# static fields
.field static class$java$lang$Class:Ljava/lang/Class;

.field static class$java$lang$Object:Ljava/lang/Class;

.field static class$java$lang$reflect$Constructor:Ljava/lang/Class;

.field private static newConstructorForSerializationMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mungedConstructor:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;->initialize()V

    .line 59
    sget-object v2, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;->newConstructorForSerializationMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 64
    :try_start_0
    sget-object v2, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "java.lang.Object"

    invoke-static {v2}, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;->class$java$lang$Object:Ljava/lang/Class;

    move-object v3, v2

    :goto_0
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    .local v1, "javaLangObjectConstructor":Ljava/lang/reflect/Constructor;
    :try_start_1
    sget-object v2, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;->newConstructorForSerializationMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    iput-object v2, p0, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;->mungedConstructor:Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    .end local v1    # "javaLangObjectConstructor":Ljava/lang/reflect/Constructor;
    :cond_0
    return-void

    .line 64
    :cond_1
    :try_start_2
    sget-object v2, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;->class$java$lang$Object:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v2

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Cannot find constructor for java.lang.Object!"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v1    # "javaLangObjectConstructor":Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/objenesis/ObjenesisException;

    invoke-direct {v2, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 41
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

.method private static initialize()V
    .locals 6

    .prologue
    .line 36
    sget-object v2, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;->newConstructorForSerializationMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 39
    :try_start_0
    const-string v2, "COM.jrockit.reflect.MemberAccess"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 40
    .local v0, "cl":Ljava/lang/Class;
    const-string v3, "newConstructorForSerialization"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v2, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;->class$java$lang$reflect$Constructor:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "java.lang.reflect.Constructor"

    invoke-static {v2}, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;->class$java$lang$reflect$Constructor:Ljava/lang/Class;

    :goto_0
    aput-object v2, v4, v5

    const/4 v5, 0x1

    sget-object v2, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "java.lang.Class"

    invoke-static {v2}, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;->class$java$lang$Class:Ljava/lang/Class;

    :goto_1
    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;->newConstructorForSerializationMethod:Ljava/lang/reflect/Method;

    .line 42
    sget-object v2, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;->newConstructorForSerializationMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 54
    :cond_0
    return-void

    .line 40
    :cond_1
    sget-object v2, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;->class$java$lang$reflect$Constructor:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;->class$java$lang$Class:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Lorg/objenesis/ObjenesisException;

    invoke-direct {v2, v1}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 47
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lorg/objenesis/ObjenesisException;

    invoke-direct {v2, v1}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 50
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Lorg/objenesis/ObjenesisException;

    invoke-direct {v2, v1}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 83
    :try_start_0
    iget-object v2, p0, Lorg/objenesis/instantiator/jrockit/JRockit131Instantiator;->mungedConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
