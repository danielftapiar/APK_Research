.class public Lnet/veritran/component/view/VTCheckboxImageComponentView;
.super Landroid/widget/ToggleButton;
.source "VTCheckboxImageComponentView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUICompoundButtonView;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTCheckboxImageComponentView"


# instance fields
.field private checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field fixedBottomMargin:F

.field private fixedHeight:I

.field fixedLeftMargin:F

.field fixedRightMargin:F

.field fixedTopMargin:F

.field private fixedWidth:I

.field private focusListener:Landroid/view/View$OnFocusChangeListener;

.field imageOffName:Ljava/lang/String;

.field imageOnName:Ljava/lang/String;

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
    .locals 6
    .param p1, "component"    # Lnet/veritran/component/VTUIComponent;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 51
    invoke-virtual {p1}, Lnet/veritran/component/VTUIComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    .line 23
    iput v1, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->percentageWidth:F

    .line 24
    iput v1, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->percentageHeight:F

    .line 26
    iput v2, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->percentageLeftMargin:F

    .line 27
    iput v2, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->percentageTopMargin:F

    .line 28
    iput v2, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->percentageRightMargin:F

    .line 29
    iput v2, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->percentageBottomMargin:F

    .line 31
    iput v3, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->measuredLeftMargin:I

    .line 32
    iput v3, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->measuredRightMargin:I

    .line 33
    iput v3, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->measuredTopMargin:I

    .line 34
    iput v3, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->measuredBottomMargin:I

    .line 36
    iput v1, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedLeftMargin:F

    .line 37
    iput v1, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedRightMargin:F

    .line 38
    iput v1, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedTopMargin:F

    .line 39
    iput v1, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedBottomMargin:F

    .line 41
    iput v5, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedWidth:I

    .line 42
    iput v5, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedHeight:I

    .line 44
    iput-object v4, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 45
    iput-object v4, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 47
    iput-object v4, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->imageOnName:Ljava/lang/String;

    .line 48
    iput-object v4, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->imageOffName:Ljava/lang/String;

    .line 53
    const-string v0, ""

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTCheckboxImageComponentView;->setTextOn(Ljava/lang/CharSequence;)V

    .line 54
    const-string v0, ""

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTCheckboxImageComponentView;->setTextOff(Ljava/lang/CharSequence;)V

    .line 56
    invoke-super {p0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    invoke-super {p0, p0}, Landroid/widget/ToggleButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->percentageHeight:F

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->measuredTopMargin:I

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->percentageWidth:F

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 210
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->percentageLeftMargin:F

    .line 211
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->measuredLeftMargin:I

    .line 212
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->percentageRightMargin:F

    .line 213
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->measuredRightMargin:I

    .line 214
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->percentageTopMargin:F

    .line 215
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->measuredTopMargin:I

    .line 216
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->percentageBottomMargin:F

    .line 217
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->measuredBottomMargin:I

    .line 218
    return-void

    .line 211
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 213
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 215
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 217
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 84
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 94
    iget-object v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->focusListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 96
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 116
    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxImageComponentView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_0

    .line 117
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-super {p0, v10, v11}, Landroid/widget/ToggleButton;->setMeasuredDimension(II)V

    .line 174
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string v10, "VTCheckboxImageComponentView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onMeasure ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxImageComponentView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] -> widthMeasureSpec: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";heightMeasureSpec:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 123
    .local v4, "mw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 124
    .local v1, "mh":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 125
    .local v9, "sw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 126
    .local v7, "sh":I
    invoke-static {v4}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "modeWidth":Ljava/lang/String;
    invoke-static {v1}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "modeHeight":Ljava/lang/String;
    if-nez v1, :cond_1

    if-nez v7, :cond_1

    .line 129
    const/high16 v1, -0x80000000

    .line 130
    const v7, 0xffffff

    .line 131
    const-string v10, "VTCheckboxImageComponentView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxImageComponentView;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " onMeasure REDEF! -> width("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 133
    :cond_1
    const-string v10, "VTCheckboxImageComponentView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onMeasure ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxImageComponentView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] -> width("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 134
    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxImageComponentView;->measureAbsoluteMargins()V

    .line 136
    const-string v10, "VTCheckboxImageComponentView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onMeasure ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxImageComponentView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] -> getMeasuredWidth("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxImageComponentView;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ");getMeasuredHeight("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxImageComponentView;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget v10, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->measuredLeftMargin:I

    sub-int v10, v9, v10

    iget v11, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->measuredRightMargin:I

    sub-int v6, v10, v11

    .line 139
    .local v6, "pixelsWidth":I
    iget v10, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->measuredTopMargin:I

    sub-int v10, v7, v10

    iget v11, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->measuredBottomMargin:I

    sub-int v5, v10, v11

    .line 141
    .local v5, "pixelsHeight":I
    iget v10, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedWidth:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 142
    iget v6, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedWidth:I

    .line 144
    :cond_2
    iget v10, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedHeight:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 145
    iget v5, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedHeight:I

    .line 148
    :cond_3
    if-le v6, v5, :cond_7

    .line 149
    move v6, v5

    .line 154
    :cond_4
    :goto_1
    const-string v10, "VTCheckboxImageComponentView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onMeasure  ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxImageComponentView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] -> pixelsWidth="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";pixelsHeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-super {p0, v6, v5}, Landroid/widget/ToggleButton;->setMeasuredDimension(II)V

    .line 159
    const-string v10, "VTCheckboxImageComponentView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onMeasure  ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxImageComponentView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] -> gravity="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxImageComponentView;->getGravity()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/16 v10, 0x11

    invoke-virtual {p0, v10}, Lnet/veritran/component/view/VTCheckboxImageComponentView;->setGravity(I)V

    .line 162
    new-instance v8, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 163
    .local v8, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    iget-object v10, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->imageOnName:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->imageOnName:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 164
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v10

    invoke-virtual {v10}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v10

    iget-object v11, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->imageOnName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6, v5}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const v12, 0x10100a0

    aput v12, v10, v11

    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 166
    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxImageComponentView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {v11, v12, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 165
    invoke-virtual {v8, v10, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 168
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_5
    iget-object v10, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->imageOffName:Ljava/lang/String;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->imageOffName:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 169
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v10

    invoke-virtual {v10}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v10

    iget-object v11, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->imageOffName:Ljava/lang/String;

    invoke-virtual {v10, v11, v6, v5}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    new-array v10, v10, [I

    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 171
    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxImageComponentView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {v11, v12, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 170
    invoke-virtual {v8, v10, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 173
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {p0, v8}, Lnet/veritran/component/view/VTCheckboxImageComponentView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 150
    .end local v8    # "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    :cond_7
    if-le v5, v6, :cond_4

    .line 151
    move v5, v6

    goto/16 :goto_1
.end method

.method public setBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "bgcolor"    # Ljava/lang/Integer;

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lnet/veritran/component/view/VTCheckboxImageComponentView;->setBackgroundColor(Ljava/lang/Integer;)V

    .line 288
    return-void
.end method

.method public setChecked(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "checked"    # Ljava/lang/Boolean;

    .prologue
    .line 71
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 72
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 230
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 224
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 236
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 242
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 281
    iput p1, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedHeight:I

    .line 282
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 62
    const-string v0, "VTCheckboxImageComponentView"

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

    .line 63
    iput p1, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedLeftMargin:F

    .line 64
    iput p2, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedTopMargin:F

    .line 65
    iput p3, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedRightMargin:F

    .line 66
    iput p4, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedBottomMargin:F

    .line 67
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 271
    iput p1, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->fixedWidth:I

    .line 272
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 251
    iput p1, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->percentageHeight:F

    .line 252
    return-void
.end method

.method public setImageOffName(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->imageOffName:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setImageOnName(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->imageOnName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 88
    iput-object p1, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 89
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 100
    iput-object p1, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 101
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 202
    iput p1, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->percentageLeftMargin:F

    .line 203
    iput p2, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->percentageTopMargin:F

    .line 204
    iput p3, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->percentageRightMargin:F

    .line 205
    iput p4, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->percentageBottomMargin:F

    .line 206
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 246
    iput p1, p0, Lnet/veritran/component/view/VTCheckboxImageComponentView;->percentageWidth:F

    .line 247
    return-void
.end method
