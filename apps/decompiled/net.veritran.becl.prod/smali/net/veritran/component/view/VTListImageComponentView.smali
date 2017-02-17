.class public Lnet/veritran/component/view/VTListImageComponentView;
.super Landroid/widget/ListView;
.source "VTListImageComponentView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentView;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTListImageComponentView"


# instance fields
.field private backgroundColor:Ljava/lang/Integer;

.field private backgroundImage:Ljava/lang/String;

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


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 4
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 21
    iput v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->percentageWidth:F

    .line 22
    iput v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->percentageHeight:F

    .line 24
    iput v1, p0, Lnet/veritran/component/view/VTListImageComponentView;->percentageLeftMargin:F

    .line 25
    iput v1, p0, Lnet/veritran/component/view/VTListImageComponentView;->percentageTopMargin:F

    .line 26
    iput v1, p0, Lnet/veritran/component/view/VTListImageComponentView;->percentageRightMargin:F

    .line 27
    iput v1, p0, Lnet/veritran/component/view/VTListImageComponentView;->percentageBottomMargin:F

    .line 29
    iput v2, p0, Lnet/veritran/component/view/VTListImageComponentView;->measuredLeftMargin:I

    .line 30
    iput v2, p0, Lnet/veritran/component/view/VTListImageComponentView;->measuredRightMargin:I

    .line 31
    iput v2, p0, Lnet/veritran/component/view/VTListImageComponentView;->measuredTopMargin:I

    .line 32
    iput v2, p0, Lnet/veritran/component/view/VTListImageComponentView;->measuredBottomMargin:I

    .line 34
    iput v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedLeftMargin:F

    .line 35
    iput v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedRightMargin:F

    .line 36
    iput v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedTopMargin:F

    .line 37
    iput v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedBottomMargin:F

    .line 43
    iput v3, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedWidth:I

    .line 45
    iput v3, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedHeight:I

    .line 52
    return-void
.end method


# virtual methods
.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->percentageHeight:F

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->measuredTopMargin:I

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->percentageWidth:F

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 250
    iget v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->percentageLeftMargin:F

    .line 251
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->measuredLeftMargin:I

    .line 252
    iget v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->percentageRightMargin:F

    .line 253
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->measuredRightMargin:I

    .line 254
    iget v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->percentageTopMargin:F

    .line 255
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->measuredTopMargin:I

    .line 256
    iget v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->percentageBottomMargin:F

    .line 257
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->measuredBottomMargin:I

    .line 258
    return-void

    .line 251
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 253
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 255
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 257
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 169
    const-string v5, "VTListImageComponentView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onLayout [] -> getLeft():+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lnet/veritran/component/view/VTListImageComponentView;->getLeft()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";getTop():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lnet/veritran/component/view/VTListImageComponentView;->getTop()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";getWidth():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lnet/veritran/component/view/VTListImageComponentView;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";getHeight():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lnet/veritran/component/view/VTListImageComponentView;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lnet/veritran/component/view/VTListImageComponentView;->getChildCount()I

    move-result v0

    .line 171
    .local v0, "childCount":I
    invoke-virtual {p0}, Lnet/veritran/component/view/VTListImageComponentView;->getPaddingLeft()I

    move-result v3

    .local v3, "x":I
    invoke-virtual {p0}, Lnet/veritran/component/view/VTListImageComponentView;->getPaddingTop()I

    move-result v4

    .line 172
    .local v4, "y":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 173
    invoke-virtual {p0, v1}, Lnet/veritran/component/view/VTListImageComponentView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 174
    .local v2, "v":Landroid/view/View;
    const-string v5, "VTListImageComponentView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Laying "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 176
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 174
    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    .line 180
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    .line 178
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 181
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 184
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 97
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListImageComponentView;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 98
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-super {v0, v1, v2}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string v18, "VTListImageComponentView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListImageComponentView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " onMeasure ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] -> widthMeasureSpec: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";heightMeasureSpec:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTListImageComponentView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 106
    .local v12, "mw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 107
    .local v9, "mh":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 108
    .local v16, "sw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 109
    .local v15, "sh":I
    invoke-static {v12}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v11

    .line 110
    .local v11, "modeWidth":Ljava/lang/String;
    invoke-static {v9}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v10

    .line 111
    .local v10, "modeHeight":Ljava/lang/String;
    const-string v18, "VTListImageComponentView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListImageComponentView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " onMeasure ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] -> width("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "):"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";height("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "):"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListImageComponentView;->measureAbsoluteMargins()V

    .line 117
    const-string v18, "VTListImageComponentView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListImageComponentView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " onMeasure  ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] -> leftMargin:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListImageComponentView;->measuredLeftMargin:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";rightMargin:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListImageComponentView;->measuredRightMargin:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";topMargin:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListImageComponentView;->measuredTopMargin:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";bottomMargin:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListImageComponentView;->measuredBottomMargin:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListImageComponentView;->measuredLeftMargin:I

    move/from16 v18, v0

    sub-int v18, v16, v18

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListImageComponentView;->measuredRightMargin:I

    move/from16 v19, v0

    sub-int v14, v18, v19

    .line 121
    .local v14, "pixelsWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListImageComponentView;->measuredTopMargin:I

    move/from16 v18, v0

    sub-int v18, v15, v18

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListImageComponentView;->measuredBottomMargin:I

    move/from16 v19, v0

    sub-int v13, v18, v19

    .line 122
    .local v13, "pixelsHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListImageComponentView;->percentageWidth:F

    move/from16 v18, v0

    const/high16 v19, -0x40800000    # -1.0f

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_2

    .line 123
    int-to-float v0, v14

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListImageComponentView;->percentageWidth:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x42c80000    # 100.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v14, v0

    .line 126
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListImageComponentView;->percentageHeight:F

    move/from16 v18, v0

    const/high16 v19, -0x40800000    # -1.0f

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_3

    .line 127
    int-to-float v0, v13

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListImageComponentView;->percentageHeight:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x42c80000    # 100.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v13, v0

    .line 130
    :cond_3
    const-string v18, "VTListImageComponentView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListImageComponentView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " onMeasure  ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] -> pixelsWidth:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";pixelsHeight:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListImageComponentView;->getChildCount()I

    move-result v5

    .line 134
    .local v5, "childCount":I
    move v3, v13

    .line 135
    .local v3, "availableHeight":I
    const/4 v7, 0x0

    .line 136
    .local v7, "maxWidth":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_5

    .line 137
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 139
    .local v8, "measurecSpecHeight":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lnet/veritran/component/view/VTListImageComponentView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 140
    .local v17, "v":Landroid/view/View;
    const-string v18, "VTListImageComponentView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListImageComponentView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Measuring "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v18, "VTListImageComponentView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListImageComponentView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Measuring "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "{"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "}"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2, v8}, Lnet/veritran/component/view/VTListImageComponentView;->measureChild(Landroid/view/View;II)V

    .line 144
    const-string v18, "VTListImageComponentView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListImageComponentView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " measuredWidth:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";measuredHeight:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 145
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 144
    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v3, v3, v18

    .line 147
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v7, :cond_4

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 136
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 149
    .end local v8    # "measurecSpecHeight":I
    .end local v17    # "v":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListImageComponentView;->percentageWidth:F

    move/from16 v18, v0

    const/high16 v19, -0x40800000    # -1.0f

    cmpl-float v18, v18, v19

    if-nez v18, :cond_6

    .line 150
    move v14, v7

    .line 152
    :cond_6
    const-string v18, "VTListImageComponentView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListImageComponentView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " onMeasure  ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] -> pixelsWidth:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";availableHeight:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    move-object/from16 v0, p0

    invoke-super {v0, v14, v3}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    .line 157
    invoke-super/range {p0 .. p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTListImageComponentView;->backgroundColor:Ljava/lang/Integer;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTListImageComponentView;->backgroundColor:Ljava/lang/Integer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTListImageComponentView;->setBackgroundColor(I)V

    .line 161
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTListImageComponentView;->backgroundImage:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTListImageComponentView;->backgroundImage:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 162
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTListImageComponentView;->backgroundImage:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14, v3}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 163
    .local v4, "b":Landroid/graphics/Bitmap;
    new-instance v18, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListImageComponentView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTListImageComponentView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 290
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 291
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->restartSessionTimeout()V

    .line 292
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 214
    iput-object p1, p0, Lnet/veritran/component/view/VTListImageComponentView;->backgroundColor:Ljava/lang/Integer;

    .line 215
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 296
    iput-object p1, p0, Lnet/veritran/component/view/VTListImageComponentView;->backgroundImage:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 229
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 236
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 286
    iput p1, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedHeight:I

    .line 287
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 56
    const-string v0, "VTListImageComponentView"

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

    .line 57
    iput p1, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedLeftMargin:F

    .line 58
    iput p2, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedTopMargin:F

    .line 59
    iput p3, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedRightMargin:F

    .line 60
    iput p4, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedBottomMargin:F

    .line 61
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 272
    iput p1, p0, Lnet/veritran/component/view/VTListImageComponentView;->fixedWidth:I

    .line 273
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 245
    iput p1, p0, Lnet/veritran/component/view/VTListImageComponentView;->percentageHeight:F

    .line 246
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 75
    iput p1, p0, Lnet/veritran/component/view/VTListImageComponentView;->percentageLeftMargin:F

    .line 76
    iput p2, p0, Lnet/veritran/component/view/VTListImageComponentView;->percentageTopMargin:F

    .line 77
    iput p3, p0, Lnet/veritran/component/view/VTListImageComponentView;->percentageRightMargin:F

    .line 78
    iput p4, p0, Lnet/veritran/component/view/VTListImageComponentView;->percentageBottomMargin:F

    .line 79
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 240
    iput p1, p0, Lnet/veritran/component/view/VTListImageComponentView;->percentageWidth:F

    .line 241
    return-void
.end method
