.class public Lnet/veritran/component/VTText;
.super Lnet/veritran/component/VTUIComponent;
.source "VTText.java"


# static fields
.field private static final DECORATION_UNDERLINE:Ljava/lang/String; = "underline"

.field private static final PREFIX_EVENT_SET_TEXT:Ljava/lang/String; = "SETTEXT~"

.field private static final TAG:Ljava/lang/String; = "VTText"


# instance fields
.field private fontFamily:Ljava/lang/String;

.field private fontStyle:Ljava/lang/String;

.field private fontWeight:Ljava/lang/String;

.field private textDecoration:Ljava/lang/String;

.field private vtTextView:Lnet/veritran/component/view/VTTextView;

.field private vtTextViewArea:Lnet/veritran/component/view/VTTextViewArea;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 1
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponent;-><init>()V

    .line 68
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTText;->setActivity(Lnet/veritran/VTCommonActivity;)V

    .line 69
    new-instance v0, Lnet/veritran/component/view/VTTextView;

    invoke-direct {v0, p1}, Lnet/veritran/component/view/VTTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/veritran/component/VTText;->vtTextView:Lnet/veritran/component/view/VTTextView;

    .line 70
    new-instance v0, Lnet/veritran/component/view/VTTextViewArea;

    invoke-direct {v0, p1}, Lnet/veritran/component/view/VTTextViewArea;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/veritran/component/VTText;->vtTextViewArea:Lnet/veritran/component/view/VTTextViewArea;

    .line 71
    return-void
.end method

.method private initText()V
    .locals 17

    .prologue
    .line 94
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->getParent()Lnet/veritran/component/VTUIComponent;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/component/VTUIComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v1

    const-string v2, "verticalalign"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 95
    .local v16, "valign":Ljava/lang/String;
    const-string v1, "VTText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v6, "value"

    invoke-virtual {v5, v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " valign="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-eqz v16, :cond_0

    .line 97
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "verticalalign"

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->defineBackgroundColor()V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->defineBackgroundImage()V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->defineTextAlign()V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->defineVerticalAlign()V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->defineVisibility()V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 108
    const-string v1, "VTText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VTTextView->getArrayReaderAdapter(): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->getArrayId()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "color"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 112
    .local v13, "sColor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v1

    invoke-static {v13, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v13

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTText;->vtTextView:Lnet/veritran/component/view/VTTextView;

    invoke-static {v1, v13}, Lnet/veritran/utils/VTFontHelper;->setTextColor(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "textdecoration"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/veritran/component/VTText;->textDecoration:Ljava/lang/String;

    .line 115
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "fontfamily"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/veritran/component/VTText;->fontFamily:Ljava/lang/String;

    .line 116
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "fontstyle"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/veritran/component/VTText;->fontStyle:Ljava/lang/String;

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "fontweight"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lnet/veritran/component/VTText;->fontWeight:Ljava/lang/String;

    .line 118
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTText;->vtTextView:Lnet/veritran/component/view/VTTextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v6, "fontsize"

    invoke-virtual {v5, v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lnet/veritran/VTCommonActivity;->setTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTText;->vtTextView:Lnet/veritran/component/view/VTTextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTText;->fontFamily:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTText;->fontStyle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/veritran/component/VTText;->fontWeight:Ljava/lang/String;

    invoke-static {v1, v2, v5, v6}, Lnet/veritran/utils/VTFontHelper;->setTextFamily(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-direct/range {p0 .. p0}, Lnet/veritran/component/VTText;->setText()V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->defineWidth()V

    .line 127
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->defineHeight()V

    .line 129
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->defineMargins()V

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "singleline"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v14

    .line 133
    .local v14, "sSingleLine":Ljava/lang/String;
    if-eqz v14, :cond_3

    const-string v1, "true"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTText;->vtTextView:Lnet/veritran/component/view/VTTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/veritran/component/view/VTTextView;->setTextSingleline(Z)V

    .line 137
    const-string v1, "VTText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTText;->vtTextView:Lnet/veritran/component/view/VTTextView;

    invoke-virtual {v5}, Lnet/veritran/component/view/VTTextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " is singleline"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "singlelinemode"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v15

    .line 144
    .local v15, "sSingleLineMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTText;->vtTextView:Lnet/veritran/component/view/VTTextView;

    invoke-virtual {v1, v15}, Lnet/veritran/component/view/VTTextView;->setSingleLineMode(Ljava/lang/String;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTText;->vtTextView:Lnet/veritran/component/view/VTTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/veritran/component/view/VTTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTText;->vtTextView:Lnet/veritran/component/view/VTTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/veritran/component/view/VTTextView;->setClickable(Z)V

    .line 148
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "onclick"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "onClick":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 150
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v1

    invoke-static {v3, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "submit"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "formId":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 153
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v1

    invoke-static {v4, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    .line 155
    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/veritran/component/VTText;->vtTextView:Lnet/veritran/component/view/VTTextView;

    new-instance v1, Lnet/veritran/component/VTButtonOnClickListener;

    const/16 v2, 0x3ea

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lnet/veritran/component/VTButtonOnClickListener;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lnet/veritran/component/view/VTTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    .end local v4    # "formId":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 139
    .end local v3    # "onClick":Ljava/lang/String;
    .end local v15    # "sSingleLineMode":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTText;->vtTextView:Lnet/veritran/component/view/VTTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/veritran/component/view/VTTextView;->setSingleLine(Z)V

    goto :goto_0

    .line 156
    .restart local v3    # "onClick":Ljava/lang/String;
    .restart local v4    # "formId":Ljava/lang/String;
    .restart local v15    # "sSingleLineMode":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 158
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->getArrayId()I

    move-result v8

    .line 159
    .local v8, "arrayId":I
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->getCurrentRowId()I

    move-result v9

    .line 161
    .local v9, "arrayRow":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTText;->vtTextView:Lnet/veritran/component/view/VTTextView;

    new-instance v5, Lnet/veritran/component/VTButtonOnClickListener;

    const/16 v6, 0x3ea

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v3

    invoke-direct/range {v5 .. v11}, Lnet/veritran/component/VTButtonOnClickListener;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lnet/veritran/component/view/VTTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 163
    .end local v8    # "arrayId":I
    .end local v9    # "arrayRow":I
    :catch_0
    move-exception v12

    .line 165
    .local v12, "ex":Ljava/lang/Exception;
    const-string v1, "VTText"

    const-string v2, "VTText: No dump to formid, and ara is not null:"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 170
    .end local v12    # "ex":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTText;->vtTextView:Lnet/veritran/component/view/VTTextView;

    new-instance v2, Lnet/veritran/component/VTButtonOnClickListener;

    const/16 v5, 0x3ea

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v2, v5, v3, v6, v7}, Lnet/veritran/component/VTButtonOnClickListener;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lnet/veritran/component/view/VTTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private setText()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 176
    iget-object v2, p0, Lnet/veritran/component/VTText;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "s":Ljava/lang/String;
    const-string v2, "VTText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VTTextView->getView: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lnet/veritran/component/VTText;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v2, p0, Lnet/veritran/component/VTText;->vtTextView:Lnet/veritran/component/view/VTTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vttext-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/veritran/component/view/VTTextView;->setTag(Ljava/lang/Object;)V

    .line 181
    iget-object v2, p0, Lnet/veritran/component/VTText;->vtTextViewArea:Lnet/veritran/component/view/VTTextViewArea;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vttextarea-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/veritran/component/view/VTTextViewArea;->setTag(Ljava/lang/Object;)V

    .line 182
    const-string v2, "VTText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VTTextView->getView: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lnet/veritran/component/VTText;->fontFamily:Ljava/lang/String;

    iget-object v3, p0, Lnet/veritran/component/VTText;->fontStyle:Ljava/lang/String;

    iget-object v4, p0, Lnet/veritran/component/VTText;->fontWeight:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lnet/veritran/utils/VTFontHelper;->getSpannableString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    .line 184
    .local v1, "spannableContent":Landroid/text/SpannableString;
    iget-object v2, p0, Lnet/veritran/component/VTText;->textDecoration:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/veritran/component/VTText;->textDecoration:Ljava/lang/String;

    const-string v3, "underline"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 188
    :cond_0
    iget-object v2, p0, Lnet/veritran/component/VTText;->vtTextView:Lnet/veritran/component/view/VTTextView;

    invoke-virtual {v2, v1}, Lnet/veritran/component/view/VTTextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method


# virtual methods
.method public executeEvent(Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTText;->checkEventType(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lnet/veritran/component/VTText;->isRefreshEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    invoke-direct {p0}, Lnet/veritran/component/VTText;->initText()V

    .line 45
    invoke-virtual {p0}, Lnet/veritran/component/VTText;->refreshMeasure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lnet/veritran/component/VTText;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 47
    invoke-virtual {p0}, Lnet/veritran/component/VTText;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 64
    :cond_0
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 49
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTText;->isVisibilityEvent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    invoke-virtual {p0}, Lnet/veritran/component/VTText;->updateVisibility()V

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SETTEXT~"

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 52
    const-string v1, "SETTEXT~"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lnet/veritran/component/VTText;->vtTextView:Lnet/veritran/component/view/VTTextView;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lnet/veritran/component/VTText;->vtTextView:Lnet/veritran/component/view/VTTextView;

    invoke-virtual {v1, v0}, Lnet/veritran/component/view/VTTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 58
    .end local v0    # "text":Ljava/lang/String;
    :cond_3
    const-string v1, "UPDATE_TEXT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 59
    invoke-direct {p0}, Lnet/veritran/component/VTText;->setText()V

    goto :goto_0

    .line 61
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lnet/veritran/component/VTText;->vtTextViewArea:Lnet/veritran/component/view/VTTextViewArea;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lnet/veritran/component/VTUIComponent;->init()V

    .line 86
    iget-object v0, p0, Lnet/veritran/component/VTText;->vtTextViewArea:Lnet/veritran/component/view/VTTextViewArea;

    iget-object v1, p0, Lnet/veritran/component/VTText;->vtTextView:Lnet/veritran/component/view/VTTextView;

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTTextViewArea;->addView(Landroid/view/View;)V

    .line 88
    invoke-direct {p0}, Lnet/veritran/component/VTText;->initText()V

    .line 90
    return-void
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method
