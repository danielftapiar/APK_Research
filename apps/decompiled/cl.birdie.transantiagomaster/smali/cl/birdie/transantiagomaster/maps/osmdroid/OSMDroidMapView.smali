.class public Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;
.super Lorg/osmdroid/views/MapView;
.source "OSMDroidMapView.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/ITSMMapView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$OSMAdder;,
        Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$OSMRemover;,
        Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$TSMMapTileProvider;
    }
.end annotation


# static fields
.field static mResourceProxy:Lorg/osmdroid/ResourceProxy;


# instance fields
.field bipOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

.field bipSmallOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

.field public lugarBuscadoOverlay:Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble",
            "<",
            "Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field public lugarSeleccionadoOverlay:Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble",
            "<",
            "Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

.field metroOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

.field metroSmallOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

.field volatile oldZoomLevel:I

.field paraderosOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

.field paraderosRecorridoOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

.field paraderosSmallOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

.field planificacionOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/PlanificacionOverlay;

.field recorridoOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/RecorridoOverlay;

.field private renderer_:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

.field public ubicacionOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->mResourceProxy:Lorg/osmdroid/ResourceProxy;

    .line 100
    new-instance v0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;

    .line 101
    const-string v1, "TSM-Mapsforge"

    .line 100
    invoke-direct {v0, v1}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-static {v0}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->addTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 161
    const/16 v3, 0x100

    sget-object v1, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->mResourceProxy:Lorg/osmdroid/ResourceProxy;

    if-nez v1, :cond_0

    new-instance v1, Lorg/osmdroid/DefaultResourceProxyImpl;

    invoke-direct {v1, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->mResourceProxy:Lorg/osmdroid/ResourceProxy;

    :cond_0
    sget-object v4, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->mResourceProxy:Lorg/osmdroid/ResourceProxy;

    .line 162
    new-instance v5, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$TSMMapTileProvider;

    invoke-direct {v5, p1}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$TSMMapTileProvider;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    .line 163
    invoke-direct/range {v1 .. v7}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;ILorg/osmdroid/ResourceProxy;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;Landroid/util/AttributeSet;)V

    .line 282
    const/4 v1, -0x1

    iput v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->oldZoomLevel:I

    .line 169
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 176
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v6}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->setMultiTouchControls$1385ff()V

    .line 181
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->setUseDataConnection$1385ff()V

    .line 184
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v1, v0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    invoke-static {}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->mapRenderer()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v1

    iget-object v2, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->renderer_:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->renderer_:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->renderer_:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-virtual {p0, v1}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->invalidate()V

    .line 192
    :cond_2
    return-void

    .line 186
    :catch_0
    move-exception v1

    const-string v1, "OSMDroidMapView"

    const-string v2, "context no corresponde"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    const-string v3, " must implement OnArticleSelectedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;)V
    .locals 5

    .prologue
    .line 579
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
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->ubicacionOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->ubicacionOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->clear()V

    new-instance v0, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;

    const-string v2, "Mi Ubicaci\u00f3n"

    const-string v3, ""

    sget-object v4, Lcl/birdie/transantiagomaster/Pantalla;->posicionGPS:Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v4}, Lcl/birdie/toolkit/LatLng;->toOSMDroidGeoPoint()Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getContext()Landroid/content/Context;

    invoke-direct {v0, v2, v3, v4}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/util/GeoPoint;)V

    iget-object v2, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->ubicacionOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {v2, v0}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->addItem(Lorg/osmdroid/views/overlay/OverlayItem;)V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->ubicacionOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->llenar()V

    :goto_1
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->invalidate()V

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
    const-string v0, "OSMDroidMapView"

    const-string v2, "dibujarUbicacion: post: ubicacionOverlay null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static synthetic access$1(Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;)V
    .locals 0

    .prologue
    .line 671
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->llenarLugarMarcado()V

    return-void
.end method

.method private llenarLugarMarcado()V
    .locals 5

    .prologue
    .line 672
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->lugarMarcadoMapa:Lcl/birdie/toolkit/LatLng;

    if-nez v1, :cond_0

    .line 675
    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v2

    .line 676
    :try_start_0
    new-instance v0, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;

    .line 677
    const-string v1, "Lugar seleccionado"

    .line 678
    const-string v3, "Utilice este marcador para planificar su viaje"

    .line 679
    sget-object v4, Lcl/birdie/transantiagomaster/Pantalla;->lugarMarcadoMapa:Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v4}, Lcl/birdie/toolkit/LatLng;->toOSMDroidGeoPoint()Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    .line 680
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getContext()Landroid/content/Context;

    .line 676
    invoke-direct {v0, v1, v3, v4}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/util/GeoPoint;)V

    .line 681
    .local v0, "item":Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020124

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 682
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->lugarSeleccionadoOverlay:Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;

    if-eqz v1, :cond_1

    .line 683
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->lugarSeleccionadoOverlay:Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;

    invoke-virtual {v1}, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->removeAllItems()V

    .line 684
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->lugarSeleccionadoOverlay:Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;

    invoke-virtual {v1, v0}, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->addItem(Lorg/osmdroid/views/overlay/OverlayItem;)Z

    .line 687
    :cond_1
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->invalidate()V

    .line 675
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "item":Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static mapRenderer()Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 5

    .prologue
    .line 224
    :try_start_0
    const-string v3, "TSM-Mapsforge"

    invoke-static {v3}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSource(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v2

    .line 226
    .local v2, "renderer":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    instance-of v3, v2, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;

    if-eqz v3, :cond_0

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "abriendo mapa "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->mapaPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    sget-object v1, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->mapaPath:Ljava/lang/String;

    .line 234
    .local v1, "mapFile":Ljava/lang/String;
    move-object v0, v2

    check-cast v0, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;

    move-object v3, v0

    invoke-virtual {v3, v1}, Lcl/birdie/transantiagomaster/maps/mapsforge/MapsforgeOSMTileSource;->setMapFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v1    # "mapFile":Ljava/lang/String;
    .end local v2    # "renderer":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    :cond_0
    :goto_0
    return-object v2

    .restart local v2    # "renderer":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    :catch_0
    move-exception v3

    sget-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPQUESTOSM:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    goto :goto_0
.end method

.method private refrescarDatos$1385ff()V
    .locals 9

    .prologue
    const-wide v7, 0x412e848000000000L    # 1000000.0

    .line 256
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBoxE6;->getLatitudeSpanE6()I

    move-result v1

    sput v1, Lcl/birdie/transantiagomaster/Pantalla;->latitudeSpan:I

    .line 261
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v1

    sput v1, Lcl/birdie/transantiagomaster/Pantalla;->longitudeSpan:I

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "latitudeSpan: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcl/birdie/transantiagomaster/Pantalla;->latitudeSpan:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "longitudeSpan: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcl/birdie/transantiagomaster/Pantalla;->longitudeSpan:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    .line 270
    .local v0, "centro":Lorg/osmdroid/api/IGeoPoint;
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->gMapCenter:Lcl/birdie/toolkit/LatLng;

    new-instance v2, Lcl/birdie/toolkit/LatLng;

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v3

    int-to-double v3, v3

    .line 271
    div-double/2addr v3, v7

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    .line 270
    invoke-virtual {v1, v2}, Lcl/birdie/toolkit/LatLng;->copy(Lcl/birdie/toolkit/LatLng;)V

    .line 273
    sget v1, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 274
    sget v1, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 275
    :cond_0
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->threadBusqueda:Lcl/birdie/transantiagomaster/ThreadBusqueda;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/ThreadBusqueda;->resetTimer()V

    .line 276
    :cond_1
    return-void
.end method


# virtual methods
.method public final actualizarDatos([Lcl/birdie/transantiagomaster/newobjetos/Paradero;[Lcl/birdie/transantiagomaster/newobjetos/Bip;[Lcl/birdie/transantiagomaster/newobjetos/Metro;)V
    .locals 7
    .param p1, "paraderos"    # [Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    .param p2, "bips"    # [Lcl/birdie/transantiagomaster/newobjetos/Bip;
    .param p3, "metros"    # [Lcl/birdie/transantiagomaster/newobjetos/Metro;

    .prologue
    .line 612
    const/4 v0, 0x0

    .line 615
    .local v0, "f":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    const/4 v2, 0x0

    .line 616
    .local v2, "seek":Z
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v5

    .line 617
    :try_start_0
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritoSeleccionado:Lcl/birdie/transantiagomaster/newobjetos/IFavorito;

    .line 616
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->paraderosOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    if-eqz v4, :cond_0

    .line 620
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->paraderosOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->clear()V

    .line 621
    if-eqz p1, :cond_0

    .line 622
    array-length v3, p1

    .line 623
    .local v3, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_3

    .line 637
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->paraderosOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->llenar()V

    .line 638
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->paraderosSmallOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->llenar()V

    .line 639
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v4, :cond_0

    .line 640
    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v4, v0

    check-cast v4, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    const/4 v6, 0x1

    invoke-interface {v5, v4, v6}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onClickParadero(Lcl/birdie/transantiagomaster/newobjetos/Paradero;Z)V

    .line 644
    .end local v1    # "i":I
    .end local v3    # "sz":I
    :cond_0
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->bipOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    if-eqz v4, :cond_1

    .line 645
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->bipOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->clear()V

    .line 646
    if-eqz p2, :cond_1

    .line 647
    array-length v3, p2

    .line 648
    .restart local v3    # "sz":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-lt v1, v3, :cond_5

    .line 651
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->bipOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->llenar()V

    .line 652
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->bipSmallOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->llenar()V

    .line 655
    .end local v1    # "i":I
    .end local v3    # "sz":I
    :cond_1
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->metroOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    if-eqz v4, :cond_2

    .line 656
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->metroOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->clear()V

    .line 658
    if-eqz p3, :cond_2

    .line 659
    array-length v3, p3

    .line 660
    .restart local v3    # "sz":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-lt v1, v3, :cond_6

    .line 663
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->metroOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->llenar()V

    .line 664
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->metroSmallOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->llenar()V

    .line 667
    .end local v1    # "i":I
    .end local v3    # "sz":I
    :cond_2
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->llenarLugarMarcado()V

    .line 668
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->llenarUbicacion()V

    .line 669
    return-void

    .line 616
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 624
    .restart local v1    # "i":I
    .restart local v3    # "sz":I
    :cond_3
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->paraderosOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    new-instance v5, Lcl/birdie/transantiagomaster/maps/osmdroid/ParaderoOverlayItem;

    .line 625
    aget-object v6, p1, v1

    invoke-direct {v5, v6}, Lcl/birdie/transantiagomaster/maps/osmdroid/ParaderoOverlayItem;-><init>(Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    .line 624
    invoke-virtual {v4, v5}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->addItem(Lorg/osmdroid/views/overlay/OverlayItem;)V

    .line 626
    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    .line 627
    invoke-interface {v0}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p1, v1

    iget-object v5, v5, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 629
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v5

    .line 630
    :try_start_1
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    const/4 v6, 0x0

    iput-object v6, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritoSeleccionado:Lcl/birdie/transantiagomaster/newobjetos/IFavorito;

    .line 631
    aget-object v0, p1, v1

    .line 632
    const/4 v2, 0x1

    .line 629
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 623
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 629
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 649
    :cond_5
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->bipOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    new-instance v5, Lcl/birdie/transantiagomaster/maps/osmdroid/BipOverlayItem;

    aget-object v6, p2, v1

    invoke-direct {v5, v6}, Lcl/birdie/transantiagomaster/maps/osmdroid/BipOverlayItem;-><init>(Lcl/birdie/transantiagomaster/newobjetos/Bip;)V

    invoke-virtual {v4, v5}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->addItem(Lorg/osmdroid/views/overlay/OverlayItem;)V

    .line 648
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 661
    :cond_6
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->metroOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    new-instance v5, Lcl/birdie/transantiagomaster/maps/osmdroid/MetroOverlayItem;

    aget-object v6, p3, v1

    invoke-direct {v5, v6}, Lcl/birdie/transantiagomaster/maps/osmdroid/MetroOverlayItem;-><init>(Lcl/birdie/transantiagomaster/newobjetos/Metro;)V

    invoke-virtual {v4, v5}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->addItem(Lorg/osmdroid/views/overlay/OverlayItem;)V

    .line 660
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public final anadirPlacemark(Lcl/birdie/transantiagomaster/objetos/BusquedaResult;)V
    .locals 4
    .param p1, "p"    # Lcl/birdie/transantiagomaster/objetos/BusquedaResult;

    .prologue
    .line 710
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->placemarks:Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;->limpiar()V

    .line 711
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->placemarks:Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;

    iget-object v2, p1, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;->pos:Lcl/birdie/toolkit/CacheableLatLng;

    invoke-virtual {v1, v2}, Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;->anadirPlacemark(Lcl/birdie/toolkit/LatLng;)V

    .line 712
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v1, v1, Lcl/birdie/params/Preferencias;->ModoMapa:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 713
    iget-object v1, p1, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;->pos:Lcl/birdie/toolkit/CacheableLatLng;

    sput-object v1, Lcl/birdie/transantiagomaster/Pantalla;->lugarResultadoBusqueda:Lcl/birdie/toolkit/LatLng;

    .line 714
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->lugarBuscadoOverlay:Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;

    invoke-virtual {v1}, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->removeAllItems()V

    .line 716
    new-instance v0, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;

    iget-object v1, p1, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;->descripcion:Ljava/lang/String;

    .line 717
    const-string v2, ""

    sget-object v3, Lcl/birdie/transantiagomaster/Pantalla;->lugarResultadoBusqueda:Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v3}, Lcl/birdie/toolkit/LatLng;->toOSMDroidGeoPoint()Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    .line 718
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getContext()Landroid/content/Context;

    .line 716
    invoke-direct {v0, v1, v2, v3}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/util/GeoPoint;)V

    .line 719
    .local v0, "item":Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020124

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 720
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->lugarBuscadoOverlay:Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;

    invoke-virtual {v1, v0}, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;->addItem(Lorg/osmdroid/views/overlay/OverlayItem;)Z

    .line 721
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->lugarResultadoBusqueda:Lcl/birdie/toolkit/LatLng;

    invoke-static {v1}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcl/birdie/toolkit/LatLng;)V

    .line 724
    .end local v0    # "item":Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;
    :goto_0
    return-void

    .line 723
    :cond_0
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->placemarks:Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;->calcularPosicionPromedio()Lcl/birdie/toolkit/LatLng;

    move-result-object v1

    invoke-static {v1}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcl/birdie/toolkit/LatLng;)V

    goto :goto_0
.end method

.method public final capasPorZoom()V
    .locals 6

    .prologue
    const/16 v5, 0x11

    .line 446
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    .line 448
    .local v2, "overlays":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/views/overlay/Overlay;>;"
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->bipOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 449
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->bipSmallOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 450
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->metroOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 451
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->metroSmallOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 452
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->paraderosOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 453
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->paraderosSmallOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 455
    new-instance v4, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$OSMRemover;

    invoke-direct {v4, p0, v2}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$OSMRemover;-><init>(Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;Ljava/util/List;)V

    invoke-static {v4}, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->quitarLayers(Lcl/birdie/transantiagomaster/maps/layers/IOverlayRemover;)V

    .line 457
    new-instance v4, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$OSMAdder;

    invoke-direct {v4, p0, v2}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$OSMAdder;-><init>(Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;Ljava/util/List;)V

    invoke-static {v4}, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->anadeLayers(Lcl/birdie/transantiagomaster/maps/layers/IOverlayAdder;)V

    .line 459
    sget v4, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    if-ge v4, v5, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    sget v4, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    if-ne v4, v5, :cond_4

    .line 467
    iget-object v3, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->paraderosSmallOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    .line 468
    .local v3, "par":Lorg/osmdroid/views/overlay/Overlay;
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->metroSmallOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    .line 469
    .local v1, "metro":Lorg/osmdroid/views/overlay/Overlay;
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->bipSmallOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    .line 475
    .local v0, "bip":Lorg/osmdroid/views/overlay/Overlay;
    :goto_1
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->modoNavegacion:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 478
    :pswitch_0
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 479
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 481
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 483
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 471
    .end local v0    # "bip":Lorg/osmdroid/views/overlay/Overlay;
    .end local v1    # "metro":Lorg/osmdroid/views/overlay/Overlay;
    .end local v3    # "par":Lorg/osmdroid/views/overlay/Overlay;
    :cond_4
    iget-object v3, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->paraderosOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    .line 472
    .restart local v3    # "par":Lorg/osmdroid/views/overlay/Overlay;
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->metroOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    .line 473
    .restart local v1    # "metro":Lorg/osmdroid/views/overlay/Overlay;
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->bipOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    .restart local v0    # "bip":Lorg/osmdroid/views/overlay/Overlay;
    goto :goto_1

    .line 490
    :pswitch_1
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 491
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_5
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 493
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_6
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 495
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 499
    :pswitch_2
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 500
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_7
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 502
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 507
    :pswitch_3
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 508
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_8
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 510
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 475
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
    .locals 2
    .param p1, "gMapCenter"    # Lcl/birdie/toolkit/LatLng;

    .prologue
    .line 792
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getController()Lorg/osmdroid/views/MapController;

    move-result-object v0

    invoke-virtual {p1}, Lcl/birdie/toolkit/LatLng;->toOSMDroidGeoPoint()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 793
    return-void
.end method

.method public final clearItinerarioLayer()V
    .locals 2

    .prologue
    .line 729
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->itinerarioLayer:Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->limpiar()V

    .line 730
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v0, v0, Lcl/birdie/params/Preferencias;->ModoMapa:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 731
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v1

    .line 732
    :try_start_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->recorridoOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/RecorridoOverlay;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->recorridoOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/RecorridoOverlay;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/maps/osmdroid/RecorridoOverlay;->route:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 734
    :cond_0
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->invalidate()V

    .line 731
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    :cond_1
    return-void

    .line 731
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final crearCapa(Lcl/birdie/transantiagomaster/newobjetos/Layer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "l"    # Lcl/birdie/transantiagomaster/newobjetos/Layer;
    .param p2, "fnameIcon"    # Ljava/lang/String;
    .param p3, "fnameSmallIcon"    # Ljava/lang/String;

    .prologue
    .line 320
    :try_start_0
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 321
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 322
    .local v0, "dIcon":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v3, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 323
    .local v1, "dSmallIcon":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 324
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 326
    new-instance v2, Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;

    invoke-direct {v2, v0, p0, p1}, Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/MapView;Lcl/birdie/transantiagomaster/newobjetos/Layer;)V

    .line 327
    .local v2, "foo":Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;
    iput-object v2, p1, Lcl/birdie/transantiagomaster/newobjetos/Layer;->ovlIcon:Lcl/birdie/transantiagomaster/maps/IOverlay;

    .line 328
    new-instance v5, Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;

    invoke-direct {v5, v1, p0, v2, p1}, Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/MapView;Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;Lcl/birdie/transantiagomaster/newobjetos/Layer;)V

    iput-object v5, p1, Lcl/birdie/transantiagomaster/newobjetos/Layer;->ovlSmallIcon:Lcl/birdie/transantiagomaster/maps/IOverlay;

    .line 329
    const/4 v5, 0x1

    iput v5, p1, Lcl/birdie/transantiagomaster/newobjetos/Layer;->status:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v0    # "dIcon":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "dSmallIcon":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "foo":Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;
    .end local v3    # "res":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v4

    .line 331
    .local v4, "t":Ljava/lang/Throwable;
    const-string v5, "OSMDroidMapView"

    const-string v6, "error en creaci\u00f3n de capa gmaps"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 333
    const/4 v5, 0x2

    iput v5, p1, Lcl/birdie/transantiagomaster/newobjetos/Layer;->status:I

    goto :goto_0
.end method

.method public final crearOverlays(Landroid/app/Activity;)V
    .locals 9
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 517
    new-instance v2, Lorg/osmdroid/DefaultResourceProxyImpl;

    invoke-direct {v2, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;-><init>(Landroid/content/Context;)V

    .line 520
    .local v2, "px":Lorg/osmdroid/ResourceProxy;
    sget-object v8, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v8

    .line 521
    :try_start_0
    new-instance v0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 522
    const v3, 0x7f020081

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 523
    new-instance v3, Lcl/birdie/transantiagomaster/maps/ParaderoClickHandler;

    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-direct {v3, v4}, Lcl/birdie/transantiagomaster/maps/ParaderoClickHandler;-><init>(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    invoke-direct {v0, v1, v2, p1, v3}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/ResourceProxy;Landroid/content/Context;Lcl/birdie/transantiagomaster/maps/ClickHandler;)V

    .line 521
    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->paraderosOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    .line 524
    new-instance v0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 525
    const v3, 0x7f020082

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 526
    new-instance v4, Lcl/birdie/transantiagomaster/maps/ParaderoClickHandler;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-direct {v4, v3}, Lcl/birdie/transantiagomaster/maps/ParaderoClickHandler;-><init>(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->paraderosOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/ResourceProxy;Landroid/content/Context;Lcl/birdie/transantiagomaster/maps/ClickHandler;Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;)V

    .line 524
    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->paraderosSmallOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    .line 527
    new-instance v0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 528
    const v3, 0x7f02008c

    .line 527
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 528
    new-instance v3, Lcl/birdie/transantiagomaster/maps/BipClickHandler;

    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-direct {v3, v4}, Lcl/birdie/transantiagomaster/maps/BipClickHandler;-><init>(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    invoke-direct {v0, v1, v2, p1, v3}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/ResourceProxy;Landroid/content/Context;Lcl/birdie/transantiagomaster/maps/ClickHandler;)V

    .line 527
    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->bipOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    .line 529
    new-instance v0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 530
    const v3, 0x7f02008e

    .line 529
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 530
    new-instance v4, Lcl/birdie/transantiagomaster/maps/BipClickHandler;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-direct {v4, v3}, Lcl/birdie/transantiagomaster/maps/BipClickHandler;-><init>(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    .line 531
    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->bipOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/ResourceProxy;Landroid/content/Context;Lcl/birdie/transantiagomaster/maps/ClickHandler;Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;)V

    .line 529
    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->bipSmallOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    .line 532
    new-instance v0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 533
    const v3, 0x7f020128

    .line 532
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 534
    new-instance v3, Lcl/birdie/transantiagomaster/maps/EstacionMetroClickHandler;

    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-direct {v3, v4}, Lcl/birdie/transantiagomaster/maps/EstacionMetroClickHandler;-><init>(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    invoke-direct {v0, v1, v2, p1, v3}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/ResourceProxy;Landroid/content/Context;Lcl/birdie/transantiagomaster/maps/ClickHandler;)V

    .line 532
    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->metroOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    .line 535
    new-instance v0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 536
    const v3, 0x7f020129

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 537
    new-instance v4, Lcl/birdie/transantiagomaster/maps/EstacionMetroClickHandler;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-direct {v4, v3}, Lcl/birdie/transantiagomaster/maps/EstacionMetroClickHandler;-><init>(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    iget-object v5, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->metroOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/ResourceProxy;Landroid/content/Context;Lcl/birdie/transantiagomaster/maps/ClickHandler;Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;)V

    .line 535
    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->metroSmallOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    .line 538
    new-instance v0, Lcl/birdie/transantiagomaster/maps/osmdroid/RecorridoOverlay;

    invoke-direct {v0, p1}, Lcl/birdie/transantiagomaster/maps/osmdroid/RecorridoOverlay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->recorridoOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/RecorridoOverlay;

    .line 539
    new-instance v0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 540
    const v3, 0x7f020081

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 541
    new-instance v3, Lcl/birdie/transantiagomaster/maps/ParaderoClickHandler;

    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-direct {v3, v4}, Lcl/birdie/transantiagomaster/maps/ParaderoClickHandler;-><init>(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    invoke-direct {v0, v1, v2, p1, v3}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/ResourceProxy;Landroid/content/Context;Lcl/birdie/transantiagomaster/maps/ClickHandler;)V

    .line 539
    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->paraderosRecorridoOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    .line 543
    new-instance v0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 544
    const v3, 0x7f02012e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/ResourceProxy;Landroid/content/Context;Lcl/birdie/transantiagomaster/maps/ClickHandler;)V

    .line 543
    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->ubicacionOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    .line 548
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v7, "lugarSeleccionado":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;>;"
    new-instance v0, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;

    .line 550
    invoke-direct {v0, p1, v7, p0}, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;-><init>(Landroid/content/Context;Ljava/util/List;Lorg/osmdroid/views/MapView;)V

    .line 549
    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->lugarSeleccionadoOverlay:Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;

    .line 552
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v6, "lugarBuscado":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;>;"
    new-instance v0, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;

    .line 554
    invoke-direct {v0, p1, v6, p0}, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;-><init>(Landroid/content/Context;Ljava/util/List;Lorg/osmdroid/views/MapView;)V

    .line 553
    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->lugarBuscadoOverlay:Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;

    .line 564
    new-instance v0, Lcl/birdie/transantiagomaster/maps/osmdroid/PlanificacionOverlay;

    invoke-direct {v0, p1}, Lcl/birdie/transantiagomaster/maps/osmdroid/PlanificacionOverlay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->planificacionOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/PlanificacionOverlay;

    .line 520
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .end local v6    # "lugarBuscado":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;>;"
    .end local v7    # "lugarSeleccionado":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;>;"
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public final dibujarLugarMarcado()V
    .locals 1

    .prologue
    .line 602
    new-instance v0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$2;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$2;-><init>(Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;)V

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->post(Ljava/lang/Runnable;)Z

    .line 608
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v3, 0x11

    const-wide/16 v1, 0x0

    .line 285
    invoke-super {p0, p1}, Lorg/osmdroid/views/MapView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 286
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getZoomLevel()I

    move-result v9

    .line 287
    .local v9, "zl":I
    iget v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->oldZoomLevel:I

    if-eq v9, v0, :cond_2

    .line 290
    iget v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->oldZoomLevel:I

    if-ge v0, v3, :cond_0

    .line 291
    if-lt v9, v3, :cond_0

    .line 292
    const-string v0, "OSMDroidMapView"

    const-string v3, "pasamos a zoom capas, refresh forzado"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-wide v3, v1

    move-wide v5, v1

    move-wide v7, v1

    invoke-virtual/range {v0 .. v8}, Lcl/birdie/transantiagomaster/PantallaDatos;->setRequestBbox(DDDD)V

    .line 295
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-wide v3, v1

    move-wide v5, v1

    move-wide v7, v1

    invoke-virtual/range {v0 .. v8}, Lcl/birdie/transantiagomaster/PantallaDatos;->setBbox(DDDD)V

    .line 296
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-wide v3, v1

    move-wide v5, v1

    move-wide v7, v1

    .line 297
    invoke-virtual/range {v0 .. v8}, Lcl/birdie/transantiagomaster/PantallaDatos;->setParaderosBbox(DDDD)V

    .line 301
    :cond_0
    iput v9, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->oldZoomLevel:I

    .line 302
    invoke-static {v9}, Lcl/birdie/transantiagomaster/Pantalla;->setZoomLevel(I)V

    .line 303
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->capasPorZoom()V

    .line 305
    :cond_1
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->refrescarDatos$1385ff()V

    .line 308
    :cond_2
    return-void
.end method

.method public final getListener()Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    return-object v0
.end method

.method public final getProyeccionDesdePixeles(II)Lcl/birdie/toolkit/LatLng;
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const-wide v6, 0x412e848000000000L    # 1000000.0

    .line 786
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getProjection()Lorg/osmdroid/views/MapView$Projection;

    move-result-object v1

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/views/MapView$Projection;->fromPixels(FF)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    .line 787
    .local v0, "p":Lorg/osmdroid/api/IGeoPoint;
    new-instance v1, Lcl/birdie/toolkit/LatLng;

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v6

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    return-object v1
.end method

.method public final invalidar()V
    .locals 0

    .prologue
    .line 370
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->invalidate()V

    .line 372
    return-void
.end method

.method public final llenarUbicacion()V
    .locals 1

    .prologue
    .line 570
    new-instance v0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$1;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView$1;-><init>(Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;)V

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->post(Ljava/lang/Runnable;)Z

    .line 577
    return-void
.end method

.method public final obtieneMapCenter()Lcl/birdie/toolkit/LatLng;
    .locals 8

    .prologue
    const-wide v6, 0x412e848000000000L    # 1000000.0

    .line 356
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    .line 359
    .local v0, "p":Lorg/osmdroid/api/IGeoPoint;
    new-instance v1, Lcl/birdie/toolkit/LatLng;

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v6

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v4

    int-to-double v4, v4

    .line 360
    div-double/2addr v4, v6

    .line 359
    invoke-direct {v1, v2, v3, v4, v5}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    return-object v1
.end method

.method public final obtieneZoomLevel()I
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getZoomLevel()I

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 249
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;->SEGUIR_OFF:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/Pantalla;->setSeguirPosicion(Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;)V

    .line 250
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->refrescarDatos$1385ff()V

    .line 252
    :cond_0
    invoke-super {p0, p1}, Lorg/osmdroid/views/MapView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final refrescaLayout()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method public final refrescarOverlays(Lcl/birdie/transantiagomaster/GApp;)V
    .locals 5
    .param p1, "app"    # Lcl/birdie/transantiagomaster/GApp;

    .prologue
    .line 376
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v2

    .line 377
    :try_start_0
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    .line 379
    .local v0, "overlays":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/views/overlay/Overlay;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 381
    new-instance v1, Lcl/birdie/transantiagomaster/maps/osmdroid/MapGestureDetectorOverlay;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 382
    new-instance v4, Lcl/birdie/transantiagomaster/maps/MyMapGestureListener;

    invoke-direct {v4, p1}, Lcl/birdie/transantiagomaster/maps/MyMapGestureListener;-><init>(Lcl/birdie/transantiagomaster/GApp;)V

    invoke-direct {v1, v3, v4}, Lcl/birdie/transantiagomaster/maps/osmdroid/MapGestureDetectorOverlay;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 381
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->lugarBuscadoOverlay:Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->lugarSeleccionadoOverlay:Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->ubicacionOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->modoNavegacion:I

    packed-switch v1, :pswitch_data_0

    .line 412
    :goto_0
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->invalidate()V

    .line 376
    monitor-exit v2

    return-void

    .line 390
    :pswitch_0
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->capasPorZoom()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 376
    .end local v0    # "overlays":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/views/overlay/Overlay;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 396
    .restart local v0    # "overlays":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/views/overlay/Overlay;>;"
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->capasPorZoom()V

    goto :goto_0

    .line 400
    :pswitch_2
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->capasPorZoom()V

    .line 401
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->recorridoOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/RecorridoOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->paraderosRecorridoOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 407
    :pswitch_3
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->capasPorZoom()V

    .line 408
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->planificacionOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/PlanificacionOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 388
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
    .line 311
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-boolean v0, v0, Lcl/birdie/params/Preferencias;->botones_zoom:Z

    if-eqz v0, :cond_0

    .line 312
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->setBuiltInZoomControls(Z)V

    .line 315
    :goto_0
    return-void

    .line 314
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->setBuiltInZoomControls(Z)V

    goto :goto_0
.end method

.method public final setItinerarioLayer()V
    .locals 9

    .prologue
    .line 741
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 744
    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getParaderosServicioActual()[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-result-object v1

    .line 745
    .local v1, "itinerario":[Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 746
    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getRutaServicioActual()Ljava/util/List;

    move-result-object v3

    .line 747
    .local v3, "puntos":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/toolkit/LatLng;>;"
    sget-object v4, Lcl/birdie/transantiagomaster/Pantalla;->itinerarioLayer:Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;

    new-instance v5, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;

    .line 748
    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    invoke-virtual {v6}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getServicioActual()Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    move-result-object v6

    .line 749
    invoke-direct {v5, v6, v1}, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;-><init>(Lcl/birdie/transantiagomaster/newobjetos/Servicio;[Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    .line 747
    invoke-virtual {v4, v5}, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->copy(Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;)V

    .line 750
    sget-object v4, Lcl/birdie/transantiagomaster/Pantalla;->itinerarioLayer:Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;->actualizar()V

    .line 752
    if-eqz v1, :cond_0

    .line 753
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "itinerario: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 754
    :cond_0
    if-eqz v3, :cond_1

    .line 755
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "puntos: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 758
    :cond_1
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v4, v4, Lcl/birdie/params/Preferencias;->ModoMapa:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 759
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v5

    .line 760
    :try_start_0
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->recorridoOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/RecorridoOverlay;

    if-eqz v4, :cond_5

    .line 761
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->recorridoOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/RecorridoOverlay;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/maps/osmdroid/RecorridoOverlay;->route:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 762
    if-eqz v3, :cond_2

    .line 763
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 769
    :cond_2
    :goto_1
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->paraderosRecorridoOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    if-eqz v4, :cond_7

    .line 770
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->paraderosRecorridoOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->clear()V

    .line 771
    array-length v6, v1

    const/4 v4, 0x0

    :goto_2
    if-lt v4, v6, :cond_6

    .line 775
    iget-object v4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->paraderosRecorridoOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->llenar()V

    .line 779
    :goto_3
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->invalidate()V

    .line 759
    monitor-exit v5

    .line 782
    :cond_3
    return-void

    .line 763
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/toolkit/LatLng;

    .line 764
    .local v0, "g":Lcl/birdie/toolkit/LatLng;
    iget-object v6, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->recorridoOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/RecorridoOverlay;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/maps/osmdroid/RecorridoOverlay;->route:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcl/birdie/toolkit/LatLng;->toOSMDroidGeoPoint()Lorg/osmdroid/util/GeoPoint;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 759
    .end local v0    # "g":Lcl/birdie/toolkit/LatLng;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 768
    :cond_5
    :try_start_1
    const-string v4, "OSMDroidMapView"

    const-string v6, "setItinerarioLayer: recorridoOverlay null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 771
    :cond_6
    aget-object v2, v1, v4

    .line 772
    .local v2, "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    iget-object v7, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->paraderosRecorridoOverlay:Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    .line 773
    new-instance v8, Lcl/birdie/transantiagomaster/maps/osmdroid/ParaderoOverlayItem;

    invoke-direct {v8, v2}, Lcl/birdie/transantiagomaster/maps/osmdroid/ParaderoOverlayItem;-><init>(Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    invoke-virtual {v7, v8}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->addItem(Lorg/osmdroid/views/overlay/OverlayItem;)V

    .line 771
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 777
    .end local v2    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    :cond_7
    const-string v4, "OSMDroidMapView"

    .line 778
    const-string v6, "setItinerarioLayer: paraderosRecorridoOverlay null"

    .line 777
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public final seteaControlesZoom$1385ff()V
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->setBuiltInZoomControls(Z)V

    .line 341
    return-void
.end method

.method public final seteaZoomLevel(I)V
    .locals 1
    .param p1, "zoomLevel"    # I

    .prologue
    .line 345
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapView;->getController()Lorg/osmdroid/views/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/MapController;->setZoom(I)I

    .line 348
    return-void
.end method
