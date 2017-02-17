.class public Lnet/veritran/component/view/VTListGridComponentView;
.super Landroid/widget/GridView;
.source "VTListGridComponentView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentView;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTListGridComponentView"


# instance fields
.field private backgroundColor:Ljava/lang/Integer;

.field private backgroundImage:Ljava/lang/String;

.field fixedBottomMargin:F

.field private fixedHeight:I

.field fixedLeftMargin:F

.field fixedRightMargin:F

.field fixedTopMargin:F

.field private fixedWidth:I

.field private measuredBottomMargin:I

.field private measuredBottomPadding:I

.field private measuredLeftMargin:I

.field private measuredLeftPadding:I

.field private measuredRightMargin:I

.field private measuredRightPadding:I

.field private measuredTopMargin:I

.field private measuredTopPadding:I

.field private percentageBottomMargin:F

.field private percentageBottomPadding:F

.field private percentageHeight:F

.field private percentageLeftMargin:F

.field private percentageLeftPadding:F

.field private percentageRightMargin:F

.field private percentageRightPadding:F

.field private percentageTopMargin:F

.field private percentageTopPadding:F

.field private percentageWidth:F

.field private relatedComponent:Lnet/veritran/component/VTListGridComponent;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 4
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    const/4 v3, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 18
    iput v2, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageWidth:F

    .line 19
    iput v2, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageHeight:F

    .line 21
    iput v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageLeftPadding:F

    .line 22
    iput v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageTopPadding:F

    .line 23
    iput v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageRightPadding:F

    .line 24
    iput v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageBottomPadding:F

    .line 26
    iput v1, p0, Lnet/veritran/component/view/VTListGridComponentView;->measuredTopPadding:I

    .line 27
    iput v1, p0, Lnet/veritran/component/view/VTListGridComponentView;->measuredRightPadding:I

    .line 28
    iput v1, p0, Lnet/veritran/component/view/VTListGridComponentView;->measuredLeftPadding:I

    .line 29
    iput v1, p0, Lnet/veritran/component/view/VTListGridComponentView;->measuredBottomPadding:I

    .line 31
    iput v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageLeftMargin:F

    .line 32
    iput v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageTopMargin:F

    .line 33
    iput v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageRightMargin:F

    .line 34
    iput v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageBottomMargin:F

    .line 36
    iput v2, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedLeftMargin:F

    .line 37
    iput v2, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedRightMargin:F

    .line 38
    iput v2, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedTopMargin:F

    .line 39
    iput v2, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedBottomMargin:F

    .line 41
    iput v1, p0, Lnet/veritran/component/view/VTListGridComponentView;->measuredLeftMargin:I

    .line 42
    iput v1, p0, Lnet/veritran/component/view/VTListGridComponentView;->measuredRightMargin:I

    .line 43
    iput v1, p0, Lnet/veritran/component/view/VTListGridComponentView;->measuredTopMargin:I

    .line 44
    iput v1, p0, Lnet/veritran/component/view/VTListGridComponentView;->measuredBottomMargin:I

    .line 50
    iput v3, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedWidth:I

    .line 52
    iput v3, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedHeight:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->relatedComponent:Lnet/veritran/component/VTListGridComponent;

    .line 66
    invoke-virtual {p0, v1, v1, v1, v1}, Lnet/veritran/component/view/VTListGridComponentView;->setPadding(IIII)V

    .line 67
    return-void
.end method


# virtual methods
.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageHeight:F

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->measuredTopMargin:I

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageWidth:F

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 146
    iget v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageLeftMargin:F

    .line 147
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->measuredLeftMargin:I

    .line 148
    iget v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageRightMargin:F

    .line 149
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->measuredRightMargin:I

    .line 150
    iget v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageTopMargin:F

    .line 151
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->measuredTopMargin:I

    .line 152
    iget v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageBottomMargin:F

    .line 153
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->measuredBottomMargin:I

    .line 154
    return-void

    .line 147
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 149
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 151
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 153
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 218
    const-string v1, "VTListGridComponentView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTListGridComponentView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onLayout -> left:+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";top:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";right:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";bottom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "VTListGridComponentView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTListGridComponentView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onLayout -> getLeft():+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lnet/veritran/component/view/VTListGridComponentView;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";getTop():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lnet/veritran/component/view/VTListGridComponentView;->getTop()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";getWidth():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lnet/veritran/component/view/VTListGridComponentView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";getHeight():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lnet/veritran/component/view/VTListGridComponentView;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lnet/veritran/component/view/VTListGridComponentView;->getChildCount()I

    move-result v0

    .line 221
    .local v0, "childCount":I
    const-string v1, "VTListGridComponentView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTListGridComponentView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onLayout : childCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-super/range {p0 .. p5}, Landroid/widget/GridView;->onLayout(ZIIII)V

    .line 224
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 200
    invoke-virtual {p0}, Lnet/veritran/component/view/VTListGridComponentView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 201
    invoke-super {p0, v5, v5}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    .line 214
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 206
    .local v2, "sw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 207
    .local v1, "sh":I
    iget-object v3, p0, Lnet/veritran/component/view/VTListGridComponentView;->relatedComponent:Lnet/veritran/component/VTListGridComponent;

    invoke-virtual {v3, v2, v1}, Lnet/veritran/component/VTListGridComponent;->calculateRowsColumnsSize(II)V

    .line 209
    const-string v3, "VTListGridComponentView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMeasure [] -> widthMeasureSpec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";heightMeasureSpec:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lnet/veritran/component/view/VTListGridComponentView;->getChildCount()I

    move-result v0

    .line 211
    .local v0, "childCount":I
    const-string v3, "VTListGridComponentView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTListGridComponentView;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onMeasure : childCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setComponent(Lnet/veritran/component/VTListGridComponent;)V
    .locals 0
    .param p1, "component"    # Lnet/veritran/component/VTListGridComponent;

    .prologue
    .line 58
    iput-object p1, p0, Lnet/veritran/component/view/VTListGridComponentView;->relatedComponent:Lnet/veritran/component/VTListGridComponent;

    .line 59
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 110
    iput-object p1, p0, Lnet/veritran/component/view/VTListGridComponentView;->backgroundColor:Ljava/lang/Integer;

    .line 111
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lnet/veritran/component/view/VTListGridComponentView;->backgroundImage:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 1
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    const-string p1, "center"

    .line 118
    :cond_0
    const-string v0, "left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTListGridComponentView;->setGravity(I)V

    .line 125
    :goto_0
    return-void

    .line 120
    :cond_1
    const-string v0, "right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTListGridComponentView;->setGravity(I)V

    goto :goto_0

    .line 123
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTListGridComponentView;->setGravity(I)V

    goto :goto_0
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 132
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 181
    iput p1, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedHeight:I

    .line 182
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 71
    const-string v0, "VTListGridComponentView"

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

    .line 72
    iput p1, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedLeftMargin:F

    .line 73
    iput p2, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedTopMargin:F

    .line 74
    iput p3, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedRightMargin:F

    .line 75
    iput p4, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedBottomMargin:F

    .line 76
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 167
    iput p1, p0, Lnet/veritran/component/view/VTListGridComponentView;->fixedWidth:I

    .line 168
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 141
    iput p1, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageHeight:F

    .line 142
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 192
    iput p1, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageLeftMargin:F

    .line 193
    iput p2, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageTopMargin:F

    .line 194
    iput p3, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageRightMargin:F

    .line 195
    iput p4, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageBottomMargin:F

    .line 196
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 136
    iput p1, p0, Lnet/veritran/component/view/VTListGridComponentView;->percentageWidth:F

    .line 137
    return-void
.end method
