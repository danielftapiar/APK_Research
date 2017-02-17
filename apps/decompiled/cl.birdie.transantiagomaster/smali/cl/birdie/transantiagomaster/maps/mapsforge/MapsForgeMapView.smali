.class public Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;
.super Lorg/mapsforge/android/maps/MapView;
.source "MapsForgeMapView.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/ITSMMapView;


# instance fields
.field mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

.field volatile oldZoomLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/mapsforge/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    const/4 v1, -0x1

    iput v1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;->oldZoomLevel:I

    .line 60
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v1, v0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-void

    .line 62
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " must implement OnArticleSelectedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private refrescarDatos$1385ff()V
    .locals 8

    .prologue
    .line 97
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;->getProjection()Lorg/mapsforge/android/maps/Projection;

    move-result-object v1

    .line 101
    .local v1, "proj":Lorg/mapsforge/android/maps/Projection;
    invoke-interface {v1}, Lorg/mapsforge/android/maps/Projection;->getLatitudeSpan()I

    move-result v2

    sput v2, Lcl/birdie/transantiagomaster/Pantalla;->latitudeSpan:I

    .line 102
    invoke-interface {v1}, Lorg/mapsforge/android/maps/Projection;->getLongitudeSpan()I

    move-result v2

    sput v2, Lcl/birdie/transantiagomaster/Pantalla;->longitudeSpan:I

    .line 103
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;->getMapPosition()Lorg/mapsforge/android/maps/MapViewPosition;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/MapViewPosition;->getMapCenter()Lorg/mapsforge/core/GeoPoint;

    move-result-object v0

    .line 105
    .local v0, "centro":Lorg/mapsforge/core/GeoPoint;
    sget-object v2, Lcl/birdie/transantiagomaster/Pantalla;->gMapCenter:Lcl/birdie/toolkit/LatLng;

    new-instance v3, Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v0}, Lorg/mapsforge/core/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/mapsforge/core/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcl/birdie/toolkit/LatLng;->copy(Lcl/birdie/toolkit/LatLng;)V

    .line 107
    sget v2, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 108
    sget v2, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 109
    :cond_0
    sget-object v2, Lcl/birdie/transantiagomaster/Pantalla;->threadBusqueda:Lcl/birdie/transantiagomaster/ThreadBusqueda;

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/ThreadBusqueda;->resetTimer()V

    .line 110
    :cond_1
    return-void
.end method


# virtual methods
.method public final actualizarDatos([Lcl/birdie/transantiagomaster/newobjetos/Paradero;[Lcl/birdie/transantiagomaster/newobjetos/Bip;[Lcl/birdie/transantiagomaster/newobjetos/Metro;)V
    .locals 0
    .param p1, "paraderos"    # [Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    .param p2, "bips"    # [Lcl/birdie/transantiagomaster/newobjetos/Bip;
    .param p3, "metros"    # [Lcl/birdie/transantiagomaster/newobjetos/Metro;

    .prologue
    .line 231
    return-void
.end method

.method public final anadirPlacemark(Lcl/birdie/transantiagomaster/objetos/BusquedaResult;)V
    .locals 0
    .param p1, "p"    # Lcl/birdie/transantiagomaster/objetos/BusquedaResult;

    .prologue
    .line 243
    return-void
.end method

.method public final capasPorZoom()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public final centrarEn(Lcl/birdie/toolkit/LatLng;)V
    .locals 6
    .param p1, "gMapCenter"    # Lcl/birdie/toolkit/LatLng;

    .prologue
    .line 265
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;->getController()Lorg/mapsforge/android/maps/MapController;

    move-result-object v0

    new-instance v1, Lorg/mapsforge/core/GeoPoint;

    iget-wide v2, p1, Lcl/birdie/toolkit/LatLng;->lat:D

    iget-wide v4, p1, Lcl/birdie/toolkit/LatLng;->lng:D

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/mapsforge/core/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/mapsforge/android/maps/MapController;->setCenter(Lorg/mapsforge/core/GeoPoint;)V

    .line 267
    return-void
.end method

.method public final clearItinerarioLayer()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public final crearCapa(Lcl/birdie/transantiagomaster/newobjetos/Layer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "l"    # Lcl/birdie/transantiagomaster/newobjetos/Layer;
    .param p2, "fnameIcon"    # Ljava/lang/String;
    .param p3, "fnameSmallIcon"    # Ljava/lang/String;

    .prologue
    .line 161
    return-void
.end method

.method public final crearOverlays(Landroid/app/Activity;)V
    .locals 0
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 213
    return-void
.end method

.method public final dibujarLugarMarcado()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v3, 0x11

    const-wide/16 v1, 0x0

    .line 126
    invoke-super {p0, p1}, Lorg/mapsforge/android/maps/MapView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 127
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;->getMapPosition()Lorg/mapsforge/android/maps/MapViewPosition;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/MapViewPosition;->getZoomLevel()B

    move-result v9

    .line 128
    .local v9, "zl":I
    iget v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;->oldZoomLevel:I

    if-eq v9, v0, :cond_2

    .line 131
    iget v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;->oldZoomLevel:I

    if-ge v0, v3, :cond_0

    .line 132
    if-lt v9, v3, :cond_0

    .line 133
    const-string v0, "MapsForgeMapView"

    const-string v3, "pasamos a zoom capas, refresh forzado"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-wide v3, v1

    move-wide v5, v1

    move-wide v7, v1

    invoke-virtual/range {v0 .. v8}, Lcl/birdie/transantiagomaster/PantallaDatos;->setRequestBbox(DDDD)V

    .line 136
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-wide v3, v1

    move-wide v5, v1

    move-wide v7, v1

    invoke-virtual/range {v0 .. v8}, Lcl/birdie/transantiagomaster/PantallaDatos;->setBbox(DDDD)V

    .line 137
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-wide v3, v1

    move-wide v5, v1

    move-wide v7, v1

    invoke-virtual/range {v0 .. v8}, Lcl/birdie/transantiagomaster/PantallaDatos;->setParaderosBbox(DDDD)V

    .line 141
    :cond_0
    iput v9, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;->oldZoomLevel:I

    .line 142
    invoke-static {v9}, Lcl/birdie/transantiagomaster/Pantalla;->setZoomLevel(I)V

    .line 143
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->capasPorZoom()V

    .line 145
    :cond_1
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;->refrescarDatos$1385ff()V

    .line 148
    :cond_2
    return-void
.end method

.method public final getListener()Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    return-object v0
.end method

.method public final getProyeccionDesdePixeles(II)Lcl/birdie/toolkit/LatLng;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 259
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;->getProjection()Lorg/mapsforge/android/maps/Projection;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/mapsforge/android/maps/Projection;->fromPixels(II)Lorg/mapsforge/core/GeoPoint;

    move-result-object v0

    .line 260
    .local v0, "p":Lorg/mapsforge/core/GeoPoint;
    new-instance v1, Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v0}, Lorg/mapsforge/core/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lorg/mapsforge/core/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    return-object v1
.end method

.method public final invalidar()V
    .locals 0

    .prologue
    .line 194
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;->invalidate()V

    .line 195
    return-void
.end method

.method public final llenarUbicacion()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public final obtieneMapCenter()Lcl/birdie/toolkit/LatLng;
    .locals 6

    .prologue
    .line 183
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;->getMapPosition()Lorg/mapsforge/android/maps/MapViewPosition;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapViewPosition;->getMapCenter()Lorg/mapsforge/core/GeoPoint;

    move-result-object v0

    .line 184
    .local v0, "p":Lorg/mapsforge/core/GeoPoint;
    new-instance v1, Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v0}, Lorg/mapsforge/core/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lorg/mapsforge/core/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    return-object v1
.end method

.method public final obtieneZoomLevel()I
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;->getMapPosition()Lorg/mapsforge/android/maps/MapViewPosition;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/MapViewPosition;->getZoomLevel()B

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 90
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;->SEGUIR_OFF:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/Pantalla;->setSeguirPosicion(Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;)V

    .line 91
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;->refrescarDatos$1385ff()V

    .line 93
    :cond_0
    invoke-super {p0, p1}, Lorg/mapsforge/android/maps/MapView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final refrescaLayout()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public final refrescarOverlays(Lcl/birdie/transantiagomaster/GApp;)V
    .locals 0
    .param p1, "app"    # Lcl/birdie/transantiagomaster/GApp;

    .prologue
    .line 201
    return-void
.end method

.method public final refrescarPreferencias()V
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-boolean v0, v0, Lcl/birdie/params/Preferencias;->botones_zoom:Z

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;->setBuiltInZoomControls(Z)V

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;->setBuiltInZoomControls(Z)V

    goto :goto_0
.end method

.method public final setItinerarioLayer()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public final seteaControlesZoom$1385ff()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public final seteaZoomLevel(I)V
    .locals 1
    .param p1, "zoomLevel"    # I

    .prologue
    .line 171
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsForgeMapView;->getController()Lorg/mapsforge/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mapsforge/android/maps/MapController;->setZoom(I)I

    .line 173
    return-void
.end method
