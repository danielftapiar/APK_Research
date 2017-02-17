.class public final Lorg/osmdroid/tileprovider/MapTileCache;
.super Ljava/lang/Object;
.source "MapTileCache.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/constants/OpenStreetMapTileProviderConstants;


# instance fields
.field protected mCachedTiles:Lorg/osmdroid/tileprovider/LRUMapTileCache;

.field protected final mCachedTilesLockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/osmdroid/tileprovider/MapTileCache;-><init>(B)V

    .line 31
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTilesLockObject:Ljava/lang/Object;

    .line 38
    new-instance v0, Lorg/osmdroid/tileprovider/LRUMapTileCache;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/LRUMapTileCache;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Lorg/osmdroid/tileprovider/LRUMapTileCache;

    .line 39
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTilesLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Lorg/osmdroid/tileprovider/LRUMapTileCache;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->clear()V

    .line 82
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final containsTile(Lorg/osmdroid/tileprovider/MapTile;)Z
    .locals 2
    .param p1, "aTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 74
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTilesLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Lorg/osmdroid/tileprovider/LRUMapTileCache;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final ensureCapacity(I)V
    .locals 2
    .param p1, "aCapacity"    # I

    .prologue
    .line 46
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTilesLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Lorg/osmdroid/tileprovider/LRUMapTileCache;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->ensureCapacity(I)V

    .line 48
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "aTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 52
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTilesLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Lorg/osmdroid/tileprovider/LRUMapTileCache;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final putTile(Lorg/osmdroid/tileprovider/MapTile;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "aTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .param p2, "aDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 58
    if-eqz p2, :cond_0

    .line 59
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTilesLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileCache;->mCachedTiles:Lorg/osmdroid/tileprovider/LRUMapTileCache;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/tileprovider/LRUMapTileCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
