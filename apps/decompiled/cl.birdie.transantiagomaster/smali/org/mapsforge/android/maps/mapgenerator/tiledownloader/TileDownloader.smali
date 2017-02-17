.class public abstract Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/TileDownloader;
.super Ljava/lang/Object;
.source "TileDownloader.java"

# interfaces
.implements Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final START_POINT:Lorg/mapsforge/core/GeoPoint;

.field private static final START_ZOOM_LEVEL:Ljava/lang/Byte;


# instance fields
.field private final pixels:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 36
    const-class v0, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/TileDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/TileDownloader;->LOG:Ljava/util/logging/Logger;

    .line 37
    new-instance v0, Lorg/mapsforge/core/GeoPoint;

    const-wide v1, 0x4049aa3d70a3d70aL    # 51.33

    const-wide v3, 0x4024e66666666666L    # 10.45

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapsforge/core/GeoPoint;-><init>(DD)V

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/TileDownloader;->START_POINT:Lorg/mapsforge/core/GeoPoint;

    .line 38
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/TileDownloader;->START_ZOOM_LEVEL:Ljava/lang/Byte;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/high16 v0, 0x10000

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/TileDownloader;->pixels:[I

    .line 47
    return-void
.end method


# virtual methods
.method public final executeJob(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;Landroid/graphics/Bitmap;)Z
    .locals 12
    .param p1, "mapGeneratorJob"    # Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 57
    :try_start_0
    iget-object v11, p1, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->tile:Lorg/mapsforge/core/Tile;

    .line 58
    .local v11, "tile":Lorg/mapsforge/core/Tile;
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/TileDownloader;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/TileDownloader;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v11}, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/TileDownloader;->getTilePath(Lorg/mapsforge/core/Tile;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v10

    .line 60
    .local v10, "inputStream":Ljava/io/InputStream;
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    .local v0, "decodedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 64
    if-nez v0, :cond_0

    .line 65
    const/4 v1, 0x0

    .line 80
    .end local v0    # "decodedBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "tile":Lorg/mapsforge/core/Tile;
    :goto_0
    return v1

    .line 69
    .restart local v0    # "decodedBitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "tile":Lorg/mapsforge/core/Tile;
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/TileDownloader;->pixels:[I

    const/4 v2, 0x0

    const/16 v3, 0x100

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x100

    const/16 v7, 0x100

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/TileDownloader;->pixels:[I

    const/4 v3, 0x0

    const/16 v4, 0x100

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x100

    const/16 v8, 0x100

    move-object v1, p2

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    const/4 v1, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "decodedBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "tile":Lorg/mapsforge/core/Tile;
    :catch_0
    move-exception v9

    .line 76
    .local v9, "e":Ljava/net/UnknownHostException;
    sget-object v1, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/TileDownloader;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    const/4 v1, 0x0

    goto :goto_0

    .line 78
    .end local v9    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v9

    .line 79
    .local v9, "e":Ljava/io/IOException;
    sget-object v1, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/TileDownloader;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract getHostName()Ljava/lang/String;
.end method

.method public abstract getProtocol()Ljava/lang/String;
.end method

.method public final getStartPoint()Lorg/mapsforge/core/GeoPoint;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/TileDownloader;->START_POINT:Lorg/mapsforge/core/GeoPoint;

    return-object v0
.end method

.method public final getStartZoomLevel()Ljava/lang/Byte;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/TileDownloader;->START_ZOOM_LEVEL:Ljava/lang/Byte;

    return-object v0
.end method

.method public abstract getTilePath(Lorg/mapsforge/core/Tile;)Ljava/lang/String;
.end method

.method public final requiresInternetConnection()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method
