.class public Lorg/objenesis/instantiator/jrockit/JRockitLegacyInstantiator;
.super Ljava/lang/Object;
.source "JRockitLegacyInstantiator.java"

# interfaces
.implements Lorg/objenesis/instantiator/ObjectInstantiator;


# static fields
.field static class$java$lang$Class:Ljava/lang/Class;

.field private static safeAllocObjectMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final type:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lorg/objenesis/instantiator/jrockit/JRockitLegacyInstantiator;->safeAllocObjectMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lorg/objenesis/instantiator/jrockit/JRockitLegacyInstantiator;->initialize()V

    .line 59
    iput-object p1, p0, Lorg/objenesis/instantiator/jrockit/JRockitLegacyInstantiator;->type:Ljava/lang/Class;

    .line 60
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 40
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
    .line 35
    sget-object v2, Lorg/objenesis/instantiator/jrockit/JRockitLegacyInstantiator;->safeAllocObjectMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 38
    :try_start_0
    const-string v2, "jrockit.vm.MemSystem"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 39
    .local v1, "memSystem":Ljava/lang/Class;
    const-string v3, "safeAllocObject"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v2, Lorg/objenesis/instantiator/jrockit/JRockitLegacyInstantiator;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "java.lang.Class"

    invoke-static {v2}, Lorg/objenesis/instantiator/jrockit/JRockitLegacyInstantiator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/objenesis/instantiator/jrockit/JRockitLegacyInstantiator;->class$java$lang$Class:Ljava/lang/Class;

    :goto_0
    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/objenesis/instantiator/jrockit/JRockitLegacyInstantiator;->safeAllocObjectMethod:Ljava/lang/reflect/Method;

    .line 41
    sget-object v2, Lorg/objenesis/instantiator/jrockit/JRockitLegacyInstantiator;->safeAllocObjectMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 53
    :cond_0
    return-void

    .line 39
    :cond_1
    sget-object v2, Lorg/objenesis/instantiator/jrockit/JRockitLegacyInstantiator;->class$java$lang$Class:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Lorg/objenesis/ObjenesisException;

    invoke-direct {v2, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 46
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lorg/objenesis/ObjenesisException;

    invoke-direct {v2, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 49
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Lorg/objenesis/ObjenesisException;

    invoke-direct {v2, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 64
    :try_start_0
    sget-object v1, Lorg/objenesis/instantiator/jrockit/JRockitLegacyInstantiator;->safeAllocObjectMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/objenesis/instantiator/jrockit/JRockitLegacyInstantiator;->type:Ljava/lang/Class;

    aput-object v5, v3, v4

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
