.class public Lnet/veritran/component/view/VTProgressCircleView;
.super Landroid/view/View;
.source "VTProgressCircleView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentView;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTProgressCircleView"


# instance fields
.field angle:F

.field private final arcWidth:F

.field private backgroundColor:Ljava/lang/Integer;

.field private backgroundImage:Ljava/lang/String;

.field private circle:Landroid/graphics/RectF;

.field component:Lnet/veritran/component/VTUIComponent;

.field private endColor:Ljava/lang/Integer;

.field fixedBottomMargin:F

.field private fixedHeight:I

.field fixedLeftMargin:F

.field fixedRightMargin:F

.field fixedTopMargin:F

.field private fixedWidth:I

.field private initialized:Z

.field private isClockwise:Z

.field private mTextHeight:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private maxStep:I

.field measuredBottomMargin:I

.field measuredLeftMargin:I

.field measuredRightMargin:I

.field measuredTopMargin:I

.field private minWidthHeight:I

.field private paintArc:Landroid/graphics/Paint;

.field private paintBackground:Landroid/graphics/Paint;

.field percentageBottomMargin:F

.field private percentageHeight:F

.field percentageLeftMargin:F

.field percentageRightMargin:F

.field percentageTopMargin:F

.field private percentageWidth:F

.field private final startAngle:F

.field private startColor:Ljava/lang/Integer;

.field private textBounds:Landroid/graphics/Rect;

.field private textCentered:Ljava/lang/String;

.field private textColor:Ljava/lang/Integer;

.field private final textSize:F


# direct methods
.method public constructor <init>(Lnet/veritran/component/VTUIComponent;)V
    .locals 6
    .param p1, "component"    # Lnet/veritran/component/VTUIComponent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 60
    invoke-virtual {p1}, Lnet/veritran/component/VTUIComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    iput v1, p0, Lnet/veritran/component/view/VTProgressCircleView;->percentageWidth:F

    .line 25
    iput v1, p0, Lnet/veritran/component/view/VTProgressCircleView;->percentageHeight:F

    .line 27
    iput v3, p0, Lnet/veritran/component/view/VTProgressCircleView;->percentageLeftMargin:F

    .line 28
    iput v3, p0, Lnet/veritran/component/view/VTProgressCircleView;->percentageTopMargin:F

    .line 29
    iput v3, p0, Lnet/veritran/component/view/VTProgressCircleView;->percentageRightMargin:F

    .line 30
    iput v3, p0, Lnet/veritran/component/view/VTProgressCircleView;->percentageBottomMargin:F

    .line 32
    iput v2, p0, Lnet/veritran/component/view/VTProgressCircleView;->measuredLeftMargin:I

    .line 33
    iput v2, p0, Lnet/veritran/component/view/VTProgressCircleView;->measuredRightMargin:I

    .line 34
    iput v2, p0, Lnet/veritran/component/view/VTProgressCircleView;->measuredTopMargin:I

    .line 35
    iput v2, p0, Lnet/veritran/component/view/VTProgressCircleView;->measuredBottomMargin:I

    .line 37
    iput v1, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedLeftMargin:F

    .line 38
    iput v1, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedRightMargin:F

    .line 39
    iput v1, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedTopMargin:F

    .line 40
    iput v1, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedBottomMargin:F

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedWidth:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedHeight:I

    .line 50
    iput-boolean v4, p0, Lnet/veritran/component/view/VTProgressCircleView;->isClockwise:Z

    .line 52
    iput-object v5, p0, Lnet/veritran/component/view/VTProgressCircleView;->startColor:Ljava/lang/Integer;

    .line 53
    iput-object v5, p0, Lnet/veritran/component/view/VTProgressCircleView;->endColor:Ljava/lang/Integer;

    .line 54
    iput-object v5, p0, Lnet/veritran/component/view/VTProgressCircleView;->textColor:Ljava/lang/Integer;

    .line 55
    iput-object v5, p0, Lnet/veritran/component/view/VTProgressCircleView;->backgroundColor:Ljava/lang/Integer;

    .line 57
    iput v4, p0, Lnet/veritran/component/view/VTProgressCircleView;->maxStep:I

    .line 237
    iput-boolean v2, p0, Lnet/veritran/component/view/VTProgressCircleView;->initialized:Z

    .line 254
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->mTextPaint:Landroid/graphics/Paint;

    .line 255
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->textBounds:Landroid/graphics/Rect;

    .line 257
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->paintArc:Landroid/graphics/Paint;

    .line 258
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->paintBackground:Landroid/graphics/Paint;

    .line 262
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->textSize:F

    .line 263
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->arcWidth:F

    .line 264
    const/high16 v0, 0x43870000    # 270.0f

    iput v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->startAngle:F

    .line 266
    iput v1, p0, Lnet/veritran/component/view/VTProgressCircleView;->mTextHeight:F

    .line 63
    iput-object p1, p0, Lnet/veritran/component/view/VTProgressCircleView;->component:Lnet/veritran/component/VTUIComponent;

    .line 64
    return-void
.end method


# virtual methods
.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->percentageHeight:F

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->measuredTopMargin:I

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->percentageWidth:F

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 222
    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->percentageLeftMargin:F

    .line 223
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->measuredLeftMargin:I

    .line 224
    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->percentageRightMargin:F

    .line 225
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->measuredRightMargin:I

    .line 226
    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->percentageTopMargin:F

    .line 227
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->measuredTopMargin:I

    .line 228
    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->percentageBottomMargin:F

    .line 229
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->measuredBottomMargin:I

    .line 230
    return-void

    .line 223
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 225
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 227
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 229
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 271
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 273
    iget-boolean v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->initialized:Z

    if-nez v0, :cond_2

    .line 275
    invoke-virtual {p0}, Lnet/veritran/component/view/VTProgressCircleView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lnet/veritran/component/view/VTProgressCircleView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->minWidthHeight:I

    .line 276
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->paintArc:Landroid/graphics/Paint;

    const v1, 0x3e19999a    # 0.15f

    iget v2, p0, Lnet/veritran/component/view/VTProgressCircleView;->minWidthHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 277
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->paintArc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 279
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->startColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->endColor:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->startColor:Ljava/lang/Integer;

    iget-object v1, p0, Lnet/veritran/component/view/VTProgressCircleView;->endColor:Ljava/lang/Integer;

    if-ne v0, v1, :cond_8

    .line 281
    :cond_0
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->startColor:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 283
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->paintArc:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/veritran/component/view/VTProgressCircleView;->startColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    :goto_0
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->backgroundColor:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->paintBackground:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/veritran/component/view/VTProgressCircleView;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 314
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->paintBackground:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 317
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    const v1, 0x3e99999a    # 0.3f

    iget v2, p0, Lnet/veritran/component/view/VTProgressCircleView;->minWidthHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    const v2, 0x3e99999a    # 0.3f

    iget v3, p0, Lnet/veritran/component/view/VTProgressCircleView;->minWidthHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v2, v3

    iget v3, p0, Lnet/veritran/component/view/VTProgressCircleView;->minWidthHeight:I

    int-to-float v3, v3

    const v4, 0x3e99999a    # 0.3f

    iget v5, p0, Lnet/veritran/component/view/VTProgressCircleView;->minWidthHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lnet/veritran/component/view/VTProgressCircleView;->minWidthHeight:I

    int-to-float v4, v4

    const v5, 0x3e99999a    # 0.3f

    iget v12, p0, Lnet/veritran/component/view/VTProgressCircleView;->minWidthHeight:I

    int-to-float v12, v12

    mul-float/2addr v5, v12

    const/high16 v12, 0x3e800000    # 0.25f

    mul-float/2addr v5, v12

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->circle:Landroid/graphics/RectF;

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->initialized:Z

    .line 322
    :cond_2
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->backgroundColor:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->circle:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lnet/veritran/component/view/VTProgressCircleView;->circle:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lnet/veritran/component/view/VTProgressCircleView;->circle:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lnet/veritran/component/view/VTProgressCircleView;->paintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 327
    :cond_3
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->textCentered:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->textCentered:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 332
    const v11, -0x777778

    .line 334
    .local v11, "textColorResolved":I
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->textColor:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 336
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->textColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 339
    :cond_4
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 340
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/veritran/component/view/VTProgressCircleView;->minWidthHeight:I

    int-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 342
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/veritran/component/view/VTProgressCircleView;->textCentered:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/veritran/component/view/VTProgressCircleView;->textCentered:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lnet/veritran/component/view/VTProgressCircleView;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 343
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/veritran/component/view/VTProgressCircleView;->textCentered:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    .line 345
    .local v9, "mTextWidth":F
    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->mTextHeight:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 348
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->mTextHeight:F

    .line 351
    :cond_5
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->textCentered:Ljava/lang/String;

    iget v1, p0, Lnet/veritran/component/view/VTProgressCircleView;->minWidthHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v9, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lnet/veritran/component/view/VTProgressCircleView;->minWidthHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lnet/veritran/component/view/VTProgressCircleView;->mTextHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lnet/veritran/component/view/VTProgressCircleView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 360
    .end local v9    # "mTextWidth":F
    .end local v11    # "textColorResolved":I
    :cond_6
    iget-object v1, p0, Lnet/veritran/component/view/VTProgressCircleView;->circle:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    iget v3, p0, Lnet/veritran/component/view/VTProgressCircleView;->angle:F

    const/4 v4, 0x0

    iget-object v5, p0, Lnet/veritran/component/view/VTProgressCircleView;->paintArc:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 361
    return-void

    .line 288
    :cond_7
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->paintArc:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 293
    :cond_8
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->startColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 294
    .local v10, "startColorGradient":I
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->endColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 296
    .local v6, "endColorGradient":I
    iget-boolean v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->isClockwise:Z

    if-nez v0, :cond_9

    .line 298
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->startColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 299
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->endColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 302
    :cond_9
    new-instance v7, Landroid/graphics/SweepGradient;

    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->minWidthHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iget v1, p0, Lnet/veritran/component/view/VTProgressCircleView;->minWidthHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-direct {v7, v0, v1, v10, v6}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    .line 304
    .local v7, "gradient":Landroid/graphics/SweepGradient;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 305
    .local v8, "gradientMatrix":Landroid/graphics/Matrix;
    const/high16 v0, 0x43870000    # 270.0f

    iget v1, p0, Lnet/veritran/component/view/VTProgressCircleView;->minWidthHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, p0, Lnet/veritran/component/view/VTProgressCircleView;->minWidthHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 306
    invoke-virtual {v7, v8}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 308
    iget-object v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->paintArc:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 169
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 121
    invoke-virtual {p0}, Lnet/veritran/component/view/VTProgressCircleView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    .line 122
    invoke-super {p0, v10, v10}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 164
    :goto_0
    return-void

    .line 126
    :cond_0
    const-string v8, "VTProgressCircleView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure [VTProgressCircleView] -> widthMeasureSpec: "

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

    .line 127
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 128
    .local v3, "mw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 129
    .local v0, "mh":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 130
    .local v7, "sw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 131
    .local v6, "sh":I
    invoke-static {v3}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "modeWidth":Ljava/lang/String;
    invoke-static {v0}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "modeHeight":Ljava/lang/String;
    if-nez v0, :cond_1

    if-nez v6, :cond_1

    .line 134
    const/high16 v0, -0x80000000

    .line 135
    const v6, 0xffffff

    .line 136
    const-string v8, "VTProgressCircleView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTProgressCircleView;->getTag()Ljava/lang/Object;

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

    .line 138
    :cond_1
    const-string v8, "VTProgressCircleView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure [VTProgressCircleView] -> width("

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

    .line 139
    invoke-virtual {p0}, Lnet/veritran/component/view/VTProgressCircleView;->measureAbsoluteMargins()V

    .line 141
    const-string v8, "VTProgressCircleView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure [VTProgressCircleView] -> getMeasuredWidth("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTProgressCircleView;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ");getMeasuredHeight("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTProgressCircleView;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget v8, p0, Lnet/veritran/component/view/VTProgressCircleView;->measuredLeftMargin:I

    sub-int v8, v7, v8

    iget v9, p0, Lnet/veritran/component/view/VTProgressCircleView;->measuredRightMargin:I

    sub-int v5, v8, v9

    .line 144
    .local v5, "pixelsWidth":I
    iget v8, p0, Lnet/veritran/component/view/VTProgressCircleView;->measuredTopMargin:I

    sub-int v8, v6, v8

    iget v9, p0, Lnet/veritran/component/view/VTProgressCircleView;->measuredBottomMargin:I

    sub-int v4, v8, v9

    .line 146
    .local v4, "pixelsHeight":I
    iget v8, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedWidth:I

    if-eq v8, v11, :cond_2

    .line 147
    iget v5, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedWidth:I

    .line 149
    :cond_2
    iget v8, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedHeight:I

    if-eq v8, v11, :cond_3

    .line 150
    iget v4, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedHeight:I

    .line 153
    :cond_3
    if-le v5, v4, :cond_5

    .line 154
    move v5, v4

    .line 159
    :cond_4
    :goto_1
    const-string v8, "VTProgressCircleView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure  [VTProgressCircleView] -> pixelsWidth="

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

    .line 160
    invoke-super {p0, v5, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 155
    :cond_5
    if-le v4, v5, :cond_4

    .line 156
    move v4, v5

    goto :goto_1
.end method

.method public setColors(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "startColor"    # Ljava/lang/Integer;
    .param p2, "endColor"    # Ljava/lang/Integer;
    .param p3, "textColor"    # Ljava/lang/Integer;
    .param p4, "backgroundColor"    # Ljava/lang/Integer;

    .prologue
    .line 374
    iput-object p1, p0, Lnet/veritran/component/view/VTProgressCircleView;->startColor:Ljava/lang/Integer;

    .line 375
    iput-object p2, p0, Lnet/veritran/component/view/VTProgressCircleView;->endColor:Ljava/lang/Integer;

    .line 376
    iput-object p3, p0, Lnet/veritran/component/view/VTProgressCircleView;->textColor:Ljava/lang/Integer;

    .line 377
    iput-object p4, p0, Lnet/veritran/component/view/VTProgressCircleView;->backgroundColor:Ljava/lang/Integer;

    .line 378
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 195
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTProgressCircleView;->setBackgroundColor(I)V

    .line 196
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lnet/veritran/component/view/VTProgressCircleView;->backgroundImage:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 202
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 208
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 117
    iput p1, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedHeight:I

    .line 118
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 68
    const-string v0, "VTProgressCircleView"

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

    .line 69
    iput p1, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedLeftMargin:F

    .line 70
    iput p2, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedTopMargin:F

    .line 71
    iput p3, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedRightMargin:F

    .line 72
    iput p4, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedBottomMargin:F

    .line 73
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 103
    iput p1, p0, Lnet/veritran/component/view/VTProgressCircleView;->fixedWidth:I

    .line 104
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 217
    iput p1, p0, Lnet/veritran/component/view/VTProgressCircleView;->percentageHeight:F

    .line 218
    return-void
.end method

.method public setIsClockwise(Z)V
    .locals 0
    .param p1, "isClockwise"    # Z

    .prologue
    .line 369
    iput-boolean p1, p0, Lnet/veritran/component/view/VTProgressCircleView;->isClockwise:Z

    .line 370
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "steps"    # I

    .prologue
    .line 364
    iput p1, p0, Lnet/veritran/component/view/VTProgressCircleView;->maxStep:I

    .line 365
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 86
    iput p1, p0, Lnet/veritran/component/view/VTProgressCircleView;->percentageLeftMargin:F

    .line 87
    iput p2, p0, Lnet/veritran/component/view/VTProgressCircleView;->percentageTopMargin:F

    .line 88
    iput p3, p0, Lnet/veritran/component/view/VTProgressCircleView;->percentageRightMargin:F

    .line 89
    iput p4, p0, Lnet/veritran/component/view/VTProgressCircleView;->percentageBottomMargin:F

    .line 90
    return-void
.end method

.method public setProgress(ILjava/lang/String;)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "textCentered"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p2, p0, Lnet/veritran/component/view/VTProgressCircleView;->textCentered:Ljava/lang/String;

    .line 244
    int-to-float v0, p1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lnet/veritran/component/view/VTProgressCircleView;->maxStep:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->angle:F

    .line 246
    iget-boolean v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->isClockwise:Z

    if-nez v0, :cond_0

    .line 248
    iget v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->angle:F

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lnet/veritran/component/view/VTProgressCircleView;->angle:F

    .line 251
    :cond_0
    invoke-virtual {p0}, Lnet/veritran/component/view/VTProgressCircleView;->postInvalidate()V

    .line 252
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 212
    iput p1, p0, Lnet/veritran/component/view/VTProgressCircleView;->percentageWidth:F

    .line 213
    return-void
.end method
