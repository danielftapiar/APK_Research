.class public Lnet/veritran/component/view/VTScrollPanelWrapper;
.super Landroid/support/v4/widget/NestedScrollView;
.source "VTScrollPanelWrapper.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentContainerView;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTScrollPanelWrapper"


# instance fields
.field private backgroundColor:Ljava/lang/Integer;

.field public drawable:Ljava/lang/String;

.field private panelView:Lnet/veritran/component/view/VTUIComponentContainerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getFixedHeight()I

    move-result v0

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getFixedWidth()I

    move-result v0

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getHeightPercentage()F

    move-result v0

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getMeasuredBottomMargin()I

    move-result v0

    return v0
.end method

.method public getMeasuredBottomPadding()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getMeasuredBottomPadding()I

    move-result v0

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getMeasuredLeftMargin()I

    move-result v0

    return v0
.end method

.method public getMeasuredLeftPadding()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getMeasuredLeftPadding()I

    move-result v0

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getMeasuredRightMargin()I

    move-result v0

    return v0
.end method

.method public getMeasuredRightPadding()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getMeasuredRightPadding()I

    move-result v0

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getMeasuredTopMargin()I

    move-result v0

    return v0
.end method

.method public getMeasuredTopPadding()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getMeasuredTopPadding()I

    move-result v0

    return v0
.end method

.method public getPanelView()Lnet/veritran/component/view/VTUIComponentContainerView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    return-object v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->getWidthPercentage()F

    move-result v0

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->measureAbsoluteMargins()V

    .line 79
    return-void
.end method

.method public measureAbsolutePaddings()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0}, Lnet/veritran/component/view/VTUIComponentContainerView;->measureAbsolutePaddings()V

    .line 156
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v12, 0x0

    .line 163
    invoke-virtual {p0}, Lnet/veritran/component/view/VTScrollPanelWrapper;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    .line 165
    invoke-virtual {p0, v12, v12}, Lnet/veritran/component/view/VTScrollPanelWrapper;->setMeasuredDimension(II)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    const-string v10, "VTScrollPanelWrapper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTScrollPanelWrapper;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " onMeasure ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lnet/veritran/component/view/VTScrollPanelWrapper;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 173
    .local v4, "mw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 174
    .local v1, "mh":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 175
    .local v8, "sw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 176
    .local v7, "sh":I
    invoke-static {v4}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "modeWidth":Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "modeHeight":Ljava/lang/String;
    const-string v10, "VTScrollPanelWrapper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTScrollPanelWrapper;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " onMeasure -> width("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";height("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/high16 v10, -0x80000000

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 180
    .local v9, "verticalSpec":I
    iget-object v10, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    check-cast v10, Landroid/view/View;

    invoke-virtual {p0, v10, p1, v9}, Lnet/veritran/component/view/VTScrollPanelWrapper;->measureChild(Landroid/view/View;II)V

    .line 181
    iget-object v10, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 182
    .local v6, "panelWidth":I
    iget-object v10, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 183
    .local v5, "panelHeight":I
    const-string v10, "VTScrollPanelWrapper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTScrollPanelWrapper;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " measuredWidth:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";measuredHeight:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, v8, v7}, Lnet/veritran/component/view/VTScrollPanelWrapper;->setMeasuredDimension(II)V

    .line 187
    iget-object v10, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->backgroundColor:Ljava/lang/Integer;

    if-eqz v10, :cond_2

    .line 188
    iget-object v10, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v10}, Lnet/veritran/component/view/VTScrollPanelWrapper;->setBackgroundColor(I)V

    .line 190
    :cond_2
    iget-object v10, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->drawable:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->drawable:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 191
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v10

    invoke-virtual {v10}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v10

    iget-object v11, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->drawable:Ljava/lang/String;

    invoke-virtual {v10, v11, v8, v7}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lnet/veritran/component/view/VTScrollPanelWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v10, v11, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v10}, Lnet/veritran/component/view/VTScrollPanelWrapper;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 217
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/widget/NestedScrollView;->onScrollChanged(IIII)V

    .line 218
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->restartSessionTimeout()V

    .line 219
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 84
    iput-object p1, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->backgroundColor:Ljava/lang/Integer;

    .line 85
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->drawable:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 1
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0, p1}, Lnet/veritran/component/view/VTUIComponentContainerView;->setComponentInnerAlignment(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 1
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0, p1}, Lnet/veritran/component/view/VTUIComponentContainerView;->setComponentVerticalAlignment(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 1
    .param p1, "h"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0, p1}, Lnet/veritran/component/view/VTUIComponentContainerView;->setFixedHeight(I)V

    .line 214
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 31
    const-string v0, "VTScrollPanelWrapper"

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

    .line 33
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/veritran/component/view/VTUIComponentContainerView;->setFixedMargins(FFFF)V

    .line 34
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 1
    .param p1, "w"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0, p1}, Lnet/veritran/component/view/VTUIComponentContainerView;->setFixedWidth(I)V

    .line 204
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 1
    .param p1, "perc"    # F

    .prologue
    .line 107
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0, p1}, Lnet/veritran/component/view/VTUIComponentContainerView;->setHeightPercentage(F)V

    .line 108
    return-void
.end method

.method public setPanelView(Lnet/veritran/component/view/VTUIComponentContainerView;)V
    .locals 0
    .param p1, "panelView"    # Lnet/veritran/component/view/VTUIComponentContainerView;

    .prologue
    .line 37
    iput-object p1, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    .line 38
    check-cast p1, Landroid/view/View;

    .end local p1    # "panelView":Lnet/veritran/component/view/VTUIComponentContainerView;
    invoke-virtual {p0, p1}, Lnet/veritran/component/view/VTScrollPanelWrapper;->addView(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 72
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/veritran/component/view/VTUIComponentContainerView;->setPercentageMargins(FFFF)V

    .line 73
    return-void
.end method

.method public setPercentagePaddings(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 149
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/veritran/component/view/VTUIComponentContainerView;->setPercentagePaddings(FFFF)V

    .line 150
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 1
    .param p1, "perc"    # F

    .prologue
    .line 101
    iget-object v0, p0, Lnet/veritran/component/view/VTScrollPanelWrapper;->panelView:Lnet/veritran/component/view/VTUIComponentContainerView;

    invoke-interface {v0, p1}, Lnet/veritran/component/view/VTUIComponentContainerView;->setWidthPercentage(F)V

    .line 102
    return-void
.end method
