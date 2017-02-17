.class public Lnet/veritran/component/view/VTListHorizontalComponentView;
.super Landroid/widget/HorizontalScrollView;
.source "VTListHorizontalComponentView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentView;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTListHorizontalComponentView"


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
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 20
    iput v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->percentageWidth:F

    .line 22
    iput v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->percentageHeight:F

    .line 24
    iput v1, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->percentageLeftMargin:F

    .line 25
    iput v1, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->percentageTopMargin:F

    .line 26
    iput v1, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->percentageRightMargin:F

    .line 27
    iput v1, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->percentageBottomMargin:F

    .line 29
    iput v2, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->measuredLeftMargin:I

    .line 30
    iput v2, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->measuredRightMargin:I

    .line 31
    iput v2, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->measuredTopMargin:I

    .line 32
    iput v2, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->measuredBottomMargin:I

    .line 34
    iput v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedLeftMargin:F

    .line 35
    iput v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedRightMargin:F

    .line 36
    iput v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedTopMargin:F

    .line 37
    iput v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedBottomMargin:F

    .line 43
    iput v3, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedWidth:I

    .line 45
    iput v3, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedHeight:I

    .line 52
    return-void
.end method


# virtual methods
.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->percentageHeight:F

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->measuredTopMargin:I

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->percentageWidth:F

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 217
    iget v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->percentageLeftMargin:F

    .line 218
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->measuredLeftMargin:I

    .line 219
    iget v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->percentageRightMargin:F

    .line 220
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->measuredRightMargin:I

    .line 221
    iget v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->percentageTopMargin:F

    .line 222
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->measuredTopMargin:I

    .line 223
    iget v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->percentageBottomMargin:F

    .line 224
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->measuredBottomMargin:I

    .line 225
    return-void

    .line 218
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 220
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 222
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 224
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedBottomMargin:F

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
    .line 150
    const-string v5, "VTListHorizontalComponentView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onLayout [] -> getLeft():+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lnet/veritran/component/view/VTListHorizontalComponentView;->getLeft()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";getTop():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lnet/veritran/component/view/VTListHorizontalComponentView;->getTop()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";getWidth():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lnet/veritran/component/view/VTListHorizontalComponentView;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";getHeight():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lnet/veritran/component/view/VTListHorizontalComponentView;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lnet/veritran/component/view/VTListHorizontalComponentView;->getChildCount()I

    move-result v0

    .line 152
    .local v0, "childCount":I
    invoke-virtual {p0}, Lnet/veritran/component/view/VTListHorizontalComponentView;->getPaddingLeft()I

    move-result v3

    .local v3, "x":I
    invoke-virtual {p0}, Lnet/veritran/component/view/VTListHorizontalComponentView;->getPaddingTop()I

    move-result v4

    .line 153
    .local v4, "y":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 154
    invoke-virtual {p0, v1}, Lnet/veritran/component/view/VTListHorizontalComponentView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 155
    .local v2, "v":Landroid/view/View;
    const-string v5, "VTListHorizontalComponentView"

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

    .line 157
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

    .line 155
    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    .line 161
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    .line 159
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 162
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v3, v5

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 165
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 84
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListHorizontalComponentView;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 85
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-super {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->setMeasuredDimension(II)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const-string v17, "VTListHorizontalComponentView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onMeasure [] -> widthMeasureSpec: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ";heightMeasureSpec:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTListHorizontalComponentView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 93
    .local v11, "mw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 94
    .local v8, "mh":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 95
    .local v15, "sw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 96
    .local v14, "sh":I
    invoke-static {v11}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v10

    .line 97
    .local v10, "modeWidth":Ljava/lang/String;
    invoke-static {v8}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v9

    .line 98
    .local v9, "modeHeight":Ljava/lang/String;
    const-string v17, "VTListHorizontalComponentView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onMeasure [] -> width("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "):"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ";height("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "):"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListHorizontalComponentView;->measureAbsoluteMargins()V

    .line 104
    const-string v17, "VTListHorizontalComponentView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onMeasure  [] -> leftMargin:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListHorizontalComponentView;->measuredLeftMargin:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ";rightMargin:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListHorizontalComponentView;->measuredRightMargin:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ";topMargin:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListHorizontalComponentView;->measuredTopMargin:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ";bottomMargin:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListHorizontalComponentView;->measuredBottomMargin:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListHorizontalComponentView;->measuredLeftMargin:I

    move/from16 v17, v0

    sub-int v17, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListHorizontalComponentView;->measuredRightMargin:I

    move/from16 v18, v0

    sub-int v13, v17, v18

    .line 108
    .local v13, "pixelsWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListHorizontalComponentView;->measuredTopMargin:I

    move/from16 v17, v0

    sub-int v17, v14, v17

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListHorizontalComponentView;->measuredBottomMargin:I

    move/from16 v18, v0

    sub-int v12, v17, v18

    .line 109
    .local v12, "pixelsHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListHorizontalComponentView;->percentageWidth:F

    move/from16 v17, v0

    const/high16 v18, -0x40800000    # -1.0f

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_2

    .line 113
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTListHorizontalComponentView;->percentageHeight:F

    move/from16 v17, v0

    const/high16 v18, -0x40800000    # -1.0f

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_3

    .line 117
    :cond_3
    const-string v17, "VTListHorizontalComponentView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onMeasure  [] -> pixelsWidth:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ";pixelsHeight:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListHorizontalComponentView;->getChildCount()I

    move-result v5

    .line 121
    .local v5, "childCount":I
    move v3, v13

    .line 122
    .local v3, "availableWidth":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_4

    .line 123
    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 125
    .local v7, "measurecSpecWidth":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lnet/veritran/component/view/VTListHorizontalComponentView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 126
    .local v16, "v":Landroid/view/View;
    const-string v17, "VTListHorizontalComponentView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Measuring "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v17, "VTListHorizontalComponentView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Measuring "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "{"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "}"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-virtual {v0, v1, v7, v2}, Lnet/veritran/component/view/VTListHorizontalComponentView;->measureChild(Landroid/view/View;II)V

    .line 130
    const-string v17, "VTListHorizontalComponentView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " measuredWidth:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ";measuredHeight:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 131
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 130
    invoke-static/range {v17 .. v18}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v3, v3, v17

    .line 122
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 135
    .end local v7    # "measurecSpecWidth":I
    .end local v16    # "v":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    invoke-super {v0, v3, v12}, Landroid/widget/HorizontalScrollView;->setMeasuredDimension(II)V

    .line 138
    invoke-super/range {p0 .. p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTListHorizontalComponentView;->backgroundColor:Ljava/lang/Integer;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTListHorizontalComponentView;->backgroundColor:Ljava/lang/Integer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTListHorizontalComponentView;->setBackgroundColor(I)V

    .line 142
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTListHorizontalComponentView;->backgroundImage:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTListHorizontalComponentView;->backgroundImage:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 143
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTListHorizontalComponentView;->backgroundImage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3, v12}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 144
    .local v4, "b":Landroid/graphics/Bitmap;
    new-instance v17, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTListHorizontalComponentView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTListHorizontalComponentView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 257
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 258
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->restartSessionTimeout()V

    .line 259
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 189
    iput-object p1, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->backgroundColor:Ljava/lang/Integer;

    .line 190
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 264
    iput-object p1, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->backgroundImage:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 196
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 203
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 252
    iput p1, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedHeight:I

    .line 253
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
    const-string v0, "VTListHorizontalComponentView"

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
    iput p1, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedLeftMargin:F

    .line 58
    iput p2, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedTopMargin:F

    .line 59
    iput p3, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedRightMargin:F

    .line 60
    iput p4, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedBottomMargin:F

    .line 61
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 238
    iput p1, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->fixedWidth:I

    .line 239
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 212
    iput p1, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->percentageHeight:F

    .line 213
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
    iput p1, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->percentageLeftMargin:F

    .line 76
    iput p2, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->percentageTopMargin:F

    .line 77
    iput p3, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->percentageRightMargin:F

    .line 78
    iput p4, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->percentageBottomMargin:F

    .line 79
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 207
    iput p1, p0, Lnet/veritran/component/view/VTListHorizontalComponentView;->percentageWidth:F

    .line 208
    return-void
.end method
