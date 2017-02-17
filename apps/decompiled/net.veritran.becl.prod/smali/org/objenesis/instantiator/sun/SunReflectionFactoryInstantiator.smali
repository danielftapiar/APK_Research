.class public Lorg/objenesis/instantiator/sun/SunReflectionFactoryInstantiator;
.super Ljava/lang/Object;
.source "SunReflectionFactoryInstantiator.java"

# interfaces
.implements Lorg/objenesis/instantiator/ObjectInstantiator;


# static fields
.field static class$java$lang$Object:Ljava/lang/Class;


# instance fields
.field private final mungedConstructor:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lsun/reflect/ReflectionFactory;->getReflectionFactory()Lsun/reflect/ReflectionFactory;

    move-result-object v2

    .line 44
    .local v2, "reflectionFactory":Lsun/reflect/ReflectionFactory;
    :try_start_0
    sget-object v3, Lorg/objenesis/instantiator/sun/SunReflectionFactoryInstantiator;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "java.lang.Object"

    invoke-static {v3}, Lorg/objenesis/instantiator/sun/SunReflectionFactoryInstantiator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/objenesis/instantiator/sun/SunReflectionFactoryInstantiator;->class$java$lang$Object:Ljava/lang/Class;

    move-object v4, v3

    :goto_0
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 49
    .local v1, "javaLangObjectConstructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v2, p1, v1}, Lsun/reflect/ReflectionFactory;->newConstructorForSerialization(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    iput-object v3, p0, Lorg/objenesis/instantiator/sun/SunReflectionFactoryInstantiator;->mungedConstructor:Ljava/lang/reflect/Constructor;

    .line 51
    iget-object v3, p0, Lorg/objenesis/instantiator/sun/SunReflectionFactoryInstantiator;->mungedConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 52
    return-void

    .line 44
    .end local v1    # "javaLangObjectConstructor":Ljava/lang/reflect/Constructor;
    :cond_0
    :try_start_1
    sget-object v3, Lorg/objenesis/instantiator/sun/SunReflectionFactoryInstantiator;->class$java$lang$Object:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v3

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Cannot find constructor for java.lang.Object!"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 44
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
    .locals 3

    .prologue
    .line 56
    :try_start_0
    iget-object v2, p0, Lorg/objenesis/instantiator/sun/SunReflectionFactoryInstantiator;->mungedConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
