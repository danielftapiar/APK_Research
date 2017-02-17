.class public Lnet/veritran/component/VTListHorizontalComponent;
.super Lnet/veritran/component/VTListComponent;
.source "VTListHorizontalComponent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VTListHorizontalComponent"


# instance fields
.field private vtListView:Lnet/veritran/component/view/VTListHorizontalComponentView;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 0
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lnet/veritran/component/VTListComponent;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 56
    return-void
.end method

.method private initList()V
    .locals 30

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListHorizontalComponent;->vtListView:Lnet/veritran/component/view/VTListHorizontalComponentView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lnet/veritran/component/view/VTListHorizontalComponentView;->removeAllViews()V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListHorizontalComponent;->defineWidth()V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListHorizontalComponent;->defineHeight()V

    .line 78
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListHorizontalComponent;->defineVisibility()V

    .line 79
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListHorizontalComponent;->defineMargins()V

    .line 81
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v11, "expandedItems":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListHorizontalComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    check-cast v26, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;

    invoke-virtual/range {v26 .. v26}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;->getListItems()Ljava/util/List;

    move-result-object v16

    .line 85
    .local v16, "items":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_0
    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_8

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    .line 86
    .local v13, "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    const-string v27, "type"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 87
    .local v15, "itemType":Ljava/lang/String;
    const-string v27, "V"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 88
    const/4 v14, 0x0

    .line 89
    .local v14, "itemSelected":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;
    invoke-virtual {v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getItemSelected()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;

    move-result-object v27

    if-eqz v27, :cond_1

    .line 90
    invoke-virtual {v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getItemSelected()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;

    move-result-object v14

    .line 91
    const-string v27, "VTListHorizontalComponent"

    const-string v28, "ItemSelected specified!"

    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    const-string v27, "array"

    .line 94
    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 93
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 95
    .local v4, "associatedArray":I
    new-instance v3, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-direct {v3, v4}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;-><init>(I)V

    .line 96
    .local v3, "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->reset()V

    .line 97
    const/4 v6, 0x0

    .line 98
    .local v6, "currentRow":I
    :goto_1
    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 99
    new-instance v10, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    invoke-direct {v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;-><init>()V

    .line 100
    .local v10, "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->clone()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 101
    invoke-virtual {v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 102
    invoke-virtual {v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v8

    .line 103
    .local v8, "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 104
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 105
    .local v18, "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 106
    .local v25, "val":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-static {v0, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v25

    .line 107
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 109
    .end local v18    # "key":Ljava/lang/String;
    .end local v25    # "val":Ljava/lang/String;
    :cond_2
    if-eqz v14, :cond_4

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->isMarked()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 110
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v8

    .line 111
    :goto_3
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 112
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 113
    .restart local v18    # "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 114
    .restart local v25    # "val":Ljava/lang/String;
    const-string v27, "VTListHorizontalComponent"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "key:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";val:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    move-object/from16 v0, v25

    invoke-static {v0, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v25

    .line 116
    if-nez v25, :cond_3

    .line 117
    const-string v25, ""

    .line 118
    :cond_3
    const-string v27, "VTListHorizontalComponent"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "key:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";val(p):"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 123
    .end local v18    # "key":Ljava/lang/String;
    .end local v25    # "val":Ljava/lang/String;
    :cond_4
    const-string v27, "arrayRow"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v27, "VTListHorizontalComponent"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Expanded item "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ready"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v9

    .line 127
    .local v9, "exAtt":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v27

    if-eqz v27, :cond_5

    .line 128
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 129
    .local v5, "att":Ljava/lang/String;
    const-string v27, "VTListHorizontalComponent"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "    "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " :"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 131
    invoke-virtual {v10, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 129
    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 133
    .end local v5    # "att":Ljava/lang/String;
    :cond_5
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v6, v6, 0x1

    .line 136
    goto/16 :goto_1

    .line 140
    .end local v3    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v4    # "associatedArray":I
    .end local v6    # "currentRow":I
    .end local v8    # "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v9    # "exAtt":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v10    # "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v14    # "itemSelected":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;
    :cond_6
    new-instance v10, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    invoke-direct {v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;-><init>()V

    .line 141
    .restart local v10    # "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    invoke-virtual {v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 142
    invoke-virtual {v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v8

    .line 143
    .restart local v8    # "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_5
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v27

    if-eqz v27, :cond_7

    .line 144
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 145
    .restart local v18    # "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 146
    .restart local v25    # "val":Ljava/lang/String;
    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v25

    .line 147
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 150
    .end local v18    # "key":Ljava/lang/String;
    .end local v25    # "val":Ljava/lang/String;
    :cond_7
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 154
    .end local v8    # "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v10    # "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v13    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v15    # "itemType":Ljava/lang/String;
    :cond_8
    new-instance v19, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListHorizontalComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 155
    .local v19, "l":Landroid/widget/LinearLayout;
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v27, -0x2

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v20, "llp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 162
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_6
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_b

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    .line 163
    .restart local v13    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    const-string v27, "VTListHorizontalComponent"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "new Item() "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "arrayRow"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "imgsrc"

    .line 164
    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "value"

    .line 165
    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 163
    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v17, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListHorizontalComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 168
    .local v17, "iv":Landroid/widget/ImageView;
    const/16 v27, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 169
    const-string v27, "imgsrc"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 170
    .local v12, "imageStrId":Ljava/lang/String;
    if-eqz v12, :cond_9

    .line 171
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Lnet/veritran/utils/ImageHandler;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 172
    .local v7, "dr":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    .end local v7    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_9
    new-instance v24, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListHorizontalComponent;->vtListView:Lnet/veritran/component/view/VTListHorizontalComponentView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lnet/veritran/component/view/VTListHorizontalComponentView;->getContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 175
    .local v24, "v":Landroid/widget/TextView;
    const-string v27, "text"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    const-string v27, "color"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 177
    .local v23, "textColor":Ljava/lang/String;
    if-eqz v23, :cond_a

    .line 178
    invoke-static/range {v23 .. v23}, Lnet/veritran/VTCommonActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    :cond_a
    new-instance v21, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v27, -0x2

    const/16 v28, -0x2

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 184
    .local v21, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v27, 0xd

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getId()I

    move-result v28

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 188
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    const-string v27, "next"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 190
    .local v22, "nextAction":Ljava/lang/String;
    const-string v27, "VTListHorizontalComponent"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "nextAction "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v27, Lnet/veritran/component/VTHorizontalItemOnClickListener;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListHorizontalComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v13, v1}, Lnet/veritran/component/VTHorizontalItemOnClickListener;-><init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;Lnet/veritran/VTCommonActivity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 194
    .end local v12    # "imageStrId":Ljava/lang/String;
    .end local v13    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v17    # "iv":Landroid/widget/ImageView;
    .end local v21    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v22    # "nextAction":Ljava/lang/String;
    .end local v23    # "textColor":Ljava/lang/String;
    .end local v24    # "v":Landroid/widget/TextView;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListHorizontalComponent;->vtListView:Lnet/veritran/component/view/VTListHorizontalComponentView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTListHorizontalComponentView;->addView(Landroid/view/View;)V

    .line 195
    return-void
.end method


# virtual methods
.method public executeEvent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTListHorizontalComponent;->checkEventType(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lnet/veritran/component/VTListHorizontalComponent;->isRefreshEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-direct {p0}, Lnet/veritran/component/VTListHorizontalComponent;->initList()V

    .line 41
    invoke-virtual {p0}, Lnet/veritran/component/VTListHorizontalComponent;->refreshMeasure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lnet/veritran/component/VTListHorizontalComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 43
    invoke-virtual {p0}, Lnet/veritran/component/VTListHorizontalComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 51
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 45
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTListHorizontalComponent;->isVisibilityEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {p0}, Lnet/veritran/component/VTListHorizontalComponent;->updateVisibility()V

    goto :goto_0

    .line 48
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lnet/veritran/component/VTListHorizontalComponent;->vtListView:Lnet/veritran/component/view/VTListHorizontalComponentView;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lnet/veritran/component/VTListComponent;->init()V

    .line 67
    new-instance v0, Lnet/veritran/component/view/VTListHorizontalComponentView;

    invoke-virtual {p0}, Lnet/veritran/component/VTListHorizontalComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/veritran/component/view/VTListHorizontalComponentView;-><init>(Lnet/veritran/VTCommonActivity;)V

    iput-object v0, p0, Lnet/veritran/component/VTListHorizontalComponent;->vtListView:Lnet/veritran/component/view/VTListHorizontalComponentView;

    .line 69
    invoke-direct {p0}, Lnet/veritran/component/VTListHorizontalComponent;->initList()V

    .line 70
    return-void
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method
