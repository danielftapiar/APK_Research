.class public Lorg/osmdroid/views/overlay/DirectedLocationOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "DirectedLocationOverlay.java"


# instance fields
.field protected final DIRECTION_ARROW:Landroid/graphics/Bitmap;

.field private final DIRECTION_ARROW_CENTER_X:F

.field private final DIRECTION_ARROW_CENTER_Y:F

.field private final DIRECTION_ARROW_HEIGHT:I

.field private final DIRECTION_ARROW_WIDTH:I

.field private final directionRotater:Landroid/graphics/Matrix;

.field private mAccuracy:I

.field protected final mAccuracyPaint:Landroid/graphics/Paint;

.field protected mBearing:F

.field protected mLocation:Lorg/osmdroid/util/GeoPoint;

.field protected final mPaint:Landroid/graphics/Paint;

.field private mShowAccuracy:Z

.field private final screenCoords:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 57
    new-instance v0, Lorg/osmdroid/DefaultResourceProxyImpl;

    invoke-direct {v0, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;-><init>(Landroid/content/Context;Lorg/osmdroid/ResourceProxy;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/ResourceProxy;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pResourceProxy"    # Lorg/osmdroid/ResourceProxy;

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 62
    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/Overlay;-><init>(Lorg/osmdroid/ResourceProxy;)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    .line 42
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mAccuracy:I

    .line 50
    iput-boolean v3, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mShowAccuracy:Z

    .line 63
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mResourceProxy:Lorg/osmdroid/ResourceProxy;

    sget-object v1, Lorg/osmdroid/ResourceProxy$bitmap;->direction_arrow:Lorg/osmdroid/ResourceProxy$bitmap;

    invoke-interface {v0, v1}, Lorg/osmdroid/ResourceProxy;->getBitmap(Lorg/osmdroid/ResourceProxy$bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    .line 65
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->DIRECTION_ARROW_CENTER_X:F

    .line 66
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->DIRECTION_ARROW_CENTER_Y:F

    .line 67
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->DIRECTION_ARROW_HEIGHT:I

    .line 68
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->DIRECTION_ARROW_WIDTH:I

    .line 70
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "osmv"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    const/4 v1, 0x0

    .line 111
    if-eqz p3, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v8

    .line 117
    .local v8, "pj":Lorg/osmdroid/views/Projection;
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    invoke-virtual {v8, v0, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 119
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mShowAccuracy:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mAccuracy:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_2

    .line 120
    iget v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mAccuracy:I

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Lorg/osmdroid/views/Projection;->metersToEquatorPixels(F)F

    move-result v7

    .line 122
    .local v7, "accuracyRadius":F
    const/high16 v0, 0x41000000    # 8.0f

    cmpl-float v0, v7, v0

    if-lez v0, :cond_2

    .line 124
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 126
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 131
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    const/16 v2, 0x96

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mAccuracyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 143
    .end local v7    # "accuracyRadius":F
    :cond_2
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    iget v2, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mBearing:F

    iget v3, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->DIRECTION_ARROW_CENTER_X:F

    iget v4, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->DIRECTION_ARROW_CENTER_Y:F

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 145
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->DIRECTION_ARROW:Landroid/graphics/Bitmap;

    iget v3, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->DIRECTION_ARROW_WIDTH:I

    iget v4, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->DIRECTION_ARROW_HEIGHT:I

    iget-object v5, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->directionRotater:Landroid/graphics/Matrix;

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 147
    .local v9, "rotatedDirection":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getLocation()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public setAccuracy(I)V
    .locals 0
    .param p1, "pAccuracy"    # I

    .prologue
    .line 97
    iput p1, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mAccuracy:I

    .line 98
    return-void
.end method

.method public setBearing(F)V
    .locals 0
    .param p1, "aHeading"    # F

    .prologue
    .line 101
    iput p1, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mBearing:F

    .line 102
    return-void
.end method

.method public setLocation(Lorg/osmdroid/util/GeoPoint;)V
    .locals 0
    .param p1, "mp"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 84
    iput-object p1, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    .line 85
    return-void
.end method

.method public setShowAccuracy(Z)V
    .locals 0
    .param p1, "pShowIt"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/DirectedLocationOverlay;->mShowAccuracy:Z

    .line 81
    return-void
.end method
