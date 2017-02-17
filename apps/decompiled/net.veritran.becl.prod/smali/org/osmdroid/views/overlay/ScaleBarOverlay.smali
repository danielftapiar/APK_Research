.class public Lorg/osmdroid/views/overlay/ScaleBarOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "ScaleBarOverlay.java"

# interfaces
.implements Lorg/osmdroid/util/constants/GeoConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/ScaleBarOverlay$1;,
        Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;
    }
.end annotation


# static fields
.field private static final sTextBoundsRect:Landroid/graphics/Rect;


# instance fields
.field private adjustLength:Z

.field private barPaint:Landroid/graphics/Paint;

.field protected final barPath:Landroid/graphics/Path;

.field private bgPaint:Landroid/graphics/Paint;

.field private centred:Z

.field private final context:Landroid/content/Context;

.field private lastLatitude:F

.field private lastZoomLevel:I

.field latitudeBar:Z

.field protected final latitudeBarRect:Landroid/graphics/Rect;

.field longitudeBar:Z

.field protected final longitudeBarRect:Landroid/graphics/Rect;

.field private maxLength:F

.field minZoom:I

.field private final resourceProxy:Lorg/osmdroid/ResourceProxy;

.field public screenHeight:I

.field public screenWidth:I

.field private textPaint:Landroid/graphics/Paint;

.field unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

.field xOffset:I

.field public xdpi:F

.field yOffset:I

.field public ydpi:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    new-instance v0, Lorg/osmdroid/DefaultResourceProxyImpl;

    invoke-direct {v0, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;-><init>(Landroid/content/Context;Lorg/osmdroid/ResourceProxy;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/ResourceProxy;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pResourceProxy"    # Lorg/osmdroid/ResourceProxy;

    .prologue
    const/high16 v14, 0x43840000    # 264.0f

    const-wide/high16 v12, 0x400e000000000000L    # 3.75

    const-wide v10, 0x4000cccccccccccdL    # 2.1

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 110
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lorg/osmdroid/views/overlay/Overlay;-><init>(Lorg/osmdroid/ResourceProxy;)V

    .line 67
    const/16 v6, 0xa

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xOffset:I

    .line 68
    const/16 v6, 0xa

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    .line 69
    iput v7, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->minZoom:I

    .line 71
    sget-object v6, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->metric:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    iput-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    .line 73
    iput-boolean v9, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    .line 74
    iput-boolean v7, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    .line 80
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    .line 81
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    .line 82
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    .line 84
    const/4 v6, -0x1

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 85
    const/4 v6, 0x0

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastLatitude:F

    .line 97
    iput-boolean v7, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    .line 98
    iput-boolean v7, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    .line 111
    move-object/from16 v0, p2

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->resourceProxy:Lorg/osmdroid/ResourceProxy;

    .line 112
    move-object/from16 v0, p1

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 115
    .local v2, "dm":Landroid/util/DisplayMetrics;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    .line 116
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 120
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    .line 123
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    .line 124
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 128
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x41200000    # 10.0f

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 130
    iget v6, v2, Landroid/util/DisplayMetrics;->xdpi:F

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    .line 131
    iget v6, v2, Landroid/util/DisplayMetrics;->ydpi:F

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    .line 133
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    .line 134
    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    .line 137
    const/4 v4, 0x0

    .line 139
    .local v4, "manufacturer":Ljava/lang/String;
    :try_start_0
    const-class v6, Landroid/os/Build;

    const-string v7, "MANUFACTURER"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 140
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :goto_0
    const-string v6, "motorola"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "DROIDX"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 147
    iget-object v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->context:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 149
    .local v5, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getOrientation()I

    move-result v6

    if-lez v6, :cond_1

    .line 150
    iget v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    int-to-double v6, v6

    div-double/2addr v6, v12

    double-to-float v6, v6

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    .line 151
    iget v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    int-to-double v6, v6

    div-double/2addr v6, v10

    double-to-float v6, v6

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    .line 164
    .end local v5    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    :goto_1
    const v6, 0x40228f5c    # 2.54f

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    .line 165
    return-void

    .line 153
    .restart local v5    # "windowManager":Landroid/view/WindowManager;
    :cond_1
    iget v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    int-to-double v6, v6

    div-double/2addr v6, v10

    double-to-float v6, v6

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    .line 154
    iget v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    int-to-double v6, v6

    div-double/2addr v6, v12

    double-to-float v6, v6

    iput v6, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    goto :goto_1

    .line 157
    .end local v5    # "windowManager":Landroid/view/WindowManager;
    :cond_2
    const-string v6, "motorola"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "Droid"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 159
    iput v14, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    .line 160
    iput v14, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    goto :goto_1

    .line 141
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private adjustScaleBarLength(D)D
    .locals 9
    .param p1, "length"    # D

    .prologue
    .line 561
    const-wide/16 v2, 0x0

    .line 562
    .local v2, "pow":J
    const/4 v0, 0x0

    .line 563
    .local v0, "feet":Z
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    sget-object v4, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    if-ne v1, v4, :cond_2

    .line 564
    const-wide v4, 0x40741de69ad42c3dL    # 321.8688

    cmpl-double v1, p1, v4

    if-ltz v1, :cond_1

    .line 565
    const-wide v4, 0x409925604189374cL    # 1609.344

    div-double/2addr p1, v4

    .line 579
    :cond_0
    :goto_0
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v1, p1, v4

    if-ltz v1, :cond_4

    .line 580
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 581
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr p1, v4

    goto :goto_0

    .line 567
    :cond_1
    const-wide v4, 0x400a3f28fd4f4b98L    # 3.2808399

    mul-double/2addr p1, v4

    .line 568
    const/4 v0, 0x1

    goto :goto_0

    .line 570
    :cond_2
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    sget-object v4, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->nautical:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    if-ne v1, v4, :cond_0

    .line 571
    const-wide v4, 0x4077266666666666L    # 370.4

    cmpl-double v1, p1, v4

    if-ltz v1, :cond_3

    .line 572
    const-wide v4, 0x409cf00000000000L    # 1852.0

    div-double/2addr p1, v4

    goto :goto_0

    .line 574
    :cond_3
    const-wide v4, 0x400a3f28fd4f4b98L    # 3.2808399

    mul-double/2addr p1, v4

    .line 575
    const/4 v0, 0x1

    goto :goto_0

    .line 583
    :cond_4
    :goto_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, p1, v4

    if-gez v1, :cond_5

    const-wide/16 v4, 0x0

    cmpl-double v1, p1, v4

    if-lez v1, :cond_5

    .line 584
    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 585
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr p1, v4

    goto :goto_1

    .line 588
    :cond_5
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpg-double v1, p1, v4

    if-gez v1, :cond_7

    .line 589
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 595
    :goto_2
    if-eqz v0, :cond_9

    .line 596
    const-wide v4, 0x400a3f28fd4f4b98L    # 3.2808399

    div-double/2addr p1, v4

    .line 601
    :cond_6
    :goto_3
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    long-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr p1, v4

    .line 602
    return-wide p1

    .line 590
    :cond_7
    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpg-double v1, p1, v4

    if-gez v1, :cond_8

    .line 591
    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    goto :goto_2

    .line 593
    :cond_8
    const-wide/high16 p1, 0x4014000000000000L    # 5.0

    goto :goto_2

    .line 597
    :cond_9
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    sget-object v4, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    if-ne v1, v4, :cond_a

    .line 598
    const-wide v4, 0x409925604189374cL    # 1609.344

    mul-double/2addr p1, v4

    goto :goto_3

    .line 599
    :cond_a
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    sget-object v4, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->nautical:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    if-ne v1, v4, :cond_6

    .line 600
    const-wide v4, 0x409cf00000000000L    # 1852.0

    mul-double/2addr p1, v4

    goto :goto_3
.end method

.method private drawLatitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "projection"    # Lorg/osmdroid/views/Projection;

    .prologue
    .line 418
    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    float-to-double v14, v14

    const-wide v16, 0x400451eb851eb852L    # 2.54

    div-double v14, v14, v16

    double-to-int v12, v14

    .line 421
    .local v12, "xdpcm":I
    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    int-to-float v15, v12

    mul-float/2addr v14, v15

    float-to-int v6, v14

    .line 424
    .local v6, "xLen":I
    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v14, v14, 0x2

    div-int/lit8 v15, v6, 0x2

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    .line 425
    .local v2, "p1":Lorg/osmdroid/api/IGeoPoint;
    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v14, v14, 0x2

    div-int/lit8 v15, v6, 0x2

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v3

    .line 428
    .local v3, "p2":Lorg/osmdroid/api/IGeoPoint;
    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    .end local v2    # "p1":Lorg/osmdroid/api/IGeoPoint;
    invoke-virtual {v2, v3}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v7

    .line 430
    .local v7, "xMeters":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    if-eqz v14, :cond_0

    int-to-double v14, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v8

    .line 432
    .local v8, "xMetersAdjusted":D
    :goto_0
    int-to-double v14, v6

    mul-double/2addr v14, v8

    int-to-double v0, v7

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v5, v14

    .line 435
    .local v5, "xBarLengthPixels":I
    double-to-int v14, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(I)Ljava/lang/String;

    move-result-object v10

    .line 436
    .local v10, "xMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const/4 v15, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    sget-object v17, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v10, v15, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 437
    sget-object v14, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-double v14, v14

    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    div-double v14, v14, v16

    double-to-int v11, v14

    .line 439
    .local v11, "xTextSpacing":I
    div-int/lit8 v14, v5, 0x2

    sget-object v15, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    int-to-float v4, v14

    .line 440
    .local v4, "x":F
    sget-object v14, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v14, v11

    int-to-float v13, v14

    .line 441
    .local v13, "y":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v4, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 442
    return-void

    .line 430
    .end local v4    # "x":F
    .end local v5    # "xBarLengthPixels":I
    .end local v8    # "xMetersAdjusted":D
    .end local v10    # "xMsg":Ljava/lang/String;
    .end local v11    # "xTextSpacing":I
    .end local v13    # "y":F
    :cond_0
    int-to-double v8, v7

    goto :goto_0
.end method

.method private drawLongitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "projection"    # Lorg/osmdroid/views/Projection;

    .prologue
    .line 446
    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    float-to-double v14, v14

    const-wide v16, 0x400451eb851eb852L    # 2.54

    div-double v14, v14, v16

    double-to-int v13, v14

    .line 449
    .local v13, "ydpcm":I
    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    int-to-float v15, v13

    mul-float/2addr v14, v15

    float-to-int v7, v14

    .line 452
    .local v7, "yLen":I
    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v15, v15, 0x2

    div-int/lit8 v16, v7, 0x2

    sub-int v15, v15, v16

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    .line 454
    .local v2, "p1":Lorg/osmdroid/api/IGeoPoint;
    move-object/from16 v0, p0

    iget v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v15, v15, 0x2

    div-int/lit8 v16, v7, 0x2

    add-int v15, v15, v16

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v3

    .line 458
    .local v3, "p2":Lorg/osmdroid/api/IGeoPoint;
    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    .end local v2    # "p1":Lorg/osmdroid/api/IGeoPoint;
    invoke-virtual {v2, v3}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v8

    .line 460
    .local v8, "yMeters":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    if-eqz v14, :cond_0

    int-to-double v14, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v10

    .line 462
    .local v10, "yMetersAdjusted":D
    :goto_0
    int-to-double v14, v7

    mul-double/2addr v14, v10

    int-to-double v0, v8

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-int v6, v14

    .line 465
    .local v6, "yBarLengthPixels":I
    double-to-int v14, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(I)Ljava/lang/String;

    move-result-object v9

    .line 466
    .local v9, "yMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    const/4 v15, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v16

    sget-object v17, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v9, v15, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 467
    sget-object v14, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-double v14, v14

    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    div-double v14, v14, v16

    double-to-int v12, v14

    .line 469
    .local v12, "yTextSpacing":I
    sget-object v14, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v14, v12

    int-to-float v4, v14

    .line 470
    .local v4, "x":F
    div-int/lit8 v14, v6, 0x2

    sget-object v15, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->sTextBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    int-to-float v5, v14

    .line 471
    .local v5, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 472
    const/high16 v14, -0x3d4c0000    # -90.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 473
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v4, v5, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 474
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 475
    return-void

    .line 460
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "yBarLengthPixels":I
    .end local v9    # "yMsg":Ljava/lang/String;
    .end local v10    # "yMetersAdjusted":D
    .end local v12    # "yTextSpacing":I
    :cond_0
    int-to-double v10, v8

    goto :goto_0
.end method

.method private rebuildBarPath(Lorg/osmdroid/views/Projection;)V
    .locals 31
    .param p1, "projection"    # Lorg/osmdroid/views/Projection;

    .prologue
    .line 482
    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xdpi:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x400451eb851eb852L    # 2.54

    div-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v16, v0

    .line 483
    .local v16, "xdpcm":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->ydpi:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x400451eb851eb852L    # 2.54

    div-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    .line 486
    .local v25, "ydpcm":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    move/from16 v26, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v9, v0

    .line 487
    .local v9, "xLen":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    move/from16 v26, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v18, v0

    .line 490
    .local v18, "yLen":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    div-int/lit8 v27, v9, 0x2

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    move/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v6

    .line 491
    .local v6, "p1":Lorg/osmdroid/api/IGeoPoint;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    div-int/lit8 v27, v9, 0x2

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    move/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v7

    .line 494
    .local v7, "p2":Lorg/osmdroid/api/IGeoPoint;
    check-cast v6, Lorg/osmdroid/util/GeoPoint;

    .end local v6    # "p1":Lorg/osmdroid/api/IGeoPoint;
    invoke-virtual {v6, v7}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v10

    .line 496
    .local v10, "xMeters":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    int-to-double v0, v10

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v12

    .line 498
    .local v12, "xMetersAdjusted":D
    :goto_0
    int-to-double v0, v9

    move-wide/from16 v26, v0

    mul-double v26, v26, v12

    int-to-double v0, v10

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v8, v0

    .line 501
    .local v8, "xBarLengthPixels":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    div-int/lit8 v28, v18, 0x2

    sub-int v27, v27, v28

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v6

    .line 502
    .restart local v6    # "p1":Lorg/osmdroid/api/IGeoPoint;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    div-int/lit8 v28, v18, 0x2

    add-int v27, v27, v28

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v7

    .line 505
    check-cast v6, Lorg/osmdroid/util/GeoPoint;

    .end local v6    # "p1":Lorg/osmdroid/api/IGeoPoint;
    invoke-virtual {v6, v7}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v19

    .line 507
    .local v19, "yMeters":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustScaleBarLength(D)D

    move-result-wide v20

    .line 509
    .local v20, "yMetersAdjusted":D
    :goto_1
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v20

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v17, v0

    .line 512
    .local v17, "yBarLengthPixels":I
    double-to-int v0, v12

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(I)Ljava/lang/String;

    move-result-object v11

    .line 513
    .local v11, "xMsg":Ljava/lang/String;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 514
    .local v14, "xTextRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v28

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v11, v1, v2, v14}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 515
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4014000000000000L    # 5.0

    div-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v15, v0

    .line 518
    .local v15, "xTextSpacing":I
    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->scaleBarLengthText(I)Ljava/lang/String;

    move-result-object v22

    .line 519
    .local v22, "yMsg":Ljava/lang/String;
    new-instance v23, Landroid/graphics/Rect;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Rect;-><init>()V

    .line 520
    .local v23, "yTextRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v28

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move/from16 v2, v27

    move/from16 v3, v28

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 521
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4014000000000000L    # 5.0

    div-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v24, v0

    .line 523
    .local v24, "yTextSpacing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Path;->rewind()V

    .line 525
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    int-to-float v0, v8

    move/from16 v27, v0

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v28

    mul-int/lit8 v29, v15, 0x2

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Path;->moveTo(FF)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    int-to-float v0, v8

    move/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Path;->lineTo(FF)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Path;->lineTo(FF)V

    .line 531
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v28

    mul-int/lit8 v29, v15, 0x2

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Path;->lineTo(FF)V

    .line 534
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v29

    mul-int/lit8 v30, v15, 0x2

    add-int v29, v29, v30

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v8, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 537
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 539
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    move/from16 v26, v0

    if-nez v26, :cond_2

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v27

    mul-int/lit8 v28, v24, 0x2

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Path;->moveTo(FF)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Path;->lineTo(FF)V

    .line 544
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Path;->lineTo(FF)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    move-object/from16 v26, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v27

    mul-int/lit8 v28, v24, 0x2

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Path;->lineTo(FF)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v29

    mul-int/lit8 v30, v24, 0x2

    add-int v29, v29, v30

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 549
    :cond_3
    return-void

    .line 496
    .end local v8    # "xBarLengthPixels":I
    .end local v11    # "xMsg":Ljava/lang/String;
    .end local v12    # "xMetersAdjusted":D
    .end local v14    # "xTextRect":Landroid/graphics/Rect;
    .end local v15    # "xTextSpacing":I
    .end local v17    # "yBarLengthPixels":I
    .end local v19    # "yMeters":I
    .end local v20    # "yMetersAdjusted":D
    .end local v22    # "yMsg":Ljava/lang/String;
    .end local v23    # "yTextRect":Landroid/graphics/Rect;
    .end local v24    # "yTextSpacing":I
    :cond_4
    int-to-double v12, v10

    goto/16 :goto_0

    .line 507
    .restart local v8    # "xBarLengthPixels":I
    .restart local v12    # "xMetersAdjusted":D
    .restart local v19    # "yMeters":I
    :cond_5
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public disableScaleBar()V
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setEnabled(Z)V

    .line 410
    return-void
.end method

.method protected draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 348
    if-eqz p3, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getZoomLevel()I

    move-result v11

    .line 359
    .local v11, "zoomLevel":I
    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->minZoom:I

    if-lt v11, v0, :cond_0

    .line 360
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v10

    .line 362
    .local v10, "projection":Lorg/osmdroid/views/Projection;
    if-eqz v10, :cond_0

    .line 366
    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->screenHeight:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v6

    .line 367
    .local v6, "center":Lorg/osmdroid/api/IGeoPoint;
    iget v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    if-ne v11, v0, :cond_2

    invoke-interface {v6}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    double-to-int v0, v0

    iget v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastLatitude:F

    float-to-double v2, v1

    div-double/2addr v2, v4

    double-to-int v1, v2

    if-eq v0, v1, :cond_3

    .line 369
    :cond_2
    iput v11, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 370
    invoke-interface {v6}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastLatitude:F

    .line 371
    invoke-direct {p0, v10}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->rebuildBarPath(Lorg/osmdroid/views/Projection;)V

    .line 374
    :cond_3
    iget v8, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xOffset:I

    .line 375
    .local v8, "offsetX":I
    iget v9, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    .line 376
    .local v9, "offsetY":I
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v0, :cond_4

    .line 377
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v8, v0

    .line 378
    :cond_4
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz v0, :cond_5

    .line 379
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v9, v0

    .line 381
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 382
    invoke-virtual {v10}, Lorg/osmdroid/views/Projection;->getInvertedScaleRotateCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 383
    int-to-float v0, v8

    int-to-float v1, v9

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 385
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_6

    .line 386
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 387
    :cond_6
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_7

    .line 389
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBarRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 390
    .local v7, "offsetTop":I
    :goto_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v7

    int-to-float v2, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBarRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 393
    .end local v7    # "offsetTop":I
    :cond_7
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 394
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    if-eqz v0, :cond_8

    .line 395
    invoke-direct {p0, p1, v10}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->drawLatitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    .line 397
    :cond_8
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    if-eqz v0, :cond_9

    .line 398
    invoke-direct {p0, p1, v10}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->drawLongitudeText(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    .line 400
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 389
    :cond_a
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public drawLatitudeScale(Z)V
    .locals 1
    .param p1, "latitude"    # Z

    .prologue
    .line 236
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->latitudeBar:Z

    .line 237
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 238
    return-void
.end method

.method public drawLongitudeScale(Z)V
    .locals 1
    .param p1, "longitude"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->longitudeBar:Z

    .line 247
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 248
    return-void
.end method

.method public enableScaleBar()V
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setEnabled(Z)V

    .line 414
    return-void
.end method

.method public getBarPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getUnitsOfMeasure()Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    return-object v0
.end method

.method protected scaleBarLengthText(I)Ljava/lang/String;
    .locals 12
    .param p1, "meters"    # I

    .prologue
    const-wide v6, 0x400a3f28fd4f4b98L    # 3.2808399

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 606
    sget-object v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay$1;->$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 609
    const/16 v0, 0x1388

    if-lt p1, v0, :cond_0

    .line 610
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->resourceProxy:Lorg/osmdroid/ResourceProxy;

    sget-object v1, Lorg/osmdroid/ResourceProxy$string;->format_distance_kilometers:Lorg/osmdroid/ResourceProxy$string;

    new-array v2, v4, [Ljava/lang/Object;

    div-int/lit16 v3, p1, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-interface {v0, v1, v2}, Lorg/osmdroid/ResourceProxy;->getString(Lorg/osmdroid/ResourceProxy$string;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 638
    :goto_0
    return-object v0

    .line 612
    :cond_0
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_1

    .line 613
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->resourceProxy:Lorg/osmdroid/ResourceProxy;

    sget-object v1, Lorg/osmdroid/ResourceProxy$string;->format_distance_kilometers:Lorg/osmdroid/ResourceProxy$string;

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v4, p1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    double-to-int v3, v4

    int-to-double v4, v3

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-interface {v0, v1, v2}, Lorg/osmdroid/ResourceProxy;->getString(Lorg/osmdroid/ResourceProxy$string;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 616
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->resourceProxy:Lorg/osmdroid/ResourceProxy;

    sget-object v1, Lorg/osmdroid/ResourceProxy$string;->format_distance_meters:Lorg/osmdroid/ResourceProxy$string;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-interface {v0, v1, v2}, Lorg/osmdroid/ResourceProxy;->getString(Lorg/osmdroid/ResourceProxy$string;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 619
    :pswitch_0
    int-to-double v0, p1

    const-wide v2, 0x40bf6eb851eb851fL    # 8046.72

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    .line 620
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->resourceProxy:Lorg/osmdroid/ResourceProxy;

    sget-object v1, Lorg/osmdroid/ResourceProxy$string;->format_distance_miles:Lorg/osmdroid/ResourceProxy$string;

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v4, p1

    const-wide v6, 0x409925604189374cL    # 1609.344

    div-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-interface {v0, v1, v2}, Lorg/osmdroid/ResourceProxy;->getString(Lorg/osmdroid/ResourceProxy$string;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 623
    :cond_2
    int-to-double v0, p1

    const-wide v2, 0x40741de69ad42c3dL    # 321.8688

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    .line 624
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->resourceProxy:Lorg/osmdroid/ResourceProxy;

    sget-object v1, Lorg/osmdroid/ResourceProxy$string;->format_distance_miles:Lorg/osmdroid/ResourceProxy$string;

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v4, p1

    const-wide v6, 0x40641de69ad42c3dL    # 160.9344

    div-double/2addr v4, v6

    double-to-int v3, v4

    int-to-double v4, v3

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-interface {v0, v1, v2}, Lorg/osmdroid/ResourceProxy;->getString(Lorg/osmdroid/ResourceProxy$string;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 627
    :cond_3
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->resourceProxy:Lorg/osmdroid/ResourceProxy;

    sget-object v1, Lorg/osmdroid/ResourceProxy$string;->format_distance_feet:Lorg/osmdroid/ResourceProxy$string;

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v4, p1

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-interface {v0, v1, v2}, Lorg/osmdroid/ResourceProxy;->getString(Lorg/osmdroid/ResourceProxy$string;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 631
    :pswitch_1
    int-to-double v0, p1

    const-wide v2, 0x40c2160000000000L    # 9260.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_4

    .line 632
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->resourceProxy:Lorg/osmdroid/ResourceProxy;

    sget-object v1, Lorg/osmdroid/ResourceProxy$string;->format_distance_nautical_miles:Lorg/osmdroid/ResourceProxy$string;

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v4, p1

    const-wide v6, 0x409cf00000000000L    # 1852.0

    div-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-interface {v0, v1, v2}, Lorg/osmdroid/ResourceProxy;->getString(Lorg/osmdroid/ResourceProxy$string;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 634
    :cond_4
    int-to-double v0, p1

    const-wide v2, 0x4077266666666666L    # 370.4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_5

    .line 635
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->resourceProxy:Lorg/osmdroid/ResourceProxy;

    sget-object v1, Lorg/osmdroid/ResourceProxy$string;->format_distance_nautical_miles:Lorg/osmdroid/ResourceProxy$string;

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v4, p1

    const-wide v6, 0x4067266666666666L    # 185.2

    div-double/2addr v4, v6

    double-to-int v3, v4

    int-to-double v4, v3

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-interface {v0, v1, v2}, Lorg/osmdroid/ResourceProxy;->getString(Lorg/osmdroid/ResourceProxy$string;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 638
    :cond_5
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->resourceProxy:Lorg/osmdroid/ResourceProxy;

    sget-object v1, Lorg/osmdroid/ResourceProxy$string;->format_distance_feet:Lorg/osmdroid/ResourceProxy$string;

    new-array v2, v4, [Ljava/lang/Object;

    int-to-double v4, p1

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-interface {v0, v1, v2}, Lorg/osmdroid/ResourceProxy;->getString(Lorg/osmdroid/ResourceProxy$string;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 606
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBackgroundPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "pBgPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 315
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->bgPaint:Landroid/graphics/Paint;

    .line 316
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 317
    return-void
.end method

.method public setBarPaint(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "pBarPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pBarPaint argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    .line 282
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 283
    return-void
.end method

.method public setCentred(Z)V
    .locals 1
    .param p1, "centred"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->centred:Z

    .line 259
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 260
    return-void
.end method

.method public setEnableAdjustLength(Z)V
    .locals 1
    .param p1, "adjustLength"    # Z

    .prologue
    .line 325
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->adjustLength:Z

    .line 326
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 327
    return-void
.end method

.method public setLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 202
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 203
    return-void
.end method

.method public setMaxLength(F)V
    .locals 1
    .param p1, "pMaxLengthInCm"    # F

    .prologue
    .line 338
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->maxLength:F

    .line 339
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 340
    return-void
.end method

.method public setMinZoom(I)V
    .locals 0
    .param p1, "zoom"    # I

    .prologue
    .line 178
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->minZoom:I

    .line 179
    return-void
.end method

.method public setScaleBarOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 191
    iput p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->xOffset:I

    .line 192
    iput p2, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->yOffset:I

    .line 193
    return-void
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "pTextPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 301
    if-nez p1, :cond_0

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pTextPaint argument cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    .line 305
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 306
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 212
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 213
    return-void
.end method

.method public setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V
    .locals 1
    .param p1, "unitsOfMeasure"    # Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    .prologue
    .line 219
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->unitsOfMeasure:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    .line 220
    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->lastZoomLevel:I

    .line 221
    return-void
.end method
