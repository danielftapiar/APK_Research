.class public Lcom/esotericsoftware/kryo/pool/KryoPool;
.super Ljava/lang/Object;
.source "KryoPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/pool/KryoPool$KryoFactory;,
        Lcom/esotericsoftware/kryo/pool/KryoPool$KryoCallback;
    }
.end annotation


# instance fields
.field private factory:Lcom/esotericsoftware/kryo/pool/KryoPool$KryoFactory;

.field private queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/esotericsoftware/kryo/Kryo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/pool/KryoPool$KryoFactory;)V
    .locals 1
    .param p1, "factory"    # Lcom/esotericsoftware/kryo/pool/KryoPool$KryoFactory;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/esotericsoftware/kryo/pool/KryoPool;->factory:Lcom/esotericsoftware/kryo/pool/KryoPool$KryoFactory;

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/pool/KryoPool;->queue:Ljava/util/Queue;

    .line 17
    return-void
.end method


# virtual methods
.method public borrow()Lcom/esotericsoftware/kryo/Kryo;
    .locals 2

    .prologue
    .line 25
    iget-object v1, p0, Lcom/esotericsoftware/kryo/pool/KryoPool;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/Kryo;

    .local v0, "t":Lcom/esotericsoftware/kryo/Kryo;
    if-nez v0, :cond_0

    .line 26
    iget-object v1, p0, Lcom/esotericsoftware/kryo/pool/KryoPool;->factory:Lcom/esotericsoftware/kryo/pool/KryoPool$KryoFactory;

    invoke-interface {v1}, Lcom/esotericsoftware/kryo/pool/KryoPool$KryoFactory;->create()Lcom/esotericsoftware/kryo/Kryo;

    move-result-object v0

    .line 28
    :cond_0
    return-object v0
.end method

.method public release(Lcom/esotericsoftware/kryo/Kryo;)V
    .locals 1
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/esotericsoftware/kryo/pool/KryoPool;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public run(Lcom/esotericsoftware/kryo/pool/KryoPool$KryoCallback;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/esotericsoftware/kryo/pool/KryoPool$KryoCallback",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "callback":Lcom/esotericsoftware/kryo/pool/KryoPool$KryoCallback;, "Lcom/esotericsoftware/kryo/pool/KryoPool$KryoCallback<TT;>;"
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/pool/KryoPool;->borrow()Lcom/esotericsoftware/kryo/Kryo;

    move-result-object v0

    .line 38
    .local v0, "kryo":Lcom/esotericsoftware/kryo/Kryo;
    :try_start_0
    invoke-interface {p1, v0}, Lcom/esotericsoftware/kryo/pool/KryoPool$KryoCallback;->execute(Lcom/esotericsoftware/kryo/Kryo;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 40
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/pool/KryoPool;->release(Lcom/esotericsoftware/kryo/Kryo;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/pool/KryoPool;->release(Lcom/esotericsoftware/kryo/Kryo;)V

    throw v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/esotericsoftware/kryo/pool/KryoPool;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method
