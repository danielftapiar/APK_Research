.class public interface abstract Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;
.super Ljava/lang/Object;
.source "MapGenerator.java"


# virtual methods
.method public abstract executeJob(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;Landroid/graphics/Bitmap;)Z
.end method

.method public abstract getStartPoint()Lorg/mapsforge/core/GeoPoint;
.end method

.method public abstract getStartZoomLevel()Ljava/lang/Byte;
.end method

.method public abstract getZoomLevelMax()B
.end method

.method public abstract requiresInternetConnection()Z
.end method
