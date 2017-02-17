.class public Lnet/veritran/component/VTListComboComponent;
.super Lnet/veritran/component/VTListComponent;
.source "VTListComboComponent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VTListComboComponent"


# instance fields
.field private vtListView:Lnet/veritran/component/view/VTListComboComponentView;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 0
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lnet/veritran/component/VTListComponent;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 54
    return-void
.end method

.method private defineComboColors()V
    .locals 11

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lnet/veritran/component/VTListComboComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v10, "BorderColor"

    invoke-virtual {v0, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, "sBorderColor":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTListComboComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v0

    invoke-static {v7, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v7

    .line 81
    invoke-static {v7}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 83
    .local v1, "iBorderColor":Ljava/lang/Integer;
    iget-object v0, p0, Lnet/veritran/component/VTListComboComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v10, "ComboBorderStyle"

    invoke-virtual {v0, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "sComboBorderStyle":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTListComboComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v0

    invoke-static {v2, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v2

    .line 86
    iget-object v0, p0, Lnet/veritran/component/VTListComboComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v10, "ComboButtonBackgroundColor"

    invoke-virtual {v0, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, "sComboButtonBackgroundColor":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTListComboComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v0

    invoke-static {v8, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    .line 88
    invoke-static {v8}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 90
    .local v4, "iComboButtonBackgroundColor":Ljava/lang/Integer;
    iget-object v0, p0, Lnet/veritran/component/VTListComboComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v10, "ComboButtonColor"

    invoke-virtual {v0, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, "sComboButtonColor":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTListComboComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v0

    invoke-static {v9, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v9

    .line 92
    invoke-static {v9}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 94
    .local v5, "iComboButtonColor":Ljava/lang/Integer;
    iget-object v0, p0, Lnet/veritran/component/VTListComboComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v10, "ComboButtonStyle"

    invoke-virtual {v0, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "sComboButtonStyle":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/veritran/component/VTListComboComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v0

    invoke-static {v3, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 97
    iget-object v0, p0, Lnet/veritran/component/VTListComboComponent;->vtListView:Lnet/veritran/component/view/VTListComboComponentView;

    invoke-virtual/range {v0 .. v5}, Lnet/veritran/component/view/VTListComboComponentView;->setComponentBorderColors(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "iBorderColor":Ljava/lang/Integer;
    .end local v2    # "sComboBorderStyle":Ljava/lang/String;
    .end local v3    # "sComboButtonStyle":Ljava/lang/String;
    .end local v4    # "iComboButtonBackgroundColor":Ljava/lang/Integer;
    .end local v5    # "iComboButtonColor":Ljava/lang/Integer;
    .end local v7    # "sBorderColor":Ljava/lang/String;
    .end local v8    # "sComboButtonBackgroundColor":Ljava/lang/String;
    .end local v9    # "sComboButtonColor":Ljava/lang/String;
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v6

    .line 101
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "VTListComboComponent"

    const-string v10, "Catched exception empty (fortify)"

    invoke-static {v0, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initCombo()V
    .locals 32

    .prologue
    .line 106
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListComboComponent;->defineWidth()V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListComboComponent;->defineHeight()V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListComboComponent;->defineBackgroundColor()V

    .line 110
    invoke-direct/range {p0 .. p0}, Lnet/veritran/component/VTListComboComponent;->defineComboColors()V

    .line 111
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListComboComponent;->defineBackgroundImage()V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListComboComponent;->defineVisibility()V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListComboComponent;->defineMargins()V

    .line 117
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/VTListComboComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v11, "color"

    invoke-virtual {v4, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 118
    .local v10, "sColor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListComboComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v4

    invoke-static {v10, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    .line 120
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/VTListComboComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v11, "fontsize"

    invoke-virtual {v4, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListComboComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v11

    invoke-static {v4, v11}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "fontSize":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/VTListComboComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v11, "fontfamily"

    invoke-virtual {v4, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListComboComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v11

    invoke-static {v4, v11}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, "fontFamily":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/VTListComboComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v11, "fontstyle"

    invoke-virtual {v4, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListComboComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v11

    invoke-static {v4, v11}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, "fontStyle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/VTListComboComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v11, "fontweight"

    invoke-virtual {v4, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListComboComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v11

    invoke-static {v4, v11}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v9

    .line 125
    .local v9, "fontWeight":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v5, "expandedItems":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/VTListComboComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v4, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;

    .line 128
    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;->getListItems()Ljava/util/List;

    move-result-object v24

    .line 130
    .local v24, "items":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    .line 131
    .local v21, "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    const-string v11, "type"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 132
    .local v23, "itemType":Ljava/lang/String;
    const-string v11, "V"

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 133
    const/16 v22, 0x0

    .line 134
    .local v22, "itemSelected":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;
    invoke-virtual/range {v21 .. v21}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getItemSelected()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 135
    invoke-virtual/range {v21 .. v21}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getItemSelected()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;

    move-result-object v22

    .line 136
    const-string v11, "VTListComboComponent"

    const-string v30, "ItemSelected specified!"

    move-object/from16 v0, v30

    invoke-static {v11, v0}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_1
    const-string v11, "array"

    .line 139
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 138
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 140
    .local v13, "associatedArray":I
    new-instance v12, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-direct {v12, v13}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;-><init>(I)V

    .line 141
    .local v12, "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    invoke-virtual {v12}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->reset()V

    .line 142
    const/16 v16, 0x0

    .line 143
    .local v16, "currentRow":I
    :goto_1
    invoke-virtual {v12}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 145
    const-string v11, "filter"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 147
    .local v18, "eval":Ljava/lang/String;
    const-string v11, "VTListComboComponent"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Eval listcombo: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v11, v0}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    if-eqz v18, :cond_2

    const-string v11, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 150
    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v18

    .line 152
    const-string v11, "VTListComboComponent"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Eval listcombo parsed: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v11, v0}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static/range {v18 .. v18}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 155
    add-int/lit8 v16, v16, 0x1

    .line 156
    goto :goto_1

    .line 161
    :cond_2
    new-instance v20, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    invoke-direct/range {v20 .. v20}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;-><init>()V

    .line 162
    .local v20, "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    invoke-virtual/range {v21 .. v21}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v11

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 163
    invoke-virtual/range {v21 .. v21}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v17

    .line 164
    .local v17, "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 165
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 166
    .local v25, "key":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 167
    .local v29, "val":Ljava/lang/String;
    move-object/from16 v0, v29

    invoke-static {v0, v12}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v29

    .line 168
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 170
    .end local v25    # "key":Ljava/lang/String;
    .end local v29    # "val":Ljava/lang/String;
    :cond_3
    if-eqz v22, :cond_5

    invoke-virtual {v12}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->isMarked()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 171
    invoke-virtual/range {v22 .. v22}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v17

    .line 172
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 173
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 174
    .restart local v25    # "key":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 175
    .restart local v29    # "val":Ljava/lang/String;
    const-string v11, "VTListComboComponent"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "key:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ";val:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v11, v0}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, v29

    invoke-static {v0, v12}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v29

    .line 177
    if-nez v29, :cond_4

    .line 178
    const-string v29, ""

    .line 179
    :cond_4
    const-string v11, "VTListComboComponent"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "key:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ";val(p):"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v11, v0}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 184
    .end local v25    # "key":Ljava/lang/String;
    .end local v29    # "val":Ljava/lang/String;
    :cond_5
    const-string v11, "arrayRow"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, ""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v11, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v11, "VTListComboComponent"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Expanded item "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " ready"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v11, v0}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {v20 .. v20}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v19

    .line 188
    .local v19, "exAtt":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 189
    invoke-interface/range {v19 .. v19}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 190
    .local v14, "att":Ljava/lang/String;
    const-string v11, "VTListComboComponent"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "    "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " :"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 192
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 190
    move-object/from16 v0, v30

    invoke-static {v11, v0}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 194
    .end local v14    # "att":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v16, v16, 0x1

    .line 197
    goto/16 :goto_1

    .line 200
    .end local v12    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v13    # "associatedArray":I
    .end local v16    # "currentRow":I
    .end local v17    # "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v18    # "eval":Ljava/lang/String;
    .end local v19    # "exAtt":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v20    # "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v22    # "itemSelected":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;
    :cond_7
    const/16 v28, 0x1

    .line 202
    .local v28, "shouldAdd":Z
    const-string v11, "filter"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 203
    .restart local v18    # "eval":Ljava/lang/String;
    const-string v11, "VTListComboComponent"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Eval Fixed listCombo: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v11, v0}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    if-eqz v18, :cond_8

    const-string v11, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 207
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v18

    .line 208
    const-string v11, "VTListComboComponent"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Eval Fixed Parsed listCombo: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v11, v0}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static/range {v18 .. v18}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 211
    const/16 v28, 0x0

    .line 215
    :cond_8
    if-eqz v28, :cond_0

    .line 218
    new-instance v20, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    invoke-direct/range {v20 .. v20}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;-><init>()V

    .line 219
    .restart local v20    # "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    invoke-virtual/range {v21 .. v21}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v11

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 220
    invoke-virtual/range {v21 .. v21}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v17

    .line 221
    .restart local v17    # "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 222
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 223
    .restart local v25    # "key":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 224
    .restart local v29    # "val":Ljava/lang/String;
    const/4 v11, 0x0

    move-object/from16 v0, v29

    invoke-static {v0, v11}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v29

    .line 225
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 228
    .end local v25    # "key":Ljava/lang/String;
    .end local v29    # "val":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 234
    .end local v17    # "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v18    # "eval":Ljava/lang/String;
    .end local v20    # "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v21    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v23    # "itemType":Ljava/lang/String;
    .end local v28    # "shouldAdd":Z
    :cond_a
    const/16 v26, -0x1

    .line 235
    .local v26, "selectedIndex":I
    const/4 v15, 0x0

    .line 236
    .local v15, "currentIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/VTListComboComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v11, "Value"

    invoke-virtual {v4, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    invoke-static {v4, v11}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v27

    .line 239
    .local v27, "selectedValue":Ljava/lang/String;
    if-eqz v27, :cond_b

    const-string v4, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 240
    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v15, v4, :cond_b

    .line 242
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v11, "Value"

    invoke-virtual {v4, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    .line 241
    invoke-static {v4, v11}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v29

    .line 244
    .restart local v29    # "val":Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 245
    move/from16 v26, v15

    .line 257
    .end local v29    # "val":Ljava/lang/String;
    :cond_b
    new-instance v3, Lnet/veritran/VTSpinnerAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/VTListComboComponent;->vtListView:Lnet/veritran/component/view/VTListComboComponentView;

    .line 258
    invoke-virtual {v4}, Lnet/veritran/component/view/VTListComboComponentView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v11, p0

    invoke-direct/range {v3 .. v11}, Lnet/veritran/VTSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/veritran/component/VTUIComponent;)V

    .line 261
    .local v3, "adapter":Lnet/veritran/VTSpinnerAdapter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/VTListComboComponent;->vtListView:Lnet/veritran/component/view/VTListComboComponentView;

    invoke-virtual {v4, v3}, Lnet/veritran/component/view/VTListComboComponentView;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/VTListComboComponent;->vtListView:Lnet/veritran/component/view/VTListComboComponentView;

    new-instance v11, Lnet/veritran/component/VTSpinnerOnSelectedListener;

    .line 263
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListComboComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v11, v0}, Lnet/veritran/component/VTSpinnerOnSelectedListener;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 262
    invoke-virtual {v4, v11}, Lnet/veritran/component/view/VTListComboComponentView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 265
    if-ltz v26, :cond_c

    .line 266
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/VTListComboComponent;->vtListView:Lnet/veritran/component/view/VTListComboComponentView;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lnet/veritran/component/view/VTListComboComponentView;->setSelection(I)V

    .line 268
    :cond_c
    return-void

    .line 248
    .end local v3    # "adapter":Lnet/veritran/VTSpinnerAdapter;
    .restart local v29    # "val":Ljava/lang/String;
    :cond_d
    add-int/lit8 v15, v15, 0x1

    .line 250
    goto :goto_6
.end method


# virtual methods
.method public executeEvent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTListComboComponent;->checkEventType(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lnet/veritran/component/VTListComboComponent;->isRefreshEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-direct {p0}, Lnet/veritran/component/VTListComboComponent;->initCombo()V

    .line 39
    invoke-virtual {p0}, Lnet/veritran/component/VTListComboComponent;->refreshMeasure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lnet/veritran/component/VTListComboComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 41
    invoke-virtual {p0}, Lnet/veritran/component/VTListComboComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 49
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 43
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTListComboComponent;->isVisibilityEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {p0}, Lnet/veritran/component/VTListComboComponent;->updateVisibility()V

    goto :goto_0

    .line 46
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lnet/veritran/component/VTListComboComponent;->vtListView:Lnet/veritran/component/view/VTListComboComponentView;

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    .line 65
    invoke-super {p0}, Lnet/veritran/component/VTListComponent;->init()V

    .line 66
    new-instance v0, Lnet/veritran/component/view/VTListComboComponentView;

    invoke-virtual {p0}, Lnet/veritran/component/VTListComboComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/veritran/component/view/VTListComboComponentView;-><init>(Lnet/veritran/VTCommonActivity;)V

    iput-object v0, p0, Lnet/veritran/component/VTListComboComponent;->vtListView:Lnet/veritran/component/view/VTListComboComponentView;

    .line 70
    invoke-direct {p0}, Lnet/veritran/component/VTListComboComponent;->initCombo()V

    .line 72
    invoke-virtual {p0}, Lnet/veritran/component/VTListComboComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    iget-object v1, v0, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    const-string v2, "all"

    new-instance v3, Lnet/veritran/VisualInputComponent;

    iget-object v0, p0, Lnet/veritran/component/VTListComboComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;

    iget-object v4, p0, Lnet/veritran/component/VTListComboComponent;->vtListView:Lnet/veritran/component/view/VTListComboComponentView;

    invoke-direct {v3, v0, v4}, Lnet/veritran/VisualInputComponent;-><init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;Landroid/widget/Spinner;)V

    invoke-virtual {v1, v2, v3}, Lnet/veritran/VTCommonActivity$InputsByArea;->put(Ljava/lang/String;Lnet/veritran/VisualInputComponent;)V

    .line 75
    return-void
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method
