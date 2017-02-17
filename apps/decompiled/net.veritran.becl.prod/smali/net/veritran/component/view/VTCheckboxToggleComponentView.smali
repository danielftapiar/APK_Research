.class public Lnet/veritran/component/view/VTCheckboxToggleComponentView;
.super Landroid/widget/Switch;
.source "VTCheckboxToggleComponentView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUICompoundButtonView;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTCheckboxToggleComponentView"


# instance fields
.field private checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field fixedBottomMargin:F

.field private fixedHeight:I

.field fixedLeftMargin:F

.field fixedRightMargin:F

.field fixedTopMargin:F

.field private fixedWidth:I

.field private focusListener:Landroid/view/View$OnFocusChangeListener;

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
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 44
    invoke-virtual {p1}, Lnet/veritran/component/VTUIComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 18
    iput v1, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->percentageWidth:F

    .line 19
    iput v1, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->percentageHeight:F

    .line 21
    iput v2, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->percentageLeftMargin:F

    .line 22
    iput v2, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->percentageTopMargin:F

    .line 23
    iput v2, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->percentageRightMargin:F

    .line 24
    iput v2, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->percentageBottomMargin:F

    .line 26
    iput v3, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->measuredLeftMargin:I

    .line 27
    iput v3, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->measuredRightMargin:I

    .line 28
    iput v3, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->measuredTopMargin:I

    .line 29
    iput v3, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->measuredBottomMargin:I

    .line 31
    iput v1, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedLeftMargin:F

    .line 32
    iput v1, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedRightMargin:F

    .line 33
    iput v1, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedTopMargin:F

    .line 34
    iput v1, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedBottomMargin:F

    .line 36
    iput v4, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedWidth:I

    .line 37
    iput v4, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedHeight:I

    .line 39
    iput-object v5, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 40
    iput-object v5, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 46
    invoke-super {p0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 47
    invoke-super {p0, p0}, Landroid/widget/Switch;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->percentageHeight:F

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->measuredTopMargin:I

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->percentageWidth:F

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 173
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->percentageLeftMargin:F

    .line 174
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->measuredLeftMargin:I

    .line 175
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->percentageRightMargin:F

    .line 176
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->measuredRightMargin:I

    .line 177
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->percentageTopMargin:F

    .line 178
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->measuredTopMargin:I

    .line 179
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->percentageBottomMargin:F

    .line 180
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->measuredBottomMargin:I

    .line 181
    return-void

    .line 174
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 176
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 178
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 180
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 74
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->focusListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 86
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 95
    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    .line 96
    invoke-super {p0, v10, v10}, Landroid/widget/Switch;->setMeasuredDimension(II)V

    .line 137
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v8, "VTCheckboxToggleComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] -> widthMeasureSpec: "

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

    .line 101
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 102
    .local v3, "mw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 103
    .local v0, "mh":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 104
    .local v7, "sw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 105
    .local v6, "sh":I
    invoke-static {v3}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "modeWidth":Ljava/lang/String;
    invoke-static {v0}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "modeHeight":Ljava/lang/String;
    if-nez v0, :cond_1

    if-nez v6, :cond_1

    .line 108
    const/high16 v0, -0x80000000

    .line 109
    const v6, 0xffffff

    .line 110
    const-string v8, "VTCheckboxToggleComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->getTag()Ljava/lang/Object;

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

    .line 112
    :cond_1
    const-string v8, "VTCheckboxToggleComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] -> width("

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

    .line 113
    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->measureAbsoluteMargins()V

    .line 115
    const-string v8, "VTCheckboxToggleComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] -> getMeasuredWidth("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ");getMeasuredHeight("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget v8, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->measuredLeftMargin:I

    sub-int v8, v7, v8

    iget v9, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->measuredRightMargin:I

    sub-int v5, v8, v9

    .line 118
    .local v5, "pixelsWidth":I
    iget v8, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->measuredTopMargin:I

    sub-int v8, v6, v8

    iget v9, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->measuredBottomMargin:I

    sub-int v4, v8, v9

    .line 120
    .local v4, "pixelsHeight":I
    iget v8, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedWidth:I

    if-eq v8, v11, :cond_2

    .line 121
    iget v5, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedWidth:I

    .line 123
    :cond_2
    iget v8, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedHeight:I

    if-eq v8, v11, :cond_3

    .line 124
    iget v4, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedHeight:I

    .line 127
    :cond_3
    const-string v8, "VTCheckboxToggleComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure  ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] -> pixelsWidth="

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

    .line 128
    invoke-super {p0, v5, v4}, Landroid/widget/Switch;->setMeasuredDimension(II)V

    .line 132
    const-string v8, "VTCheckboxToggleComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure  ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] -> gravity="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->getGravity()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/16 v8, 0x11

    invoke-virtual {p0, v8}, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->setGravity(I)V

    .line 135
    invoke-super {p0, v5, v4}, Landroid/widget/Switch;->onMeasure(II)V

    goto/16 :goto_0
.end method

.method public setBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "bgcolor"    # Ljava/lang/Integer;

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->setBackgroundColor(Ljava/lang/Integer;)V

    .line 251
    return-void
.end method

.method public setChecked(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "checked"    # Ljava/lang/Boolean;

    .prologue
    .line 61
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 62
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 193
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 187
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 199
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 205
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 244
    iput p1, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedHeight:I

    .line 245
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 52
    const-string v0, "VTCheckboxToggleComponentView"

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

    .line 53
    iput p1, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedLeftMargin:F

    .line 54
    iput p2, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedTopMargin:F

    .line 55
    iput p3, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedRightMargin:F

    .line 56
    iput p4, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedBottomMargin:F

    .line 57
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 234
    iput p1, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->fixedWidth:I

    .line 235
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 214
    iput p1, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->percentageHeight:F

    .line 215
    return-void
.end method

.method public setImageOffName(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 263
    return-void
.end method

.method public setImageOnName(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 257
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 78
    iput-object p1, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 79
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 90
    iput-object p1, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 91
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 165
    iput p1, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->percentageLeftMargin:F

    .line 166
    iput p2, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->percentageTopMargin:F

    .line 167
    iput p3, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->percentageRightMargin:F

    .line 168
    iput p4, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->percentageBottomMargin:F

    .line 169
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 209
    iput p1, p0, Lnet/veritran/component/view/VTCheckboxToggleComponentView;->percentageWidth:F

    .line 210
    return-void
.end method
