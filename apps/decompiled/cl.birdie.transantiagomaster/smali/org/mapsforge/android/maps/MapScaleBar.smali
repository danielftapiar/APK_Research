.class public final Lorg/mapsforge/android/maps/MapScaleBar;
.super Ljava/lang/Object;
.source "MapScaleBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/android/maps/MapScaleBar$TextField;
    }
.end annotation


# static fields
.field private static final SCALE_BAR:Landroid/graphics/Paint;

.field private static final SCALE_BAR_STROKE:Landroid/graphics/Paint;

.field private static final SCALE_BAR_VALUES_IMPERIAL:[I

.field private static final SCALE_BAR_VALUES_METRIC:[I

.field private static final SCALE_TEXT:Landroid/graphics/Paint;

.field private static final SCALE_TEXT_STROKE:Landroid/graphics/Paint;


# instance fields
.field private imperialUnits:Z

.field private mapPosition:Lorg/mapsforge/core/MapPosition;

.field private final mapScaleBitmap:Landroid/graphics/Bitmap;

.field private final mapScaleCanvas:Landroid/graphics/Canvas;

.field private final mapView:Lorg/mapsforge/android/maps/MapView;

.field private redrawNeeded:Z

.field private showMapScaleBar:Z

.field private final textFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/mapsforge/android/maps/MapScaleBar$TextField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_BAR:Landroid/graphics/Paint;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_BAR_STROKE:Landroid/graphics/Paint;

    .line 68
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_BAR_VALUES_IMPERIAL:[I

    .line 70
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_BAR_VALUES_METRIC:[I

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_TEXT:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_TEXT_STROKE:Landroid/graphics/Paint;

    return-void

    .line 68
    :array_0
    .array-data 4
        0x192d500
        0xa12200
        0x509100
        0x284880
        0x101d00
        0x80e80
        0x40740
        0x19c80
        0xce40
        0x6720
        0x2940
        0x14a0
        0x7d0
        0x3e8
        0x1f4
        0xc8
        0x64
        0x32
        0x14
        0xa
        0x5
        0x2
        0x1
    .end array-data

    .line 70
    :array_1
    .array-data 4
        0x989680
        0x4c4b40
        0x1e8480
        0xf4240
        0x7a120
        0x30d40
        0x186a0
        0xc350
        0x4e20
        0x2710
        0x1388
        0x7d0
        0x3e8
        0x1f4
        0xc8
        0x64
        0x32
        0x14
        0xa
        0x5
        0x2
        0x1
    .end array-data
.end method

.method constructor <init>(Lorg/mapsforge/android/maps/MapView;)V
    .locals 8
    .param p1, "mapView"    # Lorg/mapsforge/android/maps/MapView;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/high16 v5, -0x1000000

    const/high16 v4, 0x41880000    # 17.0f

    const/high16 v3, 0x40000000    # 2.0f

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/mapsforge/android/maps/MapScaleBar;->mapView:Lorg/mapsforge/android/maps/MapView;

    .line 104
    const/16 v0, 0x96

    const/16 v1, 0x32

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/android/maps/MapScaleBar;->mapScaleBitmap:Landroid/graphics/Bitmap;

    .line 105
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/mapsforge/android/maps/MapScaleBar;->mapScaleBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/MapScaleBar;->mapScaleCanvas:Landroid/graphics/Canvas;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/MapScaleBar;->textFields:Ljava/util/Map;

    .line 107
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapScaleBar;->textFields:Ljava/util/Map;

    sget-object v1, Lorg/mapsforge/android/maps/MapScaleBar$TextField;->FOOT:Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    const-string v2, " ft"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/mapsforge/android/maps/MapScaleBar;->textFields:Ljava/util/Map;

    sget-object v1, Lorg/mapsforge/android/maps/MapScaleBar$TextField;->MILE:Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    const-string v2, " mi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/mapsforge/android/maps/MapScaleBar;->textFields:Ljava/util/Map;

    sget-object v1, Lorg/mapsforge/android/maps/MapScaleBar$TextField;->METER:Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    const-string v2, " m"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/mapsforge/android/maps/MapScaleBar;->textFields:Ljava/util/Map;

    sget-object v1, Lorg/mapsforge/android/maps/MapScaleBar$TextField;->KILOMETER:Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    const-string v2, " km"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_BAR:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_BAR:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v0, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_BAR:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_BAR_STROKE:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_BAR_STROKE:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v0, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_BAR_STROKE:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_TEXT:Landroid/graphics/Paint;

    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object v0, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_TEXT:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_TEXT:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_TEXT_STROKE:Landroid/graphics/Paint;

    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object v0, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_TEXT_STROKE:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_TEXT_STROKE:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_TEXT_STROKE:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_TEXT_STROKE:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 109
    return-void
.end method

.method private drawScaleBar(FLandroid/graphics/Paint;)V
    .locals 9
    .param p1, "scaleBarLength"    # F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v8, 0x42200000    # 40.0f

    const/high16 v2, 0x41c80000    # 25.0f

    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v6, 0x40a00000    # 5.0f

    .line 156
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapScaleBar;->mapScaleCanvas:Landroid/graphics/Canvas;

    const/high16 v1, 0x40e00000    # 7.0f

    const/high16 v3, 0x40400000    # 3.0f

    add-float/2addr v3, p1

    move v4, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 157
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapScaleBar;->mapScaleCanvas:Landroid/graphics/Canvas;

    move v1, v6

    move v2, v7

    move v3, v6

    move v4, v8

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 158
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapScaleBar;->mapScaleCanvas:Landroid/graphics/Canvas;

    add-float v1, p1, v6

    add-float v3, p1, v6

    move v2, v7

    move v4, v8

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 159
    return-void
.end method

.method private drawScaleText(ILjava/lang/String;Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "scaleValue"    # I
    .param p2, "unitSymbol"    # Ljava/lang/String;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 162
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapScaleBar;->mapScaleCanvas:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2, v3, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 163
    return-void
.end method


# virtual methods
.method final destroy()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapScaleBar;->mapScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 235
    return-void
.end method

.method final draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 238
    iget-object v1, p0, Lorg/mapsforge/android/maps/MapScaleBar;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapView;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x32

    add-int/lit8 v0, v1, -0x5

    .line 239
    .local v0, "top":I
    iget-object v1, p0, Lorg/mapsforge/android/maps/MapScaleBar;->mapScaleBitmap:Landroid/graphics/Bitmap;

    const/high16 v2, 0x40a00000    # 5.0f

    int-to-float v3, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 240
    return-void
.end method

.method public final isShowMapScaleBar()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lorg/mapsforge/android/maps/MapScaleBar;->showMapScaleBar:Z

    return v0
.end method

.method final redrawScaleBar()V
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 243
    iget-boolean v8, p0, Lorg/mapsforge/android/maps/MapScaleBar;->redrawNeeded:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lorg/mapsforge/android/maps/MapScaleBar;->mapPosition:Lorg/mapsforge/core/MapPosition;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    if-nez v6, :cond_2

    .line 272
    :goto_1
    return-void

    .line 243
    :cond_1
    iget-object v8, p0, Lorg/mapsforge/android/maps/MapScaleBar;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v8}, Lorg/mapsforge/android/maps/MapView;->getMapPosition()Lorg/mapsforge/android/maps/MapViewPosition;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mapsforge/android/maps/MapViewPosition;->getMapPosition()Lorg/mapsforge/core/MapPosition;

    move-result-object v8

    iget-byte v9, v8, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    iget-object v10, p0, Lorg/mapsforge/android/maps/MapScaleBar;->mapPosition:Lorg/mapsforge/core/MapPosition;

    iget-byte v10, v10, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    if-ne v9, v10, :cond_0

    iget-object v8, v8, Lorg/mapsforge/core/MapPosition;->geoPoint:Lorg/mapsforge/core/GeoPoint;

    invoke-virtual {v8}, Lorg/mapsforge/core/GeoPoint;->getLatitude()D

    move-result-wide v8

    iget-object v10, p0, Lorg/mapsforge/android/maps/MapScaleBar;->mapPosition:Lorg/mapsforge/core/MapPosition;

    iget-object v10, v10, Lorg/mapsforge/core/MapPosition;->geoPoint:Lorg/mapsforge/core/GeoPoint;

    invoke-virtual {v10}, Lorg/mapsforge/core/GeoPoint;->getLatitude()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fc999999999999aL    # 0.2

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_0

    move v6, v7

    goto :goto_0

    .line 247
    :cond_2
    iget-object v6, p0, Lorg/mapsforge/android/maps/MapScaleBar;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v6}, Lorg/mapsforge/android/maps/MapView;->getMapPosition()Lorg/mapsforge/android/maps/MapViewPosition;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mapsforge/android/maps/MapViewPosition;->getMapPosition()Lorg/mapsforge/core/MapPosition;

    move-result-object v6

    iput-object v6, p0, Lorg/mapsforge/android/maps/MapScaleBar;->mapPosition:Lorg/mapsforge/core/MapPosition;

    .line 248
    iget-object v6, p0, Lorg/mapsforge/android/maps/MapScaleBar;->mapPosition:Lorg/mapsforge/core/MapPosition;

    iget-object v6, v6, Lorg/mapsforge/core/MapPosition;->geoPoint:Lorg/mapsforge/core/GeoPoint;

    invoke-virtual {v6}, Lorg/mapsforge/core/GeoPoint;->getLatitude()D

    move-result-wide v8

    iget-object v6, p0, Lorg/mapsforge/android/maps/MapScaleBar;->mapPosition:Lorg/mapsforge/core/MapPosition;

    iget-byte v6, v6, Lorg/mapsforge/core/MapPosition;->zoomLevel:B

    const-wide v10, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide v10, 0x41831bf8457ced91L    # 4.0075016686E7

    mul-double/2addr v8, v10

    const-wide/16 v10, 0x100

    shl-long/2addr v10, v6

    long-to-double v10, v10

    div-double v0, v8, v10

    .line 252
    .local v0, "groundResolution":D
    iget-boolean v6, p0, Lorg/mapsforge/android/maps/MapScaleBar;->imperialUnits:Z

    if-eqz v6, :cond_3

    .line 253
    const-wide v8, 0x3fd381d7dbf487fdL    # 0.3048

    div-double/2addr v0, v8

    .line 254
    sget-object v5, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_BAR_VALUES_IMPERIAL:[I

    .line 259
    .local v5, "scaleBarValues":[I
    :goto_2
    const/4 v4, 0x0

    .line 260
    .local v4, "scaleBarLength":F
    const/4 v3, 0x0

    .line 262
    .local v3, "mapScaleValue":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v6, v5

    if-ge v2, v6, :cond_4

    .line 263
    aget v3, v5, v2

    .line 264
    int-to-float v6, v3

    double-to-float v8, v0

    div-float v4, v6, v8

    .line 265
    const/high16 v6, 0x430c0000    # 140.0f

    cmpg-float v6, v4, v6

    if-ltz v6, :cond_4

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 256
    .end local v2    # "i":I
    .end local v3    # "mapScaleValue":I
    .end local v4    # "scaleBarLength":F
    .end local v5    # "scaleBarValues":[I
    :cond_3
    sget-object v5, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_BAR_VALUES_METRIC:[I

    .restart local v5    # "scaleBarValues":[I
    goto :goto_2

    .line 270
    .restart local v2    # "i":I
    .restart local v3    # "mapScaleValue":I
    .restart local v4    # "scaleBarLength":F
    :cond_4
    iget-object v6, p0, Lorg/mapsforge/android/maps/MapScaleBar;->mapScaleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    sget-object v6, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_BAR_STROKE:Landroid/graphics/Paint;

    invoke-direct {p0, v4, v6}, Lorg/mapsforge/android/maps/MapScaleBar;->drawScaleBar(FLandroid/graphics/Paint;)V

    sget-object v6, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_BAR:Landroid/graphics/Paint;

    invoke-direct {p0, v4, v6}, Lorg/mapsforge/android/maps/MapScaleBar;->drawScaleBar(FLandroid/graphics/Paint;)V

    iget-boolean v6, p0, Lorg/mapsforge/android/maps/MapScaleBar;->imperialUnits:Z

    if-eqz v6, :cond_6

    const/16 v6, 0x14a0

    if-ge v3, v6, :cond_5

    iget-object v6, p0, Lorg/mapsforge/android/maps/MapScaleBar;->textFields:Ljava/util/Map;

    sget-object v8, Lorg/mapsforge/android/maps/MapScaleBar$TextField;->FOOT:Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .end local v3    # "mapScaleValue":I
    :goto_4
    sget-object v8, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_TEXT_STROKE:Landroid/graphics/Paint;

    invoke-direct {p0, v3, v6, v8}, Lorg/mapsforge/android/maps/MapScaleBar;->drawScaleText(ILjava/lang/String;Landroid/graphics/Paint;)V

    sget-object v8, Lorg/mapsforge/android/maps/MapScaleBar;->SCALE_TEXT:Landroid/graphics/Paint;

    invoke-direct {p0, v3, v6, v8}, Lorg/mapsforge/android/maps/MapScaleBar;->drawScaleText(ILjava/lang/String;Landroid/graphics/Paint;)V

    .line 271
    iput-boolean v7, p0, Lorg/mapsforge/android/maps/MapScaleBar;->redrawNeeded:Z

    goto/16 :goto_1

    .line 270
    .restart local v3    # "mapScaleValue":I
    :cond_5
    div-int/lit16 v3, v3, 0x14a0

    .end local v3    # "mapScaleValue":I
    iget-object v6, p0, Lorg/mapsforge/android/maps/MapScaleBar;->textFields:Ljava/util/Map;

    sget-object v8, Lorg/mapsforge/android/maps/MapScaleBar$TextField;->MILE:Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_4

    .restart local v3    # "mapScaleValue":I
    :cond_6
    const/16 v6, 0x3e8

    if-ge v3, v6, :cond_7

    iget-object v6, p0, Lorg/mapsforge/android/maps/MapScaleBar;->textFields:Ljava/util/Map;

    sget-object v8, Lorg/mapsforge/android/maps/MapScaleBar$TextField;->METER:Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_4

    :cond_7
    div-int/lit16 v3, v3, 0x3e8

    .end local v3    # "mapScaleValue":I
    iget-object v6, p0, Lorg/mapsforge/android/maps/MapScaleBar;->textFields:Ljava/util/Map;

    sget-object v8, Lorg/mapsforge/android/maps/MapScaleBar$TextField;->KILOMETER:Lorg/mapsforge/android/maps/MapScaleBar$TextField;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_4
.end method
