.class public Lorg/osmdroid/tileprovider/MapTileProviderArray;
.super Lorg/osmdroid/tileprovider/MapTileProviderBase;
.source "MapTileProviderArray.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field protected final mTileProviderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWorking:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/osmdroid/tileprovider/MapTile;",
            "Lorg/osmdroid/tileprovider/MapTileRequestState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/osmdroid/tileprovider/MapTileProviderArray;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .prologue
    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;[Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 48
    return-void
.end method

.method private constructor <init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;[Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pTileProviderArray"    # [Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    .line 66
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method private findNextAppropriateProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    .locals 8
    .param p1, "aState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "provider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    const/4 v3, 0x0

    .local v3, "providerDoesntExist":Z
    const/4 v1, 0x0

    .local v1, "providerCantGetDataConnection":Z
    const/4 v2, 0x0

    .line 179
    .local v2, "providerCantServiceZoomlevel":Z
    :cond_0
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getNextProvider()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_2

    .line 183
    invoke-direct {p0, v0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->getProviderExists(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)Z

    move-result v7

    if-nez v7, :cond_4

    move v3, v5

    .line 184
    :goto_0
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->useDataConnection()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getUsesDataConnection()Z

    move-result v7

    if-eqz v7, :cond_5

    move v1, v5

    .line 186
    :goto_1
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v7

    invoke-virtual {v7}, Lorg/osmdroid/tileprovider/MapTile;->getZoomLevel()I

    move-result v4

    .line 187
    .local v4, "zoomLevel":I
    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMaximumZoomLevel()I

    move-result v7

    if-gt v4, v7, :cond_1

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMinimumZoomLevel()I

    move-result v7

    if-ge v4, v7, :cond_6

    :cond_1
    move v2, v5

    .line 191
    .end local v4    # "zoomLevel":I
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 192
    :cond_3
    return-object v0

    :cond_4
    move v3, v6

    .line 183
    goto :goto_0

    :cond_5
    move v1, v6

    .line 184
    goto :goto_1

    .restart local v4    # "zoomLevel":I
    :cond_6
    move v2, v6

    .line 187
    goto :goto_2
.end method

.method private getProviderExists(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)Z
    .locals 2
    .param p1, "provider"    # Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .prologue
    .line 196
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final detach()V
    .locals 3

    .prologue
    .line 71
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v2

    .line 72
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 73
    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->detach()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 75
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    monitor-enter v2

    .line 78
    :try_start_2
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 79
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 84
    iget-object v5, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v5, p1}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 85
    .local v4, "tile":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    invoke-static {v4}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->isDrawableExpired(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 126
    .end local v4    # "tile":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v4

    .line 91
    .restart local v4    # "tile":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    .line 92
    .local v0, "alreadyInProgress":Z
    iget-object v6, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    monitor-enter v6

    .line 93
    :try_start_0
    iget-object v5, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 94
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    if-nez v0, :cond_0

    .line 102
    iget-object v6, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v6

    .line 103
    :try_start_1
    iget-object v5, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 105
    .local v2, "providerArray":[Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    new-instance v3, Lorg/osmdroid/tileprovider/MapTileRequestState;

    iget-object v5, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-direct {v3, p1, v5, p0}, Lorg/osmdroid/tileprovider/MapTileRequestState;-><init>(Lorg/osmdroid/tileprovider/MapTile;[Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;Lorg/osmdroid/tileprovider/IMapTileProviderCallback;)V

    .line 107
    .local v3, "state":Lorg/osmdroid/tileprovider/MapTileRequestState;
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 109
    iget-object v6, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    monitor-enter v6

    .line 111
    :try_start_2
    iget-object v5, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    .line 112
    if-eqz v5, :cond_2

    .line 113
    const/4 v4, 0x0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 117
    .end local v4    # "tile":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 94
    .end local v2    # "providerArray":[Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    .end local v3    # "state":Lorg/osmdroid/tileprovider/MapTileRequestState;
    .restart local v4    # "tile":Landroid/graphics/drawable/Drawable;
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .line 107
    :catchall_2
    move-exception v5

    monitor-exit v6

    throw v5

    .line 116
    .restart local v2    # "providerArray":[Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    .restart local v3    # "state":Lorg/osmdroid/tileprovider/MapTileRequestState;
    :cond_2
    :try_start_3
    iget-object v5, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    invoke-direct {p0, v3}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->findNextAppropriateProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    move-result-object v1

    .line 120
    .local v1, "provider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    if-eqz v1, :cond_3

    .line 121
    invoke-virtual {v1, v3}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->loadMapTileAsync(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {p0, v3}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    goto :goto_0
.end method

.method public final getMaximumZoomLevel()I
    .locals 5

    .prologue
    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, "result":I
    iget-object v4, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v4

    .line 218
    :try_start_0
    iget-object v3, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 219
    .local v2, "tileProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMaximumZoomLevel()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 220
    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMaximumZoomLevel()I

    move-result v1

    goto :goto_0

    .line 223
    .end local v2    # "tileProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    return v1

    .line 223
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public final getMinimumZoomLevel()I
    .locals 5

    .prologue
    .line 203
    const/16 v1, 0x16

    .line 204
    .local v1, "result":I
    iget-object v4, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v4

    .line 205
    :try_start_0
    iget-object v3, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 206
    .local v2, "tileProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMinimumZoomLevel()I

    move-result v3

    if-ge v3, v1, :cond_0

    .line 207
    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getMinimumZoomLevel()I

    move-result v1

    goto :goto_0

    .line 210
    .end local v2    # "tileProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    return v1

    .line 210
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public final mapTileRequestCompleted(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "aState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;
    .param p2, "aDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 132
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-super {p0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mapTileRequestCompleted(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V

    .line 136
    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final mapTileRequestExpiredTile(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "aState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;
    .param p2, "aDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mapTileRequestExpiredTile(Lorg/osmdroid/tileprovider/MapTileRequestState;Landroid/graphics/drawable/Drawable;)V

    .line 158
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->findNextAppropriateProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    move-result-object v0

    .line 159
    .local v0, "nextProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->loadMapTileAsync(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    monitor-enter v2

    .line 163
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V
    .locals 4
    .param p1, "aState"    # Lorg/osmdroid/tileprovider/MapTileRequestState;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->findNextAppropriateProvider(Lorg/osmdroid/tileprovider/MapTileRequestState;)Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    move-result-object v0

    .line 141
    .local v0, "nextProvider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->loadMapTileAsync(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    .line 149
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    monitor-enter v2

    .line 145
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mWorking:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getMapTile()Lorg/osmdroid/tileprovider/MapTile;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-super {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mapTileRequestFailed(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 3
    .param p1, "aTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .prologue
    .line 229
    invoke-super {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 231
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    monitor-enter v2

    .line 232
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderArray;->mTileProviderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 233
    invoke-virtual {v1, p1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 234
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileProviderArray;->clearTileCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 236
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
