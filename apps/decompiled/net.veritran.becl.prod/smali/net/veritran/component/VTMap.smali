.class public Lnet/veritran/component/VTMap;
.super Lnet/veritran/component/VTUIComponent;
.source "VTMap.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/api/map/interfaces/VTMapComponentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/component/VTMap$ProcessActionTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLOR_ROUTE:I = -0xffff01

.field private static final DEFAULT_COLOR_SNIPPET_TEXT:I = -0x777778

.field private static final DEFAULT_COLOR_SNIPPET_TEXT_BACKGROUND:I = -0x1

.field private static final MARKER_SIZE_RELATION_SCREEN:F = 0.07f

.field private static final TAG:Ljava/lang/String; = "VTMap"

.field private static iconMarkerHeight:I

.field private static iconMarkerWidth:I


# instance fields
.field private useGoogleMap:Z

.field private vtMapView:Lnet/veritran/component/view/VTMapView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 52
    sput v0, Lnet/veritran/component/VTMap;->iconMarkerWidth:I

    .line 53
    sput v0, Lnet/veritran/component/VTMap;->iconMarkerHeight:I

    return-void
.end method

.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 4
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    const v3, 0x3d8f5c29    # 0.07f

    .line 96
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponent;-><init>()V

    .line 63
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/veritran/component/VTMap;->useGoogleMap:Z

    .line 98
    sget v2, Lnet/veritran/component/VTMap;->iconMarkerHeight:I

    if-lez v2, :cond_0

    sget v2, Lnet/veritran/component/VTMap;->iconMarkerWidth:I

    if-gtz v2, :cond_1

    .line 100
    :cond_0
    invoke-static {p1}, Lnet/veritran/utils/VTDisplayHelper;->getHeightPixel(Landroid/content/Context;)I

    move-result v0

    .line 101
    .local v0, "heightSizePixels":I
    int-to-float v2, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lnet/veritran/component/VTMap;->iconMarkerHeight:I

    .line 102
    int-to-float v2, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lnet/veritran/component/VTMap;->iconMarkerWidth:I

    .line 105
    .end local v0    # "heightSizePixels":I
    :cond_1
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTMap;->setActivity(Lnet/veritran/VTCommonActivity;)V

    .line 109
    const/4 v1, 0x0

    .line 112
    .local v1, "showZoomControls":Z
    invoke-virtual {p0}, Lnet/veritran/component/VTMap;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/VTCommonActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 114
    const/4 v1, 0x1

    .line 117
    :cond_2
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v2

    invoke-interface {v2}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getApplicationBrand()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GOOG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lnet/veritran/component/VTMap;->useGoogleMap:Z

    .line 118
    iget-boolean v2, p0, Lnet/veritran/component/VTMap;->useGoogleMap:Z

    if-eqz v2, :cond_3

    .line 120
    new-instance v2, Lnet/veritran/component/view/VTMapViewGoogle;

    invoke-direct {v2, p0, v1}, Lnet/veritran/component/view/VTMapViewGoogle;-><init>(Lnet/veritran/component/VTMap;Z)V

    iput-object v2, p0, Lnet/veritran/component/VTMap;->vtMapView:Lnet/veritran/component/view/VTMapView;

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_3
    new-instance v2, Lnet/veritran/component/view/VTMapViewOSM;

    invoke-direct {v2, p0, v1}, Lnet/veritran/component/view/VTMapViewOSM;-><init>(Lnet/veritran/component/VTMap;Z)V

    iput-object v2, p0, Lnet/veritran/component/VTMap;->vtMapView:Lnet/veritran/component/view/VTMapView;

    goto :goto_0
.end method

.method private getLatLngFromString(Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 9
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 168
    if-eqz p1, :cond_0

    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-object v6

    .line 173
    :cond_1
    const-string v7, "("

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 174
    const-string v7, ")"

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 176
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "values":[Ljava/lang/String;
    array-length v7, v1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 185
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    float-to-double v2, v7

    .line 186
    .local v2, "lat":D
    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    float-to-double v4, v7

    .line 188
    .local v4, "lon":D
    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    goto :goto_0

    .line 190
    .end local v2    # "lat":D
    .end local v4    # "lon":D
    :catch_0
    move-exception v0

    .line 192
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v7, "VTMap"

    const-string v8, "Catched exception empty (fortify)"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getMapTypeFromString(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 200
    const-string v0, "HYBRID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x4

    .line 217
    :goto_0
    return v0

    .line 204
    :cond_0
    const-string v0, "ROADMAP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    const/4 v0, 0x1

    goto :goto_0

    .line 208
    :cond_1
    const-string v0, "SATELLITE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    const/4 v0, 0x2

    goto :goto_0

    .line 212
    :cond_2
    const-string v0, "TERRAIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    const/4 v0, 0x3

    goto :goto_0

    .line 217
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initMap()V
    .locals 5

    .prologue
    .line 148
    invoke-virtual {p0}, Lnet/veritran/component/VTMap;->getParent()Lnet/veritran/component/VTUIComponent;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/component/VTUIComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v1

    const-string v2, "verticalalign"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "valign":Ljava/lang/String;
    const-string v1, "VTMap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/veritran/component/VTMap;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " valign="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lnet/veritran/component/VTMap;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "verticalalign"

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    invoke-virtual {p0}, Lnet/veritran/component/VTMap;->defineTextAlign()V

    .line 154
    invoke-virtual {p0}, Lnet/veritran/component/VTMap;->defineVerticalAlign()V

    .line 156
    invoke-virtual {p0}, Lnet/veritran/component/VTMap;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 157
    const-string v1, "VTMap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VTTextView->getArrayReaderAdapter(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lnet/veritran/component/VTMap;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->getArrayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTMap;->defineWidth()V

    .line 161
    invoke-virtual {p0}, Lnet/veritran/component/VTMap;->defineHeight()V

    .line 162
    invoke-virtual {p0}, Lnet/veritran/component/VTMap;->defineVisibility()V

    .line 163
    invoke-virtual {p0}, Lnet/veritran/component/VTMap;->defineMargins()V

    .line 164
    return-void
.end method

.method private initMapComponents()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 229
    invoke-virtual {p0}, Lnet/veritran/component/VTMap;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;

    .line 231
    .local v1, "mapConfiguration":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;
    const-string v4, "zoom"

    invoke-virtual {v1, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "zoom":Ljava/lang/String;
    const-string v4, "maptypeid"

    invoke-virtual {v1, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "mapType":Ljava/lang/String;
    iget-object v4, p0, Lnet/veritran/component/VTMap;->vtMapView:Lnet/veritran/component/view/VTMapView;

    invoke-direct {p0, v2}, Lnet/veritran/component/VTMap;->getMapTypeFromString(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Lnet/veritran/component/view/VTMapView;->setMapType(I)V

    .line 238
    :try_start_0
    iget-object v4, p0, Lnet/veritran/component/VTMap;->vtMapView:Lnet/veritran/component/view/VTMapView;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-interface {v4, v5}, Lnet/veritran/component/view/VTMapView;->setZoom(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    invoke-direct {p0}, Lnet/veritran/component/VTMap;->loadMarkers()V

    .line 247
    invoke-direct {p0}, Lnet/veritran/component/VTMap;->loadRoutes()V

    .line 249
    invoke-direct {p0}, Lnet/veritran/component/VTMap;->loadCenterMarker()V

    .line 253
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 242
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v4, "VTMap"

    const-string v5, "Catched exception empty (fortify)"

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadCenterMarker()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 256
    invoke-virtual {p0}, Lnet/veritran/component/VTMap;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v5

    check-cast v5, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;

    .line 258
    .local v5, "mapConfiguration":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;
    const-string v6, "center"

    invoke-virtual {v5, v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "center":Ljava/lang/String;
    const-string v6, "imageSrcCenter"

    invoke-virtual {v5, v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "centerImage":Ljava/lang/String;
    invoke-direct {p0, v0}, Lnet/veritran/component/VTMap;->getLatLngFromString(Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    .line 262
    .local v4, "latLngCenter":Lcom/google/android/gms/maps/model/LatLng;
    if-eqz v4, :cond_0

    .line 263
    iget-object v6, p0, Lnet/veritran/component/VTMap;->vtMapView:Lnet/veritran/component/view/VTMapView;

    invoke-interface {v6, v4}, Lnet/veritran/component/view/VTMapView;->setMapCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 265
    new-instance v2, Lnet/veritran/vtuserapplication/api/map/VTMarker;

    invoke-direct {v2, v9}, Lnet/veritran/vtuserapplication/api/map/VTMarker;-><init>(Z)V

    .line 267
    .local v2, "centerMarker":Lnet/veritran/vtuserapplication/api/map/VTMarker;
    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 269
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v6

    invoke-virtual {v6}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v6

    sget v7, Lnet/veritran/component/VTMap;->iconMarkerWidth:I

    sget v8, Lnet/veritran/component/VTMap;->iconMarkerHeight:I

    .line 270
    invoke-virtual {v6, v1, v7, v8, v9}, Lnet/veritran/utils/ImageHandler;->getBitmapForExactSize(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 272
    .local v3, "centerMarkerIcon":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setResource(Landroid/graphics/Bitmap;)V

    .line 274
    iget-object v6, p0, Lnet/veritran/component/VTMap;->vtMapView:Lnet/veritran/component/view/VTMapView;

    invoke-interface {v6, v2}, Lnet/veritran/component/view/VTMapView;->addMarkerToMap(Lnet/veritran/vtuserapplication/api/map/VTMarker;)V

    .line 276
    .end local v2    # "centerMarker":Lnet/veritran/vtuserapplication/api/map/VTMarker;
    .end local v3    # "centerMarkerIcon":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private loadMarkers()V
    .locals 29

    .prologue
    .line 418
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTMap;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v12

    check-cast v12, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;

    .line 420
    .local v12, "mapConfiguration":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;
    invoke-virtual {v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;->getMarkerElements()Ljava/util/Vector;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_0
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_b

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;

    .line 422
    .local v9, "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;
    const-string v25, "type"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 423
    .local v10, "itemType":Ljava/lang/String;
    if-eqz v10, :cond_6

    const-string v25, "V"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 425
    const-string v25, "array"

    .line 426
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 425
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 427
    .local v5, "associatedArray":I
    new-instance v4, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-direct {v4, v5}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;-><init>(I)V

    .line 429
    .local v4, "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    const/16 v16, 0x0

    .line 431
    .local v16, "rowNumber":I
    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->reset()V

    .line 432
    :goto_1
    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 434
    const-string v25, "filter"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 436
    .local v6, "eval":Ljava/lang/String;
    if-eqz v6, :cond_1

    const-string v25, ""

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 438
    invoke-static {v6, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    .line 439
    invoke-static {v6}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 441
    add-int/lit8 v16, v16, 0x1

    .line 442
    goto :goto_1

    .line 445
    :cond_1
    const-string v25, "visibleautozoom"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 446
    .local v23, "visibleAutozoomStr":Ljava/lang/String;
    const/16 v22, 0x0

    .line 447
    .local v22, "visibleAutozoom":Ljava/lang/Boolean;
    if-eqz v23, :cond_2

    const-string v25, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2

    .line 449
    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v23

    .line 450
    invoke-static/range {v23 .. v23}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 453
    :cond_2
    const-string v25, "position"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v15

    .line 454
    .local v15, "position":Ljava/lang/String;
    const-string v25, "title"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v21

    .line 455
    .local v21, "title":Ljava/lang/String;
    const-string v25, "snippet"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v18

    .line 456
    .local v18, "snippet":Ljava/lang/String;
    const-string v25, "snippetTextColor"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lnet/veritran/VTCommonActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    .line 457
    .local v20, "snippetTextColor":Ljava/lang/Integer;
    const-string v25, "snippetTextBackgroundColor"

    .line 458
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v25

    .line 457
    invoke-static/range {v25 .. v25}, Lnet/veritran/VTCommonActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 459
    .local v19, "snippetTextBackgroundColor":Ljava/lang/Integer;
    const-string v25, "imagesrc"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    .line 460
    .local v8, "imageSrc":Ljava/lang/String;
    const-string v25, "onClick"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v14

    .line 462
    .local v14, "onClick":Ljava/lang/String;
    if-nez v20, :cond_3

    .line 463
    const v25, -0x777778

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 465
    :cond_3
    if-nez v19, :cond_4

    .line 466
    const/16 v25, -0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 472
    :cond_4
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v25

    sget v26, Lnet/veritran/component/VTMap;->iconMarkerWidth:I

    sget v27, Lnet/veritran/component/VTMap;->iconMarkerHeight:I

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v8, v1, v2, v3}, Lnet/veritran/utils/ImageHandler;->getBitmapForExactSize(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 474
    .local v13, "markerIcon":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lnet/veritran/component/VTMap;->getLatLngFromString(Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v11

    .line 476
    .local v11, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    if-eqz v11, :cond_5

    .line 478
    new-instance v7, Lnet/veritran/vtuserapplication/api/map/VTMarker;

    invoke-direct {v7}, Lnet/veritran/vtuserapplication/api/map/VTMarker;-><init>()V

    .line 480
    .local v7, "expandedMarker":Lnet/veritran/vtuserapplication/api/map/VTMarker;
    invoke-virtual {v7, v11}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 481
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setTitle(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v7, v13}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setResource(Landroid/graphics/Bitmap;)V

    .line 484
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setSnippet(Ljava/lang/String;)V

    .line 485
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setSnippetTextColor(Ljava/lang/Integer;)V

    .line 486
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setSnippetTextBackgroundColor(Ljava/lang/Integer;)V

    .line 488
    invoke-virtual {v7, v5}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setArrayId(I)V

    .line 489
    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setRowNumber(I)V

    .line 490
    invoke-virtual {v7, v14}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setOnClickAction(Ljava/lang/String;)V

    .line 491
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setVisibleAutozoom(Ljava/lang/Boolean;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTMap;->vtMapView:Lnet/veritran/component/view/VTMapView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v7}, Lnet/veritran/component/view/VTMapView;->addMarkerToMap(Lnet/veritran/vtuserapplication/api/map/VTMarker;)V

    .line 495
    .end local v7    # "expandedMarker":Lnet/veritran/vtuserapplication/api/map/VTMarker;
    :cond_5
    add-int/lit8 v16, v16, 0x1

    .line 496
    goto/16 :goto_1

    .line 499
    .end local v4    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v5    # "associatedArray":I
    .end local v6    # "eval":Ljava/lang/String;
    .end local v8    # "imageSrc":Ljava/lang/String;
    .end local v11    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v13    # "markerIcon":Landroid/graphics/Bitmap;
    .end local v14    # "onClick":Ljava/lang/String;
    .end local v15    # "position":Ljava/lang/String;
    .end local v16    # "rowNumber":I
    .end local v18    # "snippet":Ljava/lang/String;
    .end local v19    # "snippetTextBackgroundColor":Ljava/lang/Integer;
    .end local v20    # "snippetTextColor":Ljava/lang/Integer;
    .end local v21    # "title":Ljava/lang/String;
    .end local v22    # "visibleAutozoom":Ljava/lang/Boolean;
    .end local v23    # "visibleAutozoomStr":Ljava/lang/String;
    :cond_6
    const/16 v17, 0x1

    .line 501
    .local v17, "shouldAdd":Z
    const-string v25, "filter"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 503
    .restart local v6    # "eval":Ljava/lang/String;
    if-eqz v6, :cond_7

    const-string v25, ""

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_7

    .line 505
    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    .line 506
    invoke-static {v6}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_7

    .line 508
    const/16 v17, 0x0

    .line 511
    :cond_7
    const-string v25, "visibleautozoom"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 512
    .restart local v23    # "visibleAutozoomStr":Ljava/lang/String;
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 513
    .restart local v22    # "visibleAutozoom":Ljava/lang/Boolean;
    if-eqz v23, :cond_8

    const-string v25, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_8

    .line 515
    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v23

    .line 516
    invoke-static/range {v23 .. v23}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 519
    :cond_8
    if-eqz v17, :cond_0

    .line 521
    const-string v25, "position"

    .line 522
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    .line 521
    invoke-static/range {v25 .. v26}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v15

    .line 523
    .restart local v15    # "position":Ljava/lang/String;
    const-string v25, "title"

    .line 524
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    .line 523
    invoke-static/range {v25 .. v26}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v21

    .line 526
    .restart local v21    # "title":Ljava/lang/String;
    const-string v25, "snippet"

    .line 527
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    .line 526
    invoke-static/range {v25 .. v26}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v18

    .line 528
    .restart local v18    # "snippet":Ljava/lang/String;
    const-string v25, "snippetTextColor"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lnet/veritran/VTCommonActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    .line 529
    .restart local v20    # "snippetTextColor":Ljava/lang/Integer;
    const-string v25, "snippetTextBackgroundColor"

    .line 530
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v25

    .line 529
    invoke-static/range {v25 .. v25}, Lnet/veritran/VTCommonActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 531
    .restart local v19    # "snippetTextBackgroundColor":Ljava/lang/Integer;
    const-string v25, "imagesrc"

    .line 532
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    .line 531
    invoke-static/range {v25 .. v26}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    .line 533
    .restart local v8    # "imageSrc":Ljava/lang/String;
    const-string v25, "onClick"

    .line 534
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    .line 533
    invoke-static/range {v25 .. v26}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v14

    .line 536
    .restart local v14    # "onClick":Ljava/lang/String;
    if-nez v20, :cond_9

    .line 537
    const v25, -0x777778

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 539
    :cond_9
    if-nez v19, :cond_a

    .line 540
    const/16 v25, -0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 549
    :cond_a
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v25

    sget v26, Lnet/veritran/component/VTMap;->iconMarkerWidth:I

    sget v27, Lnet/veritran/component/VTMap;->iconMarkerHeight:I

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v8, v1, v2, v3}, Lnet/veritran/utils/ImageHandler;->getBitmapForExactSize(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 552
    .restart local v13    # "markerIcon":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lnet/veritran/component/VTMap;->getLatLngFromString(Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v11

    .line 554
    .restart local v11    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    if-eqz v11, :cond_0

    .line 555
    new-instance v7, Lnet/veritran/vtuserapplication/api/map/VTMarker;

    invoke-direct {v7}, Lnet/veritran/vtuserapplication/api/map/VTMarker;-><init>()V

    .line 557
    .restart local v7    # "expandedMarker":Lnet/veritran/vtuserapplication/api/map/VTMarker;
    invoke-virtual {v7, v11}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 558
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setTitle(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v7, v13}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setResource(Landroid/graphics/Bitmap;)V

    .line 561
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setSnippet(Ljava/lang/String;)V

    .line 562
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setSnippetTextColor(Ljava/lang/Integer;)V

    .line 563
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setSnippetTextBackgroundColor(Ljava/lang/Integer;)V

    .line 565
    const/16 v25, -0x1

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setArrayId(I)V

    .line 566
    const/16 v25, -0x1

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setRowNumber(I)V

    .line 567
    invoke-virtual {v7, v14}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setOnClickAction(Ljava/lang/String;)V

    .line 568
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->setVisibleAutozoom(Ljava/lang/Boolean;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTMap;->vtMapView:Lnet/veritran/component/view/VTMapView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v7}, Lnet/veritran/component/view/VTMapView;->addMarkerToMap(Lnet/veritran/vtuserapplication/api/map/VTMarker;)V

    goto/16 :goto_0

    .line 574
    .end local v6    # "eval":Ljava/lang/String;
    .end local v7    # "expandedMarker":Lnet/veritran/vtuserapplication/api/map/VTMarker;
    .end local v8    # "imageSrc":Ljava/lang/String;
    .end local v9    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;
    .end local v10    # "itemType":Ljava/lang/String;
    .end local v11    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v13    # "markerIcon":Landroid/graphics/Bitmap;
    .end local v14    # "onClick":Ljava/lang/String;
    .end local v15    # "position":Ljava/lang/String;
    .end local v17    # "shouldAdd":Z
    .end local v18    # "snippet":Ljava/lang/String;
    .end local v19    # "snippetTextBackgroundColor":Ljava/lang/Integer;
    .end local v20    # "snippetTextColor":Ljava/lang/Integer;
    .end local v21    # "title":Ljava/lang/String;
    .end local v22    # "visibleAutozoom":Ljava/lang/Boolean;
    .end local v23    # "visibleAutozoomStr":Ljava/lang/String;
    :cond_b
    return-void
.end method

.method private loadRoutes()V
    .locals 29

    .prologue
    .line 281
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getResourcesLoader()Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;

    move-result-object v24

    const-string v25, ""

    const-string v26, "appMapGettingRoute"

    invoke-interface/range {v24 .. v26}, Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;->getLanguageResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 283
    .local v19, "msgGettingRoute":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTMap;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v15

    check-cast v15, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;

    .line 284
    .local v15, "mapConfiguration":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;
    invoke-virtual {v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;->getRouteElements()Ljava/util/Vector;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_0
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;

    .line 286
    .local v11, "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;
    const-string v24, "type"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 287
    .local v12, "itemType":Ljava/lang/String;
    if-eqz v12, :cond_5

    const-string v24, "V"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 289
    const-string v24, "array"

    .line 290
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 289
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 292
    .local v5, "associatedArray":I
    new-instance v4, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-direct {v4, v5}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;-><init>(I)V

    .line 293
    .local v4, "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->reset()V

    .line 294
    :cond_1
    :goto_1
    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 296
    const-string v24, "filter"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 298
    .local v7, "eval":Ljava/lang/String;
    if-eqz v7, :cond_2

    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 300
    invoke-static {v7, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v7

    .line 301
    invoke-static {v7}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 309
    :cond_2
    const-string v24, "origin"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v20

    .line 310
    .local v20, "origin":Ljava/lang/String;
    const-string v24, "destination"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    .line 311
    .local v6, "destination":Ljava/lang/String;
    const-string v24, "sensor"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v22

    .line 312
    .local v22, "sensor":Ljava/lang/String;
    const-string v24, "mode"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v18

    .line 314
    .local v18, "mode":Ljava/lang/String;
    const-string v24, "imagesrcorigin"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    .line 315
    .local v10, "imageSrcOrigin":Ljava/lang/String;
    const-string v24, "imagesrcdestination"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v9

    .line 320
    .local v9, "imageSrcDestination":Ljava/lang/String;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v24

    sget v26, Lnet/veritran/component/VTMap;->iconMarkerWidth:I

    sget v27, Lnet/veritran/component/VTMap;->iconMarkerHeight:I

    const/16 v28, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v10, v1, v2, v3}, Lnet/veritran/utils/ImageHandler;->getBitmapForExactSize(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 322
    .local v17, "markerIconOrigin":Landroid/graphics/Bitmap;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v24

    sget v26, Lnet/veritran/component/VTMap;->iconMarkerWidth:I

    sget v27, Lnet/veritran/component/VTMap;->iconMarkerHeight:I

    const/16 v28, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v9, v1, v2, v3}, Lnet/veritran/utils/ImageHandler;->getBitmapForExactSize(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 325
    .local v16, "markerIconDestination":Landroid/graphics/Bitmap;
    const-string v24, "color"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lnet/veritran/VTCommonActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 326
    .local v21, "routeColor":Ljava/lang/Integer;
    const-string v24, "VTMap"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "route color= "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "color"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " routeColor= "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    if-nez v21, :cond_3

    .line 328
    const v24, -0xffff01

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 331
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lnet/veritran/component/VTMap;->getLatLngFromString(Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v14

    .line 332
    .local v14, "latLngOrigin":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lnet/veritran/component/VTMap;->getLatLngFromString(Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v13

    .line 334
    .local v13, "latLngDestination":Lcom/google/android/gms/maps/model/LatLng;
    if-eqz v14, :cond_1

    if-eqz v13, :cond_1

    .line 336
    new-instance v8, Lnet/veritran/vtuserapplication/api/map/VTRoute;

    invoke-direct {v8}, Lnet/veritran/vtuserapplication/api/map/VTRoute;-><init>()V

    .line 338
    .local v8, "expandedRoute":Lnet/veritran/vtuserapplication/api/map/VTRoute;
    invoke-virtual {v8, v14}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->setOrigin(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 339
    invoke-virtual {v8, v13}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->setDestination(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 341
    if-eqz v22, :cond_4

    const-string v24, "true"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    const/16 v24, 0x1

    :goto_2
    move/from16 v0, v24

    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->setSensor(Z)V

    .line 342
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->setMode(Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->setRouteColor(Ljava/lang/Integer;)V

    .line 345
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->setImageOrigin(Landroid/graphics/Bitmap;)V

    .line 346
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->setImageDestination(Landroid/graphics/Bitmap;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTMap;->vtMapView:Lnet/veritran/component/view/VTMapView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v0, v8, v1}, Lnet/veritran/component/view/VTMapView;->drawRouteOnMap(Lnet/veritran/vtuserapplication/api/map/VTRoute;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 341
    :cond_4
    const/16 v24, 0x0

    goto :goto_2

    .line 353
    .end local v4    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v5    # "associatedArray":I
    .end local v6    # "destination":Ljava/lang/String;
    .end local v7    # "eval":Ljava/lang/String;
    .end local v8    # "expandedRoute":Lnet/veritran/vtuserapplication/api/map/VTRoute;
    .end local v9    # "imageSrcDestination":Ljava/lang/String;
    .end local v10    # "imageSrcOrigin":Ljava/lang/String;
    .end local v13    # "latLngDestination":Lcom/google/android/gms/maps/model/LatLng;
    .end local v14    # "latLngOrigin":Lcom/google/android/gms/maps/model/LatLng;
    .end local v16    # "markerIconDestination":Landroid/graphics/Bitmap;
    .end local v17    # "markerIconOrigin":Landroid/graphics/Bitmap;
    .end local v18    # "mode":Ljava/lang/String;
    .end local v20    # "origin":Ljava/lang/String;
    .end local v21    # "routeColor":Ljava/lang/Integer;
    .end local v22    # "sensor":Ljava/lang/String;
    :cond_5
    const/16 v23, 0x1

    .line 355
    .local v23, "shouldAdd":Z
    const-string v24, "filter"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 357
    .restart local v7    # "eval":Ljava/lang/String;
    if-eqz v7, :cond_6

    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 359
    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-static {v7, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v7

    .line 360
    invoke-static {v7}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 362
    const/16 v23, 0x0

    .line 366
    :cond_6
    if-eqz v23, :cond_0

    .line 367
    const-string v24, "origin"

    .line 368
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x0

    .line 367
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v20

    .line 369
    .restart local v20    # "origin":Ljava/lang/String;
    const-string v24, "destination"

    .line 370
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x0

    .line 369
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    .line 371
    .restart local v6    # "destination":Ljava/lang/String;
    const-string v24, "sensor"

    .line 372
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x0

    .line 371
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v22

    .line 373
    .restart local v22    # "sensor":Ljava/lang/String;
    const-string v24, "mode"

    .line 374
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x0

    .line 373
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v18

    .line 376
    .restart local v18    # "mode":Ljava/lang/String;
    const-string v24, "imagesrcorigin"

    .line 377
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x0

    .line 376
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    .line 378
    .restart local v10    # "imageSrcOrigin":Ljava/lang/String;
    const-string v24, "imagesrcdestination"

    .line 379
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x0

    .line 378
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v9

    .line 381
    .restart local v9    # "imageSrcDestination":Ljava/lang/String;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v24

    sget v26, Lnet/veritran/component/VTMap;->iconMarkerWidth:I

    sget v27, Lnet/veritran/component/VTMap;->iconMarkerHeight:I

    const/16 v28, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v10, v1, v2, v3}, Lnet/veritran/utils/ImageHandler;->getBitmapForExactSize(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 383
    .restart local v17    # "markerIconOrigin":Landroid/graphics/Bitmap;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v24

    sget v26, Lnet/veritran/component/VTMap;->iconMarkerWidth:I

    sget v27, Lnet/veritran/component/VTMap;->iconMarkerHeight:I

    const/16 v28, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v9, v1, v2, v3}, Lnet/veritran/utils/ImageHandler;->getBitmapForExactSize(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 386
    .restart local v16    # "markerIconDestination":Landroid/graphics/Bitmap;
    const-string v24, "color"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lnet/veritran/VTCommonActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 387
    .restart local v21    # "routeColor":Ljava/lang/Integer;
    const-string v24, "VTMap"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "route color= "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "color"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " routeColor= "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    if-nez v21, :cond_7

    .line 389
    const v24, -0xffff01

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 392
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lnet/veritran/component/VTMap;->getLatLngFromString(Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v14

    .line 393
    .restart local v14    # "latLngOrigin":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lnet/veritran/component/VTMap;->getLatLngFromString(Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v13

    .line 395
    .restart local v13    # "latLngDestination":Lcom/google/android/gms/maps/model/LatLng;
    if-eqz v14, :cond_0

    if-eqz v13, :cond_0

    .line 396
    new-instance v8, Lnet/veritran/vtuserapplication/api/map/VTRoute;

    invoke-direct {v8}, Lnet/veritran/vtuserapplication/api/map/VTRoute;-><init>()V

    .line 398
    .restart local v8    # "expandedRoute":Lnet/veritran/vtuserapplication/api/map/VTRoute;
    invoke-virtual {v8, v14}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->setOrigin(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 399
    invoke-virtual {v8, v13}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->setDestination(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 401
    if-eqz v22, :cond_8

    const-string v24, "true"

    .line 402
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8

    const/16 v24, 0x1

    .line 401
    :goto_3
    move/from16 v0, v24

    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->setSensor(Z)V

    .line 403
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->setMode(Ljava/lang/String;)V

    .line 404
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->setRouteColor(Ljava/lang/Integer;)V

    .line 406
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->setImageOrigin(Landroid/graphics/Bitmap;)V

    .line 407
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/api/map/VTRoute;->setImageDestination(Landroid/graphics/Bitmap;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTMap;->vtMapView:Lnet/veritran/component/view/VTMapView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v0, v8, v1}, Lnet/veritran/component/view/VTMapView;->drawRouteOnMap(Lnet/veritran/vtuserapplication/api/map/VTRoute;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 402
    :cond_8
    const/16 v24, 0x0

    goto :goto_3

    .line 415
    .end local v6    # "destination":Ljava/lang/String;
    .end local v7    # "eval":Ljava/lang/String;
    .end local v8    # "expandedRoute":Lnet/veritran/vtuserapplication/api/map/VTRoute;
    .end local v9    # "imageSrcDestination":Ljava/lang/String;
    .end local v10    # "imageSrcOrigin":Ljava/lang/String;
    .end local v11    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;
    .end local v12    # "itemType":Ljava/lang/String;
    .end local v13    # "latLngDestination":Lcom/google/android/gms/maps/model/LatLng;
    .end local v14    # "latLngOrigin":Lcom/google/android/gms/maps/model/LatLng;
    .end local v16    # "markerIconDestination":Landroid/graphics/Bitmap;
    .end local v17    # "markerIconOrigin":Landroid/graphics/Bitmap;
    .end local v18    # "mode":Ljava/lang/String;
    .end local v20    # "origin":Ljava/lang/String;
    .end local v21    # "routeColor":Ljava/lang/Integer;
    .end local v22    # "sensor":Ljava/lang/String;
    .end local v23    # "shouldAdd":Z
    :cond_9
    return-void
.end method

.method private reloadMarkersAndRoutes()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lnet/veritran/component/VTMap;->vtMapView:Lnet/veritran/component/view/VTMapView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTMapView;->clearMarkersAndRoutes()V

    .line 578
    invoke-direct {p0}, Lnet/veritran/component/VTMap;->loadMarkers()V

    .line 579
    invoke-direct {p0}, Lnet/veritran/component/VTMap;->loadRoutes()V

    .line 580
    invoke-direct {p0}, Lnet/veritran/component/VTMap;->loadCenterMarker()V

    .line 581
    return-void
.end method


# virtual methods
.method public componentWillFinish()V
    .locals 1

    .prologue
    .line 615
    invoke-super {p0}, Lnet/veritran/component/VTUIComponent;->componentWillFinish()V

    .line 617
    iget-object v0, p0, Lnet/veritran/component/VTMap;->vtMapView:Lnet/veritran/component/view/VTMapView;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lnet/veritran/component/VTMap;->vtMapView:Lnet/veritran/component/view/VTMapView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTMapView;->freeResources()V

    .line 620
    :cond_0
    return-void
.end method

.method public executeEvent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTMap;->checkEventType(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lnet/veritran/component/VTMap;->isRefreshEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lnet/veritran/component/VTMap;->vtMapView:Lnet/veritran/component/view/VTMapView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTMapView;->clearMarkersAndRoutes()V

    .line 78
    invoke-direct {p0}, Lnet/veritran/component/VTMap;->initMap()V

    .line 79
    invoke-direct {p0}, Lnet/veritran/component/VTMap;->initMapComponents()V

    .line 80
    invoke-virtual {p0}, Lnet/veritran/component/VTMap;->refreshMeasure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lnet/veritran/component/VTMap;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 82
    invoke-virtual {p0}, Lnet/veritran/component/VTMap;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 92
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 84
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTMap;->isVisibilityEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {p0}, Lnet/veritran/component/VTMap;->updateVisibility()V

    goto :goto_0

    .line 86
    :cond_2
    const-string v0, "RELOAD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    invoke-direct {p0}, Lnet/veritran/component/VTMap;->reloadMarkersAndRoutes()V

    goto :goto_0

    .line 89
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lnet/veritran/component/VTMap;->vtMapView:Lnet/veritran/component/view/VTMapView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTMapView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lnet/veritran/component/VTUIComponent;->init()V

    .line 138
    invoke-direct {p0}, Lnet/veritran/component/VTMap;->initMap()V

    .line 140
    iget-boolean v0, p0, Lnet/veritran/component/VTMap;->useGoogleMap:Z

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lnet/veritran/component/VTMap;->onVTMapCreated()V

    .line 142
    iget-object v0, p0, Lnet/veritran/component/VTMap;->vtMapView:Lnet/veritran/component/view/VTMapView;

    check-cast v0, Lnet/veritran/component/view/VTMapViewOSM;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTMapViewOSM;->autoZoom()V

    .line 145
    :cond_0
    return-void
.end method

.method public onVTMapCreated()V
    .locals 3

    .prologue
    .line 223
    invoke-direct {p0}, Lnet/veritran/component/VTMap;->initMapComponents()V

    .line 225
    iget-object v0, p0, Lnet/veritran/component/VTMap;->vtMapView:Lnet/veritran/component/view/VTMapView;

    new-instance v1, Lnet/veritran/component/view/VTMapPopupAdapter;

    invoke-virtual {p0}, Lnet/veritran/component/VTMap;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/VTCommonActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/veritran/component/view/VTMapPopupAdapter;-><init>(Landroid/view/LayoutInflater;)V

    invoke-interface {v0, v1}, Lnet/veritran/component/view/VTMapView;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 226
    return-void
.end method

.method public onVTMarkerClicked(Lnet/veritran/vtuserapplication/api/map/VTMarker;)V
    .locals 7
    .param p1, "marker"    # Lnet/veritran/vtuserapplication/api/map/VTMarker;

    .prologue
    .line 587
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getArrayId()I

    move-result v0

    .line 588
    .local v0, "arrayId":I
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getRowNumber()I

    move-result v2

    .line 590
    .local v2, "rowNumber":I
    if-ltz v0, :cond_0

    if-ltz v2, :cond_0

    .line 592
    const-string v4, "VTMap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Marker mark array: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rowNum: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lnet/veritran/vtuserapplication/model/Model;->markRow(II)Z

    .line 596
    :cond_0
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/api/map/VTMarker;->getOnClickAction()Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, "onClick":Ljava/lang/String;
    const-string v4, "VTMap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Marker onClick: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    if-eqz v1, :cond_1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 602
    const-string v4, "VTMap"

    const-string v5, "Marker onClick not null nor empty "

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    new-instance v3, Lnet/veritran/component/VTMap$ProcessActionTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lnet/veritran/component/VTMap$ProcessActionTask;-><init>(Lnet/veritran/component/VTMap;Lnet/veritran/component/VTMap$1;)V

    .line 606
    .local v3, "task":Lnet/veritran/component/VTMap$ProcessActionTask;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lnet/veritran/component/VTMap$ProcessActionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 610
    .end local v3    # "task":Lnet/veritran/component/VTMap$ProcessActionTask;
    :cond_1
    return-void
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method
