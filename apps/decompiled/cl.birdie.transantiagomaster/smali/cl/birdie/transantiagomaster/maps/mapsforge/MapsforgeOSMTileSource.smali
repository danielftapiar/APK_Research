.class public final Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;
.super Ljava/lang/Object;
.source "MapsforgeOSMTileSource.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/tilesource/ITileSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource$RenderTheme;
    }
.end annotation


# instance fields
.field private final debugSettings_:Lorg/mapsforge/android/maps/DebugSettings;

.field private eastTileBounds_:I

.field private final jobParameters_:Lorg/mapsforge/android/maps/mapgenerator/JobParameters;

.field private mapBounds_:Lorg/mapsforge/core/BoundingBox;

.field private final mapDatabase_:Lorg/mapsforge/map/reader/MapDatabase;

.field private mapFile_:Ljava/lang/String;

.field private final mapGenerator_:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;

.field private final name_:Ljava/lang/String;

.field private northTileBounds_:I

.field private southTileBounds_:I

.field private westTileBounds_:I

.field private zoomBounds_:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->name_:Ljava/lang/String;

    .line 62
    new-instance v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;

    invoke-direct {v0}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->mapGenerator_:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;

    .line 63
    new-instance v0, Lorg/mapsforge/map/reader/MapDatabase;

    invoke-direct {v0}, Lorg/mapsforge/map/reader/MapDatabase;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->mapDatabase_:Lorg/mapsforge/map/reader/MapDatabase;

    .line 64
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->mapGenerator_:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->mapDatabase_:Lorg/mapsforge/map/reader/MapDatabase;

    invoke-virtual {v0, v1}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->setMapDatabase(Lorg/mapsforge/map/reader/MapDatabase;)V

    .line 66
    new-instance v0, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;

    new-instance v1, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource$RenderTheme;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource$RenderTheme;-><init>(B)V

    invoke-direct {v0, v1}, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;-><init>(Lorg/mapsforge/android/maps/mapgenerator/JobTheme;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->jobParameters_:Lorg/mapsforge/android/maps/mapgenerator/JobParameters;

    .line 67
    new-instance v0, Lorg/mapsforge/android/maps/DebugSettings;

    invoke-direct {v0}, Lorg/mapsforge/android/maps/DebugSettings;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->debugSettings_:Lorg/mapsforge/android/maps/DebugSettings;

    .line 68
    return-void
.end method

.method private static lat2YTile(DI)I
    .locals 6
    .param p0, "lat"    # D
    .param p2, "zoom"    # I

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 156
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double v2, v4, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    sub-double v0, v4, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const/4 v2, 0x1

    shl-int/2addr v2, p2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private static lon2XTile(DI)I
    .locals 4
    .param p0, "lon"    # D
    .param p2, "zoom"    # I

    .prologue
    .line 151
    const-wide v0, 0x4066800000000000L    # 180.0

    add-double/2addr v0, p0

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    const/4 v2, 0x1

    shl-int/2addr v2, p2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final declared-synchronized getDrawable(III)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "tileX"    # I
    .param p2, "tileY"    # I
    .param p3, "zoom"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 97
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->zoomBounds_:I

    if-eq p3, v1, :cond_0

    iput p3, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->zoomBounds_:I

    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->mapBounds_:Lorg/mapsforge/core/BoundingBox;

    invoke-virtual {v1}, Lorg/mapsforge/core/BoundingBox;->getMinLongitude()D

    move-result-wide v1

    iget v3, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->zoomBounds_:I

    invoke-static {v1, v2, v3}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->lon2XTile(DI)I

    move-result v1

    iput v1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->westTileBounds_:I

    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->mapBounds_:Lorg/mapsforge/core/BoundingBox;

    invoke-virtual {v1}, Lorg/mapsforge/core/BoundingBox;->getMaxLongitude()D

    move-result-wide v1

    iget v3, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->zoomBounds_:I

    invoke-static {v1, v2, v3}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->lon2XTile(DI)I

    move-result v1

    iput v1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->eastTileBounds_:I

    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->mapBounds_:Lorg/mapsforge/core/BoundingBox;

    invoke-virtual {v1}, Lorg/mapsforge/core/BoundingBox;->getMinLatitude()D

    move-result-wide v1

    iget v3, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->zoomBounds_:I

    invoke-static {v1, v2, v3}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->lat2YTile(DI)I

    move-result v1

    iput v1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->southTileBounds_:I

    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->mapBounds_:Lorg/mapsforge/core/BoundingBox;

    invoke-virtual {v1}, Lorg/mapsforge/core/BoundingBox;->getMaxLatitude()D

    move-result-wide v1

    iget v3, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->zoomBounds_:I

    invoke-static {v1, v2, v3}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->lat2YTile(DI)I

    move-result v1

    iput v1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->northTileBounds_:I

    :cond_0
    iget v1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->westTileBounds_:I

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->eastTileBounds_:I

    if-gt p1, v1, :cond_1

    iget v1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->northTileBounds_:I

    if-lt p2, v1, :cond_1

    iget v1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->southTileBounds_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt p2, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    move-object v1, v8

    .line 108
    :goto_1
    monitor-exit p0

    return-object v1

    .line 97
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 100
    :cond_2
    :try_start_1
    new-instance v0, Lorg/mapsforge/core/Tile;

    int-to-long v1, p1

    int-to-long v3, p2

    int-to-byte v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 101
    .local v0, "tile":Lorg/mapsforge/core/Tile;
    new-instance v6, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;

    .line 102
    const-string v1, "ooot"

    .line 103
    iget-object v2, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->jobParameters_:Lorg/mapsforge/android/maps/mapgenerator/JobParameters;

    .line 104
    iget-object v3, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->debugSettings_:Lorg/mapsforge/android/maps/DebugSettings;

    .line 101
    invoke-direct {v6, v0, v1, v2, v3}, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;-><init>(Lorg/mapsforge/core/Tile;Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/JobParameters;Lorg/mapsforge/android/maps/DebugSettings;)V

    .line 106
    .local v6, "mapGeneratorJob":Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;
    const/16 v1, 0x100

    const/16 v2, 0x100

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 107
    .local v7, "tileBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->mapGenerator_:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;

    invoke-virtual {v1, v6, v7}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->executeJob(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;Landroid/graphics/Bitmap;)Z

    move-result v1

    .line 108
    if-eqz v1, :cond_3

    new-instance v1, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;

    invoke-direct {v1, v7}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 97
    .end local v0    # "tile":Lorg/mapsforge/core/Tile;
    .end local v6    # "mapGeneratorJob":Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;
    .end local v7    # "tileBitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v0    # "tile":Lorg/mapsforge/core/Tile;
    .restart local v6    # "mapGeneratorJob":Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;
    .restart local v7    # "tileBitmap":Landroid/graphics/Bitmap;
    :cond_3
    move-object v1, v8

    .line 108
    goto :goto_1
.end method

.method public final getDrawable(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "arg0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMaximumZoomLevel()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->mapGenerator_:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->getZoomLevelMax()B

    move-result v0

    return v0
.end method

.method public final getMinimumZoomLevel()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x6

    return v0
.end method

.method public final getTileRelativeFilenameString(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;
    .locals 1
    .param p1, "tile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTileSizePixels()I
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x100

    return v0
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public final setMapFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "mapFile"    # Ljava/lang/String;

    .prologue
    .line 72
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->mapFile_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->mapFile_:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->mapDatabase_:Lorg/mapsforge/map/reader/MapDatabase;

    invoke-virtual {v0}, Lorg/mapsforge/map/reader/MapDatabase;->closeFile()V

    .line 77
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->mapDatabase_:Lorg/mapsforge/map/reader/MapDatabase;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/reader/MapDatabase;->openFile(Ljava/io/File;)Lorg/mapsforge/map/reader/header/FileOpenResult;

    .line 78
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->mapDatabase_:Lorg/mapsforge/map/reader/MapDatabase;

    invoke-virtual {v0}, Lorg/mapsforge/map/reader/MapDatabase;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->boundingBox:Lorg/mapsforge/core/BoundingBox;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->mapBounds_:Lorg/mapsforge/core/BoundingBox;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->zoomBounds_:I

    goto :goto_0
.end method
