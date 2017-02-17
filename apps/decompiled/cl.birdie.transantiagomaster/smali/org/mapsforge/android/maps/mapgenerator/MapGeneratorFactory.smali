.class public final Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorFactory;
.super Ljava/lang/Object;
.source "MapGeneratorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorFactory$1;
    }
.end annotation


# direct methods
.method public static createMapGenerator(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;)Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;
    .locals 3
    .param p0, "mapGeneratorInternal"    # Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;

    .prologue
    .line 50
    sget-object v0, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorFactory$1;->$SwitchMap$org$mapsforge$android$maps$mapgenerator$MapGeneratorInternal:[I

    invoke-virtual {p0}, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorInternal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown enum value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :pswitch_0
    new-instance v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;

    invoke-direct {v0}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;-><init>()V

    .line 56
    :goto_0
    return-object v0

    .line 54
    :pswitch_1
    new-instance v0, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/MapnikTileDownloader;

    invoke-direct {v0}, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/MapnikTileDownloader;-><init>()V

    goto :goto_0

    .line 56
    :pswitch_2
    new-instance v0, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/OpenCycleMapTileDownloader;

    invoke-direct {v0}, Lorg/mapsforge/android/maps/mapgenerator/tiledownloader/OpenCycleMapTileDownloader;-><init>()V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
