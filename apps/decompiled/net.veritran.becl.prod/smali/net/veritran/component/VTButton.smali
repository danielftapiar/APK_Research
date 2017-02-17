.class public Lnet/veritran/component/VTButton;
.super Lnet/veritran/component/VTUIComponent;
.source "VTButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VTButton"


# instance fields
.field private vtButtonView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 0
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponent;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTButton;->setActivity(Lnet/veritran/VTCommonActivity;)V

    .line 54
    return-void
.end method

.method private initButton()V
    .locals 13

    .prologue
    const/16 v1, 0x3ea

    const/4 v4, 0x0

    .line 77
    invoke-direct {p0}, Lnet/veritran/component/VTButton;->initVisual()V

    .line 80
    iget-object v0, p0, Lnet/veritran/component/VTButton;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v5, "Onclick"

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "onclick":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTButton;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v0

    invoke-static {v2, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v2

    .line 83
    iget-object v0, p0, Lnet/veritran/component/VTButton;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v5, "submit"

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "formId":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTButton;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v0

    invoke-static {v3, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 86
    iget-object v0, p0, Lnet/veritran/component/VTButton;->vtButtonView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lnet/veritran/component/VTButton;->vtButtonView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 88
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    iget-object v0, p0, Lnet/veritran/component/VTButton;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v5, "isBackButton"

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 92
    .local v12, "isBackButton":Ljava/lang/String;
    if-eqz v12, :cond_0

    const-string v0, "true"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v0

    check-cast v0, Lnet/veritran/VTCommonActivity;

    invoke-virtual {p0}, Lnet/veritran/component/VTButton;->getVisualAreaName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lnet/veritran/VTCommonActivity;->setBackAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    iget-boolean v0, v0, Lnet/veritran/VTUserApplicationSmart;->hidesBackButton:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lnet/veritran/component/VTButton;->vtButtonView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_0
    if-eqz v3, :cond_2

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    invoke-virtual {p0}, Lnet/veritran/component/VTButton;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v0

    invoke-static {v3, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 104
    iget-object v6, p0, Lnet/veritran/component/VTButton;->vtButtonView:Landroid/view/View;

    new-instance v0, Lnet/veritran/component/VTButtonOnClickListener;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lnet/veritran/component/VTButtonOnClickListener;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    .end local v12    # "isBackButton":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 107
    .restart local v12    # "isBackButton":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lnet/veritran/component/VTButton;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lnet/veritran/component/VTButton;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->getArrayId()I

    move-result v7

    .line 110
    .local v7, "arrayId":I
    invoke-virtual {p0}, Lnet/veritran/component/VTButton;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->getCurrentRowId()I

    move-result v8

    .line 111
    .local v8, "arrayRow":I
    iget-object v0, p0, Lnet/veritran/component/VTButton;->vtButtonView:Landroid/view/View;

    new-instance v4, Lnet/veritran/component/VTButtonOnClickListener;

    const/16 v5, 0x3ea

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v2

    invoke-direct/range {v4 .. v10}, Lnet/veritran/component/VTButtonOnClickListener;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    .end local v7    # "arrayId":I
    .end local v8    # "arrayRow":I
    :catch_0
    move-exception v11

    .line 116
    .local v11, "ex":Ljava/lang/Exception;
    const-string v0, "VTButton"

    const-string v1, "VTButton: No dump to formid, and ara is not null:"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    .end local v11    # "ex":Ljava/lang/Exception;
    :cond_3
    iget-object v0, p0, Lnet/veritran/component/VTButton;->vtButtonView:Landroid/view/View;

    new-instance v5, Lnet/veritran/component/VTButtonOnClickListener;

    invoke-direct {v5, v1, v2, v4, v4}, Lnet/veritran/component/VTButtonOnClickListener;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 124
    .end local v12    # "isBackButton":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lnet/veritran/component/VTButton;->vtButtonView:Landroid/view/View;

    instance-of v0, v0, Lnet/veritran/component/view/VTImageView;

    if-eqz v0, :cond_5

    .line 125
    iget-object v0, p0, Lnet/veritran/component/VTButton;->vtButtonView:Landroid/view/View;

    check-cast v0, Lnet/veritran/component/view/VTImageView;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTImageView;->ignoreShadow()V

    .line 126
    :cond_5
    invoke-virtual {p0}, Lnet/veritran/component/VTButton;->getParent()Lnet/veritran/component/VTUIComponent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    const-string v0, "VTButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VTButton: getParent:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/VTButton;->getParent()Lnet/veritran/component/VTUIComponent;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lnet/veritran/component/VTButton;->getParent()Lnet/veritran/component/VTUIComponent;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method

.method private initVisual()V
    .locals 17

    .prologue
    .line 134
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTButton;->vtButtonView:Landroid/view/View;

    instance-of v13, v13, Lnet/veritran/component/view/VTImageView;

    if-nez v13, :cond_0

    .line 194
    :goto_0
    return-void

    .line 137
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/component/VTButton;->vtButtonView:Landroid/view/View;

    check-cast v12, Lnet/veritran/component/view/VTImageView;

    .line 140
    .local v12, "vtImageView":Lnet/veritran/component/view/VTImageView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTButton;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v14, "backgroundColor"

    invoke-virtual {v13, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lnet/veritran/VTCommonActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 141
    .local v2, "bgcolor":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {v12, v2}, Lnet/veritran/component/view/VTImageView;->setComponentBackgroundColor(Ljava/lang/Integer;)V

    .line 145
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTButton;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v14, "backgroundimage"

    invoke-virtual {v13, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "backgroundImage":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v13, ""

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 147
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTButton;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v14, "backgroundImage"

    invoke-virtual {v13, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 148
    .local v8, "imageName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTButton;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v13

    invoke-static {v8, v13}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    .line 149
    invoke-virtual {v12, v8}, Lnet/veritran/component/view/VTImageView;->setComponentBackgroundDrawable(Ljava/lang/String;)V

    .line 152
    .end local v8    # "imageName":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTButton;->defineWidth()V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTButton;->defineHeight()V

    .line 154
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTButton;->defineVisibility()V

    .line 155
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTButton;->defineEnability()V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTButton;->defineMargins()V

    .line 158
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTButton;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v14, "value"

    invoke-virtual {v13, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 159
    .local v11, "text":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTButton;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v13

    invoke-static {v11, v13}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v11

    .line 160
    if-eqz v11, :cond_4

    .line 161
    invoke-virtual {v12, v11}, Lnet/veritran/component/view/VTImageView;->setText(Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTButton;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v14, "color"

    invoke-virtual {v13, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 163
    .local v9, "sColor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTButton;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v13

    invoke-static {v9, v13}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v9

    .line 164
    invoke-static {v9}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 165
    .local v7, "iColor":Ljava/lang/Integer;
    if-nez v7, :cond_3

    .line 166
    const/high16 v13, -0x1000000

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 168
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lnet/veritran/component/view/VTImageView;->setFontColor(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTButton;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v14, "fontsize"

    invoke-virtual {v13, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTButton;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    .line 171
    .local v10, "sFontSize":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTButton;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v10, v14}, Lnet/veritran/VTCommonActivity;->resolveSizeInPixels(Ljava/lang/String;Z)F

    move-result v4

    .line 173
    .local v4, "fontSizePixels":F
    const/4 v13, 0x0

    cmpg-float v13, v4, v13

    if-gtz v13, :cond_5

    .line 175
    const/16 v13, 0x10

    invoke-virtual {v12, v13}, Lnet/veritran/component/view/VTImageView;->setFontSize(I)V

    .line 182
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTButton;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v14, "fontfamily"

    invoke-virtual {v13, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTButton;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "fontFamily":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTButton;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v14, "fontstyle"

    invoke-virtual {v13, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTButton;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, "fontStyle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/veritran/component/VTButton;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v14, "fontweight"

    invoke-virtual {v13, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTButton;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, "fontWeight":Ljava/lang/String;
    invoke-static {v3, v5, v6}, Lnet/veritran/utils/VTFontHelper;->resolveTextFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    .line 187
    invoke-static {v6}, Lnet/veritran/utils/VTFontHelper;->resolveTextBold(Ljava/lang/String;)Z

    move-result v14

    .line 188
    invoke-static {v5}, Lnet/veritran/utils/VTFontHelper;->resolveTextItalic(Ljava/lang/String;)Z

    move-result v15

    .line 189
    invoke-static {v3}, Lnet/veritran/utils/VTFontHelper;->resolveTextCustom(Ljava/lang/String;)Z

    move-result v16

    .line 185
    invoke-virtual/range {v12 .. v16}, Lnet/veritran/component/view/VTImageView;->setFontFamily(Landroid/graphics/Typeface;ZZZ)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTButton;->defineTextAlign()V

    .line 193
    .end local v3    # "fontFamily":Ljava/lang/String;
    .end local v4    # "fontSizePixels":F
    .end local v5    # "fontStyle":Ljava/lang/String;
    .end local v6    # "fontWeight":Ljava/lang/String;
    .end local v7    # "iColor":Ljava/lang/Integer;
    .end local v9    # "sColor":Ljava/lang/String;
    .end local v10    # "sFontSize":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lnet/veritran/component/view/VTImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 179
    .restart local v4    # "fontSizePixels":F
    .restart local v7    # "iColor":Ljava/lang/Integer;
    .restart local v9    # "sColor":Ljava/lang/String;
    .restart local v10    # "sFontSize":Ljava/lang/String;
    :cond_5
    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v13, v4

    float-to-int v13, v13

    invoke-virtual {v12, v13}, Lnet/veritran/component/view/VTImageView;->setFontSize(I)V

    goto :goto_1
.end method


# virtual methods
.method public executeEvent(Ljava/lang/String;)Z
    .locals 4
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTButton;->checkEventType(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lnet/veritran/component/VTButton;->isRefreshEvent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    invoke-direct {p0}, Lnet/veritran/component/VTButton;->initButton()V

    .line 30
    invoke-virtual {p0}, Lnet/veritran/component/VTButton;->refreshMeasure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lnet/veritran/component/VTButton;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 32
    invoke-virtual {p0}, Lnet/veritran/component/VTButton;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    :goto_0
    move v0, v1

    .line 49
    :cond_1
    return v0

    .line 34
    :cond_2
    invoke-virtual {p0}, Lnet/veritran/component/VTButton;->isVisibilityEvent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 35
    invoke-virtual {p0}, Lnet/veritran/component/VTButton;->updateVisibility()V

    goto :goto_0

    .line 36
    :cond_3
    const-string v2, "CLICK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 37
    iget-object v0, p0, Lnet/veritran/component/VTButton;->vtButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 38
    :cond_4
    const-string v2, "ENABLE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 39
    iget-object v0, p0, Lnet/veritran/component/VTButton;->vtButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 40
    :cond_5
    const-string v2, "DISABLE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 41
    iget-object v2, p0, Lnet/veritran/component/VTButton;->vtButtonView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 42
    :cond_6
    const-string v2, "ENABLE_DISABLE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    iget-object v2, p0, Lnet/veritran/component/VTButton;->vtButtonView:Landroid/view/View;

    iget-object v3, p0, Lnet/veritran/component/VTButton;->vtButtonView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    move v0, v1

    :cond_7
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lnet/veritran/component/VTButton;->vtButtonView:Landroid/view/View;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lnet/veritran/component/VTUIComponent;->init()V

    .line 69
    new-instance v0, Lnet/veritran/component/view/VTImageView;

    invoke-direct {v0, p0}, Lnet/veritran/component/view/VTImageView;-><init>(Lnet/veritran/component/VTUIComponent;)V

    .line 70
    .local v0, "vtImageView":Lnet/veritran/component/view/VTImageView;
    iput-object v0, p0, Lnet/veritran/component/VTButton;->vtButtonView:Landroid/view/View;

    .line 72
    invoke-direct {p0}, Lnet/veritran/component/VTButton;->initButton()V

    .line 73
    return-void
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method
