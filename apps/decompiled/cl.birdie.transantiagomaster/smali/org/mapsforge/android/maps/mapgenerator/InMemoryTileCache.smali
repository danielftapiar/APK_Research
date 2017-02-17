.class public final Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;
.super Ljava/lang/Object;
.source "InMemoryTileCache.java"

# interfaces
.implements Lorg/mapsforge/android/maps/mapgenerator/TileCache;


# instance fields
.field private final bitmapPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private final capacity:I

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0x14

    iput v0, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->capacity:I

    .line 85
    iget v0, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->capacity:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->createBitmapPool(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->bitmapPool:Ljava/util/List;

    .line 86
    iget v0, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->capacity:I

    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->bitmapPool:Ljava/util/List;

    int-to-float v2, v0

    const v3, 0x3f19999a    # 0.6f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x2

    new-instance v3, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache$1;

    invoke-direct {v3, v2, v0, v1}, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache$1;-><init>(IILjava/util/List;)V

    iput-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->map:Ljava/util/Map;

    .line 87
    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 88
    return-void
.end method

.method private static createBitmapPool(I)Ljava/util/List;
    .locals 5
    .param p0, "poolSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x100

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v1, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 41
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final containsKey(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;)Z
    .locals 2
    .param p1, "mapGeneratorJob"    # Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;

    .prologue
    .line 92
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->map:Ljava/util/Map;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final destroy()V
    .locals 3

    .prologue
    .line 99
    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->map:Ljava/util/Map;

    monitor-enter v2

    .line 100
    :try_start_0
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 101
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 103
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 105
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->bitmapPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 106
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 108
    :cond_1
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->bitmapPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 109
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final get(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "mapGeneratorJob"    # Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;

    .prologue
    .line 114
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->map:Ljava/util/Map;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final put(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "mapGeneratorJob"    # Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 131
    iget v1, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->capacity:I

    if-nez v1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->map:Ljava/util/Map;

    monitor-enter v2

    .line 136
    :try_start_0
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->bitmapPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 140
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->bitmapPool:Ljava/util/List;

    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->bitmapPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 142
    .local v0, "pooledBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 143
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 144
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 146
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/InMemoryTileCache;->map:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
