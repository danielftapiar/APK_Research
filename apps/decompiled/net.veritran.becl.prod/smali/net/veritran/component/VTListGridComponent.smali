.class public Lnet/veritran/component/VTListGridComponent;
.super Lnet/veritran/component/VTListComponent;
.source "VTListGridComponent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VTListGridComponent"


# instance fields
.field private expandedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;",
            ">;"
        }
    .end annotation
.end field

.field private vtListView:Lnet/veritran/component/view/VTListGridComponentView;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 1
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lnet/veritran/component/VTListComponent;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/VTListGridComponent;->expandedItems:Ljava/util/List;

    .line 61
    return-void
.end method

.method private initList()V
    .locals 30

    .prologue
    .line 84
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListGridComponent;->defineWidth()V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListGridComponent;->defineHeight()V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListGridComponent;->defineVisibility()V

    .line 87
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListGridComponent;->defineMargins()V

    .line 89
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/VTListGridComponent;->expandedItems:Ljava/util/List;

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    check-cast v26, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;

    .line 92
    invoke-virtual/range {v26 .. v26}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;->getListItems()Ljava/util/List;

    move-result-object v17

    .line 94
    .local v17, "items":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v26, v0

    const-string v27, "Value"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v22

    .line 96
    .local v22, "selectedValue":Ljava/lang/String;
    const-string v26, "VTListGridComponent"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "selectedValue:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_0
    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_f

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    .line 99
    .local v14, "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    const-string v27, "type"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 101
    .local v16, "itemType":Ljava/lang/String;
    const-string v27, "V"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 102
    const/4 v15, 0x0

    .line 103
    .local v15, "itemSelected":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getItemSelected()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;

    move-result-object v27

    if-eqz v27, :cond_1

    .line 104
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getItemSelected()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;

    move-result-object v15

    .line 105
    const-string v27, "VTListGridComponent"

    const-string v28, "ItemSelected specified!"

    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1
    const-string v27, "array"

    .line 108
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 107
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 109
    .local v5, "associatedArray":I
    new-instance v4, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-direct {v4, v5}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;-><init>(I)V

    .line 110
    .local v4, "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->reset()V

    .line 111
    const/4 v9, 0x0

    .line 112
    .local v9, "currentRow":I
    :goto_1
    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 116
    const-string v27, "filter"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 118
    .local v11, "eval":Ljava/lang/String;
    const-string v27, "VTListGridComponent"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Eval datagrid: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    if-eqz v11, :cond_2

    const-string v27, ""

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_2

    .line 121
    invoke-static {v11, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v11

    .line 123
    const-string v27, "VTListGridComponent"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Eval datagrid parsed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {v11}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_2

    .line 126
    add-int/lit8 v9, v9, 0x1

    .line 127
    goto :goto_1

    .line 132
    :cond_2
    new-instance v13, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    invoke-direct {v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;-><init>()V

    .line 133
    .local v13, "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->clone()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 134
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 135
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v10

    .line 136
    .local v10, "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 137
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 138
    .local v18, "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 139
    .local v24, "val":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v24

    .line 140
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 142
    .end local v18    # "key":Ljava/lang/String;
    .end local v24    # "val":Ljava/lang/String;
    :cond_3
    if-eqz v15, :cond_5

    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->isMarked()Z

    move-result v27

    if-eqz v27, :cond_5

    .line 143
    invoke-virtual {v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v10

    .line 144
    :goto_3
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v27

    if-eqz v27, :cond_5

    .line 145
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 146
    .restart local v18    # "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 147
    .restart local v24    # "val":Ljava/lang/String;
    const-string v27, "VTListGridComponent"

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

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v24

    .line 149
    if-nez v24, :cond_4

    .line 150
    const-string v24, ""

    .line 151
    :cond_4
    const-string v27, "VTListGridComponent"

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

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 156
    .end local v18    # "key":Ljava/lang/String;
    .end local v24    # "val":Ljava/lang/String;
    :cond_5
    const-string v27, "arrayRow"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v13, v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v27, "VTListGridComponent"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Expanded item "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ready"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v12

    .line 160
    .local v12, "exAtt":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v27

    if-eqz v27, :cond_6

    .line 161
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 162
    .local v6, "att":Ljava/lang/String;
    const-string v27, "VTListGridComponent"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "    "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " :"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 164
    invoke-virtual {v13, v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 162
    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 168
    .end local v6    # "att":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListGridComponent;->expandedItems:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v9, v9, 0x1

    .line 171
    goto/16 :goto_1

    .line 174
    .end local v4    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v5    # "associatedArray":I
    .end local v9    # "currentRow":I
    .end local v10    # "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v11    # "eval":Ljava/lang/String;
    .end local v12    # "exAtt":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v13    # "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v15    # "itemSelected":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;
    :cond_7
    const/16 v23, 0x1

    .line 176
    .local v23, "shouldAdd":Z
    const-string v27, "filter"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 177
    .restart local v11    # "eval":Ljava/lang/String;
    const-string v27, "VTListGridComponent"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Eval Fixed datagrid: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    if-eqz v11, :cond_8

    const-string v27, ""

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_8

    .line 181
    const/16 v27, 0x0

    move-object/from16 v0, v27

    invoke-static {v11, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v11

    .line 182
    const-string v27, "VTListGridComponent"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Eval Fixed Parsed datagrid: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {v11}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_8

    .line 185
    const/16 v23, 0x0

    .line 189
    :cond_8
    if-eqz v23, :cond_0

    .line 190
    new-instance v13, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    invoke-direct {v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;-><init>()V

    .line 191
    .restart local v13    # "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 195
    const/4 v15, 0x0

    .line 196
    .restart local v15    # "itemSelected":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;
    const/16 v19, 0x0

    .line 197
    .local v19, "matchesSelected":Z
    if-eqz v22, :cond_a

    const-string v27, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_a

    .line 198
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getItemSelected()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;

    move-result-object v27

    if-eqz v27, :cond_9

    .line 199
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getItemSelected()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;

    move-result-object v15

    .line 200
    const-string v27, "VTListGridComponent"

    const-string v28, "ItemSelected specified!"

    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_9
    const-string v27, "Value"

    .line 203
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    .line 202
    invoke-static/range {v27 .. v28}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v25

    .line 204
    .local v25, "valCurr":Ljava/lang/String;
    const-string v27, "VTListGridComponent"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, " valCurr:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 206
    const/16 v19, 0x1

    .line 210
    .end local v25    # "valCurr":Ljava/lang/String;
    :cond_a
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v10

    .line 211
    .restart local v10    # "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_5
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v27

    if-eqz v27, :cond_c

    .line 212
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 214
    .restart local v18    # "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 215
    .restart local v24    # "val":Ljava/lang/String;
    const-string v27, "VTListGridComponent"

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

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v24

    .line 217
    if-nez v24, :cond_b

    .line 218
    const-string v24, ""

    .line 219
    :cond_b
    const-string v27, "VTListGridComponent"

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

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 222
    .end local v18    # "key":Ljava/lang/String;
    .end local v24    # "val":Ljava/lang/String;
    :cond_c
    if-eqz v19, :cond_e

    if-eqz v15, :cond_e

    .line 223
    invoke-virtual {v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v10

    .line 224
    :goto_6
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v27

    if-eqz v27, :cond_e

    .line 225
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 227
    .restart local v18    # "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 228
    .restart local v24    # "val":Ljava/lang/String;
    const-string v27, "VTListGridComponent"

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

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v24

    .line 230
    if-nez v24, :cond_d

    .line 231
    const-string v24, ""

    .line 232
    :cond_d
    const-string v27, "VTListGridComponent"

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

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 238
    .end local v18    # "key":Ljava/lang/String;
    .end local v24    # "val":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListGridComponent;->expandedItems:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 244
    .end local v10    # "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v11    # "eval":Ljava/lang/String;
    .end local v13    # "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v14    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v15    # "itemSelected":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;
    .end local v16    # "itemType":Ljava/lang/String;
    .end local v19    # "matchesSelected":Z
    .end local v23    # "shouldAdd":Z
    :cond_f
    const/16 v21, -0x1

    .line 245
    .local v21, "selectedIndex":I
    const/4 v8, 0x0

    .line 249
    .local v8, "currentIndex":I
    if-eqz v22, :cond_10

    const-string v26, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_10

    .line 250
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListGridComponent;->expandedItems:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v8, v0, :cond_10

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListGridComponent;->expandedItems:Ljava/util/List;

    move-object/from16 v26, v0

    .line 252
    move-object/from16 v0, v26

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v27, "Value"

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    .line 251
    invoke-static/range {v26 .. v27}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v24

    .line 253
    .restart local v24    # "val":Ljava/lang/String;
    const-string v26, "VTListGridComponent"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, " val:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 255
    move/from16 v21, v8

    .line 263
    .end local v24    # "val":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListGridComponent;->vtListView:Lnet/veritran/component/view/VTListGridComponentView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/component/view/VTListGridComponentView;->setVerticalScrollBarEnabled(Z)V

    .line 265
    const/16 v26, 0x1

    const/16 v27, 0x1

    sget-object v28, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v26 .. v28}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 266
    .local v7, "bPressed":Landroid/graphics/Bitmap;
    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v28, "#33CCCCCC"

    invoke-static/range {v28 .. v28}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v7, v0, v1, v2}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 267
    new-instance v20, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 268
    .local v20, "pressed":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListGridComponent;->vtListView:Lnet/veritran/component/view/VTListGridComponentView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTListGridComponentView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 276
    new-instance v3, Lnet/veritran/GridViewAdapter;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListGridComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListGridComponent;->expandedItems:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v3, v0, v1}, Lnet/veritran/GridViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 281
    .local v3, "adapter":Lnet/veritran/GridViewAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListGridComponent;->vtListView:Lnet/veritran/component/view/VTListGridComponentView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lnet/veritran/component/view/VTListGridComponentView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 284
    if-ltz v21, :cond_11

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListGridComponent;->vtListView:Lnet/veritran/component/view/VTListGridComponentView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTListGridComponentView;->setSelection(I)V

    .line 287
    :cond_11
    return-void

    .line 258
    .end local v3    # "adapter":Lnet/veritran/GridViewAdapter;
    .end local v7    # "bPressed":Landroid/graphics/Bitmap;
    .end local v20    # "pressed":Landroid/graphics/drawable/Drawable;
    .restart local v24    # "val":Ljava/lang/String;
    :cond_12
    add-int/lit8 v8, v8, 0x1

    .line 260
    goto/16 :goto_7
.end method


# virtual methods
.method public calculateRowsColumnsSize(II)V
    .locals 24
    .param p1, "pixelsWidth"    # I
    .param p2, "pixelsHeight"    # I

    .prologue
    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v19, v0

    const-string v20, "itemWidth"

    invoke-virtual/range {v19 .. v20}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 291
    .local v16, "itemWidth":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v19, v0

    const-string v20, "itemHeight"

    invoke-virtual/range {v19 .. v20}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 293
    .local v15, "itemHeight":Ljava/lang/String;
    const-string v19, "VTListGridComponent"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "itemWidth="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v19, "VTListGridComponent"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "itemHeight="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListGridComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v16

    .line 297
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListGridComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v15

    .line 298
    const/4 v6, -0x1

    .line 299
    .local v6, "columnWidth":I
    const/4 v5, -0x1

    .line 301
    .local v5, "columnHeight":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTListGridComponent;->calculatePercentage(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    .line 302
    .local v10, "fColWidth":Ljava/lang/Float;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lnet/veritran/component/VTListGridComponent;->calculatePercentage(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    .line 304
    .local v9, "fColHeight":Ljava/lang/Float;
    if-nez v10, :cond_4

    .line 307
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListGridComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTCommonActivity;->resolveSizeInPixels(Ljava/lang/String;Z)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    move/from16 v0, v19

    float-to-int v6, v0

    .line 311
    :goto_0
    const-string v19, "VTListGridComponent"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "columnWidth="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    div-int v17, p1, v6

    .line 320
    .local v17, "numberColumns":I
    :goto_1
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_0

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListGridComponent;->vtListView:Lnet/veritran/component/view/VTListGridComponentView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lnet/veritran/component/view/VTListGridComponentView;->setColumnWidth(I)V

    .line 323
    :cond_0
    if-nez v9, :cond_5

    .line 325
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTListGridComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lnet/veritran/VTCommonActivity;->resolveSizeInPixels(Ljava/lang/String;Z)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v19

    move/from16 v0, v19

    float-to-int v5, v0

    .line 329
    :goto_2
    const-string v19, "VTListGridComponent"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "columnHeight="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :goto_3
    const/high16 v18, -0x40800000    # -1.0f

    .line 338
    .local v18, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListGridComponent;->expandedItems:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_1

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListGridComponent;->expandedItems:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v20, "imgsrc"

    invoke-virtual/range {v19 .. v20}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 342
    .local v14, "imgSrc":Ljava/lang/String;
    if-eqz v14, :cond_1

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 344
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lnet/veritran/utils/ImageHandler;->getBitmapSize(Ljava/lang/String;)[I

    move-result-object v4

    .line 346
    .local v4, "bitmapSize":[I
    const/16 v19, 0x0

    aget v13, v4, v19

    .line 347
    .local v13, "imageWidth":I
    const/16 v19, 0x1

    aget v12, v4, v19

    .line 349
    .local v12, "imageHeight":I
    if-eqz v12, :cond_1

    .line 350
    int-to-float v0, v13

    move/from16 v19, v0

    int-to-float v0, v12

    move/from16 v20, v0

    div-float v18, v19, v20

    .line 356
    .end local v4    # "bitmapSize":[I
    .end local v12    # "imageHeight":I
    .end local v13    # "imageWidth":I
    .end local v14    # "imgSrc":Ljava/lang/String;
    :cond_1
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_6

    const/16 v19, 0x0

    cmpl-float v19, v18, v19

    if-lez v19, :cond_6

    .line 357
    int-to-float v0, v5

    move/from16 v19, v0

    mul-float v19, v19, v18

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v6, v0

    .line 365
    :cond_2
    :goto_4
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_7

    const/16 v19, 0x0

    cmpl-float v19, v18, v19

    if-lez v19, :cond_7

    .line 367
    int-to-float v0, v6

    move/from16 v19, v0

    div-float v19, v19, v18

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v5, v0

    .line 374
    :cond_3
    :goto_5
    const-string v19, "VTListGridComponent"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "columnHeight final="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v19, "VTListGridComponent"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "columnWidth final="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListGridComponent;->expandedItems:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    .line 380
    .local v8, "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    const-string v20, "itemWidth"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v20, "itemHeight"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 308
    .end local v8    # "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v17    # "numberColumns":I
    .end local v18    # "scale":F
    :catch_0
    move-exception v7

    .line 309
    .local v7, "ex":Ljava/lang/Exception;
    const-string v19, "VTListGridComponent"

    const-string v20, "Catched exception empty (fortify)"

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 315
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_4
    const/high16 v19, 0x42c80000    # 100.0f

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v20

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v17, v0

    .line 316
    .restart local v17    # "numberColumns":I
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v6, v0

    .line 317
    const-string v19, "VTListGridComponent"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "columnWidth="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 326
    :catch_1
    move-exception v7

    .line 327
    .restart local v7    # "ex":Ljava/lang/Exception;
    const-string v19, "VTListGridComponent"

    const-string v20, "Catched exception empty (fortify)"

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 332
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v5, v0

    goto/16 :goto_3

    .line 359
    .restart local v18    # "scale":F
    :cond_6
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_2

    .line 361
    move v6, v5

    goto/16 :goto_4

    .line 369
    :cond_7
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_3

    .line 371
    move v5, v6

    goto/16 :goto_5

    .line 385
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListGridComponent;->vtListView:Lnet/veritran/component/view/VTListGridComponentView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTListGridComponentView;->setNumColumns(I)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListGridComponent;->vtListView:Lnet/veritran/component/view/VTListGridComponentView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lnet/veritran/component/view/VTListGridComponentView;->setStretchMode(I)V

    .line 390
    const/4 v11, 0x0

    .line 392
    .local v11, "hSpacing":I
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_9

    .line 394
    mul-int v19, v6, v17

    sub-int v19, p1, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-int/lit8 v20, v17, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v11, v0

    .line 397
    :cond_9
    const-string v19, "VTListGridComponent"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "hSpacing="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListGridComponent;->vtListView:Lnet/veritran/component/view/VTListGridComponentView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v11, v1, v11, v2}, Lnet/veritran/component/view/VTListGridComponentView;->setPadding(IIII)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListGridComponent;->vtListView:Lnet/veritran/component/view/VTListGridComponentView;

    move-object/from16 v19, v0

    mul-int/lit8 v20, v11, 0x2

    invoke-virtual/range {v19 .. v20}, Lnet/veritran/component/view/VTListGridComponentView;->setHorizontalSpacing(I)V

    .line 404
    return-void
.end method

.method public executeEvent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTListGridComponent;->checkEventType(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lnet/veritran/component/VTListGridComponent;->isRefreshEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-direct {p0}, Lnet/veritran/component/VTListGridComponent;->initList()V

    .line 46
    invoke-virtual {p0}, Lnet/veritran/component/VTListGridComponent;->refreshMeasure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lnet/veritran/component/VTListGridComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 48
    invoke-virtual {p0}, Lnet/veritran/component/VTListGridComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 56
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTListGridComponent;->isVisibilityEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {p0}, Lnet/veritran/component/VTListGridComponent;->updateVisibility()V

    goto :goto_0

    .line 53
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lnet/veritran/component/VTListGridComponent;->vtListView:Lnet/veritran/component/view/VTListGridComponentView;

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    .line 71
    invoke-super {p0}, Lnet/veritran/component/VTListComponent;->init()V

    .line 72
    new-instance v0, Lnet/veritran/component/view/VTListGridComponentView;

    invoke-virtual {p0}, Lnet/veritran/component/VTListGridComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/veritran/component/view/VTListGridComponentView;-><init>(Lnet/veritran/VTCommonActivity;)V

    iput-object v0, p0, Lnet/veritran/component/VTListGridComponent;->vtListView:Lnet/veritran/component/view/VTListGridComponentView;

    .line 73
    iget-object v0, p0, Lnet/veritran/component/VTListGridComponent;->vtListView:Lnet/veritran/component/view/VTListGridComponentView;

    invoke-virtual {v0, p0}, Lnet/veritran/component/view/VTListGridComponentView;->setComponent(Lnet/veritran/component/VTListGridComponent;)V

    .line 75
    invoke-direct {p0}, Lnet/veritran/component/VTListGridComponent;->initList()V

    .line 77
    invoke-virtual {p0}, Lnet/veritran/component/VTListGridComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    iget-object v1, v0, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    const-string v2, "all"

    new-instance v3, Lnet/veritran/VisualInputComponent;

    iget-object v0, p0, Lnet/veritran/component/VTListGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;

    iget-object v4, p0, Lnet/veritran/component/VTListGridComponent;->vtListView:Lnet/veritran/component/view/VTListGridComponentView;

    invoke-direct {v3, v0, v4}, Lnet/veritran/VisualInputComponent;-><init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;Landroid/widget/GridView;)V

    invoke-virtual {v1, v2, v3}, Lnet/veritran/VTCommonActivity$InputsByArea;->put(Ljava/lang/String;Lnet/veritran/VisualInputComponent;)V

    .line 80
    return-void
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method
