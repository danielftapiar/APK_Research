.class public final Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/OpenCycleMapTileDownloader;
.super Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/TileDownloader;
.source "OpenCycleMapTileDownloader.java"


# instance fields
.field private final stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/TileDownloader;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/OpenCycleMapTileDownloader;->stringBuilder:Ljava/lang/StringBuilder;

    .line 35
    return-void
.end method


# virtual methods
.method public final getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "tile.opencyclemap.org"

    return-object v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "http"

    return-object v0
.end method

.method public final getTilePath(Lorg/mapsforge/core/Tile;)Ljava/lang/String;
    .locals 4
    .param p1, "tile"    # Lorg/mapsforge/core/Tile;

    .prologue
    const/16 v3, 0x2f

    .line 49
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/OpenCycleMapTileDownloader;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 50
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/OpenCycleMapTileDownloader;->stringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "/cycle/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/OpenCycleMapTileDownloader;->stringBuilder:Ljava/lang/StringBuilder;

    iget-byte v1, p1, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/OpenCycleMapTileDownloader;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/OpenCycleMapTileDownloader;->stringBuilder:Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lorg/mapsforge/core/Tile;->tileX:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/OpenCycleMapTileDownloader;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/OpenCycleMapTileDownloader;->stringBuilder:Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lorg/mapsforge/core/Tile;->tileY:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/OpenCycleMapTileDownloader;->stringBuilder:Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/OpenCycleMapTileDownloader;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getZoomLevelMax()B
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x12

    return v0
.end method
