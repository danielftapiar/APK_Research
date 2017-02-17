.class public Lnet/veritran/component/view/VTChartComponentView;
.super Landroid/webkit/WebView;
.source "VTChartComponentView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentView;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTChartComponentView"


# instance fields
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
    .locals 5
    .param p1, "component"    # Lnet/veritran/component/VTUIComponent;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 38
    invoke-virtual {p1}, Lnet/veritran/component/VTUIComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 15
    iput v1, p0, Lnet/veritran/component/view/VTChartComponentView;->percentageWidth:F

    .line 16
    iput v1, p0, Lnet/veritran/component/view/VTChartComponentView;->percentageHeight:F

    .line 18
    iput v3, p0, Lnet/veritran/component/view/VTChartComponentView;->percentageLeftMargin:F

    .line 19
    iput v3, p0, Lnet/veritran/component/view/VTChartComponentView;->percentageTopMargin:F

    .line 20
    iput v3, p0, Lnet/veritran/component/view/VTChartComponentView;->percentageRightMargin:F

    .line 21
    iput v3, p0, Lnet/veritran/component/view/VTChartComponentView;->percentageBottomMargin:F

    .line 23
    iput v2, p0, Lnet/veritran/component/view/VTChartComponentView;->measuredLeftMargin:I

    .line 24
    iput v2, p0, Lnet/veritran/component/view/VTChartComponentView;->measuredRightMargin:I

    .line 25
    iput v2, p0, Lnet/veritran/component/view/VTChartComponentView;->measuredTopMargin:I

    .line 26
    iput v2, p0, Lnet/veritran/component/view/VTChartComponentView;->measuredBottomMargin:I

    .line 28
    iput v1, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedLeftMargin:F

    .line 29
    iput v1, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedRightMargin:F

    .line 30
    iput v1, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedTopMargin:F

    .line 31
    iput v1, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedBottomMargin:F

    .line 33
    iput v4, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedWidth:I

    .line 34
    iput v4, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedHeight:I

    .line 40
    invoke-virtual {p0, v2}, Lnet/veritran/component/view/VTChartComponentView;->setVerticalScrollBarEnabled(Z)V

    .line 41
    invoke-virtual {p0, v2}, Lnet/veritran/component/view/VTChartComponentView;->setHorizontalScrollBarEnabled(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lnet/veritran/component/view/VTChartComponentView;->percentageHeight:F

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lnet/veritran/component/view/VTChartComponentView;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lnet/veritran/component/view/VTChartComponentView;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lnet/veritran/component/view/VTChartComponentView;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lnet/veritran/component/view/VTChartComponentView;->measuredTopMargin:I

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lnet/veritran/component/view/VTChartComponentView;->percentageWidth:F

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 138
    iget v0, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTChartComponentView;->percentageLeftMargin:F

    .line 139
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTChartComponentView;->measuredLeftMargin:I

    .line 140
    iget v0, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTChartComponentView;->percentageRightMargin:F

    .line 141
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTChartComponentView;->measuredRightMargin:I

    .line 142
    iget v0, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTChartComponentView;->percentageTopMargin:F

    .line 143
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTChartComponentView;->measuredTopMargin:I

    .line 144
    iget v0, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTChartComponentView;->percentageBottomMargin:F

    .line 145
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTChartComponentView;->measuredBottomMargin:I

    .line 146
    return-void

    .line 139
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 141
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 143
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 145
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 54
    invoke-virtual {p0}, Lnet/veritran/component/view/VTChartComponentView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    .line 55
    invoke-super {p0, v10, v10}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    .line 104
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v8, "VTChartComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure [] -> widthMeasureSpec: "

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

    .line 61
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    .line 64
    const-string v8, "VTChartComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure [] -> widthMeasureSpec: "

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

    .line 65
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 66
    .local v3, "mw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 67
    .local v0, "mh":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 68
    .local v7, "sw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 69
    .local v6, "sh":I
    invoke-static {v3}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "modeWidth":Ljava/lang/String;
    invoke-static {v0}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "modeHeight":Ljava/lang/String;
    const-string v8, "VTChartComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure [] -> width("

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

    .line 77
    if-nez v0, :cond_1

    if-nez v6, :cond_1

    .line 78
    const/high16 v0, -0x80000000

    .line 79
    const v6, 0xffffff

    .line 80
    const-string v8, "VTChartComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTChartComponentView;->getTag()Ljava/lang/Object;

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

    .line 83
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/view/VTChartComponentView;->measureAbsoluteMargins()V

    .line 87
    const-string v8, "VTChartComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure  [] -> leftMargin:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lnet/veritran/component/view/VTChartComponentView;->measuredLeftMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";rightMargin:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lnet/veritran/component/view/VTChartComponentView;->measuredRightMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";topMargin:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lnet/veritran/component/view/VTChartComponentView;->measuredTopMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";bottomMargin:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lnet/veritran/component/view/VTChartComponentView;->measuredBottomMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    move v5, v7

    .line 90
    .local v5, "pixelsWidth":I
    move v4, v6

    .line 92
    .local v4, "pixelsHeight":I
    iget v8, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedWidth:I

    if-eq v8, v11, :cond_2

    .line 93
    iget v5, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedWidth:I

    .line 95
    :cond_2
    iget v8, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedHeight:I

    if-eq v8, v11, :cond_3

    .line 96
    iget v4, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedHeight:I

    .line 99
    :cond_3
    const-string v8, "VTChartComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure  [] -> pixelsWidth="

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

    .line 100
    invoke-super {p0, v5, v4}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 156
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 151
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 161
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 166
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 205
    iput p1, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedHeight:I

    .line 206
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 46
    const-string v0, "VTChartComponentView"

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

    .line 47
    iput p1, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedLeftMargin:F

    .line 48
    iput p2, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedTopMargin:F

    .line 49
    iput p3, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedRightMargin:F

    .line 50
    iput p4, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedBottomMargin:F

    .line 51
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 195
    iput p1, p0, Lnet/veritran/component/view/VTChartComponentView;->fixedWidth:I

    .line 196
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 175
    iput p1, p0, Lnet/veritran/component/view/VTChartComponentView;->percentageHeight:F

    .line 176
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 130
    iput p1, p0, Lnet/veritran/component/view/VTChartComponentView;->percentageLeftMargin:F

    .line 131
    iput p2, p0, Lnet/veritran/component/view/VTChartComponentView;->percentageTopMargin:F

    .line 132
    iput p3, p0, Lnet/veritran/component/view/VTChartComponentView;->percentageRightMargin:F

    .line 133
    iput p4, p0, Lnet/veritran/component/view/VTChartComponentView;->percentageBottomMargin:F

    .line 134
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 170
    iput p1, p0, Lnet/veritran/component/view/VTChartComponentView;->percentageWidth:F

    .line 171
    return-void
.end method
