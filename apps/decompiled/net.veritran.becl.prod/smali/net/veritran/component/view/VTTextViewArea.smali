.class public Lnet/veritran/component/view/VTTextViewArea;
.super Landroid/widget/LinearLayout;
.source "VTTextViewArea.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentView;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTTextViewArea"


# instance fields
.field private alignment:Ljava/lang/String;

.field private drawable:Ljava/lang/String;

.field private fixedBottomMargin:F

.field private fixedHeight:I

.field private fixedLeftMargin:F

.field private fixedRightMargin:F

.field private fixedTopMargin:F

.field private fixedWidth:I

.field private measuredBottomMargin:I

.field private measuredLeftMargin:I

.field private measuredRightMargin:I

.field private measuredTopMargin:I

.field private percentageBottomMargin:F

.field private percentageHeight:F

.field private percentageLeftMargin:F

.field private percentageRightMargin:F

.field private percentageTopMargin:F

.field private percentageWidth:F

.field private textBackgroundColor:Ljava/lang/Integer;

.field private verticalAlignement:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput v0, p0, Lnet/veritran/component/view/VTTextViewArea;->percentageWidth:F

    .line 20
    iput v0, p0, Lnet/veritran/component/view/VTTextViewArea;->percentageHeight:F

    .line 22
    iput v1, p0, Lnet/veritran/component/view/VTTextViewArea;->percentageLeftMargin:F

    .line 23
    iput v1, p0, Lnet/veritran/component/view/VTTextViewArea;->percentageTopMargin:F

    .line 24
    iput v1, p0, Lnet/veritran/component/view/VTTextViewArea;->percentageRightMargin:F

    .line 25
    iput v1, p0, Lnet/veritran/component/view/VTTextViewArea;->percentageBottomMargin:F

    .line 27
    iput v2, p0, Lnet/veritran/component/view/VTTextViewArea;->measuredLeftMargin:I

    .line 28
    iput v2, p0, Lnet/veritran/component/view/VTTextViewArea;->measuredRightMargin:I

    .line 29
    iput v2, p0, Lnet/veritran/component/view/VTTextViewArea;->measuredTopMargin:I

    .line 30
    iput v2, p0, Lnet/veritran/component/view/VTTextViewArea;->measuredBottomMargin:I

    .line 32
    iput v0, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedLeftMargin:F

    .line 33
    iput v0, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedRightMargin:F

    .line 34
    iput v0, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedTopMargin:F

    .line 35
    iput v0, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedBottomMargin:F

    .line 45
    iput v3, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedWidth:I

    .line 46
    iput v3, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedHeight:I

    .line 55
    return-void
.end method


# virtual methods
.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lnet/veritran/component/view/VTTextViewArea;->percentageHeight:F

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lnet/veritran/component/view/VTTextViewArea;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lnet/veritran/component/view/VTTextViewArea;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lnet/veritran/component/view/VTTextViewArea;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lnet/veritran/component/view/VTTextViewArea;->measuredTopMargin:I

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lnet/veritran/component/view/VTTextViewArea;->percentageWidth:F

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 100
    iget v0, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTTextViewArea;->percentageLeftMargin:F

    .line 101
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTTextViewArea;->measuredLeftMargin:I

    .line 102
    iget v0, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTTextViewArea;->percentageRightMargin:F

    .line 103
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTTextViewArea;->measuredRightMargin:I

    .line 104
    iget v0, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTTextViewArea;->percentageTopMargin:F

    .line 105
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTTextViewArea;->measuredTopMargin:I

    .line 106
    iget v0, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTTextViewArea;->percentageBottomMargin:F

    .line 107
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTTextViewArea;->measuredBottomMargin:I

    .line 108
    return-void

    .line 101
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 103
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 105
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 107
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 244
    const-string v9, "VTTextViewArea"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onLayout ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/view/VTTextViewArea;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] -> getLeft():+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/view/VTTextViewArea;->getLeft()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";getTop():"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 245
    invoke-virtual {p0}, Lnet/veritran/component/view/VTTextViewArea;->getTop()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";getWidth():"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/view/VTTextViewArea;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";getHeight():"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 246
    invoke-virtual {p0}, Lnet/veritran/component/view/VTTextViewArea;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 244
    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v9, "VTTextViewArea"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onLayout ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lnet/veritran/component/view/VTTextViewArea;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] align="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lnet/veritran/component/view/VTTextViewArea;->alignment:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " valign="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lnet/veritran/component/view/VTTextViewArea;->verticalAlignement:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v6, 0x0

    .line 249
    .local v6, "xChildrenStart":I
    invoke-virtual {p0}, Lnet/veritran/component/view/VTTextViewArea;->getWidth()I

    move-result v9

    add-int/2addr v9, v6

    add-int/lit8 v5, v9, 0x0

    .line 250
    .local v5, "xChildrenEnd":I
    const/4 v8, 0x0

    .line 251
    .local v8, "yChildrenStart":I
    invoke-virtual {p0}, Lnet/veritran/component/view/VTTextViewArea;->getHeight()I

    move-result v9

    add-int/2addr v9, v8

    add-int/lit8 v7, v9, 0x0

    .line 254
    .local v7, "yChildrenEnd":I
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lnet/veritran/component/view/VTTextViewArea;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnet/veritran/component/view/VTUIComponentView;

    .local v4, "v":Lnet/veritran/component/view/VTUIComponentView;
    move-object v9, v4

    .line 255
    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .local v1, "childWidth":I
    move-object v9, v4

    .line 256
    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 260
    .local v0, "childHeight":I
    iget-object v9, p0, Lnet/veritran/component/view/VTTextViewArea;->alignment:Ljava/lang/String;

    const-string v10, "left"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lnet/veritran/component/view/VTTextViewArea;->alignment:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 261
    :cond_0
    move v2, v6

    .local v2, "nLeft":I
    move-object v9, v4

    .line 262
    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 273
    :goto_0
    iget-object v9, p0, Lnet/veritran/component/view/VTTextViewArea;->verticalAlignement:Ljava/lang/String;

    const-string v10, "middle"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 274
    sub-int v9, v7, v0

    div-int/lit8 v3, v9, 0x2

    .line 281
    .local v3, "nTop":I
    :goto_1
    check-cast v4, Landroid/view/View;

    .end local v4    # "v":Lnet/veritran/component/view/VTUIComponentView;
    add-int v9, v2, v1

    add-int v10, v3, v0

    invoke-virtual {v4, v2, v3, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 282
    const-string v9, "VTTextViewArea"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTTextViewArea;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " layingTextView -> left:+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";top:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";right:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int v11, v2, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";bottom:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int v11, v3, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void

    .line 263
    .end local v2    # "nLeft":I
    .end local v3    # "nTop":I
    .restart local v4    # "v":Lnet/veritran/component/view/VTUIComponentView;
    :cond_1
    iget-object v9, p0, Lnet/veritran/component/view/VTTextViewArea;->alignment:Ljava/lang/String;

    const-string v10, "right"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 264
    sub-int v2, v5, v1

    .restart local v2    # "nLeft":I
    move-object v9, v4

    .line 265
    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 267
    .end local v2    # "nLeft":I
    :cond_2
    sub-int v9, v5, v1

    div-int/lit8 v2, v9, 0x2

    .restart local v2    # "nLeft":I
    move-object v9, v4

    .line 268
    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 275
    :cond_3
    iget-object v9, p0, Lnet/veritran/component/view/VTTextViewArea;->verticalAlignement:Ljava/lang/String;

    const-string v10, "bottom"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 276
    sub-int v3, v7, v0

    .restart local v3    # "nTop":I
    goto :goto_1

    .line 278
    .end local v3    # "nTop":I
    :cond_4
    move v3, v8

    .restart local v3    # "nTop":I
    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 180
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTTextViewArea;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_1

    .line 181
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v14, v15}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnet/veritran/component/view/VTTextViewArea;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    const-string v14, "VTTextViewArea"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onMeasure ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTTextViewArea;->getTag()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 189
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 190
    .local v9, "mw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 191
    .local v6, "mh":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 192
    .local v13, "sw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 193
    .local v12, "sh":I
    invoke-static {v9}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v8

    .line 194
    .local v8, "modeWidth":Ljava/lang/String;
    invoke-static {v6}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v7

    .line 195
    .local v7, "modeHeight":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v14, v0, Lnet/veritran/component/view/VTTextViewArea;->fixedHeight:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    .line 196
    const/high16 v6, 0x40000000    # 2.0f

    .line 197
    move-object/from16 v0, p0

    iget v12, v0, Lnet/veritran/component/view/VTTextViewArea;->fixedHeight:I

    .line 199
    :cond_2
    const-string v14, "VTTextViewArea"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onMeasure  ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTTextViewArea;->getTag()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 201
    move v11, v13

    .line 202
    .local v11, "pixelsWidth":I
    move v10, v12

    .line 203
    .local v10, "pixelsHeight":I
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnet/veritran/component/view/VTTextViewArea;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v14, v1, v2}, Lnet/veritran/component/view/VTTextViewArea;->measureChild(Landroid/view/View;II)V

    .line 204
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnet/veritran/component/view/VTTextViewArea;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 205
    .local v5, "childWidth":I
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnet/veritran/component/view/VTTextViewArea;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 206
    .local v4, "childHeight":I
    const-string v14, "VTTextViewArea"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTTextViewArea;->getTag()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " childMeasuredWidth="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";childMeasuredHeight="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v14, "VTTextViewArea"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTTextViewArea;->getTag()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " percentageWidth="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTTextViewArea;->percentageWidth:F

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";percentageHeight="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTTextViewArea;->percentageHeight:F

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    move-object/from16 v0, p0

    iget v14, v0, Lnet/veritran/component/view/VTTextViewArea;->percentageWidth:F

    const/high16 v15, -0x40800000    # -1.0f

    cmpl-float v14, v14, v15

    if-nez v14, :cond_5

    .line 211
    const/high16 v14, 0x40000000    # 2.0f

    if-ne v9, v14, :cond_4

    .line 212
    move v11, v13

    .line 219
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lnet/veritran/component/view/VTTextViewArea;->percentageHeight:F

    const/high16 v15, -0x40800000    # -1.0f

    cmpl-float v14, v14, v15

    if-nez v14, :cond_7

    .line 220
    const/high16 v14, 0x40000000    # 2.0f

    if-ne v6, v14, :cond_6

    .line 221
    move v10, v12

    .line 228
    :goto_2
    const-string v14, "VTTextViewArea"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTTextViewArea;->getTag()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " pixelWidth="

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

    .line 230
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v10}, Lnet/veritran/component/view/VTTextViewArea;->setMeasuredDimension(II)V

    .line 231
    const-string v14, "VTTextViewArea"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTTextViewArea;->getTag()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " getMeasuredWidth="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTTextViewArea;->getMeasuredWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";getMeasuredHeight="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 232
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTTextViewArea;->getMeasuredHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 231
    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTTextViewArea;->textBackgroundColor:Ljava/lang/Integer;

    if-eqz v14, :cond_3

    .line 234
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTTextViewArea;->textBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnet/veritran/component/view/VTTextViewArea;->setBackgroundColor(I)V

    .line 236
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTTextViewArea;->drawable:Ljava/lang/String;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTTextViewArea;->drawable:Ljava/lang/String;

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 237
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v14

    invoke-virtual {v14}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/veritran/component/view/VTTextViewArea;->drawable:Ljava/lang/String;

    invoke-virtual {v14, v15, v11, v10}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 238
    .local v3, "b":Landroid/graphics/Bitmap;
    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTTextViewArea;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-direct {v14, v15, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnet/veritran/component/view/VTTextViewArea;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 214
    .end local v3    # "b":Landroid/graphics/Bitmap;
    :cond_4
    move v11, v5

    goto/16 :goto_1

    .line 217
    :cond_5
    move v11, v13

    goto/16 :goto_1

    .line 223
    :cond_6
    move v10, v4

    goto/16 :goto_2

    .line 226
    :cond_7
    move v10, v12

    goto/16 :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 289
    const-string v0, "VTTextViewArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTTextViewArea;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] -> getLeft():+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 290
    invoke-virtual {p0}, Lnet/veritran/component/view/VTTextViewArea;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getTop():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTTextViewArea;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getWidth():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 291
    invoke-virtual {p0}, Lnet/veritran/component/view/VTTextViewArea;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getHeight():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTTextViewArea;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 112
    iput-object p1, p0, Lnet/veritran/component/view/VTTextViewArea;->textBackgroundColor:Ljava/lang/Integer;

    .line 113
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lnet/veritran/component/view/VTTextViewArea;->drawable:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lnet/veritran/component/view/VTTextViewArea;->alignment:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lnet/veritran/component/view/VTTextViewArea;->verticalAlignement:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 3
    .param p1, "h"    # I

    .prologue
    .line 174
    const-string v0, "VTTextViewArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTTextViewArea;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setFixedHeight("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iput p1, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedHeight:I

    .line 176
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 59
    const-string v0, "VTTextViewArea"

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

    .line 60
    iput p1, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedLeftMargin:F

    .line 61
    iput p2, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedTopMargin:F

    .line 62
    iput p3, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedRightMargin:F

    .line 63
    iput p4, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedBottomMargin:F

    .line 64
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 160
    iput p1, p0, Lnet/veritran/component/view/VTTextViewArea;->fixedWidth:I

    .line 161
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 133
    iput p1, p0, Lnet/veritran/component/view/VTTextViewArea;->percentageHeight:F

    .line 134
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 92
    iput p1, p0, Lnet/veritran/component/view/VTTextViewArea;->percentageLeftMargin:F

    .line 93
    iput p2, p0, Lnet/veritran/component/view/VTTextViewArea;->percentageTopMargin:F

    .line 94
    iput p3, p0, Lnet/veritran/component/view/VTTextViewArea;->percentageRightMargin:F

    .line 95
    iput p4, p0, Lnet/veritran/component/view/VTTextViewArea;->percentageBottomMargin:F

    .line 96
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 128
    iput p1, p0, Lnet/veritran/component/view/VTTextViewArea;->percentageWidth:F

    .line 129
    return-void
.end method
