.class public Lcom/facebook/tools/dextr/bridge/ManualTracingState;
.super Ljava/lang/Object;
.source "ManualTracingState.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/tools/dextr/bridge/ManualTracingState;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/facebook/tools/dextr/bridge/ManualTracingState;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 21
    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 42
    sget-object v1, Lcom/facebook/tools/dextr/bridge/ManualTracingState;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 43
    and-int/lit8 v1, v2, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    .line 44
    :goto_0
    if-ne v1, p0, :cond_1

    .line 49
    :goto_1
    return v0

    :cond_0
    move v1, v0

    .line 43
    goto :goto_0

    .line 48
    :cond_1
    xor-int/lit8 v0, v2, 0x2

    .line 49
    sget-object v1, Lcom/facebook/tools/dextr/bridge/ManualTracingState;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    goto :goto_1
.end method

.method public static a(ZZ)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 30
    if-eqz p0, :cond_1

    const/4 v1, 0x2

    .line 31
    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 32
    :cond_0
    or-int/2addr v0, v1

    .line 33
    sget-object v1, Lcom/facebook/tools/dextr/bridge/ManualTracingState;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 34
    sget-object v2, Lcom/facebook/tools/dextr/bridge/ManualTracingState;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0

    :cond_1
    move v1, v0

    .line 30
    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 25
    sget-object v1, Lcom/facebook/tools/dextr/bridge/ManualTracingState;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 26
    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 57
    sget-object v2, Lcom/facebook/tools/dextr/bridge/ManualTracingState;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 58
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v1, :cond_0

    .line 59
    :goto_0
    if-ne v1, p0, :cond_1

    .line 64
    :goto_1
    return v0

    :cond_0
    move v1, v0

    .line 58
    goto :goto_0

    .line 63
    :cond_1
    xor-int/lit8 v0, v2, 0x1

    .line 64
    sget-object v1, Lcom/facebook/tools/dextr/bridge/ManualTracingState;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    goto :goto_1
.end method
