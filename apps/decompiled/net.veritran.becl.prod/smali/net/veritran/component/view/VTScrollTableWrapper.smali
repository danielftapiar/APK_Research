.class public Lnet/veritran/component/view/VTScrollTableWrapper;
.super Landroid/support/v4/widget/NestedScrollView;
.source "VTScrollTableWrapper.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentContainerView;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTScrollTableWrapper"


# instance fields
.field private tableView:Lnet/veritran/component/view/VTUIComponentContainerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getFixedHeight()I

    move-result v0

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getFixedWidth()I

    move-result v0

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getHeightPercentage()F

    move-result v0

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getMeasuredBottomMargin()I

    move-result v0

    return v0
.end method

.method public getMeasuredBottomPadding()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getMeasuredBottomPadding()I

    move-result v0

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getMeasuredLeftMargin()I

    move-result v0

    return v0
.end method

.method public getMeasuredLeftPadding()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getMeasuredLeftPadding()I

    move-result v0

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getMeasuredRightMargin()I

    move-result v0

    return v0
.end method

.method public getMeasuredRightPadding()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getMeasuredRightPadding()I

    move-result v0

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getMeasuredTopMargin()I

    move-result v0

    return v0
.end method

.method public getMeasuredTopPadding()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getMeasuredTopPadding()I

    move-result v0

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getWidthPercentage()F

    move-result v0

    return v0
.end method

.method public gettableView()Lnet/veritran/component/view/VTUIComponentContainerView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    return-object v0
.end method

.method public measureAbsoluteMargins()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->measureAbsoluteMargins()V

    .line 69
    return-void
.end method

.method public measureAbsolutePaddings()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->measureAbsolutePaddings()V

    .line 143
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v11, 0x0

    .line 168
    invoke-virtual {p0}, Lnet/veritran/component/view/VTScrollTableWrapper;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 170
    invoke-virtual {p0, v11, v11}, Lnet/veritran/component/view/VTScrollTableWrapper;->setMeasuredDimension(II)V

    .line 199
    :goto_0
    return-void

    .line 174
    :cond_0
    const-string v9, "VTScrollTableWrapper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTScrollTableWrapper;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " onMeasure ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lnet/veritran/component/view/VTScrollTableWrapper;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 178
    .local v4, "mw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 179
    .local v1, "mh":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 180
    .local v6, "sw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 181
    .local v5, "sh":I
    invoke-static {v4}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "modeWidth":Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "modeHeight":Ljava/lang/String;
    const-string v9, "VTScrollTableWrapper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTScrollTableWrapper;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " onMeasure -> width("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";height("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/high16 v9, -0x80000000

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 185
    .local v8, "verticalSpec":I
    iget-object v9, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    check-cast v9, Landroid/view/View;

    invoke-virtual {p0, v9, p1, v8}, Lnet/veritran/component/view/VTScrollTableWrapper;->measureChild(Landroid/view/View;II)V

    .line 186
    const-string v10, "VTScrollTableWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTScrollTableWrapper;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " measuredWidth:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ";measuredHeight:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    check-cast v9, Landroid/view/View;

    .line 187
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 186
    invoke-static {v10, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v10, "VTScrollTableWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTScrollTableWrapper;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " measuredWidth:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ";measuredHeight:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    check-cast v9, Landroid/view/View;

    .line 189
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTScrollTableWrapper;->getMeasuredBottomPadding()I

    move-result v12

    sub-int/2addr v9, v12

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 188
    invoke-static {v10, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v9, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 192
    .local v7, "tableHeight":I
    move v0, v5

    .line 193
    .local v0, "finalHeight":I
    if-gt v0, v7, :cond_1

    if-nez v0, :cond_2

    .line 194
    :cond_1
    move v0, v7

    .line 198
    :cond_2
    iget-object v9, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTScrollTableWrapper;->getMeasuredBottomPadding()I

    move-result v10

    sub-int v10, v0, v10

    invoke-virtual {p0, v9, v10}, Lnet/veritran/component/view/VTScrollTableWrapper;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 202
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/widget/NestedScrollView;->onScrollChanged(IIII)V

    .line 203
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->restartSessionTimeout()V

    .line 204
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 74
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0, p1}, Lnet/veritran/component/view/VTUIComponentContainerView;->setComponentBackgroundColor(Ljava/lang/Integer;)V

    .line 75
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 1
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0, p1}, Lnet/veritran/component/view/VTUIComponentContainerView;->setComponentBackgroundDrawable(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 1
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0, p1}, Lnet/veritran/component/view/VTUIComponentContainerView;->setComponentInnerAlignment(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 1
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0, p1}, Lnet/veritran/component/view/VTUIComponentContainerView;->setComponentVerticalAlignment(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 1
    .param p1, "h"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0, p1}, Lnet/veritran/component/view/VTUIComponentContainerView;->setFixedHeight(I)V

    .line 163
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 22
    const-string v0, "VTScrollTableWrapper"

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

    .line 23
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/veritran/component/view/VTUIComponentContainerView;->setFixedMargins(FFFF)V

    .line 24
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 1
    .param p1, "w"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0, p1}, Lnet/veritran/component/view/VTUIComponentContainerView;->setFixedWidth(I)V

    .line 153
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 1
    .param p1, "perc"    # F

    .prologue
    .line 96
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0, p1}, Lnet/veritran/component/view/VTUIComponentContainerView;->setHeightPercentage(F)V

    .line 97
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 62
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/veritran/component/view/VTUIComponentContainerView;->setPercentageMargins(FFFF)V

    .line 63
    return-void
.end method

.method public setPercentagePaddings(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 136
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/veritran/component/view/VTUIComponentContainerView;->setPercentagePaddings(FFFF)V

    .line 137
    return-void
.end method

.method public setTableView(Lnet/veritran/component/view/VTUIComponentContainerView;)V
    .locals 0
    .param p1, "tableView"    # Lnet/veritran/component/view/VTUIComponentContainerView;

    .prologue
    .line 27
    iput-object p1, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    .line 28
    check-cast p1, Landroid/view/View;

    .end local p1    # "tableView":Lnet/veritran/component/view/VTUIComponentContainerView;
    invoke-virtual {p0, p1}, Lnet/veritran/component/view/VTScrollTableWrapper;->addView(Landroid/view/View;)V

    .line 29
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 1
    .param p1, "perc"    # F

    .prologue
    .line 90
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollTableWrapper;->tableView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0, p1}, Lnet/veritran/component/view/VTUIComponentContainerView;->setWidthPercentage(F)V

    .line 91
    return-void
.end method
