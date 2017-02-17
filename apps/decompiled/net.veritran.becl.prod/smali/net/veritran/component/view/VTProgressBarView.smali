.class public Lnet/veritran/component/view/VTProgressBarView;
.super Landroid/widget/ProgressBar;
.source "VTProgressBarView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentView;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTProgressView"


# instance fields
.field private backgroundImage:Ljava/lang/String;

.field component:Lnet/veritran/component/VTUIComponent;

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
.method public constructor <init>(Lnet/veritran/component/VTUIComponent;)V
    .locals 7
    .param p1, "component"    # Lnet/veritran/component/VTUIComponent;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    .line 43
    invoke-virtual {p1}, Lnet/veritran/component/VTUIComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x1010078

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput v3, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageWidth:F

    .line 19
    iput v3, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageHeight:F

    .line 21
    iput v4, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageLeftMargin:F

    .line 22
    iput v4, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageTopMargin:F

    .line 23
    iput v4, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageRightMargin:F

    .line 24
    iput v4, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageBottomMargin:F

    .line 26
    iput v5, p0, Lnet/veritran/component/view/VTProgressBarView;->measuredLeftMargin:I

    .line 27
    iput v5, p0, Lnet/veritran/component/view/VTProgressBarView;->measuredRightMargin:I

    .line 28
    iput v5, p0, Lnet/veritran/component/view/VTProgressBarView;->measuredTopMargin:I

    .line 29
    iput v5, p0, Lnet/veritran/component/view/VTProgressBarView;->measuredBottomMargin:I

    .line 31
    iput v3, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedLeftMargin:F

    .line 32
    iput v3, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedRightMargin:F

    .line 33
    iput v3, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedTopMargin:F

    .line 34
    iput v3, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedBottomMargin:F

    .line 36
    iput v6, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedWidth:I

    .line 38
    iput v6, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedHeight:I

    .line 45
    iput-object p1, p0, Lnet/veritran/component/view/VTProgressBarView;->component:Lnet/veritran/component/VTUIComponent;

    .line 46
    return-void
.end method


# virtual methods
.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageHeight:F

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lnet/veritran/component/view/VTProgressBarView;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lnet/veritran/component/view/VTProgressBarView;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lnet/veritran/component/view/VTProgressBarView;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lnet/veritran/component/view/VTProgressBarView;->measuredTopMargin:I

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageWidth:F

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 203
    iget v0, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageLeftMargin:F

    .line 204
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTProgressBarView;->measuredLeftMargin:I

    .line 205
    iget v0, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageRightMargin:F

    .line 206
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTProgressBarView;->measuredRightMargin:I

    .line 207
    iget v0, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageTopMargin:F

    .line 208
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTProgressBarView;->measuredTopMargin:I

    .line 209
    iget v0, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageBottomMargin:F

    .line 210
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTProgressBarView;->measuredBottomMargin:I

    .line 211
    return-void

    .line 204
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 206
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 208
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 210
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 150
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, 0x42c80000    # 100.0f

    const/high16 v9, -0x40800000    # -1.0f

    .line 107
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 108
    .local v2, "mw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 109
    .local v1, "mh":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 110
    .local v6, "sw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 114
    .local v5, "sh":I
    invoke-virtual {p0}, Lnet/veritran/component/view/VTProgressBarView;->measureAbsoluteMargins()V

    .line 118
    iget v7, p0, Lnet/veritran/component/view/VTProgressBarView;->measuredLeftMargin:I

    sub-int v7, v6, v7

    iget v8, p0, Lnet/veritran/component/view/VTProgressBarView;->measuredRightMargin:I

    sub-int v4, v7, v8

    .line 120
    .local v4, "pixelsWidth":I
    iget v7, p0, Lnet/veritran/component/view/VTProgressBarView;->measuredTopMargin:I

    sub-int v7, v5, v7

    iget v8, p0, Lnet/veritran/component/view/VTProgressBarView;->measuredBottomMargin:I

    sub-int v3, v7, v8

    .line 122
    .local v3, "pixelsHeight":I
    iget v7, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageWidth:F

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_0

    .line 123
    int-to-float v7, v4

    iget v8, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageWidth:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v10

    float-to-int v4, v7

    .line 126
    :cond_0
    iget v7, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageHeight:F

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_2

    .line 127
    int-to-float v7, v3

    iget v8, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageHeight:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v10

    float-to-int v3, v7

    .line 130
    invoke-super {p0, v4, v3}, Landroid/widget/ProgressBar;->setMeasuredDimension(II)V

    .line 142
    :goto_0
    iget-object v7, p0, Lnet/veritran/component/view/VTProgressBarView;->backgroundImage:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lnet/veritran/component/view/VTProgressBarView;->backgroundImage:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 143
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v7

    invoke-virtual {v7}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v7

    iget-object v8, p0, Lnet/veritran/component/view/VTProgressBarView;->backgroundImage:Ljava/lang/String;

    invoke-virtual {v7, v8, v4, v3}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lnet/veritran/component/view/VTProgressBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v7}, Lnet/veritran/component/view/VTProgressBarView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_1
    return-void

    .line 137
    :cond_2
    const/high16 v7, 0x40000000    # 2.0f

    .line 138
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 137
    invoke-super {p0, v7, p2}, Landroid/widget/ProgressBar;->onMeasure(II)V

    goto :goto_0
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 176
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTProgressBarView;->setBackgroundColor(I)V

    .line 177
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lnet/veritran/component/view/VTProgressBarView;->backgroundImage:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 183
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 189
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 99
    iput p1, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedHeight:I

    .line 100
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 50
    const-string v0, "VTProgressView"

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

    .line 51
    iput p1, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedLeftMargin:F

    .line 52
    iput p2, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedTopMargin:F

    .line 53
    iput p3, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedRightMargin:F

    .line 54
    iput p4, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedBottomMargin:F

    .line 55
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 85
    iput p1, p0, Lnet/veritran/component/view/VTProgressBarView;->fixedWidth:I

    .line 86
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 198
    iput p1, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageHeight:F

    .line 199
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 68
    iput p1, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageLeftMargin:F

    .line 69
    iput p2, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageTopMargin:F

    .line 70
    iput p3, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageRightMargin:F

    .line 71
    iput p4, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageBottomMargin:F

    .line 72
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 193
    iput p1, p0, Lnet/veritran/component/view/VTProgressBarView;->percentageWidth:F

    .line 194
    return-void
.end method
