.class public final Lcom/google/android/exoplayer/upstream/DefaultAllocator;
.super Ljava/lang/Object;
.source "DefaultAllocator.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/Allocator;


# instance fields
.field private final a:I

.field private b:I

.field private c:I

.field private d:[Lcom/google/android/exoplayer/upstream/Allocation;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->a(Z)V

    .line 43
    iput p1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->a:I

    .line 44
    const/16 v0, 0x64

    new-array v0, v0, [Lcom/google/android/exoplayer/upstream/Allocation;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->d:[Lcom/google/android/exoplayer/upstream/Allocation;

    .line 45
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/google/android/exoplayer/upstream/Allocation;
    .locals 2

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->b:I

    .line 50
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->c:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->d:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->c:I

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/exoplayer/upstream/Allocation;

    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->a:I

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/upstream/Allocation;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 4

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->a:I

    invoke-static {p1, v0}, Lcom/google/android/exoplayer/util/Util;->a(II)I

    move-result v0

    .line 70
    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->b:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 71
    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->c:I

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->d:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->c:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 73
    iput v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/exoplayer/upstream/Allocation;)V
    .locals 3

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer/upstream/Allocation;->a:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->a:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->a(Z)V

    .line 58
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->b:I

    .line 59
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->c:I

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->d:[Lcom/google/android/exoplayer/upstream/Allocation;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->d:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->d:[Lcom/google/android/exoplayer/upstream/Allocation;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer/upstream/Allocation;

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->d:[Lcom/google/android/exoplayer/upstream/Allocation;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->d:[Lcom/google/android/exoplayer/upstream/Allocation;

    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->c:I

    aput-object p1, v0, v1

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()I
    .locals 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->b:I

    iget v1, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(I)V
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->b()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 96
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultAllocator;->a:I

    return v0
.end method
