.class public Lnet/veritran/component/view/VTCheckboxComponentView;
.super Landroid/widget/CheckBox;
.source "VTCheckboxComponentView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUICompoundButtonView;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTCheckboxComponentView"


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

    .line 45
    invoke-virtual {p1}, Lnet/veritran/component/VTUIComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 19
    iput v1, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->percentageWidth:F

    .line 20
    iput v1, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->percentageHeight:F

    .line 22
    iput v2, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->percentageLeftMargin:F

    .line 23
    iput v2, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->percentageTopMargin:F

    .line 24
    iput v2, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->percentageRightMargin:F

    .line 25
    iput v2, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->percentageBottomMargin:F

    .line 27
    iput v3, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->measuredLeftMargin:I

    .line 28
    iput v3, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->measuredRightMargin:I

    .line 29
    iput v3, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->measuredTopMargin:I

    .line 30
    iput v3, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->measuredBottomMargin:I

    .line 32
    iput v1, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedLeftMargin:F

    .line 33
    iput v1, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedRightMargin:F

    .line 34
    iput v1, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedTopMargin:F

    .line 35
    iput v1, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedBottomMargin:F

    .line 37
    iput v4, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedWidth:I

    .line 38
    iput v4, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedHeight:I

    .line 40
    iput-object v5, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 41
    iput-object v5, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 47
    invoke-super {p0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 48
    invoke-super {p0, p0}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->percentageHeight:F

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->measuredTopMargin:I

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->percentageWidth:F

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 181
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->percentageLeftMargin:F

    .line 182
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->measuredLeftMargin:I

    .line 183
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->percentageRightMargin:F

    .line 184
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->measuredRightMargin:I

    .line 185
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->percentageTopMargin:F

    .line 186
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->measuredTopMargin:I

    .line 187
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->percentageBottomMargin:F

    .line 188
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->measuredBottomMargin:I

    .line 189
    return-void

    .line 182
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 184
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 186
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 188
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 77
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->focusListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 89
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 98
    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxComponentView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    .line 99
    invoke-super {p0, v10, v10}, Landroid/widget/CheckBox;->setMeasuredDimension(II)V

    .line 145
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v8, "VTCheckboxComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxComponentView;->getText()Ljava/lang/CharSequence;

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

    .line 104
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 105
    .local v3, "mw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 106
    .local v0, "mh":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 107
    .local v7, "sw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 108
    .local v6, "sh":I
    invoke-static {v3}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "modeWidth":Ljava/lang/String;
    invoke-static {v0}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "modeHeight":Ljava/lang/String;
    if-nez v0, :cond_1

    if-nez v6, :cond_1

    .line 111
    const/high16 v0, -0x80000000

    .line 112
    const v6, 0xffffff

    .line 113
    const-string v8, "VTCheckboxComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxComponentView;->getTag()Ljava/lang/Object;

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

    .line 115
    :cond_1
    const-string v8, "VTCheckboxComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxComponentView;->getText()Ljava/lang/CharSequence;

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

    .line 116
    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxComponentView;->measureAbsoluteMargins()V

    .line 118
    const-string v8, "VTCheckboxComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxComponentView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] -> getMeasuredWidth("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxComponentView;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ");getMeasuredHeight("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxComponentView;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget v8, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->measuredLeftMargin:I

    sub-int v8, v7, v8

    iget v9, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->measuredRightMargin:I

    sub-int v5, v8, v9

    .line 121
    .local v5, "pixelsWidth":I
    iget v8, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->measuredTopMargin:I

    sub-int v8, v6, v8

    iget v9, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->measuredBottomMargin:I

    sub-int v4, v8, v9

    .line 123
    .local v4, "pixelsHeight":I
    iget v8, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedWidth:I

    if-eq v8, v11, :cond_2

    .line 124
    iget v5, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedWidth:I

    .line 126
    :cond_2
    iget v8, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedHeight:I

    if-eq v8, v11, :cond_3

    .line 127
    iget v4, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedHeight:I

    .line 130
    :cond_3
    if-le v5, v4, :cond_5

    iget v8, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedWidth:I

    if-ne v8, v11, :cond_5

    .line 131
    move v5, v4

    .line 136
    :cond_4
    :goto_1
    const-string v8, "VTCheckboxComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure  ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxComponentView;->getText()Ljava/lang/CharSequence;

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

    .line 137
    invoke-super {p0, v5, v4}, Landroid/widget/CheckBox;->setMeasuredDimension(II)V

    .line 141
    const-string v8, "VTCheckboxComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure  ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxComponentView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] -> gravity="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTCheckboxComponentView;->getGravity()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/16 v8, 0x11

    invoke-virtual {p0, v8}, Lnet/veritran/component/view/VTCheckboxComponentView;->setGravity(I)V

    goto/16 :goto_0

    .line 132
    :cond_5
    if-le v4, v5, :cond_4

    iget v8, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedHeight:I

    if-ne v8, v11, :cond_4

    .line 133
    move v4, v5

    goto :goto_1
.end method

.method public setBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "bgcolor"    # Ljava/lang/Integer;

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lnet/veritran/component/view/VTCheckboxComponentView;->setBackgroundColor(Ljava/lang/Integer;)V

    .line 259
    return-void
.end method

.method public setChecked(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "checked"    # Ljava/lang/Boolean;

    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 201
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 195
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 207
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 213
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 252
    iput p1, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedHeight:I

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
    .line 53
    const-string v0, "VTCheckboxComponentView"

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

    .line 54
    iput p1, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedLeftMargin:F

    .line 55
    iput p2, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedTopMargin:F

    .line 56
    iput p3, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedRightMargin:F

    .line 57
    iput p4, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedBottomMargin:F

    .line 58
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 242
    iput p1, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->fixedWidth:I

    .line 243
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 222
    iput p1, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->percentageHeight:F

    .line 223
    return-void
.end method

.method public setImageOffName(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 271
    return-void
.end method

.method public setImageOnName(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 265
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 81
    iput-object p1, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 82
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 93
    iput-object p1, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 94
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 173
    iput p1, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->percentageLeftMargin:F

    .line 174
    iput p2, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->percentageTopMargin:F

    .line 175
    iput p3, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->percentageRightMargin:F

    .line 176
    iput p4, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->percentageBottomMargin:F

    .line 177
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 217
    iput p1, p0, Lnet/veritran/component/view/VTCheckboxComponentView;->percentageWidth:F

    .line 218
    return-void
.end method
