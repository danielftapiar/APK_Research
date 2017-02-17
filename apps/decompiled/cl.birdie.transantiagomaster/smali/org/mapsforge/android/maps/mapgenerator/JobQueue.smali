.class public final Lorg/mapsforge/android/maps/mapgenerator/JobQueue;
.super Ljava/lang/Object;
.source "JobQueue.java"


# instance fields
.field private final mapView:Lorg/mapsforge/android/maps/MapView;

.field private priorityQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;",
            ">;"
        }
    .end annotation
.end field

.field private scheduleNeeded:Z


# direct methods
.method public constructor <init>(Lorg/mapsforge/android/maps/MapView;)V
    .locals 2
    .param p1, "mapView"    # Lorg/mapsforge/android/maps/MapView;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;->mapView:Lorg/mapsforge/android/maps/MapView;

    .line 37
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;->priorityQueue:Ljava/util/PriorityQueue;

    .line 38
    return-void
.end method


# virtual methods
.method public final declared-synchronized addJob(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;)V
    .locals 1
    .param p1, "mapGeneratorJob"    # Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;->priorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;->priorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized clear()V
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;->priorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;->priorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized poll()Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;
    .locals 14

    .prologue
    const-wide/16 v12, 0x80

    .line 70
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;->scheduleNeeded:Z

    if-eqz v0, :cond_3

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;->scheduleNeeded:Z

    .line 72
    new-instance v3, Ljava/util/PriorityQueue;

    const/16 v0, 0x80

    invoke-direct {v3, v0}, Ljava/util/PriorityQueue;-><init>(I)V

    :goto_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;->priorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;->priorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;

    iget-object v1, v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->tile:Lorg/mapsforge/core/Tile;

    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;->mapView:Lorg/mapsforge/android/maps/MapView;

    iget-byte v4, v1, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-virtual {v1}, Lorg/mapsforge/core/Tile;->getPixelX()J

    move-result-wide v5

    add-long/2addr v5, v12

    invoke-virtual {v1}, Lorg/mapsforge/core/Tile;->getPixelY()J

    move-result-wide v7

    add-long/2addr v7, v12

    long-to-double v5, v5

    invoke-static {v5, v6, v4}, Lorg/mapsforge/core/MercatorProjection;->pixelXToLongitude(DB)D

    move-result-wide v5

    long-to-double v7, v7

    invoke-static {v7, v8, v4}, Lorg/mapsforge/core/MercatorProjection;->pixelYToLatitude(DB)D

    move-result-wide v7

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->getMapPosition()Lorg/mapsforge/android/maps/MapViewPosition;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapViewPosition;->getMapPosition()Lorg/mapsforge/core/MapPosition;

    move-result-object v9

    iget-object v1, v9, Lorg/mapsforge/core/MapPosition;->geoPoint:Lorg/mapsforge/core/GeoPoint;

    invoke-virtual {v1}, Lorg/mapsforge/core/GeoPoint;->getLongitude()D

    move-result-wide v10

    sub-double v5, v10, v5

    invoke-virtual {v1}, Lorg/mapsforge/core/GeoPoint;->getLatitude()D

    move-result-wide v1

    sub-double/2addr v1, v7

    mul-double/2addr v5, v5

    mul-double/2addr v1, v1

    add-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iget-byte v5, v9, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    if-ne v5, v4, :cond_0

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->setPriority(D)V

    invoke-virtual {v3, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 72
    :cond_0
    :try_start_1
    iget-byte v5, v9, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    int-to-double v10, v5

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget-byte v8, v9, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    if-ge v8, v4, :cond_1

    mul-double/2addr v1, v6

    :goto_2
    mul-int/lit8 v4, v5, 0x5

    int-to-double v4, v4

    mul-double/2addr v1, v4

    goto :goto_1

    :cond_1
    div-double/2addr v1, v6

    goto :goto_2

    :cond_2
    iput-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;->priorityQueue:Ljava/util/PriorityQueue;

    .line 74
    :cond_3
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;->priorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized requestSchedule()V
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/mapsforge/android/maps/mapgenerator/JobQueue;->scheduleNeeded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
