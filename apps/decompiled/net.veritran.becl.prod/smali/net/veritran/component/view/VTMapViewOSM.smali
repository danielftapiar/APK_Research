.class public Lnet/veritran/component/view/VTMapViewOSM;
.super Lorg/osmdroid/views/MapView;
.source "VTMapViewOSM.java"

# interfaces
.implements Lnet/veritran/component/view/VTMapView;
.implements Lnet/veritran/vtuserapplication/api/map/interfaces/RouteProviderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay;
    }
.end annotation


# static fields
.field private static final DEFAULT_ZOOM:I = 0xd

.field private static final MIN_ZOOM_LEVEL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VTMapViewOSM"

.field private static markerCounter:I

.field private static markers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/veritran/vtuserapplication/api/map/VTMarker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapter:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

.field private center:Lcom/google/android/gms/maps/model/LatLng;

.field private component:Lnet/veritran/component/VTMap;

.field fixedBottomMargin:F

.field private fixedHeight:I

.field fixedLeftMargin:F

.field fixedRightMargin:F

.field fixedTopMargin:F

.field private fixedWidth:I

.field measuredBottomMargin:I

.field measuredLeftMargin:I

.field measuredRightMargin:I

.field measuredTopMargin:I

.field percentageBottomMargin:F

.field private percentageHeight:F

.field percentageLeftMargin:F

.field percentageRightMargin:F

.field percentageTopMargin:F

.field private percentageWidth:F

.field private popUp:Landroid/view/View;

.field private primerLayout:Z

.field private routePoints:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private routes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnet/veritran/vtuserapplication/api/map/VTRoute;",
            ">;"
        }
    .end annotation
.end field

.field private showZoom:Z

.field private zoomActual:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/veritran/component/view/VTMapViewOSM;->markers:Ljava/util/HashMap;

    .line 238
    const/4 v0, 0x1

    sput v0, Lnet/veritran/component/view/VTMapViewOSM;->markerCounter:I

    return-void
.end method

.method public constructor <init>(Lnet/veritran/component/VTMap;Z)V
    .locals 8
    .param p1, "component"    # Lnet/veritran/component/VTMap;
    .param p2, "showZoomControls"    # Z

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 244
    invoke-virtual {p1}, Lnet/veritran/component/VTMap;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-direct {p0, v1, v2}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;I)V

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/veritran/component/view/VTMapViewOSM;->popUp:Landroid/view/View;

    .line 206
    iput v4, p0, Lnet/veritran/component/view/VTMapViewOSM;->percentageWidth:F

    .line 207
    iput v4, p0, Lnet/veritran/component/view/VTMapViewOSM;->percentageHeight:F

    .line 209
    iput v5, p0, Lnet/veritran/component/view/VTMapViewOSM;->percentageLeftMargin:F

    .line 210
    iput v5, p0, Lnet/veritran/component/view/VTMapViewOSM;->percentageTopMargin:F

    .line 211
    iput v5, p0, Lnet/veritran/component/view/VTMapViewOSM;->percentageRightMargin:F

    .line 212
    iput v5, p0, Lnet/veritran/component/view/VTMapViewOSM;->percentageBottomMargin:F

    .line 214
    iput v3, p0, Lnet/veritran/component/view/VTMapViewOSM;->measuredLeftMargin:I

    .line 215
    iput v3, p0, Lnet/veritran/component/view/VTMapViewOSM;->measuredRightMargin:I

    .line 216
    iput v3, p0, Lnet/veritran/component/view/VTMapViewOSM;->measuredTopMargin:I

    .line 217
    iput v3, p0, Lnet/veritran/component/view/VTMapViewOSM;->measuredBottomMargin:I

    .line 219
    iput v4, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedLeftMargin:F

    .line 220
    iput v4, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedRightMargin:F

    .line 221
    iput v4, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedTopMargin:F

    .line 222
    iput v4, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedBottomMargin:F

    .line 224
    iput v7, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedWidth:I

    .line 225
    iput v7, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedHeight:I

    .line 230
    iput-boolean v3, p0, Lnet/veritran/component/view/VTMapViewOSM;->showZoom:Z

    .line 231
    iput v4, p0, Lnet/veritran/component/view/VTMapViewOSM;->zoomActual:F

    .line 235
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/veritran/component/view/VTMapViewOSM;->center:Lcom/google/android/gms/maps/model/LatLng;

    .line 240
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lnet/veritran/component/view/VTMapViewOSM;->routes:Ljava/util/Vector;

    .line 241
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lnet/veritran/component/view/VTMapViewOSM;->routePoints:Ljava/util/Vector;

    .line 381
    iput-boolean v6, p0, Lnet/veritran/component/view/VTMapViewOSM;->primerLayout:Z

    .line 246
    iput-object p1, p0, Lnet/veritran/component/view/VTMapViewOSM;->component:Lnet/veritran/component/VTMap;

    .line 248
    invoke-virtual {p0, v3, v3, v3, v3}, Lnet/veritran/component/view/VTMapViewOSM;->setPadding(IIII)V

    .line 250
    iput-boolean p2, p0, Lnet/veritran/component/view/VTMapViewOSM;->showZoom:Z

    .line 251
    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPQUESTOSM:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {p0, v1}, Lnet/veritran/component/view/VTMapViewOSM;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 252
    invoke-virtual {p0, v6}, Lnet/veritran/component/view/VTMapViewOSM;->setMultiTouchControls(Z)V

    .line 253
    iget-boolean v1, p0, Lnet/veritran/component/view/VTMapViewOSM;->showZoom:Z

    invoke-virtual {p0, v1}, Lnet/veritran/component/view/VTMapViewOSM;->setBuiltInZoomControls(Z)V

    .line 255
    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/MapController;

    .line 257
    .local v0, "mapController":Lorg/osmdroid/views/MapController;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapController;->setZoom(I)I

    .line 258
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/veritran/component/view/VTMapViewOSM;->setMinZoomLevel(Ljava/lang/Integer;)V

    .line 259
    sget-object v1, Lnet/veritran/component/view/VTMapViewOSM;->markers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 260
    sput v6, Lnet/veritran/component/view/VTMapViewOSM;->markerCounter:I

    .line 261
    return-void
.end method

.method public static getVTMarkerFromMarkerId(Ljava/lang/String;)Lnet/veritran/vtuserapplication/api/map/VTMarker;
    .locals 1
    .param p0, "markerId"    # Ljava/lang/String;

    .prologue
    .line 265
    sget-object v0, Lnet/veritran/component/view/VTMapViewOSM;->markers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/api/map/VTMarker;

    return-object v0
.end method


# virtual methods
.method public addMarkerToMap(Lnet/veritran/vtuserapplication/api/map/VTMarker;)V
    .locals 12
    .param p1, "markerInfo"    # Lnet/veritran/vtuserapplication/api/map/VTMarker;

    .prologue
    .line 526
    new-instance v3, Lorg/osmdroid/views/overlay/OverlayItem;

    sget v4, Lnet/veritran/component/view/VTMapViewOSM;->markerCounter:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lnet/veritran/component/view/VTMapViewOSM;->markerCounter:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getSnippet()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/osmdroid/util/GeoPoint;

    .line 527
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getLatitude()D

    move-result-wide v8

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getLongitude()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/views/overlay/OverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/util/GeoPoint;)V

    .line 530
    .local v3, "oIMarker":Lorg/osmdroid/views/overlay/OverlayItem;
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getResource()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 531
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getResource()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 538
    .local v2, "locationMarker":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v3, v2}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 540
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/views/overlay/OverlayItem;>;"
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    new-instance v0, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay;

    invoke-direct {v0, p0, p0, v1}, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay;-><init>(Lnet/veritran/component/view/VTMapViewOSM;Lnet/veritran/component/view/VTMapViewOSM;Ljava/util/List;)V

    .line 545
    .local v0, "currentLocationOverlay":Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay;
    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->getOverlays()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    sget-object v4, Lnet/veritran/component/view/VTMapViewOSM;->markers:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/osmdroid/views/overlay/OverlayItem;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    return-void

    .line 536
    .end local v0    # "currentLocationOverlay":Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay;
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/views/overlay/OverlayItem;>;"
    .end local v2    # "locationMarker":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "locationMarker":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public autoZoom()V
    .locals 15

    .prologue
    .line 279
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0, v1}, Lnet/veritran/component/view/VTMapViewOSM;->setZoom(F)V

    .line 289
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 291
    .local v0, "bounds":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    iget-object v1, p0, Lnet/veritran/component/view/VTMapViewOSM;->routes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/veritran/vtuserapplication/api/map/VTRoute;

    .line 293
    .local v14, "route":Lnet/veritran/vtuserapplication/api/map/VTRoute;
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->getOrigin()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v0

    .line 294
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->getDestination()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v0

    .line 295
    goto :goto_0

    .line 297
    .end local v14    # "route":Lnet/veritran/vtuserapplication/api/map/VTRoute;
    :cond_0
    iget-object v1, p0, Lnet/veritran/component/view/VTMapViewOSM;->routePoints:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/maps/model/LatLng;

    .line 299
    .local v12, "latLon":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {v0, v12}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v0

    .line 300
    goto :goto_1

    .line 302
    .end local v12    # "latLon":Lcom/google/android/gms/maps/model/LatLng;
    :cond_1
    sget-object v1, Lnet/veritran/component/view/VTMapViewOSM;->markers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/veritran/vtuserapplication/api/map/VTMarker;

    .line 304
    .local v13, "marker":Lnet/veritran/vtuserapplication/api/map/VTMarker;
    invoke-virtual {v13}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v0

    .line 305
    goto :goto_2

    .line 309
    .end local v13    # "marker":Lnet/veritran/vtuserapplication/api/map/VTMarker;
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v11

    .line 311
    .local v11, "latLngBounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    new-instance v1, Lorg/osmdroid/util/BoundingBoxE6;

    iget-object v2, v11, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v4, v11, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-object v6, v11, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v8, v11, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBoxE6;-><init>(DDDD)V

    invoke-virtual {p0, v1}, Lnet/veritran/component/view/VTMapViewOSM;->zoomToBoundingBox(Lorg/osmdroid/util/BoundingBoxE6;)V

    .line 313
    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v1

    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v11}, Lcom/google/android/gms/maps/model/LatLngBounds;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v11}, Lcom/google/android/gms/maps/model/LatLngBounds;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    iget-wide v6, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v1, v2}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v11    # "latLngBounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    :cond_3
    :goto_3
    return-void

    .line 315
    :catch_0
    move-exception v10

    .line 318
    .local v10, "ex":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lnet/veritran/component/view/VTMapViewOSM;->center:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v1, :cond_3

    .line 320
    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {p0, v1}, Lnet/veritran/component/view/VTMapViewOSM;->setZoom(F)V

    .line 321
    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v1

    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    iget-object v3, p0, Lnet/veritran/component/view/VTMapViewOSM;->center:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v3, p0, Lnet/veritran/component/view/VTMapViewOSM;->center:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v1, v2}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    goto :goto_3
.end method

.method public clearMarkersAndRoutes()V
    .locals 1

    .prologue
    .line 675
    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->removeAllViews()V

    .line 676
    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 677
    sget-object v0, Lnet/veritran/component/view/VTMapViewOSM;->markers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 678
    const/4 v0, 0x1

    sput v0, Lnet/veritran/component/view/VTMapViewOSM;->markerCounter:I

    .line 679
    iget-object v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->routes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 680
    iget-object v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->routePoints:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 681
    return-void
.end method

.method public drawRouteOnMap(Lnet/veritran/vtuserapplication/api/map/VTRoute;Ljava/lang/String;)V
    .locals 2
    .param p1, "route"    # Lnet/veritran/vtuserapplication/api/map/VTRoute;
    .param p2, "progressMessage"    # Ljava/lang/String;

    .prologue
    .line 559
    new-instance v0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/api/map/RoadProvider;-><init>(Z)V

    .line 560
    .local v0, "downloader":Lnet/veritran/vtuserapplication/api/map/RoadProvider;
    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->setContext(Landroid/content/Context;)V

    .line 561
    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->setRoute(Lnet/veritran/vtuserapplication/api/map/VTRoute;)V

    .line 562
    invoke-virtual {v0, p0}, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->setListener(Lnet/veritran/vtuserapplication/api/map/interfaces/RouteProviderListener;)V

    .line 563
    invoke-virtual {v0, p2}, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->setProgressMessage(Ljava/lang/String;)V

    .line 564
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 566
    sget-object v1, Lnet/veritran/component/view/VTMapViewOSM;->markers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 567
    iget-object v1, p0, Lnet/veritran/component/view/VTMapViewOSM;->routes:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 568
    return-void
.end method

.method public freeResources()V
    .locals 1

    .prologue
    .line 684
    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->clearTileCache()V

    .line 685
    return-void
.end method

.method public getAdapter()Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->adapter:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    return-object v0
.end method

.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->percentageHeight:F

    return v0
.end method

.method public getMapComponentlistener()Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->component:Lnet/veritran/component/VTMap;

    return-object v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->measuredTopMargin:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 671
    return-object p0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->percentageWidth:F

    return v0
.end method

.method public getpopUp()Landroid/view/View;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->popUp:Landroid/view/View;

    return-object v0
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 438
    iget v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->percentageLeftMargin:F

    .line 439
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->measuredLeftMargin:I

    .line 440
    iget v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->percentageRightMargin:F

    .line 441
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->measuredRightMargin:I

    .line 442
    iget v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->percentageTopMargin:F

    .line 443
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->measuredTopMargin:I

    .line 444
    iget v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->percentageBottomMargin:F

    .line 445
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->measuredBottomMargin:I

    .line 446
    return-void

    .line 439
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 441
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 443
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 445
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method public onEmptyRoute()V
    .locals 3

    .prologue
    .line 577
    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "No se encontro ruta disponible."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 579
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 385
    invoke-super/range {p0 .. p5}, Lorg/osmdroid/views/MapView;->onLayout(ZIIII)V

    .line 387
    const-string v0, "VTMapViewOSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout [] -> getLeft():+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getTop():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getWidth():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getHeight():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-boolean v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->primerLayout:Z

    if-eqz v0, :cond_0

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/component/view/VTMapViewOSM;->primerLayout:Z

    .line 390
    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->autoZoom()V

    .line 393
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 330
    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    .line 331
    invoke-super {p0, v10, v10}, Lorg/osmdroid/views/MapView;->setMeasuredDimension(II)V

    .line 380
    :goto_0
    return-void

    .line 335
    :cond_0
    const-string v8, "VTMapViewOSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure [] -> widthMeasureSpec: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";heightMeasureSpec:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/MapView;->onMeasure(II)V

    .line 340
    const-string v8, "VTMapViewOSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure [] -> widthMeasureSpec: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";heightMeasureSpec:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 342
    .local v3, "mw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 343
    .local v0, "mh":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 344
    .local v7, "sw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 345
    .local v6, "sh":I
    invoke-static {v3}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "modeWidth":Ljava/lang/String;
    invoke-static {v0}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "modeHeight":Ljava/lang/String;
    const-string v8, "VTMapViewOSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure [] -> width("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";height("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    if-nez v0, :cond_1

    if-nez v6, :cond_1

    .line 354
    const/high16 v0, -0x80000000

    .line 355
    const v6, 0xffffff

    .line 356
    const-string v8, "VTMapViewOSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->getTag()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " onMeasure REDEF! -> width("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";height("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->measureAbsoluteMargins()V

    .line 363
    const-string v8, "VTMapViewOSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure  [] -> leftMargin:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lnet/veritran/component/view/VTMapViewOSM;->measuredLeftMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";rightMargin:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lnet/veritran/component/view/VTMapViewOSM;->measuredRightMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";topMargin:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lnet/veritran/component/view/VTMapViewOSM;->measuredTopMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";bottomMargin:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lnet/veritran/component/view/VTMapViewOSM;->measuredBottomMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    move v5, v7

    .line 366
    .local v5, "pixelsWidth":I
    move v4, v6

    .line 368
    .local v4, "pixelsHeight":I
    iget v8, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedWidth:I

    if-eq v8, v11, :cond_2

    .line 369
    iget v5, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedWidth:I

    .line 371
    :cond_2
    iget v8, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedHeight:I

    if-eq v8, v11, :cond_3

    .line 372
    iget v4, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedHeight:I

    .line 375
    :cond_3
    const-string v8, "VTMapViewOSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure  [] -> pixelsWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";pixelsHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-super {p0, v5, v4}, Lorg/osmdroid/views/MapView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method public onRouteDownloaded(Ljava/util/List;Lnet/veritran/vtuserapplication/api/map/VTRoute;)V
    .locals 36
    .param p2, "vtRoute"    # Lnet/veritran/vtuserapplication/api/map/VTRoute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/api/map/GoogleRoute;",
            ">;",
            "Lnet/veritran/vtuserapplication/api/map/VTRoute;",
            ")V"
        }
    .end annotation

    .prologue
    .line 582
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/api/map/GoogleRoute;>;"
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTMapViewOSM;->removeAllViews()V

    .line 584
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lnet/veritran/vtuserapplication/api/map/GoogleRoute;

    invoke-virtual/range {v29 .. v29}, Lnet/veritran/vtuserapplication/api/map/GoogleRoute;->getLegs()Ljava/util/List;

    move-result-object v29

    const/16 v30, 0x0

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/veritran/vtuserapplication/api/map/Leg;

    .line 588
    .local v11, "leg":Lnet/veritran/vtuserapplication/api/map/Leg;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v22, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    new-instance v17, Lorg/osmdroid/views/overlay/PathOverlay;

    invoke-virtual/range {p2 .. p2}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->getRouteColor()Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTMapViewOSM;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v17

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/PathOverlay;-><init>(ILandroid/content/Context;)V

    .line 591
    .local v17, "myPath":Lorg/osmdroid/views/overlay/PathOverlay;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/api/map/Leg;->getSteps()Ljava/util/List;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v6, v0, :cond_2

    .line 592
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/api/map/Leg;->getSteps()Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lnet/veritran/vtuserapplication/api/map/Step;

    .line 595
    .local v28, "step":Lnet/veritran/vtuserapplication/api/map/Step;
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/vtuserapplication/api/map/Step;->getPolyline()Ljava/util/List;

    move-result-object v24

    .line 596
    .local v24, "polylines":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v23

    .line 598
    .local v23, "polyCount":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    move/from16 v0, v23

    if-ge v9, v0, :cond_1

    .line 599
    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    .line 600
    .local v21, "path":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v26

    .line 601
    .local v26, "size":I
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_2
    move/from16 v0, v26

    if-ge v10, v0, :cond_0

    .line 602
    const-string v29, "lat"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 603
    .local v12, "lat":D
    const-string v29, "lng"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 604
    .local v14, "lng":D
    new-instance v25, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v25

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 605
    .local v25, "position":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    new-instance v29, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v0, v29

    invoke-direct {v0, v12, v13, v14, v15}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/PathOverlay;->addPoint(Lorg/osmdroid/api/IGeoPoint;)V

    .line 601
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 598
    .end local v12    # "lat":D
    .end local v14    # "lng":D
    .end local v25    # "position":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 591
    .end local v10    # "k":I
    .end local v21    # "path":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v26    # "size":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 611
    .end local v9    # "j":I
    .end local v23    # "polyCount":I
    .end local v24    # "polylines":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v28    # "step":Lnet/veritran/vtuserapplication/api/map/Step;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTMapViewOSM;->routePoints:Ljava/util/Vector;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 613
    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/views/overlay/PathOverlay;->getPaint()Landroid/graphics/Paint;

    move-result-object v20

    .line 614
    .local v20, "pPaint":Landroid/graphics/Paint;
    const/high16 v29, 0x40800000    # 4.0f

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 615
    const/16 v29, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 616
    invoke-virtual/range {p2 .. p2}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->getRouteColor()Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 617
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/PathOverlay;->setPaint(Landroid/graphics/Paint;)V

    .line 620
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTMapViewOSM;->getOverlays()Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/api/map/Leg;->getStartLocationLat()D

    move-result-wide v30

    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/api/map/Leg;->getStartLocationLng()D

    move-result-wide v32

    move-wide/from16 v0, v30

    move-wide/from16 v2, v32

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 625
    .local v7, "inicio":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/api/map/Leg;->getEndLocationLat()D

    move-result-wide v30

    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/api/map/Leg;->getEndLocationLng()D

    move-result-wide v32

    move-wide/from16 v0, v30

    move-wide/from16 v2, v32

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 629
    .local v4, "destino":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual/range {p2 .. p2}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->getImageOrigin()Landroid/graphics/Bitmap;

    move-result-object v29

    if-eqz v29, :cond_3

    .line 631
    invoke-virtual/range {p2 .. p2}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->getImageOrigin()Landroid/graphics/Bitmap;

    move-result-object v27

    .line 642
    .local v27, "startIcon":Landroid/graphics/Bitmap;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->getImageDestination()Landroid/graphics/Bitmap;

    move-result-object v29

    if-eqz v29, :cond_4

    .line 644
    invoke-virtual/range {p2 .. p2}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->getImageDestination()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 653
    .local v5, "endIcon":Landroid/graphics/Bitmap;
    :goto_4
    new-instance v19, Lorg/osmdroid/views/overlay/OverlayItem;

    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/api/map/Leg;->getStartAddress()Ljava/lang/String;

    move-result-object v29

    const-string v30, ""

    new-instance v31, Lorg/osmdroid/util/GeoPoint;

    iget-wide v0, v7, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v32, v0

    iget-wide v0, v7, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v34, v0

    invoke-direct/range {v31 .. v35}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lorg/osmdroid/views/overlay/OverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/util/GeoPoint;)V

    .line 654
    .local v19, "oIMarkerInicio":Lorg/osmdroid/views/overlay/OverlayItem;
    new-instance v29, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 655
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v8, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/views/overlay/OverlayItem;>;"
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    new-instance v16, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v8}, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay;-><init>(Lnet/veritran/component/view/VTMapViewOSM;Lnet/veritran/component/view/VTMapViewOSM;Ljava/util/List;)V

    .line 658
    .local v16, "locationOverlay":Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTMapViewOSM;->getOverlays()Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    new-instance v18, Lorg/osmdroid/views/overlay/OverlayItem;

    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/api/map/Leg;->getEndAddress()Ljava/lang/String;

    move-result-object v29

    const-string v30, ""

    new-instance v31, Lorg/osmdroid/util/GeoPoint;

    iget-wide v0, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v32, v0

    iget-wide v0, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v34, v0

    invoke-direct/range {v31 .. v35}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lorg/osmdroid/views/overlay/OverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/util/GeoPoint;)V

    .line 661
    .local v18, "oIMarkerDestino":Lorg/osmdroid/views/overlay/OverlayItem;
    new-instance v29, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v29

    invoke-direct {v0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 662
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 663
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    new-instance v16, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay;

    .end local v16    # "locationOverlay":Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v8}, Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay;-><init>(Lnet/veritran/component/view/VTMapViewOSM;Lnet/veritran/component/view/VTMapViewOSM;Ljava/util/List;)V

    .line 665
    .restart local v16    # "locationOverlay":Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTMapViewOSM;->getOverlays()Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTMapViewOSM;->autoZoom()V

    .line 668
    return-void

    .line 636
    .end local v5    # "endIcon":Landroid/graphics/Bitmap;
    .end local v8    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/views/overlay/OverlayItem;>;"
    .end local v16    # "locationOverlay":Lnet/veritran/component/view/VTMapViewOSM$MyOwnItemizedOverlay;
    .end local v18    # "oIMarkerDestino":Lorg/osmdroid/views/overlay/OverlayItem;
    .end local v19    # "oIMarkerInicio":Lorg/osmdroid/views/overlay/OverlayItem;
    .end local v27    # "startIcon":Landroid/graphics/Bitmap;
    :cond_3
    const/16 v27, 0x0

    .restart local v27    # "startIcon":Landroid/graphics/Bitmap;
    goto/16 :goto_3

    .line 649
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "endIcon":Landroid/graphics/Bitmap;
    goto/16 :goto_4
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 396
    const-string v0, "VTMapViewOSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged [] -> getLeft():+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getTop():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getWidth():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getHeight():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 456
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 451
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 461
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 466
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 505
    iput p1, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedHeight:I

    .line 506
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 429
    const-string v0, "VTMapViewOSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFixedMargins("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iput p1, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedLeftMargin:F

    .line 431
    iput p2, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedTopMargin:F

    .line 432
    iput p3, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedRightMargin:F

    .line 433
    iput p4, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedBottomMargin:F

    .line 434
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 495
    iput p1, p0, Lnet/veritran/component/view/VTMapViewOSM;->fixedWidth:I

    .line 496
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 475
    iput p1, p0, Lnet/veritran/component/view/VTMapViewOSM;->percentageHeight:F

    .line 476
    return-void
.end method

.method public setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    .prologue
    .line 572
    iput-object p1, p0, Lnet/veritran/component/view/VTMapViewOSM;->adapter:Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    .line 573
    return-void
.end method

.method public setMapCenter(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 520
    iput-object p1, p0, Lnet/veritran/component/view/VTMapViewOSM;->center:Lcom/google/android/gms/maps/model/LatLng;

    .line 521
    return-void
.end method

.method public setMapType(I)V
    .locals 0
    .param p1, "mapType"    # I

    .prologue
    .line 555
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 421
    iput p1, p0, Lnet/veritran/component/view/VTMapViewOSM;->percentageLeftMargin:F

    .line 422
    iput p2, p0, Lnet/veritran/component/view/VTMapViewOSM;->percentageTopMargin:F

    .line 423
    iput p3, p0, Lnet/veritran/component/view/VTMapViewOSM;->percentageRightMargin:F

    .line 424
    iput p4, p0, Lnet/veritran/component/view/VTMapViewOSM;->percentageBottomMargin:F

    .line 425
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 470
    iput p1, p0, Lnet/veritran/component/view/VTMapViewOSM;->percentageWidth:F

    .line 471
    return-void
.end method

.method public setZoom(F)V
    .locals 2
    .param p1, "zoom"    # F

    .prologue
    .line 510
    iput p1, p0, Lnet/veritran/component/view/VTMapViewOSM;->zoomActual:F

    .line 512
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lnet/veritran/component/view/VTMapViewOSM;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    iget v1, p0, Lnet/veritran/component/view/VTMapViewOSM;->zoomActual:F

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setZoom(I)I

    .line 516
    :cond_0
    return-void
.end method

.method public setpopUp(Landroid/view/View;)V
    .locals 0
    .param p1, "popUp"    # Landroid/view/View;

    .prologue
    .line 59
    iput-object p1, p0, Lnet/veritran/component/view/VTMapViewOSM;->popUp:Landroid/view/View;

    .line 60
    return-void
.end method
