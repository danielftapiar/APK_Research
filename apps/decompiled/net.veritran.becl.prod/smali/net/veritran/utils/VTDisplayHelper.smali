.class public Lnet/veritran/utils/VTDisplayHelper;
.super Ljava/lang/Object;
.source "VTDisplayHelper.java"


# static fields
.field private static final PERC_MAX_DIFF_DPI:F = 0.3f

.field private static final TAG:Ljava/lang/String; = "VTDisplayHelper"

.field public static final VIEW_MAX_AVAILABLE_HEIGHT:I = 0xffffff

.field private static defaultBorderFocusedStrokeWidth:F

.field private static defaultBorderStrokeWidth:F

.field private static defaultRoundedBorderRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 105
    sput v0, Lnet/veritran/utils/VTDisplayHelper;->defaultBorderStrokeWidth:F

    .line 106
    sput v0, Lnet/veritran/utils/VTDisplayHelper;->defaultBorderFocusedStrokeWidth:F

    .line 107
    sput v0, Lnet/veritran/utils/VTDisplayHelper;->defaultRoundedBorderRadius:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawBorderAndBackground(Landroid/graphics/Canvas;IIIILjava/lang/Integer;Ljava/lang/Integer;FF)V
    .locals 10
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "viewWidth"    # I
    .param p4, "viewHeight"    # I
    .param p5, "borderColor"    # Ljava/lang/Integer;
    .param p6, "backgroundColor"    # Ljava/lang/Integer;
    .param p7, "borderRadius"    # F
    .param p8, "strokeWidth"    # F

    .prologue
    .line 157
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, p1

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p8, v6

    add-float/2addr v5, v6

    int-to-float v6, p2

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, p8, v7

    add-float/2addr v6, v7

    add-int v7, p1, p3

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, p8, v8

    sub-float/2addr v7, v8

    add-int v8, p2, p4

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, p8, v9

    sub-float/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 159
    .local v4, "rect":Landroid/graphics/RectF;
    if-eqz p6, :cond_0

    .line 161
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 163
    .local v2, "paintBackground":Landroid/graphics/Paint;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 164
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    const/4 v5, 0x0

    cmpl-float v5, p7, v5

    if-lez v5, :cond_2

    .line 170
    move/from16 v0, p7

    move/from16 v1, p7

    invoke-virtual {p0, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 178
    .end local v2    # "paintBackground":Landroid/graphics/Paint;
    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    .line 180
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 182
    .local v3, "paintBorder":Landroid/graphics/Paint;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 183
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    move/from16 v0, p8

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    const/4 v5, 0x0

    cmpl-float v5, p7, v5

    if-lez v5, :cond_3

    .line 189
    move/from16 v0, p7

    move/from16 v1, p7

    invoke-virtual {p0, v4, v0, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 197
    .end local v3    # "paintBorder":Landroid/graphics/Paint;
    :cond_1
    :goto_1
    return-void

    .line 174
    .restart local v2    # "paintBackground":Landroid/graphics/Paint;
    :cond_2
    invoke-virtual {p0, v4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 193
    .end local v2    # "paintBackground":Landroid/graphics/Paint;
    .restart local v3    # "paintBorder":Landroid/graphics/Paint;
    :cond_3
    invoke-virtual {p0, v4, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public static drawBorderAndBackground(Landroid/graphics/Canvas;IILjava/lang/Integer;Ljava/lang/Integer;FF)V
    .locals 9
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "borderColor"    # Ljava/lang/Integer;
    .param p4, "backgroundColor"    # Ljava/lang/Integer;
    .param p5, "borderRadius"    # F
    .param p6, "strokeWidth"    # F

    .prologue
    const/4 v1, 0x0

    .line 149
    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lnet/veritran/utils/VTDisplayHelper;->drawBorderAndBackground(Landroid/graphics/Canvas;IIIILjava/lang/Integer;Ljava/lang/Integer;FF)V

    .line 150
    return-void
.end method

.method public static getDefaultBorderFocusedStrokeWidth(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    sget v0, Lnet/veritran/utils/VTDisplayHelper;->defaultBorderFocusedStrokeWidth:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 120
    invoke-static {p0}, Lnet/veritran/utils/VTDisplayHelper;->initBorderSizes(Landroid/content/Context;)V

    .line 123
    :cond_0
    sget v0, Lnet/veritran/utils/VTDisplayHelper;->defaultBorderFocusedStrokeWidth:F

    return v0
.end method

.method public static getDefaultBorderStrokeWidth(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    sget v0, Lnet/veritran/utils/VTDisplayHelper;->defaultBorderStrokeWidth:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 130
    invoke-static {p0}, Lnet/veritran/utils/VTDisplayHelper;->initBorderSizes(Landroid/content/Context;)V

    .line 133
    :cond_0
    sget v0, Lnet/veritran/utils/VTDisplayHelper;->defaultBorderStrokeWidth:F

    return v0
.end method

.method public static getDefaultRoundedBorderRadius(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    sget v0, Lnet/veritran/utils/VTDisplayHelper;->defaultRoundedBorderRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 140
    invoke-static {p0}, Lnet/veritran/utils/VTDisplayHelper;->initBorderSizes(Landroid/content/Context;)V

    .line 143
    :cond_0
    sget v0, Lnet/veritran/utils/VTDisplayHelper;->defaultRoundedBorderRadius:F

    return v0
.end method

.method public static getDeviceXDPI(Landroid/content/Context;)F
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 21
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 23
    .local v2, "dpi":F
    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v4, v4

    div-float v4, v2, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 25
    .local v0, "delta":F
    const v3, 0x3e99999a    # 0.3f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 27
    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v3

    .line 30
    :cond_0
    return v2
.end method

.method public static getDeviceYDPI(Landroid/content/Context;)F
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 37
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 39
    .local v2, "dpi":F
    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v4, v4

    div-float v4, v2, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 41
    .local v0, "delta":F
    const v3, 0x3e99999a    # 0.3f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 43
    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v3

    .line 46
    :cond_0
    return v2
.end method

.method public static getHeightMilimiter(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v5, 0x41cb3333    # 25.4f

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 81
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v3, v4

    mul-float/2addr v3, v5

    float-to-int v2, v3

    .line 82
    .local v2, "widthMm":I
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v3, v4

    mul-float/2addr v3, v5

    float-to-int v1, v3

    .line 84
    .local v1, "heightMm":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method public static getHeightPixel(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 102
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public static getHeightPixelsFromMm(Landroid/content/Context;F)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "milimeters"    # F

    .prologue
    .line 58
    invoke-static {p0}, Lnet/veritran/utils/VTDisplayHelper;->getDeviceYDPI(Landroid/content/Context;)F

    move-result v0

    .line 60
    .local v0, "dpi":F
    mul-float v1, p1, v0

    const v2, 0x3d214270    # 0.03937f

    mul-float/2addr v1, v2

    return v1
.end method

.method public static getWidthMilimiter(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v5, 0x41cb3333    # 25.4f

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 69
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v3, v4

    mul-float/2addr v3, v5

    float-to-int v2, v3

    .line 70
    .local v2, "widthMm":I
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v3, v4

    mul-float/2addr v3, v5

    float-to-int v1, v3

    .line 72
    .local v1, "heightMm":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    return v3
.end method

.method public static getWidthPixel(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 93
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public static getWidthPixelsFromMm(Landroid/content/Context;F)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "milimeters"    # F

    .prologue
    .line 51
    invoke-static {p0}, Lnet/veritran/utils/VTDisplayHelper;->getDeviceXDPI(Landroid/content/Context;)F

    move-result v0

    .line 53
    .local v0, "dpi":F
    mul-float v1, p1, v0

    const v2, 0x3d214270    # 0.03937f

    mul-float/2addr v1, v2

    return v1
.end method

.method private static initBorderSizes(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const v0, 0x3c23d70a    # 0.01f

    invoke-static {p0}, Lnet/veritran/utils/VTDisplayHelper;->getHeightPixel(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sput v0, Lnet/veritran/utils/VTDisplayHelper;->defaultRoundedBorderRadius:F

    .line 112
    const v0, 0x3e19999a    # 0.15f

    sget v1, Lnet/veritran/utils/VTDisplayHelper;->defaultRoundedBorderRadius:F

    mul-float/2addr v0, v1

    sput v0, Lnet/veritran/utils/VTDisplayHelper;->defaultBorderStrokeWidth:F

    .line 113
    const/high16 v0, 0x40000000    # 2.0f

    sget v1, Lnet/veritran/utils/VTDisplayHelper;->defaultBorderStrokeWidth:F

    mul-float/2addr v0, v1

    sput v0, Lnet/veritran/utils/VTDisplayHelper;->defaultBorderFocusedStrokeWidth:F

    .line 114
    return-void
.end method
