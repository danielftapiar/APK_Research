.class public Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;
.super Lcom/google/android/gms/maps/SupportMapFragment;
.source "VTMapComponent.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/api/map/interfaces/RouteProviderListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;


# static fields
.field private static final DEFAULT_ZOOM:I = 0xc

.field public static final HYBRID:I = 0x4

.field public static final NONE:I = 0x0

.field public static final ROADMAP:I = 0x1

.field public static final SATELLITE:I = 0x2

.field public static final TERRAIN:I = 0x3

.field public static final VTMAP_TAG:Ljava/lang/String; = "VTMAP_TAG"

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
.field private center:Lcom/google/android/gms/maps/model/LatLng;

.field private mapComponentlistener:Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;

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

.field private vTMap:Lcom/google/android/gms/maps/GoogleMap;

.field private zoomActual:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->markers:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/google/android/gms/maps/SupportMapFragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->showZoom:Z

    .line 57
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->zoomActual:F

    .line 64
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->routes:Ljava/util/Vector;

    .line 65
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->routePoints:Ljava/util/Vector;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->center:Lcom/google/android/gms/maps/model/LatLng;

    .line 168
    sget-object v0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->markers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 169
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "showZoomControls"    # Z

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/gms/maps/SupportMapFragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->showZoom:Z

    .line 57
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->zoomActual:F

    .line 64
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->routes:Ljava/util/Vector;

    .line 65
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->routePoints:Ljava/util/Vector;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->center:Lcom/google/android/gms/maps/model/LatLng;

    .line 72
    iput-boolean p1, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->showZoom:Z

    .line 75
    sget-object v0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->markers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;

    .prologue
    .line 42
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->vTMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method private getNewMarkerOptions(Lnet/veritran/vtuserapplication/api/map/VTMarker;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 5
    .param p1, "marker"    # Lnet/veritran/vtuserapplication/api/map/VTMarker;

    .prologue
    .line 181
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getResource()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 182
    const/high16 v2, 0x43520000    # 210.0f

    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 187
    .local v0, "icon":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :goto_0
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 188
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    .line 189
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    .line 190
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getSnippet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    .line 191
    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 192
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 193
    .local v1, "markerOptions":Lcom/google/android/gms/maps/model/MarkerOptions;
    return-object v1

    .line 184
    .end local v0    # "icon":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .end local v1    # "markerOptions":Lcom/google/android/gms/maps/model/MarkerOptions;
    :cond_0
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getResource()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    .restart local v0    # "icon":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    goto :goto_0
.end method

.method public static getVTMarkerFromMarkerId(Ljava/lang/String;)Lnet/veritran/vtuserapplication/api/map/VTMarker;
    .locals 1
    .param p0, "markerId"    # Ljava/lang/String;

    .prologue
    .line 175
    sget-object v0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->markers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/api/map/VTMarker;

    return-object v0
.end method


# virtual methods
.method public addMarkerToMap(Lnet/veritran/vtuserapplication/api/map/VTMarker;)V
    .locals 4
    .param p1, "markerInfo"    # Lnet/veritran/vtuserapplication/api/map/VTMarker;

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->getNewMarkerOptions(Lnet/veritran/vtuserapplication/api/map/VTMarker;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    .line 376
    .local v0, "mOptions":Lcom/google/android/gms/maps/model/MarkerOptions;
    iget-object v2, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->vTMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    .line 377
    .local v1, "marker":Lcom/google/android/gms/maps/model/Marker;
    sget-object v2, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->markers:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    return-void
.end method

.method public autoZoom()V
    .locals 10

    .prologue
    .line 243
    iget-object v7, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->center:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v7, :cond_1

    iget v7, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->zoomActual:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1

    .line 245
    iget-object v7, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->center:Lcom/google/android/gms/maps/model/LatLng;

    iget v8, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->zoomActual:F

    invoke-static {v7, v8}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    .line 246
    .local v1, "cameraUpdate":Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v7, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->vTMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v7, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 297
    .end local v1    # "cameraUpdate":Lcom/google/android/gms/maps/CameraUpdate;
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 253
    .local v0, "bounds":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    iget-object v7, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->routes:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/veritran/vtuserapplication/api/map/VTRoute;

    .line 255
    .local v5, "route":Lnet/veritran/vtuserapplication/api/map/VTRoute;
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->getOrigin()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v0

    .line 256
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->getDestination()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v0

    .line 257
    goto :goto_1

    .line 259
    .end local v5    # "route":Lnet/veritran/vtuserapplication/api/map/VTRoute;
    :cond_2
    iget-object v7, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->routePoints:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/LatLng;

    .line 261
    .local v3, "latLon":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v0

    .line 262
    goto :goto_2

    .line 263
    .end local v3    # "latLon":Lcom/google/android/gms/maps/model/LatLng;
    :cond_3
    const/4 v6, 0x1

    .line 264
    .local v6, "setAutozoomAllMarkers":Z
    sget-object v7, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->markers:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/veritran/vtuserapplication/api/map/VTMarker;

    .line 266
    .local v4, "marker":Lnet/veritran/vtuserapplication/api/map/VTMarker;
    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->isVisibleAutozoom()Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->isVisibleAutozoom()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 268
    const/4 v6, 0x0

    .line 273
    .end local v4    # "marker":Lnet/veritran/vtuserapplication/api/map/VTMarker;
    :cond_5
    sget-object v7, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->markers:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/veritran/vtuserapplication/api/map/VTMarker;

    .line 275
    .restart local v4    # "marker":Lnet/veritran/vtuserapplication/api/map/VTMarker;
    if-nez v6, :cond_7

    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->isVisibleAutozoom()Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->isVisibleAutozoom()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 276
    :cond_7
    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v0

    goto :goto_3

    .line 284
    .end local v4    # "marker":Lnet/veritran/vtuserapplication/api/map/VTMarker;
    :cond_8
    :try_start_0
    iget-object v7, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->vTMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v8

    const/16 v9, 0x19

    invoke-static {v8, v9}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 286
    :catch_0
    move-exception v2

    .line 290
    .local v2, "ex":Ljava/lang/IllegalStateException;
    iget-object v7, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->center:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v7, :cond_0

    .line 292
    iget-object v7, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->center:Lcom/google/android/gms/maps/model/LatLng;

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v7, v8}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    .line 293
    .restart local v1    # "cameraUpdate":Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v7, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->vTMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v7, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto/16 :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 550
    sget-object v0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->markers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 551
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->routes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 552
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->routePoints:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 553
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->vTMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 554
    return-void
.end method

.method public drawRouteOnMap(Lnet/veritran/vtuserapplication/api/map/VTRoute;Ljava/lang/String;)V
    .locals 2
    .param p1, "route"    # Lnet/veritran/vtuserapplication/api/map/VTRoute;
    .param p2, "progressMessage"    # Ljava/lang/String;

    .prologue
    .line 389
    new-instance v0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/api/map/RoadProvider;-><init>(Z)V

    .line 390
    .local v0, "downloader":Lnet/veritran/vtuserapplication/api/map/RoadProvider;
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->setContext(Landroid/content/Context;)V

    .line 391
    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->setRoute(Lnet/veritran/vtuserapplication/api/map/VTRoute;)V

    .line 392
    invoke-virtual {v0, p0}, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->setListener(Lnet/veritran/vtuserapplication/api/map/interfaces/RouteProviderListener;)V

    .line 393
    invoke-virtual {v0, p2}, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->setProgressMessage(Ljava/lang/String;)V

    .line 394
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 396
    iget-object v1, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->routes:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 397
    return-void
.end method

.method public getMapComponentlistener()Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->mapComponentlistener:Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;

    return-object v0
.end method

.method public getRouteDirections(Lnet/veritran/vtuserapplication/api/map/VTRoute;Lnet/veritran/vtuserapplication/api/map/interfaces/RouteProviderListener;)V
    .locals 3
    .param p1, "route"    # Lnet/veritran/vtuserapplication/api/map/VTRoute;
    .param p2, "listener"    # Lnet/veritran/vtuserapplication/api/map/interfaces/RouteProviderListener;

    .prologue
    const/4 v2, 0x0

    .line 405
    new-instance v0, Lnet/veritran/vtuserapplication/api/map/RoadProvider;

    invoke-direct {v0, v2}, Lnet/veritran/vtuserapplication/api/map/RoadProvider;-><init>(Z)V

    .line 406
    .local v0, "downloader":Lnet/veritran/vtuserapplication/api/map/RoadProvider;
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->setContext(Landroid/content/Context;)V

    .line 407
    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->setRoute(Lnet/veritran/vtuserapplication/api/map/VTRoute;)V

    .line 408
    invoke-virtual {v0, p2}, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->setListener(Lnet/veritran/vtuserapplication/api/map/interfaces/RouteProviderListener;)V

    .line 409
    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/api/map/RoadProvider;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 410
    return-void
.end method

.method public getVTMap()Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->vTMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/google/android/gms/maps/SupportMapFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->vTMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 85
    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->showZoom:Z

    invoke-virtual {p0, v0}, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->showZoomControls(Z)V

    .line 87
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->vTMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 89
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->mapComponentlistener:Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->mapComponentlistener:Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;->onVTMapCreated()V

    .line 93
    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->vTMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent$1;

    invoke-direct {v1, p0}, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent$1;-><init>(Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 106
    :cond_1
    return-void
.end method

.method public onEmptyRoute()V
    .locals 3

    .prologue
    .line 416
    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "No se encontraron rutas disponibles."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 417
    return-void
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 3
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 540
    sget-object v1, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->markers:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/api/map/VTMarker;

    .line 542
    .local v0, "vtMarker":Lnet/veritran/vtuserapplication/api/map/VTMarker;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->mapComponentlistener:Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->mapComponentlistener:Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;

    invoke-interface {v1, v0}, Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;->onVTMarkerClicked(Lnet/veritran/vtuserapplication/api/map/VTMarker;)V

    .line 547
    :cond_0
    return-void
.end method

.method public onRouteDownloaded(Ljava/util/List;Lnet/veritran/vtuserapplication/api/map/VTRoute;)V
    .locals 30
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
    .line 449
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/api/map/GoogleRoute;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->vTMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 453
    invoke-virtual/range {p2 .. p2}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->getImageOrigin()Landroid/graphics/Bitmap;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 455
    invoke-virtual/range {p2 .. p2}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->getImageOrigin()Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v23

    .line 465
    .local v23, "startIconDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->getImageDestination()Landroid/graphics/Bitmap;

    move-result-object v25

    if-eqz v25, :cond_1

    .line 467
    invoke-virtual/range {p2 .. p2}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->getImageDestination()Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v5

    .line 475
    .local v5, "endIconDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :goto_1
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lnet/veritran/vtuserapplication/api/map/GoogleRoute;

    .line 476
    .local v21, "route":Lnet/veritran/vtuserapplication/api/map/GoogleRoute;
    invoke-virtual/range {v21 .. v21}, Lnet/veritran/vtuserapplication/api/map/GoogleRoute;->getLegs()Ljava/util/List;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/veritran/vtuserapplication/api/map/Leg;

    .line 478
    .local v12, "leg":Lnet/veritran/vtuserapplication/api/map/Leg;
    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v12}, Lnet/veritran/vtuserapplication/api/map/Leg;->getStartLocationLat()D

    move-result-wide v26

    invoke-virtual {v12}, Lnet/veritran/vtuserapplication/api/map/Leg;->getStartLocationLng()D

    move-result-wide v28

    move-wide/from16 v0, v26

    move-wide/from16 v2, v28

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 479
    .local v7, "inicio":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v12}, Lnet/veritran/vtuserapplication/api/map/Leg;->getEndLocationLat()D

    move-result-wide v26

    invoke-virtual {v12}, Lnet/veritran/vtuserapplication/api/map/Leg;->getEndLocationLng()D

    move-result-wide v28

    move-wide/from16 v0, v26

    move-wide/from16 v2, v28

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 481
    .local v4, "destino":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->vTMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v25, v0

    new-instance v26, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct/range {v26 .. v26}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 482
    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v26

    .line 483
    invoke-virtual {v12}, Lnet/veritran/vtuserapplication/api/map/Leg;->getStartAddress()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v26

    .line 484
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v26

    .line 481
    invoke-virtual/range {v25 .. v26}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->vTMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v25, v0

    new-instance v26, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct/range {v26 .. v26}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 487
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v26

    .line 488
    invoke-virtual {v12}, Lnet/veritran/vtuserapplication/api/map/Leg;->getEndAddress()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v26

    .line 489
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v26

    .line 486
    invoke-virtual/range {v25 .. v26}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 491
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v17, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    new-instance v13, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v13}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 494
    .local v13, "lineOptions":Lcom/google/android/gms/maps/model/PolylineOptions;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v12}, Lnet/veritran/vtuserapplication/api/map/Leg;->getSteps()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v6, v0, :cond_4

    .line 495
    invoke-virtual {v12}, Lnet/veritran/vtuserapplication/api/map/Leg;->getSteps()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lnet/veritran/vtuserapplication/api/map/Step;

    .line 498
    .local v24, "step":Lnet/veritran/vtuserapplication/api/map/Step;
    invoke-virtual/range {v24 .. v24}, Lnet/veritran/vtuserapplication/api/map/Step;->getPolyline()Ljava/util/List;

    move-result-object v19

    .line 499
    .local v19, "polylines":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v18

    .line 501
    .local v18, "polyCount":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    move/from16 v0, v18

    if-ge v8, v0, :cond_3

    .line 502
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/HashMap;

    .line 503
    .local v16, "path":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    move-result v22

    .line 504
    .local v22, "size":I
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_4
    move/from16 v0, v22

    if-ge v9, v0, :cond_2

    .line 505
    const-string v25, "lat"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 506
    .local v10, "lat":D
    const-string v25, "lng"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 507
    .local v14, "lng":D
    new-instance v20, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v20

    invoke-direct {v0, v10, v11, v14, v15}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 508
    .local v20, "position":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 459
    .end local v4    # "destino":Lcom/google/android/gms/maps/model/LatLng;
    .end local v5    # "endIconDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .end local v6    # "i":I
    .end local v7    # "inicio":Lcom/google/android/gms/maps/model/LatLng;
    .end local v8    # "j":I
    .end local v9    # "k":I
    .end local v10    # "lat":D
    .end local v12    # "leg":Lnet/veritran/vtuserapplication/api/map/Leg;
    .end local v13    # "lineOptions":Lcom/google/android/gms/maps/model/PolylineOptions;
    .end local v14    # "lng":D
    .end local v16    # "path":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    .end local v18    # "polyCount":I
    .end local v19    # "polylines":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v20    # "position":Lcom/google/android/gms/maps/model/LatLng;
    .end local v21    # "route":Lnet/veritran/vtuserapplication/api/map/GoogleRoute;
    .end local v22    # "size":I
    .end local v23    # "startIconDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .end local v24    # "step":Lnet/veritran/vtuserapplication/api/map/Step;
    :cond_0
    const/high16 v25, 0x43520000    # 210.0f

    invoke-static/range {v25 .. v25}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v23

    .restart local v23    # "startIconDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    goto/16 :goto_0

    .line 471
    :cond_1
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v5

    .restart local v5    # "endIconDescriptor":Lcom/google/android/gms/maps/model/BitmapDescriptor;
    goto/16 :goto_1

    .line 501
    .restart local v4    # "destino":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v6    # "i":I
    .restart local v7    # "inicio":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v8    # "j":I
    .restart local v9    # "k":I
    .restart local v12    # "leg":Lnet/veritran/vtuserapplication/api/map/Leg;
    .restart local v13    # "lineOptions":Lcom/google/android/gms/maps/model/PolylineOptions;
    .restart local v16    # "path":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    .restart local v18    # "polyCount":I
    .restart local v19    # "polylines":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v21    # "route":Lnet/veritran/vtuserapplication/api/map/GoogleRoute;
    .restart local v22    # "size":I
    .restart local v24    # "step":Lnet/veritran/vtuserapplication/api/map/Step;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 494
    .end local v9    # "k":I
    .end local v16    # "path":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "size":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 513
    .end local v8    # "j":I
    .end local v18    # "polyCount":I
    .end local v19    # "polylines":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v24    # "step":Lnet/veritran/vtuserapplication/api/map/Step;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->routePoints:Ljava/util/Vector;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 515
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 516
    const/high16 v25, 0x40a00000    # 5.0f

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 517
    invoke-virtual/range {p2 .. p2}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->getRouteColor()Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 519
    if-eqz v13, :cond_5

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->vTMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    .line 526
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->autoZoom()V

    .line 535
    return-void
.end method

.method public setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;

    .prologue
    .line 301
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->vTMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 302
    return-void
.end method

.method public setMapCenter(DD)V
    .locals 1
    .param p1, "latitud"    # D
    .param p3, "longitud"    # D

    .prologue
    .line 309
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->center:Lcom/google/android/gms/maps/model/LatLng;

    .line 312
    return-void
.end method

.method public setMapCenter(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 319
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->center:Lcom/google/android/gms/maps/model/LatLng;

    .line 322
    return-void
.end method

.method public setMapComponentlistener(Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;)V
    .locals 0
    .param p1, "mapComponentListener"    # Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;

    .prologue
    .line 216
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->mapComponentlistener:Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;

    .line 217
    return-void
.end method

.method public setMapType(I)V
    .locals 2
    .param p1, "mapType"    # I

    .prologue
    .line 336
    packed-switch p1, :pswitch_data_0

    .line 350
    :pswitch_0
    const/4 v0, 0x1

    .line 353
    .local v0, "type":I
    :goto_0
    iget-object v1, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->vTMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 354
    return-void

    .line 338
    .end local v0    # "type":I
    :pswitch_1
    const/4 v0, 0x4

    .line 339
    .restart local v0    # "type":I
    goto :goto_0

    .line 341
    .end local v0    # "type":I
    :pswitch_2
    const/4 v0, 0x2

    .line 342
    .restart local v0    # "type":I
    goto :goto_0

    .line 344
    .end local v0    # "type":I
    :pswitch_3
    const/4 v0, 0x3

    .line 345
    .restart local v0    # "type":I
    goto :goto_0

    .line 347
    .end local v0    # "type":I
    :pswitch_4
    const/4 v0, 0x0

    .line 348
    .restart local v0    # "type":I
    goto :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public setZoom(F)V
    .locals 4
    .param p1, "zoom"    # F

    .prologue
    .line 232
    iput p1, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->zoomActual:F

    .line 234
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 236
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->vTMap:Lcom/google/android/gms/maps/GoogleMap;

    iget v1, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->zoomActual:F

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 238
    :cond_0
    return-void
.end method

.method public showZoomControls(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 363
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->vTMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 365
    iput-boolean p1, p0, Lnet/veritran/vtuserapplication/api/map/android/VTMapComponent;->showZoom:Z

    .line 366
    return-void
.end method
