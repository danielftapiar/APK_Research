.class public Lnet/veritran/component/view/VTRadioButtonComponentView;
.super Landroid/widget/RadioButton;
.source "VTRadioButtonComponentView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUICompoundButtonView;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTRadioButtonComponentView"


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

    invoke-direct {p0, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 23
    iput v1, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->percentageWidth:F

    .line 24
    iput v1, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->percentageHeight:F

    .line 26
    iput v2, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->percentageLeftMargin:F

    .line 27
    iput v2, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->percentageTopMargin:F

    .line 28
    iput v2, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->percentageRightMargin:F

    .line 29
    iput v2, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->percentageBottomMargin:F

    .line 31
    iput v3, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->measuredLeftMargin:I

    .line 32
    iput v3, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->measuredRightMargin:I

    .line 33
    iput v3, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->measuredTopMargin:I

    .line 34
    iput v3, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->measuredBottomMargin:I

    .line 36
    iput v1, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedLeftMargin:F

    .line 37
    iput v1, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedRightMargin:F

    .line 38
    iput v1, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedTopMargin:F

    .line 39
    iput v1, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedBottomMargin:F

    .line 41
    iput v5, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedWidth:I

    .line 42
    iput v5, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedHeight:I

    .line 44
    iput-object v4, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 45
    iput-object v4, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 47
    iput-object v4, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->imageOnName:Ljava/lang/String;

    .line 48
    iput-object v4, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->imageOffName:Ljava/lang/String;

    .line 53
    invoke-super {p0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 54
    invoke-super {p0, p0}, Landroid/widget/RadioButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->percentageHeight:F

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->measuredTopMargin:I

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->percentageWidth:F

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 226
    iget v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->percentageLeftMargin:F

    .line 227
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->measuredLeftMargin:I

    .line 228
    iget v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->percentageRightMargin:F

    .line 229
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->measuredRightMargin:I

    .line 230
    iget v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->percentageTopMargin:F

    .line 231
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->measuredTopMargin:I

    .line 232
    iget v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->percentageBottomMargin:F

    .line 233
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->measuredBottomMargin:I

    .line 234
    return-void

    .line 227
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 229
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 231
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 233
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 79
    iget-object v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 81
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 91
    iget-object v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->focusListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 93
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 113
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTRadioButtonComponentView;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_1

    .line 114
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v14, v15}, Landroid/widget/RadioButton;->setMeasuredDimension(II)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string v14, "VTRadioButtonComponentView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onMeasure ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTRadioButtonComponentView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] -> widthMeasureSpec: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";heightMeasureSpec:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 120
    .local v8, "mw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 121
    .local v5, "mh":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 122
    .local v13, "sw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 123
    .local v11, "sh":I
    invoke-static {v8}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, "modeWidth":Ljava/lang/String;
    invoke-static {v5}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "modeHeight":Ljava/lang/String;
    if-nez v5, :cond_2

    if-nez v11, :cond_2

    .line 126
    const/high16 v5, -0x80000000

    .line 127
    const v11, 0xffffff

    .line 128
    const-string v14, "VTRadioButtonComponentView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTRadioButtonComponentView;->getTag()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " onMeasure REDEF! -> width("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "):"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";height("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "):"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_2
    const-string v14, "VTRadioButtonComponentView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onMeasure ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTRadioButtonComponentView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] -> width("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "):"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";height("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "):"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTRadioButtonComponentView;->measureAbsoluteMargins()V

    .line 133
    const-string v14, "VTRadioButtonComponentView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onMeasure ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTRadioButtonComponentView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] -> getMeasuredWidth("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTRadioButtonComponentView;->getMeasuredWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ");getMeasuredHeight("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTRadioButtonComponentView;->getMeasuredHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p0

    iget v14, v0, Lnet/veritran/component/view/VTRadioButtonComponentView;->measuredLeftMargin:I

    sub-int v14, v13, v14

    move-object/from16 v0, p0

    iget v15, v0, Lnet/veritran/component/view/VTRadioButtonComponentView;->measuredRightMargin:I

    sub-int v10, v14, v15

    .line 136
    .local v10, "pixelsWidth":I
    move-object/from16 v0, p0

    iget v14, v0, Lnet/veritran/component/view/VTRadioButtonComponentView;->measuredTopMargin:I

    sub-int v14, v11, v14

    move-object/from16 v0, p0

    iget v15, v0, Lnet/veritran/component/view/VTRadioButtonComponentView;->measuredBottomMargin:I

    sub-int v9, v14, v15

    .line 138
    .local v9, "pixelsHeight":I
    move-object/from16 v0, p0

    iget v14, v0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedWidth:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_3

    .line 139
    move-object/from16 v0, p0

    iget v10, v0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedWidth:I

    .line 141
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedHeight:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_4

    .line 142
    move-object/from16 v0, p0

    iget v9, v0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedHeight:I

    .line 153
    :cond_4
    const-string v14, "VTRadioButtonComponentView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onMeasure  ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTRadioButtonComponentView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] -> pixelsWidth="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";pixelsHeight="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    move-object/from16 v0, p0

    invoke-super {v0, v10, v9}, Landroid/widget/RadioButton;->setMeasuredDimension(II)V

    .line 158
    const-string v14, "VTRadioButtonComponentView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onMeasure  ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTRadioButtonComponentView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] -> gravity="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTRadioButtonComponentView;->getGravity()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/16 v14, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lnet/veritran/component/view/VTRadioButtonComponentView;->setGravity(I)V

    .line 161
    new-instance v12, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 163
    .local v12, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTRadioButtonComponentView;->imageOnName:Ljava/lang/String;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTRadioButtonComponentView;->imageOnName:Ljava/lang/String;

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 165
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v14

    invoke-virtual {v14}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/veritran/component/view/VTRadioButtonComponentView;->imageOnName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lnet/veritran/utils/ImageHandler;->getBitmapSize(Ljava/lang/String;)[I

    move-result-object v4

    .line 166
    .local v4, "imageSizes":[I
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v14

    invoke-virtual {v14}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/veritran/component/view/VTRadioButtonComponentView;->imageOnName:Ljava/lang/String;

    const/16 v16, 0x0

    aget v16, v4, v16

    const/16 v17, 0x1

    aget v17, v4, v17

    invoke-virtual/range {v14 .. v17}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 167
    .local v3, "bm":Landroid/graphics/Bitmap;
    const/4 v14, 0x1

    invoke-static {v3, v10, v9, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 170
    .local v1, "b":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTRadioButtonComponentView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v2, v14, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 172
    .local v2, "bd":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v14, 0x2

    new-array v14, v14, [I

    fill-array-data v14, :array_0

    invoke-virtual {v12, v14, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 173
    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const v16, 0x10100a0

    aput v16, v14, v15

    invoke-virtual {v12, v14, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 176
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "imageSizes":[I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTRadioButtonComponentView;->imageOffName:Ljava/lang/String;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTRadioButtonComponentView;->imageOffName:Ljava/lang/String;

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 178
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v14

    invoke-virtual {v14}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/veritran/component/view/VTRadioButtonComponentView;->imageOffName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lnet/veritran/utils/ImageHandler;->getBitmapSize(Ljava/lang/String;)[I

    move-result-object v4

    .line 179
    .restart local v4    # "imageSizes":[I
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v14

    invoke-virtual {v14}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/veritran/component/view/VTRadioButtonComponentView;->imageOffName:Ljava/lang/String;

    const/16 v16, 0x0

    aget v16, v4, v16

    const/16 v17, 0x1

    aget v17, v4, v17

    invoke-virtual/range {v14 .. v17}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 180
    .restart local v3    # "bm":Landroid/graphics/Bitmap;
    const/4 v14, 0x1

    invoke-static {v3, v10, v9, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 183
    .restart local v1    # "b":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTRadioButtonComponentView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v2, v14, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 185
    .restart local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const v16, 0x10100a7

    aput v16, v14, v15

    invoke-virtual {v12, v14, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 186
    const/4 v14, 0x0

    new-array v14, v14, [I

    invoke-virtual {v12, v14, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 189
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "imageSizes":[I
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTRadioButtonComponentView;->imageOnName:Ljava/lang/String;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTRadioButtonComponentView;->imageOnName:Ljava/lang/String;

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTRadioButtonComponentView;->imageOffName:Ljava/lang/String;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/view/VTRadioButtonComponentView;->imageOffName:Ljava/lang/String;

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 191
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lnet/veritran/component/view/VTRadioButtonComponentView;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 172
    nop

    :array_0
    .array-data 4
        0x10100a0
        0x10100a7
    .end array-data
.end method

.method public setBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "bgcolor"    # Ljava/lang/Integer;

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lnet/veritran/component/view/VTRadioButtonComponentView;->setBackgroundColor(Ljava/lang/Integer;)V

    .line 304
    return-void
.end method

.method public setChecked(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "checked"    # Ljava/lang/Boolean;

    .prologue
    .line 68
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 69
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 246
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 240
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 252
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 258
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 297
    iput p1, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedHeight:I

    .line 298
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 59
    const-string v0, "VTRadioButtonComponentView"

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

    .line 60
    iput p1, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedLeftMargin:F

    .line 61
    iput p2, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedTopMargin:F

    .line 62
    iput p3, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedRightMargin:F

    .line 63
    iput p4, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedBottomMargin:F

    .line 64
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 287
    iput p1, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->fixedWidth:I

    .line 288
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 267
    iput p1, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->percentageHeight:F

    .line 268
    return-void
.end method

.method public setImageOffName(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->imageOffName:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setImageOnName(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->imageOnName:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 85
    iput-object p1, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->checkedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 86
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 97
    iput-object p1, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 98
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 218
    iput p1, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->percentageLeftMargin:F

    .line 219
    iput p2, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->percentageTopMargin:F

    .line 220
    iput p3, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->percentageRightMargin:F

    .line 221
    iput p4, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->percentageBottomMargin:F

    .line 222
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 262
    iput p1, p0, Lnet/veritran/component/view/VTRadioButtonComponentView;->percentageWidth:F

    .line 263
    return-void
.end method
