.class public Lnet/veritran/component/view/VTAnimatedImageView;
.super Lcom/felipecsl/gifimageview/library/GifImageView;
.source "VTAnimatedImageView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentView;
.implements Lnet/veritran/component/view/VTImageViewInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTImageView"


# instance fields
.field private backgroundColor:I

.field fixedBottomMargin:F

.field private fixedHeight:I

.field fixedLeftMargin:F

.field fixedRightMargin:F

.field fixedTopMargin:F

.field private fixedWidth:I

.field private imageDrawable:Ljava/lang/String;

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

.field rect:Landroid/graphics/Rect;

.field private resourceHeight:I

.field private resourceWidth:I

.field textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lnet/veritran/component/VTUIComponent;)V
    .locals 5
    .param p1, "component"    # Lnet/veritran/component/VTUIComponent;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1}, Lnet/veritran/component/VTUIComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/felipecsl/gifimageview/library/GifImageView;-><init>(Landroid/content/Context;)V

    .line 20
    iput v1, p0, Lnet/veritran/component/view/VTAnimatedImageView;->backgroundColor:I

    .line 21
    iput v2, p0, Lnet/veritran/component/view/VTAnimatedImageView;->percentageWidth:F

    .line 22
    iput v2, p0, Lnet/veritran/component/view/VTAnimatedImageView;->percentageHeight:F

    .line 24
    iput v3, p0, Lnet/veritran/component/view/VTAnimatedImageView;->percentageLeftMargin:F

    .line 25
    iput v3, p0, Lnet/veritran/component/view/VTAnimatedImageView;->percentageTopMargin:F

    .line 26
    iput v3, p0, Lnet/veritran/component/view/VTAnimatedImageView;->percentageRightMargin:F

    .line 27
    iput v3, p0, Lnet/veritran/component/view/VTAnimatedImageView;->percentageBottomMargin:F

    .line 29
    iput v1, p0, Lnet/veritran/component/view/VTAnimatedImageView;->measuredLeftMargin:I

    .line 30
    iput v1, p0, Lnet/veritran/component/view/VTAnimatedImageView;->measuredRightMargin:I

    .line 31
    iput v1, p0, Lnet/veritran/component/view/VTAnimatedImageView;->measuredTopMargin:I

    .line 32
    iput v1, p0, Lnet/veritran/component/view/VTAnimatedImageView;->measuredBottomMargin:I

    .line 34
    iput v2, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedLeftMargin:F

    .line 35
    iput v2, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedRightMargin:F

    .line 36
    iput v2, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedTopMargin:F

    .line 37
    iput v2, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedBottomMargin:F

    .line 39
    iput v4, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedWidth:I

    .line 41
    iput v4, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedHeight:I

    .line 43
    iput v4, p0, Lnet/veritran/component/view/VTAnimatedImageView;->resourceWidth:I

    .line 44
    iput v4, p0, Lnet/veritran/component/view/VTAnimatedImageView;->resourceHeight:I

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->textPaint:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->rect:Landroid/graphics/Rect;

    .line 62
    invoke-virtual {p0, v1, v1, v1, v1}, Lnet/veritran/component/view/VTAnimatedImageView;->setPadding(IIII)V

    .line 69
    iget-object v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 70
    iget-object v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->textPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    return-void
.end method


# virtual methods
.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->percentageHeight:F

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->measuredTopMargin:I

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->percentageWidth:F

    return v0
.end method

.method public ignoreShadow()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/felipecsl/gifimageview/library/GifImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    return-void
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 321
    iget v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->percentageLeftMargin:F

    .line 322
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->measuredLeftMargin:I

    .line 323
    iget v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->percentageRightMargin:F

    .line 324
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->measuredRightMargin:I

    .line 325
    iget v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->percentageTopMargin:F

    .line 326
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->measuredTopMargin:I

    .line 327
    iget v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->percentageBottomMargin:F

    .line 328
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->measuredBottomMargin:I

    .line 329
    return-void

    .line 322
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 324
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 326
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 328
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 249
    const-string v0, "VTImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/view/VTAnimatedImageView;->imageDrawable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] -> getLeft():+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTAnimatedImageView;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getTop():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTAnimatedImageView;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getWidth():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTAnimatedImageView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getHeight():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTAnimatedImageView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 141
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTAnimatedImageView;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_1

    .line 142
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v14, v15}, Lcom/felipecsl/gifimageview/library/GifImageView;->setMeasuredDimension(II)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const-string v14, "VTImageView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onMeasure ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTAnimatedImageView;->imageDrawable:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] -> widthMeasureSpec: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";heightMeasureSpec:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 148
    .local v9, "mw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 149
    .local v6, "mh":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 150
    .local v13, "sw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 151
    .local v12, "sh":I
    invoke-static {v9}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v8

    .line 152
    .local v8, "modeWidth":Ljava/lang/String;
    invoke-static {v6}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, "modeHeight":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTAnimatedImageView;->getGifWidth()I

    move-result v5

    .line 160
    .local v5, "imageWidth":I
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTAnimatedImageView;->getGifHeight()I

    move-result v3

    .line 161
    .local v3, "imageHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTAnimatedImageView;->imageDrawable:Ljava/lang/String;

    if-eqz v14, :cond_3

    if-nez v5, :cond_3

    if-nez v3, :cond_3

    .line 164
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v14

    invoke-virtual {v14}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/veritran/component/view/VTAnimatedImageView;->imageDrawable:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lnet/veritran/utils/ImageHandler;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 166
    .local v2, "image":[B
    if-eqz v2, :cond_2

    .line 168
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/veritran/component/view/VTAnimatedImageView;->setBytes([B)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTAnimatedImageView;->startAnimation()V

    .line 175
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTAnimatedImageView;->getGifWidth()I

    move-result v5

    .line 176
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTAnimatedImageView;->getGifHeight()I

    move-result v3

    .line 179
    .end local v2    # "image":[B
    :cond_3
    const-string v14, "VTImageView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onMeasure ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTAnimatedImageView;->imageDrawable:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] -> imageWidth:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";imageHeight:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    if-eqz v3, :cond_8

    if-eqz v5, :cond_8

    .line 182
    int-to-float v14, v5

    int-to-float v15, v3

    div-float v4, v14, v15

    .line 193
    .local v4, "imageScale":F
    :goto_1
    const-string v14, "VTImageView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onMeasure ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTAnimatedImageView;->imageDrawable:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] -> width("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "):"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";height("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "):"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    if-nez v6, :cond_4

    if-nez v12, :cond_4

    .line 197
    const/high16 v6, -0x80000000

    .line 198
    const v12, 0x7fffffff

    .line 199
    const-string v14, "VTImageView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTAnimatedImageView;->getTag()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " onMeasure REDEF! -> width("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "):"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";height("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "):"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTAnimatedImageView;->measureAbsoluteMargins()V

    .line 206
    const-string v14, "VTImageView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onMeasure  ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTAnimatedImageView;->imageDrawable:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] -> leftMargin:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTAnimatedImageView;->measuredLeftMargin:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";rightMargin:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTAnimatedImageView;->measuredRightMargin:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";topMargin:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTAnimatedImageView;->measuredTopMargin:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";bottomMargin:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTAnimatedImageView;->measuredBottomMargin:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    move v11, v13

    .line 209
    .local v11, "pixelsWidth":I
    move v10, v12

    .line 211
    .local v10, "pixelsHeight":I
    move-object/from16 v0, p0

    iget v14, v0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedWidth:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_5

    .line 212
    move-object/from16 v0, p0

    iget v11, v0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedWidth:I

    .line 214
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedHeight:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_6

    .line 215
    move-object/from16 v0, p0

    iget v10, v0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedHeight:I

    .line 227
    :cond_6
    const-string v14, "VTImageView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onMeasure  ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTAnimatedImageView;->imageDrawable:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] -> pixelsWidth:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";pixelsHeight:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    int-to-float v14, v11

    int-to-float v15, v10

    div-float v1, v14, v15

    .line 229
    .local v1, "areaScale":F
    const-string v14, "VTImageView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onMeasure  ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTAnimatedImageView;->imageDrawable:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] -> imageScale="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";areaScale="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v14, 0x0

    cmpl-float v14, v4, v14

    if-eqz v14, :cond_7

    .line 231
    cmpl-float v14, v1, v4

    if-lez v14, :cond_a

    .line 232
    int-to-float v14, v10

    mul-float/2addr v14, v4

    float-to-int v11, v14

    .line 237
    :cond_7
    :goto_2
    const-string v14, "VTImageView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onMeasure  ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTAnimatedImageView;->imageDrawable:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] -> pixelsWidth="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";pixelsHeight="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    invoke-super {v0, v11, v10}, Lcom/felipecsl/gifimageview/library/GifImageView;->setMeasuredDimension(II)V

    .line 242
    move-object/from16 v0, p0

    iget v14, v0, Lnet/veritran/component/view/VTAnimatedImageView;->backgroundColor:I

    if-eqz v14, :cond_0

    .line 243
    move-object/from16 v0, p0

    iget v14, v0, Lnet/veritran/component/view/VTAnimatedImageView;->backgroundColor:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnet/veritran/component/view/VTAnimatedImageView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 184
    .end local v1    # "areaScale":F
    .end local v4    # "imageScale":F
    .end local v10    # "pixelsHeight":I
    .end local v11    # "pixelsWidth":I
    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lnet/veritran/component/view/VTAnimatedImageView;->resourceWidth:I

    if-lez v14, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lnet/veritran/component/view/VTAnimatedImageView;->resourceHeight:I

    if-lez v14, :cond_9

    .line 186
    move-object/from16 v0, p0

    iget v14, v0, Lnet/veritran/component/view/VTAnimatedImageView;->resourceWidth:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lnet/veritran/component/view/VTAnimatedImageView;->resourceHeight:I

    int-to-float v15, v15

    div-float v4, v14, v15

    .restart local v4    # "imageScale":F
    goto/16 :goto_1

    .line 190
    .end local v4    # "imageScale":F
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "imageScale":F
    goto/16 :goto_1

    .line 234
    .restart local v1    # "areaScale":F
    .restart local v10    # "pixelsHeight":I
    .restart local v11    # "pixelsWidth":I
    :cond_a
    int-to-float v14, v11

    div-float/2addr v14, v4

    float-to-int v10, v14

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 254
    const-string v0, "VTImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/view/VTAnimatedImageView;->imageDrawable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] -> getLeft():+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTAnimatedImageView;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getTop():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTAnimatedImageView;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getWidth():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTAnimatedImageView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getHeight():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTAnimatedImageView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 299
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTAnimatedImageView;->backgroundColor:I

    .line 300
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lnet/veritran/component/view/VTAnimatedImageView;->imageDrawable:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 335
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 307
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 126
    iput p1, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedHeight:I

    .line 127
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 77
    const-string v0, "VTImageView"

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

    .line 78
    iput p1, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedLeftMargin:F

    .line 79
    iput p2, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedTopMargin:F

    .line 80
    iput p3, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedRightMargin:F

    .line 81
    iput p4, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedBottomMargin:F

    .line 82
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 112
    iput p1, p0, Lnet/veritran/component/view/VTAnimatedImageView;->fixedWidth:I

    .line 113
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 316
    iput p1, p0, Lnet/veritran/component/view/VTAnimatedImageView;->percentageHeight:F

    .line 317
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 95
    iput p1, p0, Lnet/veritran/component/view/VTAnimatedImageView;->percentageLeftMargin:F

    .line 96
    iput p2, p0, Lnet/veritran/component/view/VTAnimatedImageView;->percentageTopMargin:F

    .line 97
    iput p3, p0, Lnet/veritran/component/view/VTAnimatedImageView;->percentageRightMargin:F

    .line 98
    iput p4, p0, Lnet/veritran/component/view/VTAnimatedImageView;->percentageBottomMargin:F

    .line 99
    return-void
.end method

.method public setResourceHeight(I)V
    .locals 0
    .param p1, "resourceHeight"    # I

    .prologue
    .line 136
    iput p1, p0, Lnet/veritran/component/view/VTAnimatedImageView;->resourceHeight:I

    .line 137
    return-void
.end method

.method public setResourceWidth(I)V
    .locals 0
    .param p1, "resourceWidth"    # I

    .prologue
    .line 131
    iput p1, p0, Lnet/veritran/component/view/VTAnimatedImageView;->resourceWidth:I

    .line 132
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 311
    iput p1, p0, Lnet/veritran/component/view/VTAnimatedImageView;->percentageWidth:F

    .line 312
    return-void
.end method
