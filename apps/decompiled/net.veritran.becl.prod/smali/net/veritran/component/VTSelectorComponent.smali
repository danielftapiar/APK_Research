.class public Lnet/veritran/component/VTSelectorComponent;
.super Lnet/veritran/component/VTUIComponent;
.source "VTSelectorComponent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VTSelector"


# instance fields
.field private vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 1
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponent;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTSelectorComponent;->setActivity(Lnet/veritran/VTCommonActivity;)V

    .line 55
    new-instance v0, Lnet/veritran/component/view/VTSelectorComponentView;

    invoke-direct {v0, p0}, Lnet/veritran/component/view/VTSelectorComponentView;-><init>(Lnet/veritran/component/VTUIComponent;)V

    iput-object v0, p0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    .line 56
    return-void
.end method

.method private initSelector()V
    .locals 28

    .prologue
    .line 67
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->defineWidth()V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->defineHeight()V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->defineVisibility()V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->defineMargins()V

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v24, v0

    const-string v25, "backgroundColor"

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lnet/veritran/VTCommonActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 74
    .local v3, "bgColor":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/component/view/VTSelectorComponentView;->setBackgroundColor(I)V

    .line 78
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v24, v0

    const-string v25, "barColor"

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lnet/veritran/VTCommonActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 79
    .local v2, "barColor":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/component/view/VTSelectorComponentView;->setBarcolor(I)V

    .line 83
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v24, v0

    const-string v25, "textPosition"

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v22

    .line 84
    .local v22, "textPosition":Ljava/lang/String;
    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTSelectorComponentView;->setTextPosition(Ljava/lang/String;)V

    .line 88
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v24, v0

    const-string v25, "color"

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lnet/veritran/VTCommonActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    .line 89
    .local v20, "textColor":Ljava/lang/Integer;
    if-eqz v20, :cond_3

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/component/view/VTSelectorComponentView;->setTextColor(I)V

    .line 93
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v24, v0

    const-string v25, "fontSize"

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, "fontSize":Ljava/lang/String;
    const/high16 v6, -0x40800000    # -1.0f

    .line 96
    .local v6, "fontSizePixels":F
    if-eqz v5, :cond_4

    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_4

    .line 97
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Lnet/veritran/VTCommonActivity;->resolveSizeInPixels(Ljava/lang/String;Z)F

    move-result v6

    .line 100
    :cond_4
    const/16 v24, 0x0

    cmpg-float v24, v6, v24

    if-gtz v24, :cond_b

    .line 101
    const-string v5, "medium"

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    const/high16 v25, 0x3f000000    # 0.5f

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Lnet/veritran/VTAbstractActivity;->resolveSizeInPixels(Ljava/lang/String;Z)F

    move-result v26

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/component/view/VTSelectorComponentView;->setFontSize(I)V

    .line 107
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v24, v0

    const-string v25, "fontFamily"

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "fontFamily":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v24, v0

    const-string v25, "fontStyle"

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "fontStyle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v24, v0

    const-string v25, "fontWeight"

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "fontWeight":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    invoke-static {v4, v7, v8}, Lnet/veritran/utils/VTFontHelper;->resolveTextFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/component/view/VTSelectorComponentView;->setTextTypeface(Landroid/graphics/Typeface;)V

    .line 112
    new-instance v21, Landroid/text/TextPaint;

    invoke-direct/range {v21 .. v21}, Landroid/text/TextPaint;-><init>()V

    .line 113
    .local v21, "textPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lnet/veritran/component/view/VTSelectorComponentView;->getTextColor()I

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lnet/veritran/component/view/VTSelectorComponentView;->getFontSize()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lnet/veritran/component/view/VTSelectorComponentView;->getTextTypeface()Landroid/graphics/Typeface;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 117
    sget-object v24, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    sget-object v24, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 119
    sget-object v24, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTSelectorComponentView;->setTextPaint(Landroid/graphics/Paint;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v24, v0

    const-string v25, "selectedColor"

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lnet/veritran/VTCommonActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    .line 124
    .local v18, "selectedTextColor":Ljava/lang/Integer;
    if-eqz v18, :cond_5

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/component/view/VTSelectorComponentView;->setSelectedTextColor(I)V

    .line 128
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v24, v0

    const-string v25, "selectedFontSize"

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v14

    .line 129
    .local v14, "selectedFontSize":Ljava/lang/String;
    const/high16 v15, -0x40800000    # -1.0f

    .line 131
    .local v15, "selectedFontSizePixels":F
    if-eqz v14, :cond_c

    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    .line 132
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v14, v1}, Lnet/veritran/VTCommonActivity;->resolveSizeInPixels(Ljava/lang/String;Z)F

    move-result v15

    .line 138
    :cond_6
    :goto_1
    const/16 v24, 0x0

    cmpg-float v24, v15, v24

    if-gtz v24, :cond_d

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    const/high16 v25, 0x3f000000    # 0.5f

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Lnet/veritran/VTAbstractActivity;->resolveSizeInPixels(Ljava/lang/String;Z)F

    move-result v26

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/component/view/VTSelectorComponentView;->setSelectedFontSize(I)V

    .line 144
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v24, v0

    const-string v25, "selectedFontFamily"

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v13

    .line 145
    .local v13, "selectedFontFamily":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 146
    move-object v13, v4

    .line 149
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v24, v0

    const-string v25, "selectedFontStyle"

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v16

    .line 150
    .local v16, "selectedFontStyle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v24, v0

    const-string v25, "selectedFontWeight"

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v17

    .line 152
    .local v17, "selectedFontWeight":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v13, v0, v1}, Lnet/veritran/utils/VTFontHelper;->resolveTextFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/component/view/VTSelectorComponentView;->setSelectedTextTypeface(Landroid/graphics/Typeface;)V

    .line 154
    new-instance v19, Landroid/text/TextPaint;

    invoke-direct/range {v19 .. v19}, Landroid/text/TextPaint;-><init>()V

    .line 155
    .local v19, "selectedTextPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lnet/veritran/component/view/VTSelectorComponentView;->getSelectedTextColor()I

    move-result v24

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lnet/veritran/component/view/VTSelectorComponentView;->getSelectedFontSize()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lnet/veritran/component/view/VTSelectorComponentView;->getSelectedTextTypeface()Landroid/graphics/Typeface;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 158
    sget-object v24, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    sget-object v24, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 160
    sget-object v24, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTSelectorComponentView;->setSelectedTextPaint(Landroid/graphics/Paint;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v24, v0

    const-string v25, "autoDump"

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 165
    .local v12, "sAutoDump":Ljava/lang/String;
    if-eqz v12, :cond_8

    .line 166
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v12

    .line 167
    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 169
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/component/view/VTSelectorComponentView;->setAutoDump(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v24, v0

    const-string v25, "value"

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v23

    .line 178
    .local v23, "value":Ljava/lang/String;
    if-eqz v23, :cond_9

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTSelectorComponentView;->setValue(Ljava/lang/String;)V

    .line 182
    :cond_9
    invoke-direct/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->loadItems()V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lnet/veritran/component/view/VTSelectorComponentView;->getValue()Ljava/lang/String;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_a

    .line 185
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lnet/veritran/component/view/VTSelectorComponentView;->getSelectorItems()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_a

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lnet/veritran/component/view/VTSelectorComponentView;->getSelectorItems()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/veritran/component/VTSelectorItem;

    .line 187
    .local v10, "item":Lnet/veritran/component/VTSelectorItem;
    invoke-virtual {v10}, Lnet/veritran/component/VTSelectorItem;->getValue()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Lnet/veritran/component/view/VTSelectorComponentView;->setCurrentIndex(I)V

    .line 194
    .end local v9    # "i":I
    .end local v10    # "item":Lnet/veritran/component/VTSelectorItem;
    :cond_a
    return-void

    .line 104
    .end local v4    # "fontFamily":Ljava/lang/String;
    .end local v7    # "fontStyle":Ljava/lang/String;
    .end local v8    # "fontWeight":Ljava/lang/String;
    .end local v12    # "sAutoDump":Ljava/lang/String;
    .end local v13    # "selectedFontFamily":Ljava/lang/String;
    .end local v14    # "selectedFontSize":Ljava/lang/String;
    .end local v15    # "selectedFontSizePixels":F
    .end local v16    # "selectedFontStyle":Ljava/lang/String;
    .end local v17    # "selectedFontWeight":Ljava/lang/String;
    .end local v18    # "selectedTextColor":Ljava/lang/Integer;
    .end local v19    # "selectedTextPaint":Landroid/graphics/Paint;
    .end local v21    # "textPaint":Landroid/graphics/Paint;
    .end local v23    # "value":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v25, v25, v6

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/component/view/VTSelectorComponentView;->setFontSize(I)V

    goto/16 :goto_0

    .line 134
    .restart local v4    # "fontFamily":Ljava/lang/String;
    .restart local v7    # "fontStyle":Ljava/lang/String;
    .restart local v8    # "fontWeight":Ljava/lang/String;
    .restart local v14    # "selectedFontSize":Ljava/lang/String;
    .restart local v15    # "selectedFontSizePixels":F
    .restart local v18    # "selectedTextColor":Ljava/lang/Integer;
    .restart local v21    # "textPaint":Landroid/graphics/Paint;
    :cond_c
    if-eqz v5, :cond_6

    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 135
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTSelectorComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Lnet/veritran/VTCommonActivity;->resolveSizeInPixels(Ljava/lang/String;Z)F

    move-result v15

    goto/16 :goto_1

    .line 141
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v24, v0

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v25, v25, v15

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lnet/veritran/component/view/VTSelectorComponentView;->setSelectedFontSize(I)V

    goto/16 :goto_2

    .line 170
    .restart local v12    # "sAutoDump":Ljava/lang/String;
    .restart local v13    # "selectedFontFamily":Ljava/lang/String;
    .restart local v16    # "selectedFontStyle":Ljava/lang/String;
    .restart local v17    # "selectedFontWeight":Ljava/lang/String;
    .restart local v19    # "selectedTextPaint":Landroid/graphics/Paint;
    :catch_0
    move-exception v11

    .line 171
    .local v11, "nfe":Ljava/lang/NumberFormatException;
    const-string v24, "VTSelector"

    const-string v25, "Catched exception empty (fortify)"

    invoke-static/range {v24 .. v25}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 185
    .end local v11    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v9    # "i":I
    .restart local v10    # "item":Lnet/veritran/component/VTSelectorItem;
    .restart local v23    # "value":Ljava/lang/String;
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4
.end method

.method private loadItems()V
    .locals 20

    .prologue
    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v17, v0

    check-cast v17, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSelector;

    invoke-virtual/range {v17 .. v17}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSelector;->getItems()Ljava/util/Vector;

    move-result-object v11

    .line 200
    .local v11, "items":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v17 .. v18}, Lnet/veritran/component/view/VTSelectorComponentView;->setSelectorItems(Ljava/util/List;)V

    .line 202
    invoke-virtual {v11}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;

    .line 203
    .local v7, "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;
    const-string v18, "type"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 204
    .local v10, "itemType":Ljava/lang/String;
    if-eqz v10, :cond_6

    const-string v18, "V"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 206
    const-string v18, "array"

    .line 207
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 206
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 208
    .local v3, "associatedArray":I
    new-instance v2, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-direct {v2, v3}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;-><init>(I)V

    .line 210
    .local v2, "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->reset()V

    .line 211
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 213
    const-string v18, "filter"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "eval":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 216
    invoke-static {v4, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-static {v4}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 223
    :cond_2
    const-string v18, "value"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v16

    .line 224
    .local v16, "value":Ljava/lang/String;
    const-string v18, "image"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, "imageName":Ljava/lang/String;
    const-string v18, "text"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v9

    .line 226
    .local v9, "itemText":Ljava/lang/String;
    const-string v18, "onSelect"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v13

    .line 227
    .local v13, "onSelect":Ljava/lang/String;
    const-string v18, "onLostSelection"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v12

    .line 229
    .local v12, "onLostSelection":Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 230
    :cond_3
    const-string v8, "rb_off"

    .line 236
    .local v8, "itemImage":Ljava/lang/String;
    :goto_2
    new-instance v5, Lnet/veritran/component/VTSelectorItem;

    invoke-direct {v5}, Lnet/veritran/component/VTSelectorItem;-><init>()V

    .line 237
    .local v5, "expandedItem":Lnet/veritran/component/VTSelectorItem;
    invoke-virtual {v5, v10}, Lnet/veritran/component/VTSelectorItem;->setType(Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lnet/veritran/component/VTSelectorItem;->setValue(Ljava/lang/String;)V

    .line 239
    if-eqz v9, :cond_5

    .end local v9    # "itemText":Ljava/lang/String;
    :goto_3
    invoke-virtual {v5, v9}, Lnet/veritran/component/VTSelectorItem;->setText(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v5, v8}, Lnet/veritran/component/VTSelectorItem;->setImage(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v5, v13}, Lnet/veritran/component/VTSelectorItem;->setOnSelect(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v5, v12}, Lnet/veritran/component/VTSelectorItem;->setOnLostSelection(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v5, v4}, Lnet/veritran/component/VTSelectorItem;->setFilter(Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/veritran/component/view/VTSelectorComponentView;->getSelectorItems()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 233
    .end local v5    # "expandedItem":Lnet/veritran/component/VTSelectorItem;
    .end local v8    # "itemImage":Ljava/lang/String;
    .restart local v9    # "itemText":Ljava/lang/String;
    :cond_4
    move-object v8, v6

    .restart local v8    # "itemImage":Ljava/lang/String;
    goto :goto_2

    .line 239
    .restart local v5    # "expandedItem":Lnet/veritran/component/VTSelectorItem;
    :cond_5
    const-string v9, ""

    goto :goto_3

    .line 248
    .end local v2    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v3    # "associatedArray":I
    .end local v4    # "eval":Ljava/lang/String;
    .end local v5    # "expandedItem":Lnet/veritran/component/VTSelectorItem;
    .end local v6    # "imageName":Ljava/lang/String;
    .end local v8    # "itemImage":Ljava/lang/String;
    .end local v9    # "itemText":Ljava/lang/String;
    .end local v12    # "onLostSelection":Ljava/lang/String;
    .end local v13    # "onSelect":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :cond_6
    const/4 v15, 0x1

    .line 250
    .local v15, "shouldAdd":Z
    const-string v18, "filter"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 252
    .restart local v4    # "eval":Ljava/lang/String;
    if-eqz v4, :cond_7

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 254
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-static {v4}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 257
    const/4 v15, 0x0

    .line 261
    :cond_7
    if-eqz v15, :cond_0

    .line 262
    const-string v18, "value"

    .line 263
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    .line 262
    invoke-static/range {v18 .. v19}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v16

    .line 264
    .restart local v16    # "value":Ljava/lang/String;
    const-string v18, "image"

    .line 265
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    .line 264
    invoke-static/range {v18 .. v19}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    .line 266
    .restart local v6    # "imageName":Ljava/lang/String;
    const-string v18, "text"

    .line 267
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    .line 266
    invoke-static/range {v18 .. v19}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v9

    .line 268
    .restart local v9    # "itemText":Ljava/lang/String;
    const-string v18, "onSelect"

    .line 269
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    .line 268
    invoke-static/range {v18 .. v19}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v13

    .line 270
    .restart local v13    # "onSelect":Ljava/lang/String;
    const-string v18, "onLostSelection"

    .line 271
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    .line 270
    invoke-static/range {v18 .. v19}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v12

    .line 280
    .restart local v12    # "onLostSelection":Ljava/lang/String;
    if-eqz v6, :cond_8

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 281
    :cond_8
    const-string v8, "rb_off"

    .line 285
    .restart local v8    # "itemImage":Ljava/lang/String;
    :goto_4
    new-instance v5, Lnet/veritran/component/VTSelectorItem;

    invoke-direct {v5}, Lnet/veritran/component/VTSelectorItem;-><init>()V

    .line 286
    .restart local v5    # "expandedItem":Lnet/veritran/component/VTSelectorItem;
    invoke-virtual {v5, v10}, Lnet/veritran/component/VTSelectorItem;->setType(Ljava/lang/String;)V

    .line 287
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lnet/veritran/component/VTSelectorItem;->setValue(Ljava/lang/String;)V

    .line 288
    if-eqz v9, :cond_a

    .end local v9    # "itemText":Ljava/lang/String;
    :goto_5
    invoke-virtual {v5, v9}, Lnet/veritran/component/VTSelectorItem;->setText(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v5, v8}, Lnet/veritran/component/VTSelectorItem;->setImage(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v5, v13}, Lnet/veritran/component/VTSelectorItem;->setOnSelect(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v5, v12}, Lnet/veritran/component/VTSelectorItem;->setOnLostSelection(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v5, v4}, Lnet/veritran/component/VTSelectorItem;->setFilter(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/veritran/component/view/VTSelectorComponentView;->getSelectorItems()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 283
    .end local v5    # "expandedItem":Lnet/veritran/component/VTSelectorItem;
    .end local v8    # "itemImage":Ljava/lang/String;
    .restart local v9    # "itemText":Ljava/lang/String;
    :cond_9
    move-object v8, v6

    .restart local v8    # "itemImage":Ljava/lang/String;
    goto :goto_4

    .line 288
    .restart local v5    # "expandedItem":Lnet/veritran/component/VTSelectorItem;
    :cond_a
    const-string v9, ""

    goto :goto_5

    .line 299
    .end local v4    # "eval":Ljava/lang/String;
    .end local v5    # "expandedItem":Lnet/veritran/component/VTSelectorItem;
    .end local v6    # "imageName":Ljava/lang/String;
    .end local v7    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;
    .end local v8    # "itemImage":Ljava/lang/String;
    .end local v9    # "itemText":Ljava/lang/String;
    .end local v10    # "itemType":Ljava/lang/String;
    .end local v12    # "onLostSelection":Ljava/lang/String;
    .end local v13    # "onSelect":Ljava/lang/String;
    .end local v15    # "shouldAdd":Z
    .end local v16    # "value":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/veritran/component/view/VTSelectorComponentView;->getSelectorItems()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lnet/veritran/component/view/VTSelectorComponentView;->setRangeCount(I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lnet/veritran/component/view/VTSelectorComponentView;->getRangeCount()I

    move-result v14

    .line 301
    .local v14, "rangeCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v17, v0

    new-array v0, v14, [F

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lnet/veritran/component/view/VTSelectorComponentView;->setSlotPositions([F)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lnet/veritran/component/view/VTSelectorComponentView;->getSelectorItems()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    .line 306
    new-instance v5, Lnet/veritran/component/VTSelectorItem;

    invoke-direct {v5}, Lnet/veritran/component/VTSelectorItem;-><init>()V

    .line 307
    .restart local v5    # "expandedItem":Lnet/veritran/component/VTSelectorItem;
    const-string v8, "rb_off"

    .line 308
    .restart local v8    # "itemImage":Ljava/lang/String;
    invoke-virtual {v5, v8}, Lnet/veritran/component/VTSelectorItem;->setImage(Ljava/lang/String;)V

    .line 309
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lnet/veritran/component/VTSelectorItem;->setText(Ljava/lang/String;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v17 .. v18}, Lnet/veritran/component/view/VTSelectorComponentView;->setSelectorItems(Ljava/util/List;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lnet/veritran/component/view/VTSelectorComponentView;->getSelectorItems()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/veritran/component/view/VTSelectorComponentView;->getSelectorItems()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lnet/veritran/component/view/VTSelectorComponentView;->setRangeCount(I)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lnet/veritran/component/view/VTSelectorComponentView;->getRangeCount()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lnet/veritran/component/view/VTSelectorComponentView;->setSlotPositions([F)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v17, v0

    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lnet/veritran/component/view/VTSelectorComponentView;->setDoOnDraw(Z)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    move-object/from16 v17, v0

    new-instance v18, Lnet/veritran/component/VTSelectorComponent$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/veritran/component/VTSelectorComponent$1;-><init>(Lnet/veritran/component/VTSelectorComponent;)V

    invoke-virtual/range {v17 .. v18}, Lnet/veritran/component/view/VTSelectorComponentView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 327
    .end local v5    # "expandedItem":Lnet/veritran/component/VTSelectorItem;
    .end local v8    # "itemImage":Ljava/lang/String;
    :cond_c
    return-void
.end method


# virtual methods
.method public executeEvent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTSelectorComponent;->checkEventType(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lnet/veritran/component/VTSelectorComponent;->isRefreshEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTSelectorComponentView;->init()V

    .line 39
    invoke-direct {p0}, Lnet/veritran/component/VTSelectorComponent;->initSelector()V

    .line 40
    invoke-virtual {p0}, Lnet/veritran/component/VTSelectorComponent;->refreshMeasure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lnet/veritran/component/VTSelectorComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 42
    invoke-virtual {p0}, Lnet/veritran/component/VTSelectorComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 50
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 44
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTSelectorComponent;->isVisibilityEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {p0}, Lnet/veritran/component/VTSelectorComponent;->updateVisibility()V

    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lnet/veritran/component/VTUIComponent;->init()V

    .line 61
    iget-object v0, p0, Lnet/veritran/component/VTSelectorComponent;->vtSelectorComponentView:Lnet/veritran/component/view/VTSelectorComponentView;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTSelectorComponentView;->init()V

    .line 62
    invoke-direct {p0}, Lnet/veritran/component/VTSelectorComponent;->initSelector()V

    .line 63
    return-void
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method
