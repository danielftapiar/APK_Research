.class public final Lcl/birdie/transantiagomaster/Pantalla;
.super Ljava/lang/Object;
.source "Pantalla.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;

.field public static _seguirPosicion:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

.field public static currentPixel:Lcl/birdie/toolkit/PixelPair;

.field public static displayHeight:I

.field public static displayWidth:I

.field public static gMapCenter:Lcl/birdie/toolkit/LatLng;

.field public static halfHeight:I

.field public static halfWidth:I

.field private static imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field public static itinerarioLayer:Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;

.field public static volatile latitudeSpan:I

.field private static listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

.field public static volatile longitudeSpan:I

.field public static lugarMarcadoMapa:Lcl/birdie/toolkit/LatLng;

.field public static lugarResultadoBusqueda:Lcl/birdie/toolkit/LatLng;

.field private static options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public static placemarks:Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;

.field public static posicionGPS:Lcl/birdie/toolkit/LatLng;

.field public static revGeoCode:Ljava/lang/String;

.field public static ruta:Lcl/birdie/transantiagomaster/objetos/RouteLayer;

.field public static threadBusqueda:Lcl/birdie/transantiagomaster/ThreadBusqueda;

.field static threadRotator:Lcl/birdie/toolkit/BannerRotator;

.field public static volatile zoomLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 26
    const-string v0, "Pantalla"

    sput-object v0, Lcl/birdie/transantiagomaster/Pantalla;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Lcl/birdie/toolkit/LatLng;

    invoke-direct {v0}, Lcl/birdie/toolkit/LatLng;-><init>()V

    sput-object v0, Lcl/birdie/transantiagomaster/Pantalla;->posicionGPS:Lcl/birdie/toolkit/LatLng;

    .line 42
    sput-object v5, Lcl/birdie/transantiagomaster/Pantalla;->currentPixel:Lcl/birdie/toolkit/PixelPair;

    .line 48
    new-instance v0, Lcl/birdie/toolkit/LatLng;

    const-wide v1, -0x3fbf4716db0dd830L    # -33.444615

    const-wide v3, -0x3fae562cadddf43cL    # -70.653523

    invoke-direct {v0, v1, v2, v3, v4}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    sput-object v0, Lcl/birdie/transantiagomaster/Pantalla;->gMapCenter:Lcl/birdie/toolkit/LatLng;

    .line 54
    sput-object v5, Lcl/birdie/transantiagomaster/Pantalla;->placemarks:Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;

    .line 56
    sput-object v5, Lcl/birdie/transantiagomaster/Pantalla;->ruta:Lcl/birdie/transantiagomaster/objetos/RouteLayer;

    .line 57
    sput-object v5, Lcl/birdie/transantiagomaster/Pantalla;->itinerarioLayer:Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;

    .line 67
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;->SEGUIR_OFF:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

    sput-object v0, Lcl/birdie/transantiagomaster/Pantalla;->_seguirPosicion:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

    .line 151
    return-void
.end method

.method public static borrarImagen(Ljava/lang/String;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 315
    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getDiscCache()Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 316
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    :goto_0
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->keys()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;->remove(Ljava/lang/Object;)V

    goto :goto_2

    .line 320
    :cond_3
    return-void

    .line 318
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static declared-synchronized cambiarDimensiones$255f295()V
    .locals 2

    .prologue
    .line 272
    const-class v1, Lcl/birdie/transantiagomaster/Pantalla;

    monitor-enter v1

    const/16 v0, 0x140

    :try_start_0
    sput v0, Lcl/birdie/transantiagomaster/Pantalla;->displayWidth:I

    .line 273
    const/16 v0, 0xf0

    sput v0, Lcl/birdie/transantiagomaster/Pantalla;->displayHeight:I

    .line 274
    sget v0, Lcl/birdie/transantiagomaster/Pantalla;->displayWidth:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcl/birdie/transantiagomaster/Pantalla;->halfWidth:I

    .line 275
    sget v0, Lcl/birdie/transantiagomaster/Pantalla;->displayHeight:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcl/birdie/transantiagomaster/Pantalla;->halfHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit v1

    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 94
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, p0, p1, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 95
    return-void
.end method

.method public static getGPSLatLng()Lcl/birdie/toolkit/LatLng;
    .locals 2

    .prologue
    .line 305
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->posicionGPS:Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v1}, Lcl/birdie/toolkit/LatLng;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 310
    .local v0, "ref":Lcl/birdie/toolkit/LatLng;
    :goto_0
    return-object v0

    .line 308
    .end local v0    # "ref":Lcl/birdie/toolkit/LatLng;
    :cond_0
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->posicionGPS:Lcl/birdie/toolkit/LatLng;

    .restart local v0    # "ref":Lcl/birdie/toolkit/LatLng;
    goto :goto_0
.end method

.method public static getLatLng()Lcl/birdie/toolkit/LatLng;
    .locals 5

    .prologue
    .line 213
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v0, v0, Lcl/birdie/params/Preferencias;->ModoMapa:I

    if-nez v0, :cond_0

    .line 214
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->currentPixel:Lcl/birdie/toolkit/PixelPair;

    sget v1, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    invoke-static {v0, v1}, Lcl/birdie/toolkit/GoogleProjection;->fromPixelToLL(Lcl/birdie/toolkit/PixelPair;I)Lcl/birdie/toolkit/LatLng;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 216
    :cond_0
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->gMapCenter:Lcl/birdie/toolkit/LatLng;

    if-nez v0, :cond_1

    .line 217
    new-instance v0, Lcl/birdie/toolkit/LatLng;

    const-wide v1, -0x3fbf4716db0dd830L    # -33.444615

    const-wide v3, -0x3fae562cadddf43cL    # -70.653523

    invoke-direct {v0, v1, v2, v3, v4}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    goto :goto_0

    .line 219
    :cond_1
    new-instance v0, Lcl/birdie/toolkit/LatLng;

    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->gMapCenter:Lcl/birdie/toolkit/LatLng;

    invoke-direct {v0, v1}, Lcl/birdie/toolkit/LatLng;-><init>(Lcl/birdie/toolkit/LatLng;)V

    goto :goto_0
.end method

.method public static getModoNavegacion()I
    .locals 2

    .prologue
    .line 251
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v1

    .line 252
    :try_start_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->modoNavegacion:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getSeguirPosicion()Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;
    .locals 2

    .prologue
    .line 74
    const-class v0, Lcl/birdie/transantiagomaster/Pantalla;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->_seguirPosicion:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static inicializar()V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->TAG:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/Pantalla;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 111
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 112
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage$543e1053()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri$543e1053()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 111
    sput-object v0, Lcl/birdie/transantiagomaster/Pantalla;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 120
    invoke-static {}, Lcl/birdie/transantiagomaster/Pantalla;->cambiarDimensiones$255f295()V

    .line 121
    const/16 v0, 0x12

    sput v0, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    .line 122
    new-instance v0, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;

    invoke-direct {v0}, Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;-><init>()V

    sput-object v0, Lcl/birdie/transantiagomaster/Pantalla;->itinerarioLayer:Lcl/birdie/transantiagomaster/objetos/ItinerarioLayer;

    .line 133
    new-instance v0, Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;

    invoke-direct {v0}, Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;-><init>()V

    sput-object v0, Lcl/birdie/transantiagomaster/Pantalla;->placemarks:Lcl/birdie/transantiagomaster/objetos/PlacemarkLayer;

    .line 134
    new-instance v0, Lcl/birdie/transantiagomaster/objetos/RouteLayer;

    invoke-direct {v0}, Lcl/birdie/transantiagomaster/objetos/RouteLayer;-><init>()V

    sput-object v0, Lcl/birdie/transantiagomaster/Pantalla;->ruta:Lcl/birdie/transantiagomaster/objetos/RouteLayer;

    .line 136
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    const/4 v1, 0x0

    iput v1, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->modoNavegacion:I

    .line 138
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;->SEGUIR_ONESHOT:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/Pantalla;->setSeguirPosicion(Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;)V

    .line 140
    const-string v0, ""

    sput-object v0, Lcl/birdie/transantiagomaster/Pantalla;->revGeoCode:Ljava/lang/String;

    .line 141
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->threadBusqueda:Lcl/birdie/transantiagomaster/ThreadBusqueda;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcl/birdie/transantiagomaster/ThreadBusqueda;

    invoke-direct {v0}, Lcl/birdie/transantiagomaster/ThreadBusqueda;-><init>()V

    .line 143
    sput-object v0, Lcl/birdie/transantiagomaster/Pantalla;->threadBusqueda:Lcl/birdie/transantiagomaster/ThreadBusqueda;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/ThreadBusqueda;->start()V

    .line 145
    :cond_0
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->threadRotator:Lcl/birdie/toolkit/BannerRotator;

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Lcl/birdie/toolkit/BannerRotator;

    invoke-direct {v0}, Lcl/birdie/toolkit/BannerRotator;-><init>()V

    .line 147
    sput-object v0, Lcl/birdie/transantiagomaster/Pantalla;->threadRotator:Lcl/birdie/toolkit/BannerRotator;

    invoke-virtual {v0}, Lcl/birdie/toolkit/BannerRotator;->start()V

    .line 149
    :cond_1
    return-void
.end method

.method public static setCenter(Lcl/birdie/toolkit/LatLng;)V
    .locals 2
    .param p0, "ll"    # Lcl/birdie/toolkit/LatLng;

    .prologue
    .line 202
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCenter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->gMapCenter:Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v0, p0}, Lcl/birdie/toolkit/LatLng;->copy(Lcl/birdie/toolkit/LatLng;)V

    .line 204
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->gMapCenter:Lcl/birdie/toolkit/LatLng;

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->setCenterLatLng(Lcl/birdie/toolkit/LatLng;)V

    .line 208
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcl/birdie/transantiagomaster/TileHandler;->refresh:Z

    .line 209
    return-void

    .line 207
    :cond_0
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->TAG:Ljava/lang/String;

    const-string v1, "setCenter: listener NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setCenter(Lcom/google/android/maps/GeoPoint;)V
    .locals 2
    .param p0, "myLocation"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 293
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCenter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->gMapCenter:Lcl/birdie/toolkit/LatLng;

    new-instance v1, Lcl/birdie/toolkit/LatLng;

    invoke-direct {v1, p0}, Lcl/birdie/toolkit/LatLng;-><init>(Lcom/google/android/maps/GeoPoint;)V

    invoke-virtual {v0, v1}, Lcl/birdie/toolkit/LatLng;->copy(Lcl/birdie/toolkit/LatLng;)V

    .line 295
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 296
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v0, p0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 299
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcl/birdie/transantiagomaster/TileHandler;->refresh:Z

    .line 300
    return-void

    .line 298
    :cond_0
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->TAG:Ljava/lang/String;

    const-string v1, "setCenter: listener NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setListener(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V
    .locals 0
    .param p0, "listener"    # Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .prologue
    .line 90
    sput-object p0, Lcl/birdie/transantiagomaster/Pantalla;->listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .line 91
    return-void
.end method

.method public static setModoNavegacion(I)V
    .locals 2
    .param p0, "modo"    # I

    .prologue
    .line 257
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setModoNavegacion: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v1

    .line 260
    :try_start_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iput p0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->modoNavegacion:I

    .line 259
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onMapaRefrescarOverlays()V

    .line 264
    :cond_0
    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setSeguirPosicion(Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;)V
    .locals 3
    .param p0, "param"    # Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

    .prologue
    .line 78
    const-class v1, Lcl/birdie/transantiagomaster/Pantalla;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setSeguirPosicion: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    sput-object p0, Lcl/birdie/transantiagomaster/Pantalla;->_seguirPosicion:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit v1

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setZoomLevel(I)V
    .locals 4
    .param p0, "zl"    # I

    .prologue
    .line 154
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setZoomLevel: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    sget v1, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    if-eq p0, v1, :cond_0

    .line 158
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v1, v1, Lcl/birdie/params/Preferencias;->ModoMapa:I

    if-nez v1, :cond_1

    .line 161
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->currentPixel:Lcl/birdie/toolkit/PixelPair;

    sget v2, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    invoke-static {v1, v2}, Lcl/birdie/toolkit/GoogleProjection;->fromPixelToLL(Lcl/birdie/toolkit/PixelPair;I)Lcl/birdie/toolkit/LatLng;

    move-result-object v0

    .line 163
    .local v0, "ll":Lcl/birdie/toolkit/LatLng;
    sput p0, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    .line 164
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v1, v1, Lcl/birdie/params/Preferencias;->ModoMapa:I

    if-nez v1, :cond_0

    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->currentPixel:Lcl/birdie/toolkit/PixelPair;

    sget v2, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    invoke-static {v0, v2}, Lcl/birdie/toolkit/GoogleProjection;->fromLLtoPixel(Lcl/birdie/toolkit/LatLng;I)Lcl/birdie/toolkit/PixelPair;

    move-result-object v2

    iget v3, v2, Lcl/birdie/toolkit/PixelPair;->x:I

    iput v3, v1, Lcl/birdie/toolkit/PixelPair;->x:I

    iget v2, v2, Lcl/birdie/toolkit/PixelPair;->y:I

    iput v2, v1, Lcl/birdie/toolkit/PixelPair;->y:I

    sget-object v1, Lcl/birdie/transantiagomaster/GPSController;->posicion:Lcl/birdie/toolkit/Posicion;

    invoke-static {v1}, Lcl/birdie/transantiagomaster/TileHandler;->recalcularRango(Lcl/birdie/toolkit/Posicion;)V

    .line 171
    .end local v0    # "ll":Lcl/birdie/toolkit/LatLng;
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    sput p0, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    goto :goto_0
.end method
