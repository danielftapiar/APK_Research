.class public Lnet/veritran/component/VTListImageComponent;
.super Lnet/veritran/component/VTListComponent;
.source "VTListImageComponent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VTListImageComponent"


# instance fields
.field private vtListView:Lnet/veritran/component/view/VTListImageComponentView;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 0
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lnet/veritran/component/VTListComponent;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 50
    return-void
.end method

.method private initList()V
    .locals 21

    .prologue
    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListImageComponent;->vtListView:Lnet/veritran/component/view/VTListImageComponentView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListImageComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v18, v0

    const-string v19, "targetvar"

    invoke-virtual/range {v18 .. v19}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lnet/veritran/component/view/VTListImageComponentView;->setTag(Ljava/lang/Object;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListImageComponent;->defineTextAlign()V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListImageComponent;->defineWidth()V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListImageComponent;->defineHeight()V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListImageComponent;->defineVisibility()V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListImageComponent;->defineMargins()V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListImageComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v17, v0

    const-string v18, "hrsize"

    invoke-virtual/range {v17 .. v18}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 106
    .local v10, "hrSize":Ljava/lang/String;
    if-nez v10, :cond_0

    .line 107
    const-string v10, "none"

    .line 109
    :cond_0
    const-string v17, "none"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListImageComponent;->vtListView:Lnet/veritran/component/view/VTListImageComponentView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lnet/veritran/component/view/VTListImageComponentView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_1
    const-string v17, "small"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListImageComponent;->vtListView:Lnet/veritran/component/view/VTListImageComponentView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lnet/veritran/component/view/VTListImageComponentView;->setDividerHeight(I)V

    .line 117
    :cond_2
    :goto_0
    const-string v17, "none"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListImageComponent;->vtListView:Lnet/veritran/component/view/VTListImageComponentView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lnet/veritran/component/view/VTListImageComponentView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v9, "expandedItems":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListImageComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v17, v0

    check-cast v17, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;

    invoke-virtual/range {v17 .. v17}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;->getListItems()Ljava/util/List;

    move-result-object v14

    .line 123
    .local v14, "items":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_4
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    .line 124
    .local v11, "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    const-string v18, "type"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 125
    .local v13, "itemType":Ljava/lang/String;
    const-string v18, "V"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 126
    const/4 v12, 0x0

    .line 127
    .local v12, "itemSelected":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getItemSelected()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 128
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getItemSelected()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;

    move-result-object v12

    .line 129
    const-string v18, "VTListImageComponent"

    const-string v19, "ItemSelected specified!"

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_5
    const-string v18, "array"

    .line 132
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 131
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 133
    .local v3, "associatedArray":I
    new-instance v2, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-direct {v2, v3}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;-><init>(I)V

    .line 135
    .local v2, "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->reset()V

    .line 136
    const/4 v5, 0x0

    .line 137
    .local v5, "currentRow":I
    :goto_2
    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 139
    new-instance v8, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    invoke-direct {v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;-><init>()V

    .line 140
    .local v8, "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->clone()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 141
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 142
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v6

    .line 143
    .local v6, "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 144
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 145
    .local v15, "key":Ljava/lang/String;
    invoke-virtual {v11, v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 146
    .local v16, "val":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v16

    .line 147
    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 112
    .end local v2    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v3    # "associatedArray":I
    .end local v5    # "currentRow":I
    .end local v6    # "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v8    # "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v9    # "expandedItems":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    .end local v11    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v12    # "itemSelected":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;
    .end local v13    # "itemType":Ljava/lang/String;
    .end local v14    # "items":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "val":Ljava/lang/String;
    :cond_6
    const-string v17, "medium"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListImageComponent;->vtListView:Lnet/veritran/component/view/VTListImageComponentView;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Lnet/veritran/component/view/VTListImageComponentView;->setDividerHeight(I)V

    goto/16 :goto_0

    .line 114
    :cond_7
    const-string v17, "large"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListImageComponent;->vtListView:Lnet/veritran/component/view/VTListImageComponentView;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    invoke-virtual/range {v17 .. v18}, Lnet/veritran/component/view/VTListImageComponentView;->setDividerHeight(I)V

    goto/16 :goto_0

    .line 149
    .restart local v2    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .restart local v3    # "associatedArray":I
    .restart local v5    # "currentRow":I
    .restart local v6    # "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v8    # "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .restart local v9    # "expandedItems":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    .restart local v11    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .restart local v12    # "itemSelected":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;
    .restart local v13    # "itemType":Ljava/lang/String;
    .restart local v14    # "items":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    :cond_8
    if-eqz v12, :cond_a

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->isMarked()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 150
    invoke-virtual {v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v6

    .line 151
    :goto_4
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 152
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 153
    .restart local v15    # "key":Ljava/lang/String;
    invoke-virtual {v12, v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 154
    .restart local v16    # "val":Ljava/lang/String;
    const-string v18, "VTListImageComponent"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "key:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";val:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v16

    .line 156
    if-nez v16, :cond_9

    const-string v16, ""

    .line 157
    :cond_9
    const-string v18, "VTListImageComponent"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "key:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";val(p):"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 162
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "val":Ljava/lang/String;
    :cond_a
    const-string v18, "arrayRow"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v18, "VTListImageComponent"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Expanded item "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ready"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v7

    .line 166
    .local v7, "exAtt":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_5
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 167
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 168
    .local v4, "att":Ljava/lang/String;
    const-string v18, "VTListImageComponent"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 170
    invoke-virtual {v8, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 168
    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 172
    .end local v4    # "att":Ljava/lang/String;
    :cond_b
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v5, v5, 0x1

    .line 175
    goto/16 :goto_2

    .line 179
    .end local v2    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v3    # "associatedArray":I
    .end local v5    # "currentRow":I
    .end local v6    # "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v7    # "exAtt":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v8    # "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v12    # "itemSelected":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;
    :cond_c
    new-instance v8, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    invoke-direct {v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;-><init>()V

    .line 180
    .restart local v8    # "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 181
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v6

    .line 182
    .restart local v6    # "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_6
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 183
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 184
    .restart local v15    # "key":Ljava/lang/String;
    invoke-virtual {v11, v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 185
    .restart local v16    # "val":Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v16

    .line 186
    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 189
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "val":Ljava/lang/String;
    :cond_d
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 196
    .end local v6    # "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v8    # "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v11    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v13    # "itemType":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListImageComponent;->vtListView:Lnet/veritran/component/view/VTListImageComponentView;

    move-object/from16 v17, v0

    new-instance v18, Lnet/veritran/MobileArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListImageComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v9}, Lnet/veritran/MobileArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual/range {v17 .. v18}, Lnet/veritran/component/view/VTListImageComponentView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListImageComponent;->vtListView:Lnet/veritran/component/view/VTListImageComponentView;

    move-object/from16 v17, v0

    new-instance v18, Lnet/veritran/component/VTImplicitOnClickListener;

    invoke-direct/range {v18 .. v18}, Lnet/veritran/component/VTImplicitOnClickListener;-><init>()V

    invoke-virtual/range {v17 .. v18}, Lnet/veritran/component/view/VTListImageComponentView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 198
    return-void
.end method


# virtual methods
.method public executeEvent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTListImageComponent;->checkEventType(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lnet/veritran/component/VTListImageComponent;->isRefreshEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-direct {p0}, Lnet/veritran/component/VTListImageComponent;->initList()V

    .line 35
    invoke-virtual {p0}, Lnet/veritran/component/VTListImageComponent;->refreshMeasure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lnet/veritran/component/VTListImageComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 37
    invoke-virtual {p0}, Lnet/veritran/component/VTListImageComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 45
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 39
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTListImageComponent;->isVisibilityEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p0}, Lnet/veritran/component/VTListImageComponent;->updateVisibility()V

    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lnet/veritran/component/VTListImageComponent;->vtListView:Lnet/veritran/component/view/VTListImageComponentView;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lnet/veritran/component/VTListComponent;->init()V

    .line 61
    new-instance v0, Lnet/veritran/component/view/VTListImageComponentView;

    invoke-virtual {p0}, Lnet/veritran/component/VTListImageComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/veritran/component/view/VTListImageComponentView;-><init>(Lnet/veritran/VTCommonActivity;)V

    iput-object v0, p0, Lnet/veritran/component/VTListImageComponent;->vtListView:Lnet/veritran/component/view/VTListImageComponentView;

    .line 63
    invoke-direct {p0}, Lnet/veritran/component/VTListImageComponent;->initList()V

    .line 64
    return-void
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method
