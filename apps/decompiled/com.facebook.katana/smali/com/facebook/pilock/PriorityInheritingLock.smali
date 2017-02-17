.class public Lcom/facebook/pilock/PriorityInheritingLock;
.super Ljava/lang/Object;
.source "PriorityInheritingLock.java"

# interfaces
.implements Ljava/util/concurrent/locks/Lock;


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# instance fields
.field private mPtr:J
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "pilock"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->a(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/pilock/PriorityInheritingLock;->mPtr:J

    .line 48
    invoke-direct {p0}, Lcom/facebook/pilock/PriorityInheritingLock;->nativeInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "Could not initialize native Lock"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    return-void
.end method

.method private native nativeDeinit()Z
.end method

.method private native nativeInit()Z
.end method

.method private native nativeLock()Z
.end method

.method private native nativeUnlock()Z
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/facebook/pilock/PriorityInheritingLock;->nativeDeinit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const-string v0, "PriorityInheritingLock"

    const-string v1, "Could not deinit native Lock!"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 59
    return-void
.end method

.method public lock()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/facebook/pilock/PriorityInheritingLock;->nativeLock()Z

    move-result v0

    .line 64
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot acquire lock."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    return-void
.end method

.method public lockInterruptibly()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "PriorityInheritingLock::lockInterruptibly is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newCondition()Ljava/util/concurrent/locks/Condition;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "PriorityInheritingLock::newCondition is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tryLock()Z
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "PriorityInheritingLock::tryLock is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "PriorityInheritingLock::tryLock is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unlock()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/facebook/pilock/PriorityInheritingLock;->nativeUnlock()Z

    .line 90
    return-void
.end method
