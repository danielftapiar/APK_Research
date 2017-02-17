.class public final Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapTester;
.super Ljava/lang/Object;
.source "MapsForgeMapTester.java"


# direct methods
.method public static verificarMapa(Ljava/lang/String;)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "verificarMapa: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    :try_start_0
    new-instance v1, Lorg/mapsforge/map/reader/MapDatabase;

    invoke-direct {v1}, Lorg/mapsforge/map/reader/MapDatabase;-><init>()V

    .line 17
    .local v1, "mapDatabase_":Lorg/mapsforge/map/reader/MapDatabase;
    invoke-virtual {v1}, Lorg/mapsforge/map/reader/MapDatabase;->closeFile()V

    .line 18
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/mapsforge/map/reader/MapDatabase;->openFile(Ljava/io/File;)Lorg/mapsforge/map/reader/header/FileOpenResult;

    .line 19
    invoke-virtual {v1}, Lorg/mapsforge/map/reader/MapDatabase;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v2

    iget-object v2, v2, Lorg/mapsforge/map/reader/header/MapFileInfo;->boundingBox:Lorg/mapsforge/core/BoundingBox;

    .line 20
    invoke-virtual {v1}, Lorg/mapsforge/map/reader/MapDatabase;->closeFile()V

    .line 21
    const-string v2, "MapsForgeMapTester"

    const-string v3, "verificarMapa: mapa ok!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    const/4 v2, 0x1

    .line 26
    .end local v1    # "mapDatabase_":Lorg/mapsforge/map/reader/MapDatabase;
    :goto_0
    return v2

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MapsForgeMapTester"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "verificarMapa: excepcion "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    const/4 v2, 0x0

    goto :goto_0
.end method
