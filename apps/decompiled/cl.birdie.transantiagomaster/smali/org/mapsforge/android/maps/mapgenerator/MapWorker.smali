.class public final Lorg/mapsforge/android/maps/mapgenerator/MapWorker;
.super Lorg/mapsforge/android/maps/PausableThread;
.source "MapWorker.java"


# instance fields
.field private final fileSystemTileCache:Lorg/mapsforge/android/maps/mapgenerator/TileCache;

.field private final inMemoryTileCache:Lorg/mapsforge/android/maps/mapgenerator/TileCache;

.field private final jobQueue:Lorg/mapsforge/android/maps/mapgenerator/JobQueue;

.field private mapGenerator:Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

.field private final mapView:Lorg/mapsforge/android/maps/MapView;

.field private final tileBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lorg/mapsforge/android/maps/MapView;)V
    .locals 2
    .param p1, "mapView"    # Lorg/mapsforge/android/maps/MapView;

    .prologue
    const/16 v1, 0x100

    .line 42
    invoke-direct {p0}, Lorg/mapsforge/android/maps/PausableThread;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->mapView:Lorg/mapsforge/android/maps/MapView;

    .line 44
    invoke-virtual {p1}, Lorg/mapsforge/android/maps/MapView;->getJobQueue()Lorg/mapsforge/android/maps/mapgenerator/JobQueue;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->jobQueue:Lorg/mapsforge/android/maps/mapgenerator/JobQueue;

    .line 45
    invoke-virtual {p1}, Lorg/mapsforge/android/maps/MapView;->getInMemoryTileCache()Lorg/mapsforge/android/maps/mapgenerator/TileCache;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->inMemoryTileCache:Lorg/mapsforge/android/maps/mapgenerator/TileCache;

    .line 46
    invoke-virtual {p1}, Lorg/mapsforge/android/maps/MapView;->getFileSystemTileCache()Lorg/mapsforge/android/maps/mapgenerator/TileCache;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->fileSystemTileCache:Lorg/mapsforge/android/maps/mapgenerator/TileCache;

    .line 47
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->tileBitmap:Landroid/graphics/Bitmap;

    .line 48
    return-void
.end method


# virtual methods
.method protected final afterRun()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->tileBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    return-void
.end method

.method protected final doWork()V
    .locals 5

    .prologue
    .line 65
    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->jobQueue:Lorg/mapsforge/android/maps/mapgenerator/JobQueue;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;->poll()Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;

    move-result-object v0

    .line 67
    .local v0, "mapGeneratorJob":Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;
    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->inMemoryTileCache:Lorg/mapsforge/android/maps/mapgenerator/TileCache;

    invoke-interface {v2, v0}, Lorg/mapsforge/android/maps/mapgenerator/TileCache;->containsKey(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->fileSystemTileCache:Lorg/mapsforge/android/maps/mapgenerator/TileCache;

    invoke-interface {v2, v0}, Lorg/mapsforge/android/maps/mapgenerator/TileCache;->containsKey(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->mapGenerator:Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->tileBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v2, v0, v3}, Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;->executeJob(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;Landroid/graphics/Bitmap;)Z

    move-result v1

    .line 75
    .local v1, "success":Z
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 76
    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->getFrameBuffer()Lorg/mapsforge/android/maps/FrameBuffer;

    move-result-object v2

    iget-object v3, v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->tile:Lorg/mapsforge/core/Tile;

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->tileBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Lorg/mapsforge/android/maps/FrameBuffer;->drawBitmap(Lorg/mapsforge/core/Tile;Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->inMemoryTileCache:Lorg/mapsforge/android/maps/mapgenerator/TileCache;

    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->tileBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v2, v0, v3}, Lorg/mapsforge/android/maps/mapgenerator/TileCache;->put(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;Landroid/graphics/Bitmap;)V

    .line 79
    :cond_2
    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->postInvalidate()V

    .line 80
    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->fileSystemTileCache:Lorg/mapsforge/android/maps/mapgenerator/TileCache;

    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->tileBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v2, v0, v3}, Lorg/mapsforge/android/maps/mapgenerator/TileCache;->put(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected final getThreadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "MapWorker"

    return-object v0
.end method

.method protected final getThreadPriority()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x3

    return v0
.end method

.method protected final hasWork()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->jobQueue:Lorg/mapsforge/android/maps/mapgenerator/JobQueue;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setMapGenerator(Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;)V
    .locals 0
    .param p1, "mapGenerator"    # Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/mapsforge/android/maps/mapgenerator/MapWorker;->mapGenerator:Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

    .line 56
    return-void
.end method
