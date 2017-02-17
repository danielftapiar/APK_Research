.class public Lorg/objenesis/ObjenesisBase;
.super Ljava/lang/Object;
.source "ObjenesisBase.java"

# interfaces
.implements Lorg/objenesis/Objenesis;


# instance fields
.field protected cache:Ljava/util/Map;

.field protected final strategy:Lorg/objenesis/strategy/InstantiatorStrategy;


# direct methods
.method public constructor <init>(Lorg/objenesis/strategy/InstantiatorStrategy;)V
    .locals 1
    .param p1, "strategy"    # Lorg/objenesis/strategy/InstantiatorStrategy;

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/objenesis/ObjenesisBase;-><init>(Lorg/objenesis/strategy/InstantiatorStrategy;Z)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/objenesis/strategy/InstantiatorStrategy;Z)V
    .locals 2
    .param p1, "strategy"    # Lorg/objenesis/strategy/InstantiatorStrategy;
    .param p2, "useCache"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A strategy can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p1, p0, Lorg/objenesis/ObjenesisBase;->strategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    .line 58
    if-eqz p2, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/objenesis/ObjenesisBase;->cache:Ljava/util/Map;

    .line 59
    return-void

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;
    .locals 3
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/objenesis/ObjenesisBase;->cache:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 86
    iget-object v1, p0, Lorg/objenesis/ObjenesisBase;->strategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    invoke-interface {v1, p1}, Lorg/objenesis/strategy/InstantiatorStrategy;->newInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 93
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 88
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/objenesis/ObjenesisBase;->cache:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objenesis/instantiator/ObjectInstantiator;

    .line 89
    .local v0, "instantiator":Lorg/objenesis/instantiator/ObjectInstantiator;
    if-nez v0, :cond_0

    .line 90
    iget-object v1, p0, Lorg/objenesis/ObjenesisBase;->strategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    invoke-interface {v1, p1}, Lorg/objenesis/strategy/InstantiatorStrategy;->newInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lorg/objenesis/ObjenesisBase;->cache:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    .end local v0    # "instantiator":Lorg/objenesis/instantiator/ObjectInstantiator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lorg/objenesis/ObjenesisBase;->getInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;

    move-result-object v0

    invoke-interface {v0}, Lorg/objenesis/instantiator/ObjectInstantiator;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " using "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/objenesis/ObjenesisBase;->strategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lorg/objenesis/ObjenesisBase;->cache:Ljava/util/Map;

    if-nez v0, :cond_0

    const-string v0, " without"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " caching"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, " with"

    goto :goto_0
.end method
