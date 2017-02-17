.class public abstract Lorg/mapsforge/android/maps/MapActivity;
.super Landroid/app/Activity;
.source "MapActivity.java"


# instance fields
.field private lastMapViewId:I

.field private final mapViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/MapView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/MapActivity;->mapViews:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final getMapViewId()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lorg/mapsforge/android/maps/MapActivity;->lastMapViewId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mapsforge/android/maps/MapActivity;->lastMapViewId:I

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 91
    :goto_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapActivity;->mapViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/android/maps/MapActivity;->mapViews:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/MapView;->destroy()V

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 97
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v6, p0, Lorg/mapsforge/android/maps/MapActivity;->mapViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "n":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 98
    iget-object v6, p0, Lorg/mapsforge/android/maps/MapActivity;->mapViews:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v6}, Lorg/mapsforge/android/maps/MapView;->onPause()V

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_0
    const-string v6, "MapActivity"

    invoke-virtual {p0, v6, v7}, Lorg/mapsforge/android/maps/MapActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 104
    iget-object v6, p0, Lorg/mapsforge/android/maps/MapActivity;->mapViews:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/android/maps/MapView;

    .line 107
    .local v4, "mapView":Lorg/mapsforge/android/maps/MapView;
    invoke-virtual {v4}, Lorg/mapsforge/android/maps/MapView;->getMapPosition()Lorg/mapsforge/android/maps/MapViewPosition;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mapsforge/android/maps/MapViewPosition;->getMapPosition()Lorg/mapsforge/core/MapPosition;

    move-result-object v3

    .line 108
    .local v3, "mapPosition":Lorg/mapsforge/core/MapPosition;
    if-eqz v3, :cond_1

    .line 109
    iget-object v1, v3, Lorg/mapsforge/core/MapPosition;->geoPoint:Lorg/mapsforge/core/GeoPoint;

    .line 110
    .local v1, "geoPoint":Lorg/mapsforge/core/GeoPoint;
    const-string v6, "latitude"

    iget v7, v1, Lorg/mapsforge/core/GeoPoint;->latitudeE6:I

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 111
    const-string v6, "longitude"

    iget v7, v1, Lorg/mapsforge/core/GeoPoint;->longitudeE6:I

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 112
    const-string v6, "zoomLevel"

    iget-byte v7, v3, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 115
    .end local v1    # "geoPoint":Lorg/mapsforge/core/GeoPoint;
    :cond_1
    invoke-virtual {v4}, Lorg/mapsforge/android/maps/MapView;->getMapGenerator()Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

    move-result-object v6

    invoke-interface {v6}, Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;->requiresInternetConnection()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Lorg/mapsforge/android/maps/MapView;->getMapFile()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 117
    const-string v6, "mapFile"

    invoke-virtual {v4}, Lorg/mapsforge/android/maps/MapView;->getMapFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lorg/mapsforge/android/maps/MapActivity;->mapViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 127
    iget-object v2, p0, Lorg/mapsforge/android/maps/MapActivity;->mapViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapView;->onResume()V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method

.method final registerMapView(Lorg/mapsforge/android/maps/MapView;)V
    .locals 5
    .param p1, "mapView"    # Lorg/mapsforge/android/maps/MapView;

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapActivity;->mapViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    const-string v0, "MapActivity"

    invoke-virtual {p0, v0, v1}, Lorg/mapsforge/android/maps/MapActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v0, "latitude"

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "longitude"

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "zoomLevel"

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/mapsforge/android/maps/MapView;->getMapGenerator()Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;

    move-result-object v0

    invoke-interface {v0}, Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;->requiresInternetConnection()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mapFile"

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v3, "mapFile"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/mapsforge/android/maps/MapView;->setMapFile(Ljava/io/File;)Lorg/mapsforge/map/reader/header/FileOpenResult;

    :cond_0
    const-string v0, "latitude"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "longitude"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "zoomLevel"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Lorg/mapsforge/core/GeoPoint;

    invoke-direct {v3, v0, v1}, Lorg/mapsforge/core/GeoPoint;-><init>(II)V

    new-instance v0, Lorg/mapsforge/core/MapPosition;

    int-to-byte v1, v2

    invoke-direct {v0, v3, v1}, Lorg/mapsforge/core/MapPosition;-><init>(Lorg/mapsforge/core/GeoPoint;B)V

    invoke-virtual {p1, v0}, Lorg/mapsforge/android/maps/MapView;->setCenterAndZoom(Lorg/mapsforge/core/MapPosition;)V

    .line 147
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 146
    goto :goto_0
.end method
