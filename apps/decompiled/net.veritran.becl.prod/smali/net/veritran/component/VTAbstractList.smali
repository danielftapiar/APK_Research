.class public abstract Lnet/veritran/component/VTAbstractList;
.super Ljava/lang/Object;
.source "VTAbstractList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/component/VTAbstractList$VTSpinnerOnSelectedListener;,
        Lnet/veritran/component/VTAbstractList$VTListItemOnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VTAbstractList"


# instance fields
.field c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;

.field expandedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/VTAbstractList;->expandedItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public expandItems()V
    .locals 18

    .prologue
    .line 36
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/veritran/component/VTAbstractList;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;

    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;->getListItems()Ljava/util/List;

    move-result-object v11

    .line 38
    .local v11, "items":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    .line 39
    .local v8, "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    const-string v15, "type"

    invoke-virtual {v8, v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 40
    .local v10, "itemType":Ljava/lang/String;
    const-string v15, "V"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 41
    const/4 v9, 0x0

    .line 42
    .local v9, "itemSelected":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;
    invoke-virtual {v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getItemSelected()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 43
    invoke-virtual {v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getItemSelected()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;

    move-result-object v9

    .line 44
    const-string v15, "VTAbstractList"

    const-string v16, "ItemSelected specified!"

    invoke-static/range {v15 .. v16}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    const-string v15, "array"

    invoke-virtual {v8, v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 47
    .local v2, "associatedArray":I
    new-instance v1, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-direct {v1, v2}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;-><init>(I)V

    .line 48
    .local v1, "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->reset()V

    .line 49
    const/4 v4, 0x0

    .line 50
    .local v4, "currentRow":I
    :goto_1
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 52
    new-instance v7, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    invoke-direct {v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;-><init>()V

    .line 53
    .local v7, "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->clone()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v15

    invoke-virtual {v7, v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 54
    invoke-virtual {v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v15

    invoke-virtual {v7, v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 55
    invoke-virtual {v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v5

    .line 56
    .local v5, "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 57
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 58
    .local v12, "key":Ljava/lang/String;
    invoke-virtual {v8, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 59
    .local v13, "val":Ljava/lang/String;
    invoke-static {v13, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v13

    .line 60
    invoke-virtual {v7, v12, v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 62
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "val":Ljava/lang/String;
    :cond_2
    if-eqz v9, :cond_4

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->isMarked()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 63
    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v5

    .line 64
    :goto_3
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 65
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 66
    .restart local v12    # "key":Ljava/lang/String;
    invoke-virtual {v9, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 67
    .restart local v13    # "val":Ljava/lang/String;
    const-string v15, "VTAbstractList"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "HL key:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";val:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {v13, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v13

    .line 69
    const-string v15, "VTAbstractList"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "HL key:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";val(p):"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-nez v13, :cond_3

    const-string v13, ""

    .line 71
    :cond_3
    invoke-virtual {v7, v12, v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 76
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "val":Ljava/lang/String;
    :cond_4
    const-string v15, "arrayRow"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v15, "VTAbstractList"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Expanded item "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ready"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v6

    .line 79
    .local v6, "exAtt":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 80
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 81
    .local v3, "att":Ljava/lang/String;
    const-string v15, "VTAbstractList"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "    "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 83
    .end local v3    # "att":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/veritran/component/VTAbstractList;->expandedItems:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v4, v4, 0x1

    .line 86
    goto/16 :goto_1

    .line 91
    .end local v1    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v2    # "associatedArray":I
    .end local v4    # "currentRow":I
    .end local v5    # "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v6    # "exAtt":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v7    # "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v9    # "itemSelected":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;
    :cond_6
    new-instance v7, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    invoke-direct {v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;-><init>()V

    .line 92
    .restart local v7    # "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    invoke-virtual {v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v15

    invoke-virtual {v7, v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 93
    invoke-virtual {v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v5

    .line 94
    .restart local v5    # "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_5
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 95
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 96
    .restart local v12    # "key":Ljava/lang/String;
    invoke-virtual {v8, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 97
    .restart local v13    # "val":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-static {v13, v15}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v13

    .line 98
    invoke-virtual {v7, v12, v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 101
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "val":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/veritran/component/VTAbstractList;->expandedItems:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 106
    .end local v5    # "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v7    # "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v8    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v10    # "itemType":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;)V
    .locals 0
    .param p1, "c"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;

    .prologue
    .line 31
    iput-object p1, p0, Lnet/veritran/component/VTAbstractList;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;

    .line 32
    return-void
.end method
