.class public Lcl/birdie/transantiagomaster/maps/google/GMapView;
.super Lcom/google/android/maps/MapView;
.source "GMapView.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/ITSMMapView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/maps/google/GMapView$GAdder;,
        Lcl/birdie/transantiagomaster/maps/google/GMapView$GRemover;
    }
.end annotation


# instance fields
.field bipOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

.field bipSmallOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

.field public lugarBuscadoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;

.field public lugarSeleccionadoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;

.field mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

.field metroOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

.field metroSmallOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

.field volatile oldZoomLevel:I

.field paraderosOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

.field paraderosRecorridoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

.field paraderosSmallOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

.field planificacionOverlay:Lcl/birdie/transantiagomaster/maps/google/PlanificacionOverlay;

.field recorridoOverlay:Lcl/birdie/transantiagomaster/maps/google/RecorridoOverlay;

.field public ubicacionOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    const/4 v1, -0x1

    iput v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->oldZoomLevel:I

    .line 72
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v1, v0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-void

    .line 77
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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 147
    const/4 v1, -0x1

    iput v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->oldZoomLevel:I

    .line 85
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v1, v0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-void

    .line 90
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

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    const/4 v1, -0x1

    iput v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->oldZoomLevel:I

    .line 97
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v1, v0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return-void

    .line 102
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

.method static synthetic access$0(Lcl/birdie/transantiagomaster/maps/google/GMapView;)V
    .locals 6

    .prologue
    .line 460
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->posicionGPS:Lcl/birdie/toolkit/LatLng;

    if-eqz v0, :cond_0

    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->posicionGPS:Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v0}, Lcl/birdie/toolkit/LatLng;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->ubicacionOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->ubicacionOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->clear()V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->ubicacionOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    new-instance v2, Lcl/birdie/transantiagomaster/maps/google/MiUbicacion;

    sget-object v3, Lcl/birdie/transantiagomaster/Pantalla;->posicionGPS:Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v3}, Lcl/birdie/toolkit/LatLng;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    const-string v4, "Mi Ubicaci\u00f3n"

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Lcl/birdie/transantiagomaster/maps/google/MiUbicacion;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->addItem(Lcom/google/android/maps/OverlayItem;)V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->ubicacionOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->llenar()V

    :goto_1
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->invalidate()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    const-string v0, "GMapView"

    const-string v2, "dibujarUbicacion: post: ubicacionOverlay null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static synthetic access$1(Lcl/birdie/transantiagomaster/maps/google/GMapView;)V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->llenarLugarMarcado()V

    return-void
.end method

.method private llenarLugarMarcado()V
    .locals 5

    .prologue
    .line 444
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->lugarMarcadoMapa:Lcl/birdie/toolkit/LatLng;

    if-nez v1, :cond_0

    .line 447
    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v2

    .line 448
    :try_start_0
    new-instance v0, Lcom/google/android/maps/OverlayItem;

    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->lugarMarcadoMapa:Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v1}, Lcl/birdie/toolkit/LatLng;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    .line 449
    const-string v3, "Lugar seleccionado"

    .line 450
    const-string v4, "Utilice este marcador para planificar su viaje"

    .line 448
    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .local v0, "item":Lcom/google/android/maps/OverlayItem;
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->lugarSeleccionadoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->lugarSeleccionadoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;->clear()V

    .line 453
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->lugarSeleccionadoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;

    invoke-virtual {v1, v0}, Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;->addItem(Lcom/google/android/maps/OverlayItem;)V

    .line 454
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->lugarSeleccionadoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;->llenar()V

    .line 456
    :cond_1
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->invalidate()V

    .line 447
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "item":Lcom/google/android/maps/OverlayItem;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private refrescarDatos(Z)V
    .locals 3
    .param p1, "centrar"    # Z

    .prologue
    .line 122
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getLatitudeSpan()I

    move-result v1

    sput v1, Lcl/birdie/transantiagomaster/Pantalla;->latitudeSpan:I

    .line 123
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getLongitudeSpan()I

    move-result v1

    sput v1, Lcl/birdie/transantiagomaster/Pantalla;->longitudeSpan:I

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refrescarDatos: span "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcl/birdie/transantiagomaster/Pantalla;->latitudeSpan:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcl/birdie/transantiagomaster/Pantalla;->longitudeSpan:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    if-eqz p1, :cond_0

    .line 127
    sget-object v2, Lcl/birdie/transantiagomaster/Pantalla;->gMapCenter:Lcl/birdie/toolkit/LatLng;

    monitor-enter v2

    .line 128
    :try_start_0
    new-instance v0, Lcl/birdie/toolkit/LatLng;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    invoke-direct {v0, v1}, Lcl/birdie/toolkit/LatLng;-><init>(Lcom/google/android/maps/GeoPoint;)V

    .line 129
    .local v0, "l":Lcl/birdie/toolkit/LatLng;
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->gMapCenter:Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v1, v0}, Lcl/birdie/toolkit/LatLng;->copy(Lcl/birdie/toolkit/LatLng;)V

    .line 127
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local v0    # "l":Lcl/birdie/toolkit/LatLng;
    :cond_0
    sget v1, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 132
    sget v1, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    .line 133
    :cond_1
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->threadBusqueda:Lcl/birdie/transantiagomaster/ThreadBusqueda;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/ThreadBusqueda;->resetTimer()V

    .line 134
    :cond_2
    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public final actualizarDatos([Lcl/birdie/transantiagomaster/newobjetos/Paradero;[Lcl/birdie/transantiagomaster/newobjetos/Bip;[Lcl/birdie/transantiagomaster/newobjetos/Metro;)V
    .locals 7
    .param p1, "paraderos"    # [Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    .param p2, "bips"    # [Lcl/birdie/transantiagomaster/newobjetos/Bip;
    .param p3, "metros"    # [Lcl/birdie/transantiagomaster/newobjetos/Metro;

    .prologue
    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, "f":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    const/4 v2, 0x0

    .line 483
    .local v2, "seek":Z
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v5

    .line 484
    :try_start_0
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritoSeleccionado:Lcl/birdie/transantiagomaster/newobjetos/IFavorito;

    .line 483
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->paraderosOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    if-eqz v4, :cond_0

    .line 487
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->paraderosOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->clear()V

    .line 488
    if-eqz p1, :cond_0

    .line 489
    array-length v3, p1

    .line 490
    .local v3, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_3

    .line 505
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->paraderosOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->llenar()V

    .line 506
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->paraderosSmallOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->llenar()V

    .line 507
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v4, :cond_0

    .line 508
    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v4, v0

    check-cast v4, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    const/4 v6, 0x1

    invoke-interface {v5, v4, v6}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onClickParadero(Lcl/birdie/transantiagomaster/newobjetos/Paradero;Z)V

    .line 511
    .end local v1    # "i":I
    .end local v3    # "sz":I
    :cond_0
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->bipOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    if-eqz v4, :cond_1

    .line 512
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->bipOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->clear()V

    .line 513
    if-eqz p2, :cond_1

    .line 514
    array-length v3, p2

    .line 515
    .restart local v3    # "sz":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-lt v1, v3, :cond_5

    .line 518
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->bipOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->llenar()V

    .line 519
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->bipSmallOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->llenar()V

    .line 522
    .end local v1    # "i":I
    .end local v3    # "sz":I
    :cond_1
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->metroOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    if-eqz v4, :cond_2

    .line 523
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->metroOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->clear()V

    .line 525
    if-eqz p3, :cond_2

    .line 526
    array-length v3, p3

    .line 527
    .restart local v3    # "sz":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-lt v1, v3, :cond_6

    .line 530
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->metroOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->llenar()V

    .line 531
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->metroSmallOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->llenar()V

    .line 534
    .end local v1    # "i":I
    .end local v3    # "sz":I
    :cond_2
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->llenarLugarMarcado()V

    .line 535
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->llenarUbicacion()V

    .line 536
    return-void

    .line 483
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 491
    .restart local v1    # "i":I
    .restart local v3    # "sz":I
    :cond_3
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->paraderosOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    new-instance v5, Lcl/birdie/transantiagomaster/maps/google/ParaderoOverlayItem;

    aget-object v6, p1, v1

    invoke-direct {v5, v6}, Lcl/birdie/transantiagomaster/maps/google/ParaderoOverlayItem;-><init>(Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    invoke-virtual {v4, v5}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->addItem(Lcom/google/android/maps/OverlayItem;)V

    .line 494
    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    .line 495
    invoke-interface {v0}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p1, v1

    iget-object v5, v5, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 497
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v5

    .line 498
    :try_start_1
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    const/4 v6, 0x0

    iput-object v6, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritoSeleccionado:Lcl/birdie/transantiagomaster/newobjetos/IFavorito;

    .line 499
    aget-object v0, p1, v1

    .line 500
    const/4 v2, 0x1

    .line 497
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 490
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 497
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 516
    :cond_5
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->bipOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    new-instance v5, Lcl/birdie/transantiagomaster/maps/google/BipOverlayItem;

    aget-object v6, p2, v1

    invoke-direct {v5, v6}, Lcl/birdie/transantiagomaster/maps/google/BipOverlayItem;-><init>(Lcl/birdie/transantiagomaster/newobjetos/Bip;)V

    invoke-virtual {v4, v5}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->addItem(Lcom/google/android/maps/OverlayItem;)V

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 528
    :cond_6
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->metroOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    new-instance v5, Lcl/birdie/transantiagomaster/maps/google/MetroOverlayItem;

    aget-object v6, p3, v1

    invoke-direct {v5, v6}, Lcl/birdie/transantiagomaster/maps/google/MetroOverlayItem;-><init>(Lcl/birdie/transantiagomaster/newobjetos/Metro;)V

    invoke-virtual {v4, v5}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->addItem(Lcom/google/android/maps/OverlayItem;)V

    .line 527
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public final anadirPlacemark(Lcl/birdie/transantiagomaster/objetos/BusquedaResult;)V
    .locals 5
    .param p1, "p"    # Lcl/birdie/transantiagomaster/objetos/BusquedaResult;

    .prologue
    .line 556
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->placemarks:Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;->limpiar()V

    .line 557
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->placemarks:Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;

    iget-object v1, p1, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;->pos:Lcl/birdie/toolkit/CacheableLatLng;

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;->anadirPlacemark(Lcl/birdie/toolkit/LatLng;)V

    .line 558
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v0, v0, Lcl/birdie/params/Preferencias;->ModoMapa:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 559
    iget-object v0, p1, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;->pos:Lcl/birdie/toolkit/CacheableLatLng;

    sput-object v0, Lcl/birdie/transantiagomaster/Pantalla;->lugarResultadoBusqueda:Lcl/birdie/toolkit/LatLng;

    .line 560
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->lugarBuscadoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;->clear()V

    .line 561
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->lugarBuscadoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;

    new-instance v1, Lcom/google/android/maps/OverlayItem;

    .line 562
    sget-object v2, Lcl/birdie/transantiagomaster/Pantalla;->lugarResultadoBusqueda:Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v2}, Lcl/birdie/toolkit/LatLng;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    iget-object v3, p1, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;->descripcion:Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;->addItem(Lcom/google/android/maps/OverlayItem;)V

    .line 563
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->lugarBuscadoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;->llenar()V

    .line 564
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->lugarResultadoBusqueda:Lcl/birdie/toolkit/LatLng;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcl/birdie/toolkit/LatLng;)V

    .line 567
    :goto_0
    return-void

    .line 566
    :cond_0
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->placemarks:Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;->calcularPosicionPromedio()Lcl/birdie/toolkit/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcl/birdie/toolkit/LatLng;)V

    goto :goto_0
.end method

.method public final capasPorZoom()V
    .locals 6

    .prologue
    const/16 v5, 0x11

    .line 313
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    .line 315
    .local v2, "overlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->bipOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 316
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->bipSmallOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 317
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->metroOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 318
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->metroSmallOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 319
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->paraderosOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 320
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->paraderosSmallOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 321
    new-instance v4, Lcl/birdie/transantiagomaster/maps/google/GMapView$GRemover;

    invoke-direct {v4, p0, v2}, Lcl/birdie/transantiagomaster/maps/google/GMapView$GRemover;-><init>(Lcl/birdie/transantiagomaster/maps/google/GMapView;Ljava/util/List;)V

    invoke-static {v4}, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->quitarLayers(Lcl/birdie/transantiagomaster/maps/layers/IOverlayRemover;)V

    .line 323
    new-instance v4, Lcl/birdie/transantiagomaster/maps/google/GMapView$GAdder;

    invoke-direct {v4, p0, v2}, Lcl/birdie/transantiagomaster/maps/google/GMapView$GAdder;-><init>(Lcl/birdie/transantiagomaster/maps/google/GMapView;Ljava/util/List;)V

    invoke-static {v4}, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->anadeLayers(Lcl/birdie/transantiagomaster/maps/layers/IOverlayAdder;)V

    .line 325
    sget v4, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    if-ge v4, v5, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    sget v4, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    if-ne v4, v5, :cond_4

    .line 333
    iget-object v3, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->paraderosSmallOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    .line 334
    .local v3, "par":Lcom/google/android/maps/Overlay;
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->metroSmallOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    .line 335
    .local v1, "metro":Lcom/google/android/maps/Overlay;
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->bipSmallOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    .line 341
    .local v0, "bip":Lcom/google/android/maps/Overlay;
    :goto_1
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->modoNavegacion:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 344
    :pswitch_0
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 345
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 347
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 349
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 337
    .end local v0    # "bip":Lcom/google/android/maps/Overlay;
    .end local v1    # "metro":Lcom/google/android/maps/Overlay;
    .end local v3    # "par":Lcom/google/android/maps/Overlay;
    :cond_4
    iget-object v3, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->paraderosOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    .line 338
    .restart local v3    # "par":Lcom/google/android/maps/Overlay;
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->metroOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    .line 339
    .restart local v1    # "metro":Lcom/google/android/maps/Overlay;
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->bipOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    .restart local v0    # "bip":Lcom/google/android/maps/Overlay;
    goto :goto_1

    .line 356
    :pswitch_1
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 357
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_5
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 359
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_6
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 361
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    :pswitch_2
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 366
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_7
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 368
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 373
    :pswitch_3
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 374
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_8
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 376
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final centrarEn(Lcl/birdie/toolkit/LatLng;)V
    .locals 6
    .param p1, "gMapCenter"    # Lcl/birdie/toolkit/LatLng;

    .prologue
    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "centrarEn: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 631
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    .line 632
    .local v1, "mc":Lcom/google/android/maps/MapController;
    iget-wide v2, p1, Lcl/birdie/toolkit/LatLng;->lat:D

    iget-wide v4, p1, Lcl/birdie/toolkit/LatLng;->lng:D

    invoke-static {v2, v3, v4, v5}, Lcl/birdie/toolkit/LatLng;->toGeoPoint(DD)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 634
    .local v0, "centro":Lcom/google/android/maps/GeoPoint;
    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 637
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->refrescarDatos(Z)V

    .line 640
    return-void
.end method

.method public final clearItinerarioLayer()V
    .locals 2

    .prologue
    .line 572
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->itinerarioLayer:Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->limpiar()V

    .line 573
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v0, v0, Lcl/birdie/params/Preferencias;->ModoMapa:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 574
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v1

    .line 575
    :try_start_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->recorridoOverlay:Lcl/birdie/transantiagomaster/maps/google/RecorridoOverlay;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->recorridoOverlay:Lcl/birdie/transantiagomaster/maps/google/RecorridoOverlay;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/google/RecorridoOverlay;->route:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 577
    :cond_0
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->invalidate()V

    .line 574
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    :cond_1
    return-void

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final crearCapa(Lcl/birdie/transantiagomaster/newobjetos/Layer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "l"    # Lcl/birdie/transantiagomaster/newobjetos/Layer;
    .param p2, "fnameIcon"    # Ljava/lang/String;
    .param p3, "fnameSmallIcon"    # Ljava/lang/String;

    .prologue
    .line 187
    :try_start_0
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 188
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 190
    .local v0, "dIcon":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 192
    .local v1, "dSmallIcon":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 193
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 195
    new-instance v4, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;

    invoke-direct {v4, v0, p0, p1}, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;Lcl/birdie/transantiagomaster/newobjetos/Layer;)V

    iput-object v4, p1, Lcl/birdie/transantiagomaster/newobjetos/Layer;->ovlIcon:Lcl/birdie/transantiagomaster/maps/IOverlay;

    .line 196
    new-instance v5, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;

    .line 197
    iget-object v4, p1, Lcl/birdie/transantiagomaster/newobjetos/Layer;->ovlIcon:Lcl/birdie/transantiagomaster/maps/IOverlay;

    check-cast v4, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;

    invoke-direct {v5, v1, p0, v4, p1}, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;Lcl/birdie/transantiagomaster/newobjetos/Layer;)V

    .line 196
    iput-object v5, p1, Lcl/birdie/transantiagomaster/newobjetos/Layer;->ovlSmallIcon:Lcl/birdie/transantiagomaster/maps/IOverlay;

    .line 198
    const/4 v4, 0x1

    iput v4, p1, Lcl/birdie/transantiagomaster/newobjetos/Layer;->status:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v0    # "dIcon":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "dSmallIcon":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "res":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v3

    .line 200
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "GMapView"

    const-string v5, "error en creaci\u00f3n de capa gmaps"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 202
    const/4 v4, 0x2

    iput v4, p1, Lcl/birdie/transantiagomaster/newobjetos/Layer;->status:I

    goto :goto_0
.end method

.method public final crearOverlays(Landroid/app/Activity;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 383
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v2

    .line 384
    :try_start_0
    new-instance v1, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 385
    const v4, 0x7f020081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 386
    new-instance v4, Lcl/birdie/transantiagomaster/maps/ParaderoClickHandler;

    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-direct {v4, v5}, Lcl/birdie/transantiagomaster/maps/ParaderoClickHandler;-><init>(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    invoke-direct {v1, v3, p1, v4}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcl/birdie/transantiagomaster/maps/ClickHandler;)V

    .line 384
    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->paraderosOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    .line 387
    new-instance v1, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 388
    const v4, 0x7f020082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 389
    new-instance v4, Lcl/birdie/transantiagomaster/maps/ParaderoClickHandler;

    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-direct {v4, v5}, Lcl/birdie/transantiagomaster/maps/ParaderoClickHandler;-><init>(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->paraderosOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-direct {v1, v3, p1, v4, v5}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcl/birdie/transantiagomaster/maps/ClickHandler;Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;)V

    .line 387
    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->paraderosSmallOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    .line 390
    new-instance v1, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 391
    const v4, 0x7f02008c

    .line 390
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 391
    new-instance v4, Lcl/birdie/transantiagomaster/maps/BipClickHandler;

    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-direct {v4, v5}, Lcl/birdie/transantiagomaster/maps/BipClickHandler;-><init>(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    invoke-direct {v1, v3, p1, v4}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcl/birdie/transantiagomaster/maps/ClickHandler;)V

    .line 390
    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->bipOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    .line 392
    new-instance v1, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 393
    const v4, 0x7f02008e

    .line 392
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 394
    new-instance v4, Lcl/birdie/transantiagomaster/maps/BipClickHandler;

    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-direct {v4, v5}, Lcl/birdie/transantiagomaster/maps/BipClickHandler;-><init>(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->bipOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-direct {v1, v3, p1, v4, v5}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcl/birdie/transantiagomaster/maps/ClickHandler;Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;)V

    .line 392
    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->bipSmallOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    .line 395
    new-instance v1, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 396
    const v4, 0x7f020128

    .line 395
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 397
    new-instance v4, Lcl/birdie/transantiagomaster/maps/EstacionMetroClickHandler;

    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-direct {v4, v5}, Lcl/birdie/transantiagomaster/maps/EstacionMetroClickHandler;-><init>(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    invoke-direct {v1, v3, p1, v4}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcl/birdie/transantiagomaster/maps/ClickHandler;)V

    .line 395
    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->metroOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    .line 398
    new-instance v1, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 399
    const v4, 0x7f020129

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 400
    new-instance v4, Lcl/birdie/transantiagomaster/maps/EstacionMetroClickHandler;

    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-direct {v4, v5}, Lcl/birdie/transantiagomaster/maps/EstacionMetroClickHandler;-><init>(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->metroOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-direct {v1, v3, p1, v4, v5}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcl/birdie/transantiagomaster/maps/ClickHandler;Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;)V

    .line 398
    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->metroSmallOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    .line 401
    new-instance v1, Lcl/birdie/transantiagomaster/maps/google/RecorridoOverlay;

    invoke-direct {v1}, Lcl/birdie/transantiagomaster/maps/google/RecorridoOverlay;-><init>()V

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->recorridoOverlay:Lcl/birdie/transantiagomaster/maps/google/RecorridoOverlay;

    .line 402
    new-instance v1, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 403
    const v4, 0x7f020081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 404
    new-instance v4, Lcl/birdie/transantiagomaster/maps/ParaderoClickHandler;

    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-direct {v4, v5}, Lcl/birdie/transantiagomaster/maps/ParaderoClickHandler;-><init>(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    invoke-direct {v1, v3, p1, v4}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcl/birdie/transantiagomaster/maps/ClickHandler;)V

    .line 402
    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->paraderosRecorridoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    .line 406
    new-instance v1, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 407
    const v4, 0x7f02012e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 408
    const/4 v4, 0x0

    invoke-direct {v1, v3, p1, v4}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcl/birdie/transantiagomaster/maps/ClickHandler;)V

    .line 406
    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->ubicacionOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    .line 409
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020124

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 411
    .local v0, "pin":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;

    invoke-direct {v1, v0, p0}, Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;)V

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->lugarSeleccionadoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;

    .line 412
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->lugarSeleccionadoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;

    .line 413
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    .line 412
    invoke-virtual {v1, v3}, Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;->setBalloonBottomOffset(I)V

    .line 414
    new-instance v1, Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 415
    const v4, 0x7f020124

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;)V

    .line 414
    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->lugarBuscadoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;

    .line 416
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->lugarBuscadoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;->setBalloonBottomOffset(I)V

    .line 418
    new-instance v1, Lcl/birdie/transantiagomaster/maps/google/PlanificacionOverlay;

    invoke-direct {v1}, Lcl/birdie/transantiagomaster/maps/google/PlanificacionOverlay;-><init>()V

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->planificacionOverlay:Lcl/birdie/transantiagomaster/maps/google/PlanificacionOverlay;

    .line 383
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .end local v0    # "pin":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final dibujarLugarMarcado()V
    .locals 1

    .prologue
    .line 434
    new-instance v0, Lcl/birdie/transantiagomaster/maps/google/GMapView$2;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView$2;-><init>(Lcl/birdie/transantiagomaster/maps/google/GMapView;)V

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->post(Ljava/lang/Runnable;)Z

    .line 441
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v3, 0x11

    const-wide/16 v1, 0x0

    .line 152
    invoke-super {p0, p1}, Lcom/google/android/maps/MapView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 154
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getZoomLevel()I

    move-result v9

    .local v9, "zl":I
    iget v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->oldZoomLevel:I

    if-eq v9, v0, :cond_2

    .line 157
    iget v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->oldZoomLevel:I

    if-ge v0, v3, :cond_0

    .line 158
    if-lt v9, v3, :cond_0

    .line 159
    const-string v0, "GMapView"

    const-string v3, "pasamos a zoom capas, refresh forzado"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-wide v3, v1

    move-wide v5, v1

    move-wide v7, v1

    invoke-virtual/range {v0 .. v8}, Lcl/birdie/transantiagomaster/PantallaDatos;->setRequestBbox(DDDD)V

    .line 162
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-wide v3, v1

    move-wide v5, v1

    move-wide v7, v1

    invoke-virtual/range {v0 .. v8}, Lcl/birdie/transantiagomaster/PantallaDatos;->setBbox(DDDD)V

    .line 163
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-wide v3, v1

    move-wide v5, v1

    move-wide v7, v1

    invoke-virtual/range {v0 .. v8}, Lcl/birdie/transantiagomaster/PantallaDatos;->setParaderosBbox(DDDD)V

    .line 167
    :cond_0
    iput v9, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->oldZoomLevel:I

    .line 168
    invoke-static {v9}, Lcl/birdie/transantiagomaster/Pantalla;->setZoomLevel(I)V

    .line 169
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->capasPorZoom()V

    .line 171
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->refrescarDatos(Z)V

    .line 174
    :cond_2
    return-void
.end method

.method public final getListener()Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    return-object v0
.end method

.method public final getProyeccionDesdePixeles(II)Lcl/birdie/toolkit/LatLng;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 622
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 623
    .local v0, "p":Lcom/google/android/maps/GeoPoint;
    new-instance v1, Lcl/birdie/toolkit/LatLng;

    invoke-direct {v1, v0}, Lcl/birdie/toolkit/LatLng;-><init>(Lcom/google/android/maps/GeoPoint;)V

    return-object v1
.end method

.method public final invalidar()V
    .locals 0

    .prologue
    .line 236
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->invalidate()V

    .line 237
    return-void
.end method

.method public final llenarUbicacion()V
    .locals 1

    .prologue
    .line 423
    new-instance v0, Lcl/birdie/transantiagomaster/maps/google/GMapView$1;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView$1;-><init>(Lcl/birdie/transantiagomaster/maps/google/GMapView;)V

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->post(Ljava/lang/Runnable;)Z

    .line 430
    return-void
.end method

.method public final obtieneMapCenter()Lcl/birdie/toolkit/LatLng;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Lcl/birdie/toolkit/LatLng;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    invoke-direct {v0, v1}, Lcl/birdie/toolkit/LatLng;-><init>(Lcom/google/android/maps/GeoPoint;)V

    return-object v0
.end method

.method public final obtieneZoomLevel()I
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getZoomLevel()I

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 109
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;->SEGUIR_OFF:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/Pantalla;->setSeguirPosicion(Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;)V

    .line 110
    invoke-direct {p0, v1}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->refrescarDatos(Z)V

    .line 112
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/maps/MapView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final refrescaLayout()V
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->refrescarDatos(Z)V

    .line 222
    return-void
.end method

.method public final refrescarOverlays(Lcl/birdie/transantiagomaster/GApp;)V
    .locals 4
    .param p1, "app"    # Lcl/birdie/transantiagomaster/GApp;

    .prologue
    .line 242
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v2

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    .line 245
    .local v0, "overlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    new-instance v1, Lcl/birdie/transantiagomaster/maps/google/MapGestureDetectorOverlay;

    .line 248
    new-instance v3, Lcl/birdie/transantiagomaster/maps/MyMapGestureListener;

    invoke-direct {v3, p1}, Lcl/birdie/transantiagomaster/maps/MyMapGestureListener;-><init>(Lcl/birdie/transantiagomaster/GApp;)V

    invoke-direct {v1, v3}, Lcl/birdie/transantiagomaster/maps/google/MapGestureDetectorOverlay;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 247
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->lugarBuscadoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->lugarSeleccionadoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->ubicacionOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->modoNavegacion:I

    packed-switch v1, :pswitch_data_0

    .line 279
    :goto_0
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->invalidate()V

    .line 242
    monitor-exit v2

    return-void

    .line 257
    :pswitch_0
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->capasPorZoom()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 242
    .end local v0    # "overlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 263
    .restart local v0    # "overlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->capasPorZoom()V

    goto :goto_0

    .line 267
    :pswitch_2
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->capasPorZoom()V

    .line 268
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->recorridoOverlay:Lcl/birdie/transantiagomaster/maps/google/RecorridoOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->paraderosRecorridoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    :pswitch_3
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->capasPorZoom()V

    .line 275
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->planificacionOverlay:Lcl/birdie/transantiagomaster/maps/google/PlanificacionOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final refrescarPreferencias()V
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-boolean v0, v0, Lcl/birdie/params/Preferencias;->botones_zoom:Z

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->setBuiltInZoomControls(Z)V

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->setBuiltInZoomControls(Z)V

    goto :goto_0
.end method

.method public final setItinerarioLayer()V
    .locals 9

    .prologue
    .line 585
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 586
    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getParaderosServicioActual()[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-result-object v1

    .line 587
    .local v1, "itinerario":[Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 588
    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getRutaServicioActual()Ljava/util/List;

    move-result-object v3

    .line 589
    .local v3, "puntos":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/toolkit/LatLng;>;"
    sget-object v4, Lcl/birdie/transantiagomaster/Pantalla;->itinerarioLayer:Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;

    new-instance v5, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;

    .line 590
    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    invoke-virtual {v6}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getServicioActual()Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    move-result-object v6

    .line 591
    invoke-direct {v5, v6, v1}, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;-><init>(Lcl/birdie/transantiagomaster/newobjetos/Servicio;[Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    .line 589
    invoke-virtual {v4, v5}, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->copy(Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;)V

    .line 592
    sget-object v4, Lcl/birdie/transantiagomaster/Pantalla;->itinerarioLayer:Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->actualizar()V

    .line 595
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v4, v4, Lcl/birdie/params/Preferencias;->ModoMapa:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 596
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v5

    .line 597
    :try_start_0
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->recorridoOverlay:Lcl/birdie/transantiagomaster/maps/google/RecorridoOverlay;

    if-eqz v4, :cond_3

    .line 598
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->recorridoOverlay:Lcl/birdie/transantiagomaster/maps/google/RecorridoOverlay;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/maps/google/RecorridoOverlay;->route:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 599
    if-eqz v3, :cond_0

    .line 600
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 606
    :cond_0
    :goto_1
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->paraderosRecorridoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    if-eqz v4, :cond_5

    .line 607
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->paraderosRecorridoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->clear()V

    .line 608
    array-length v6, v1

    const/4 v4, 0x0

    :goto_2
    if-lt v4, v6, :cond_4

    .line 611
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->paraderosRecorridoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->llenar()V

    .line 615
    :goto_3
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->invalidate()V

    .line 596
    monitor-exit v5

    .line 618
    :cond_1
    return-void

    .line 600
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/toolkit/LatLng;

    .line 601
    .local v0, "g":Lcl/birdie/toolkit/LatLng;
    iget-object v6, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->recorridoOverlay:Lcl/birdie/transantiagomaster/maps/google/RecorridoOverlay;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/maps/google/RecorridoOverlay;->route:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcl/birdie/toolkit/LatLng;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 596
    .end local v0    # "g":Lcl/birdie/toolkit/LatLng;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 605
    :cond_3
    :try_start_1
    const-string v4, "GMapView"

    const-string v6, "setItinerarioLayer: recorridoOverlay null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 608
    :cond_4
    aget-object v2, v1, v4

    .line 609
    .local v2, "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    iget-object v7, p0, Lcl/birdie/transantiagomaster/maps/google/GMapView;->paraderosRecorridoOverlay:Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    new-instance v8, Lcl/birdie/transantiagomaster/maps/google/ParaderoOverlayItem;

    invoke-direct {v8, v2}, Lcl/birdie/transantiagomaster/maps/google/ParaderoOverlayItem;-><init>(Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    invoke-virtual {v7, v8}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->addItem(Lcom/google/android/maps/OverlayItem;)V

    .line 608
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 613
    .end local v2    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    :cond_5
    const-string v4, "GMapView"

    .line 614
    const-string v6, "setItinerarioLayer: paraderosRecorridoOverlay null"

    .line 613
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public final seteaControlesZoom$1385ff()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->setBuiltInZoomControls(Z)V

    .line 209
    return-void
.end method

.method public final seteaZoomLevel(I)V
    .locals 2
    .param p1, "zoomLevel"    # I

    .prologue
    .line 213
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    .line 214
    sget v1, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 215
    return-void
.end method
