.class public Lorg/objenesis/instantiator/perc/PercInstantiator;
.super Ljava/lang/Object;
.source "PercInstantiator.java"

# interfaces
.implements Lorg/objenesis/instantiator/ObjectInstantiator;


# static fields
.field static class$java$io$ObjectInputStream:Ljava/lang/Class;

.field static class$java$lang$Class:Ljava/lang/Class;


# instance fields
.field private final newInstanceMethod:Ljava/lang/reflect/Method;

.field private final typeArgs:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v4

    iput-object v1, p0, Lorg/objenesis/instantiator/perc/PercInstantiator;->typeArgs:[Ljava/lang/Object;

    .line 40
    iget-object v1, p0, Lorg/objenesis/instantiator/perc/PercInstantiator;->typeArgs:[Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 43
    :try_start_0
    sget-object v1, Lorg/objenesis/instantiator/perc/PercInstantiator;->class$java$io$ObjectInputStream:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.io.ObjectInputStream"

    invoke-static {v1}, Lorg/objenesis/instantiator/perc/PercInstantiator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/objenesis/instantiator/perc/PercInstantiator;->class$java$io$ObjectInputStream:Ljava/lang/Class;

    move-object v2, v1

    :goto_0
    const-string v3, "newInstance"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v1, Lorg/objenesis/instantiator/perc/PercInstantiator;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.lang.Class"

    invoke-static {v1}, Lorg/objenesis/instantiator/perc/PercInstantiator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/objenesis/instantiator/perc/PercInstantiator;->class$java$lang$Class:Ljava/lang/Class;

    :goto_1
    aput-object v1, v4, v5

    const/4 v1, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/objenesis/instantiator/perc/PercInstantiator;->newInstanceMethod:Ljava/lang/reflect/Method;

    .line 45
    iget-object v1, p0, Lorg/objenesis/instantiator/perc/PercInstantiator;->newInstanceMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 53
    return-void

    .line 43
    :cond_0
    sget-object v1, Lorg/objenesis/instantiator/perc/PercInstantiator;->class$java$io$ObjectInputStream:Ljava/lang/Class;

    move-object v2, v1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/objenesis/instantiator/perc/PercInstantiator;->class$java$lang$Class:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 50
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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
    .locals 4

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lorg/objenesis/instantiator/perc/PercInstantiator;->newInstanceMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/objenesis/instantiator/perc/PercInstantiator;->typeArgs:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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
