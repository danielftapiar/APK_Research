.class public Lnet/veritran/utils/LruCacheBitmap;
.super Ljava/lang/Object;
.source "LruCacheBitmap.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LruCacheBitmap"


# instance fields
.field private currentBytes:I

.field private dictStrBitmap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private maxBytesAllowed:I

.field private queueStrCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxBytesAllowed"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lnet/veritran/utils/LruCacheBitmap;->dictStrBitmap:Ljava/util/LinkedHashMap;

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/veritran/utils/LruCacheBitmap;->queueStrCache:Ljava/util/LinkedList;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/utils/LruCacheBitmap;->currentBytes:I

    .line 19
    const-string v0, "LruCacheBitmap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created LRU Cache with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes maximum allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iput p1, p0, Lnet/veritran/utils/LruCacheBitmap;->maxBytesAllowed:I

    .line 22
    return-void
.end method

.method private getSize(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 31
    monitor-enter p0

    .line 33
    :try_start_0
    invoke-direct {p0, p2}, Lnet/veritran/utils/LruCacheBitmap;->getSize(Landroid/graphics/Bitmap;)I

    move-result v1

    iget v2, p0, Lnet/veritran/utils/LruCacheBitmap;->maxBytesAllowed:I

    if-le v1, v2, :cond_0

    .line 35
    const-string v1, "LruCacheBitmap"

    const-string v2, "Bitmap size larger than allowed"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    monitor-exit p0

    .line 63
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v1, p0, Lnet/veritran/utils/LruCacheBitmap;->queueStrCache:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lnet/veritran/utils/LruCacheBitmap;->queueStrCache:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 44
    iget-object v1, p0, Lnet/veritran/utils/LruCacheBitmap;->queueStrCache:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 45
    monitor-exit p0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 48
    :cond_1
    :try_start_1
    iget v1, p0, Lnet/veritran/utils/LruCacheBitmap;->currentBytes:I

    invoke-direct {p0, p2}, Lnet/veritran/utils/LruCacheBitmap;->getSize(Landroid/graphics/Bitmap;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lnet/veritran/utils/LruCacheBitmap;->currentBytes:I

    .line 50
    :goto_1
    iget v1, p0, Lnet/veritran/utils/LruCacheBitmap;->currentBytes:I

    iget v2, p0, Lnet/veritran/utils/LruCacheBitmap;->maxBytesAllowed:I

    if-le v1, v2, :cond_2

    .line 52
    iget-object v1, p0, Lnet/veritran/utils/LruCacheBitmap;->queueStrCache:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    .local v0, "toRemove":Ljava/lang/String;
    iget v2, p0, Lnet/veritran/utils/LruCacheBitmap;->currentBytes:I

    iget-object v1, p0, Lnet/veritran/utils/LruCacheBitmap;->dictStrBitmap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lnet/veritran/utils/LruCacheBitmap;->getSize(Landroid/graphics/Bitmap;)I

    move-result v1

    sub-int v1, v2, v1

    iput v1, p0, Lnet/veritran/utils/LruCacheBitmap;->currentBytes:I

    .line 55
    iget-object v1, p0, Lnet/veritran/utils/LruCacheBitmap;->dictStrBitmap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 58
    .end local v0    # "toRemove":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lnet/veritran/utils/LruCacheBitmap;->dictStrBitmap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lnet/veritran/utils/LruCacheBitmap;->queueStrCache:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 61
    const-string v1, "LruCacheBitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added bitmap to cache. Current size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnet/veritran/utils/LruCacheBitmap;->currentBytes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - number of bitmaps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/veritran/utils/LruCacheBitmap;->dictStrBitmap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lnet/veritran/utils/LruCacheBitmap;->dictStrBitmap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 107
    iget-object v0, p0, Lnet/veritran/utils/LruCacheBitmap;->queueStrCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/utils/LruCacheBitmap;->currentBytes:I

    .line 110
    monitor-exit p0

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsBitmap(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lnet/veritran/utils/LruCacheBitmap;->dictStrBitmap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 82
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lnet/veritran/utils/LruCacheBitmap;->queueStrCache:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lnet/veritran/utils/LruCacheBitmap;->queueStrCache:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lnet/veritran/utils/LruCacheBitmap;->queueStrCache:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lnet/veritran/utils/LruCacheBitmap;->dictStrBitmap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeBitmap(Ljava/lang/String;)V
    .locals 2
    .param p1, "toRemove"    # Ljava/lang/String;

    .prologue
    .line 67
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lnet/veritran/utils/LruCacheBitmap;->dictStrBitmap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    monitor-exit p0

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    iget v1, p0, Lnet/veritran/utils/LruCacheBitmap;->currentBytes:I

    iget-object v0, p0, Lnet/veritran/utils/LruCacheBitmap;->dictStrBitmap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lnet/veritran/utils/LruCacheBitmap;->getSize(Landroid/graphics/Bitmap;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lnet/veritran/utils/LruCacheBitmap;->currentBytes:I

    .line 75
    iget-object v0, p0, Lnet/veritran/utils/LruCacheBitmap;->dictStrBitmap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
