.class public abstract Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;
.super Ljava/lang/Object;
.source "GCJInstantiatorBase.java"

# interfaces
.implements Lorg/objenesis/instantiator/ObjectInstantiator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase$DummyStream;
    }
.end annotation


# static fields
.field static class$java$io$ObjectInputStream:Ljava/lang/Class;

.field static class$java$lang$Class:Ljava/lang/Class;

.field protected static dummyStream:Ljava/io/ObjectInputStream;

.field protected static newObjectMethod:Ljava/lang/reflect/Method;


# instance fields
.field protected final type:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;->newObjectMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;->type:Ljava/lang/Class;

    .line 65
    invoke-static {}, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;->initialize()V

    .line 66
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 45
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
    .line 42
    sget-object v1, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;->newObjectMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 44
    :try_start_0
    sget-object v1, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;->class$java$io$ObjectInputStream:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.io.ObjectInputStream"

    invoke-static {v1}, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;->class$java$io$ObjectInputStream:Ljava/lang/Class;

    move-object v2, v1

    :goto_0
    const-string v3, "newObject"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v1, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v1, :cond_2

    const-string v1, "java.lang.Class"

    invoke-static {v1}, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;->class$java$lang$Class:Ljava/lang/Class;

    :goto_1
    aput-object v1, v4, v5

    const/4 v5, 0x1

    sget-object v1, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v1, :cond_3

    const-string v1, "java.lang.Class"

    invoke-static {v1}, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;->class$java$lang$Class:Ljava/lang/Class;

    :goto_2
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;->newObjectMethod:Ljava/lang/reflect/Method;

    .line 46
    sget-object v1, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;->newObjectMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 47
    new-instance v1, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase$DummyStream;

    invoke-direct {v1}, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase$DummyStream;-><init>()V

    sput-object v1, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;->dummyStream:Ljava/io/ObjectInputStream;

    .line 59
    :cond_0
    return-void

    .line 44
    :cond_1
    sget-object v1, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;->class$java$io$ObjectInputStream:Ljava/lang/Class;

    move-object v2, v1

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;->class$java$lang$Class:Ljava/lang/Class;

    goto :goto_1

    :cond_3
    sget-object v1, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;->class$java$lang$Class:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 52
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 55
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 56
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract newInstance()Ljava/lang/Object;
.end method
