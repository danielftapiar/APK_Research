.class public abstract Lorg/objenesis/instantiator/sun/Sun13InstantiatorBase;
.super Ljava/lang/Object;
.source "Sun13InstantiatorBase.java"

# interfaces
.implements Lorg/objenesis/instantiator/ObjectInstantiator;


# static fields
.field protected static allocateNewObjectMethod:Ljava/lang/reflect/Method;

.field static class$java$io$ObjectInputStream:Ljava/lang/Class;

.field static class$java$lang$Class:Ljava/lang/Class;


# instance fields
.field protected final type:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lorg/objenesis/instantiator/sun/Sun13InstantiatorBase;->allocateNewObjectMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/objenesis/instantiator/sun/Sun13InstantiatorBase;->type:Ljava/lang/Class;

    .line 53
    invoke-static {}, Lorg/objenesis/instantiator/sun/Sun13InstantiatorBase;->initialize()V

    .line 54
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 37
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
    .line 34
    sget-object v1, Lorg/objenesis/instantiator/sun/Sun13InstantiatorBase;->allocateNewObjectMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 36
    :try_start_0
    sget-object v1, Lorg/objenesis/instantiator/sun/Sun13InstantiatorBase;->class$java$io$ObjectInputStream:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.io.ObjectInputStream"

    invoke-static {v1}, Lorg/objenesis/instantiator/sun/Sun13InstantiatorBase;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/objenesis/instantiator/sun/Sun13InstantiatorBase;->class$java$io$ObjectInputStream:Ljava/lang/Class;

    move-object v2, v1

    :goto_0
    const-string v3, "allocateNewObject"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v1, Lorg/objenesis/instantiator/sun/Sun13InstantiatorBase;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v1, :cond_2

    const-string v1, "java.lang.Class"

    invoke-static {v1}, Lorg/objenesis/instantiator/sun/Sun13InstantiatorBase;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/objenesis/instantiator/sun/Sun13InstantiatorBase;->class$java$lang$Class:Ljava/lang/Class;

    :goto_1
    aput-object v1, v4, v5

    const/4 v5, 0x1

    sget-object v1, Lorg/objenesis/instantiator/sun/Sun13InstantiatorBase;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v1, :cond_3

    const-string v1, "java.lang.Class"

    invoke-static {v1}, Lorg/objenesis/instantiator/sun/Sun13InstantiatorBase;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/objenesis/instantiator/sun/Sun13InstantiatorBase;->class$java$lang$Class:Ljava/lang/Class;

    :goto_2
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/objenesis/instantiator/sun/Sun13InstantiatorBase;->allocateNewObjectMethod:Ljava/lang/reflect/Method;

    .line 38
    sget-object v1, Lorg/objenesis/instantiator/sun/Sun13InstantiatorBase;->allocateNewObjectMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 47
    :cond_0
    return-void

    .line 36
    :cond_1
    sget-object v1, Lorg/objenesis/instantiator/sun/Sun13InstantiatorBase;->class$java$io$ObjectInputStream:Ljava/lang/Class;

    move-object v2, v1

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/objenesis/instantiator/sun/Sun13InstantiatorBase;->class$java$lang$Class:Ljava/lang/Class;

    goto :goto_1

    :cond_3
    sget-object v1, Lorg/objenesis/instantiator/sun/Sun13InstantiatorBase;->class$java$lang$Class:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 43
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract newInstance()Ljava/lang/Object;
.end method
