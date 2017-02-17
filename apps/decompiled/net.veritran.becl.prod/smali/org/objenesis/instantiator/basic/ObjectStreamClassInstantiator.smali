.class public Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;
.super Ljava/lang/Object;
.source "ObjectStreamClassInstantiator.java"

# interfaces
.implements Lorg/objenesis/instantiator/ObjectInstantiator;


# static fields
.field static class$java$io$ObjectStreamClass:Ljava/lang/Class;

.field private static newInstanceMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final objStreamClass:Ljava/io/ObjectStreamClass;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;->initialize()V

    .line 58
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    iput-object v0, p0, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;->objStreamClass:Ljava/io/ObjectStreamClass;

    .line 59
    return-void
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
    .locals 4

    .prologue
    .line 39
    sget-object v1, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;->newInstanceMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 41
    :try_start_0
    sget-object v1, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;->class$java$io$ObjectStreamClass:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.io.ObjectStreamClass"

    invoke-static {v1}, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;->class$java$io$ObjectStreamClass:Ljava/lang/Class;

    :goto_0
    const-string v2, "newInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;->newInstanceMethod:Ljava/lang/reflect/Method;

    .line 43
    sget-object v1, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;->newInstanceMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 52
    :cond_0
    return-void

    .line 41
    :cond_1
    sget-object v1, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;->class$java$io$ObjectStreamClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 48
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 64
    :try_start_0
    sget-object v1, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;->newInstanceMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;->objStreamClass:Ljava/io/ObjectStreamClass;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
