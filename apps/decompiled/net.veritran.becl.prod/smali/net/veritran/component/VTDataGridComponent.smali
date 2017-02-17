.class public Lnet/veritran/component/VTDataGridComponent;
.super Lnet/veritran/component/VTUIComponentContainer;
.source "VTDataGridComponent.java"

# interfaces
.implements Lnet/veritran/component/view/VTIndexScroller$VTIndexScrollerInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTDataGridComponent"


# instance fields
.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/veritran/component/VTUIComponent;",
            ">;"
        }
    .end annotation
.end field

.field private gridPaddingBottom:Ljava/lang/String;

.field private gridPaddingLeft:Ljava/lang/String;

.field private gridPaddingRight:Ljava/lang/String;

.field private gridPaddingTop:Ljava/lang/String;

.field private hrColor:Ljava/lang/Integer;

.field private hrSize:Ljava/lang/String;

.field private hrStyle:Ljava/lang/String;

.field private lastStroll:I

.field private mapIndexFirstLetterRowView:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/veritran/component/view/VTStaticTableRowView;",
            ">;"
        }
    .end annotation
.end field

.field private vrColor:Ljava/lang/Integer;

.field private vrSize:Ljava/lang/String;

.field private vrStyle:Ljava/lang/String;

.field private vtDataGridView:Lnet/veritran/component/view/VTDataGridComponentView;

.field private vtIndexScroller:Lnet/veritran/component/view/VTIndexScroller;

.field private vtIndexScrollerView:Lnet/veritran/component/view/VTIndexScrollerView;

.field private vtScroller:Lnet/veritran/component/view/VTScrollTableWrapper;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 1
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponentContainer;-><init>()V

    .line 49
    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->hrSize:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->hrColor:Ljava/lang/Integer;

    .line 51
    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->hrStyle:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vrSize:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vrColor:Ljava/lang/Integer;

    .line 55
    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vrStyle:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->children:Ljava/util/ArrayList;

    .line 524
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->mapIndexFirstLetterRowView:Ljava/util/HashMap;

    .line 826
    const/4 v0, -0x1

    iput v0, p0, Lnet/veritran/component/VTDataGridComponent;->lastStroll:I

    .line 113
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTDataGridComponent;->setActivity(Lnet/veritran/VTCommonActivity;)V

    .line 114
    new-instance v0, Lnet/veritran/component/view/VTDataGridComponentView;

    invoke-direct {v0, p1}, Lnet/veritran/component/view/VTDataGridComponentView;-><init>(Lnet/veritran/VTCommonActivity;)V

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtDataGridView:Lnet/veritran/component/view/VTDataGridComponentView;

    .line 115
    return-void
.end method

.method static synthetic access$002(Lnet/veritran/component/VTDataGridComponent;I)I
    .locals 0
    .param p0, "x0"    # Lnet/veritran/component/VTDataGridComponent;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lnet/veritran/component/VTDataGridComponent;->lastStroll:I

    return p1
.end method

.method static synthetic access$100(Lnet/veritran/component/VTDataGridComponent;)Lnet/veritran/component/view/VTScrollTableWrapper;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTDataGridComponent;

    .prologue
    .line 34
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtScroller:Lnet/veritran/component/view/VTScrollTableWrapper;

    return-object v0
.end method

.method private addFixedRow(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;Ljava/util/List;I)V
    .locals 5
    .param p1, "rowMaster"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;
    .param p3, "rowIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p2, "expandedRows":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;>;"
    const/4 v1, 0x1

    .line 230
    .local v1, "shouldAdd":Z
    const-string v2, "filter"

    invoke-virtual {p1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "eval":Ljava/lang/String;
    const-string v2, "VTDataGridComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Eval Fixed datagrid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v0

    .line 236
    const-string v2, "VTDataGridComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Eval Fixed Parsed datagrid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {v0}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 239
    const/4 v1, 0x0

    .line 243
    :cond_0
    if-eqz v1, :cond_1

    .line 244
    invoke-direct {p0, p3, p1, p2}, Lnet/veritran/component/VTDataGridComponent;->addRow(ILnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;Ljava/util/List;)V

    .line 246
    :cond_1
    return-void
.end method

.method private addRow(ILnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;Ljava/util/List;ZLnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;II)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;
    .locals 24
    .param p1, "rowIndex"    # I
    .param p2, "rowMaster"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;
    .param p4, "isVariable"    # Z
    .param p5, "ara"    # Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .param p6, "associatedArray"    # I
    .param p7, "currentRow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;",
            ">;Z",
            "Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;",
            "II)",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;"
        }
    .end annotation

    .prologue
    .line 301
    .local p3, "expandedRows":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;>;"
    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->clone()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;

    move-result-object v14

    .line 303
    .local v14, "row":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;
    :goto_0
    if-eqz p4, :cond_1

    move-object v7, v14

    .line 305
    .local v7, "cvc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :goto_1
    const-string v20, "cssclass"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 306
    .local v6, "cssClass":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-static {v6, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    .line 307
    const-string v20, "cssclass"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0, v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {v14}, Lnet/veritran/ThemeManager;->applyTheme(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 310
    const-string v20, "paddingLeft"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 311
    .local v16, "rowPaddingLeft":Ljava/lang/String;
    const-string v20, "paddingTop"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 312
    .local v18, "rowPaddingTop":Ljava/lang/String;
    const-string v20, "paddingRight"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 313
    .local v17, "rowPaddingRight":Ljava/lang/String;
    const-string v20, "paddingBottom"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 315
    .local v15, "rowPaddingBottom":Ljava/lang/String;
    new-instance v11, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;

    invoke-direct {v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;-><init>()V

    .line 316
    .local v11, "expandedRow":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v4

    .line 317
    .local v4, "atts":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 318
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 319
    .local v3, "att":Ljava/lang/String;
    invoke-virtual {v14, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v3, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 372
    .end local v3    # "att":Ljava/lang/String;
    .end local v4    # "atts":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v6    # "cssClass":Ljava/lang/String;
    .end local v7    # "cvc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    .end local v11    # "expandedRow":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;
    .end local v14    # "row":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;
    .end local v15    # "rowPaddingBottom":Ljava/lang/String;
    .end local v16    # "rowPaddingLeft":Ljava/lang/String;
    .end local v17    # "rowPaddingRight":Ljava/lang/String;
    .end local v18    # "rowPaddingTop":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 373
    .local v9, "e1":Ljava/lang/CloneNotSupportedException;
    const/4 v11, 0x0

    .end local v9    # "e1":Ljava/lang/CloneNotSupportedException;
    :goto_3
    return-object v11

    :cond_0
    move-object/from16 v14, p2

    .line 301
    goto :goto_0

    .line 303
    .restart local v14    # "row":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    goto :goto_1

    .line 321
    .restart local v4    # "atts":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v6    # "cssClass":Ljava/lang/String;
    .restart local v7    # "cvc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    .restart local v11    # "expandedRow":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;
    .restart local v15    # "rowPaddingBottom":Ljava/lang/String;
    .restart local v16    # "rowPaddingLeft":Ljava/lang/String;
    .restart local v17    # "rowPaddingRight":Ljava/lang/String;
    .restart local v18    # "rowPaddingTop":Ljava/lang/String;
    :cond_2
    if-eqz p4, :cond_3

    .line 322
    const-string v20, "array"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v20, "arrayRow"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_3
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getConfigurationVisualComponentsList()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    move-result-object v5

    .line 326
    .local v5, "compList":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    if-nez p4, :cond_4

    .line 327
    invoke-virtual {v11, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->setConfigurationVisualComponentsList(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;)V

    .line 329
    :cond_4
    new-instance v10, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-direct {v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;-><init>()V

    .line 330
    .local v10, "expandedList":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_4
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_6

    .line 331
    if-eqz p4, :cond_5

    invoke-virtual {v5, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->clone(Z)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v19

    .line 332
    .local v19, "vc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :goto_5
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 330
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 331
    .end local v19    # "vc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_5
    invoke-virtual {v5, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v19

    goto :goto_5

    .line 334
    :cond_6
    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCellsCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_10

    .line 335
    const-string v20, "VTDataGridComponent"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "row["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] row.getCellsCount():"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCellsCount()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v20, "VTDataGridComponent"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "row["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] textalign:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v14, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    move-result-object v22

    const-string v23, "textalign"

    invoke-virtual/range {v22 .. v23}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v20, "VTDataGridComponent"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "row["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] bgcolor:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v14, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    move-result-object v22

    const-string v23, "backgroundColor"

    invoke-virtual/range {v22 .. v23}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    if-eqz v16, :cond_b

    .line 339
    invoke-virtual {v14, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    move-result-object v20

    const-string v21, "paddingLeft"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_7
    :goto_7
    if-eqz v18, :cond_c

    .line 344
    invoke-virtual {v14, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    move-result-object v20

    const-string v21, "paddingTop"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_8
    :goto_8
    if-eqz v17, :cond_d

    .line 349
    invoke-virtual {v14, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    move-result-object v20

    const-string v21, "paddingRight"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_9
    :goto_9
    if-eqz v15, :cond_e

    .line 354
    invoke-virtual {v14, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    move-result-object v20

    const-string v21, "paddingBottom"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_a
    :goto_a
    invoke-virtual {v14, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v8

    .line 359
    .local v8, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_b
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v20

    if-eqz v20, :cond_f

    .line 360
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 361
    .local v13, "key":Ljava/lang/String;
    const-string v20, "VTDataGridComponent"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "row["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v14, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 340
    .end local v8    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v13    # "key":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTDataGridComponent;->gridPaddingLeft:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 341
    invoke-virtual {v14, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    move-result-object v20

    const-string v21, "paddingLeft"

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTDataGridComponent;->gridPaddingLeft:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 345
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTDataGridComponent;->gridPaddingTop:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    .line 346
    invoke-virtual {v14, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    move-result-object v20

    const-string v21, "paddingTop"

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTDataGridComponent;->gridPaddingTop:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 350
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTDataGridComponent;->gridPaddingRight:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 351
    invoke-virtual {v14, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    move-result-object v20

    const-string v21, "paddingRight"

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTDataGridComponent;->gridPaddingRight:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 355
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTDataGridComponent;->gridPaddingBottom:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 356
    invoke-virtual {v14, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    move-result-object v20

    const-string v21, "paddingBottom"

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTDataGridComponent;->gridPaddingBottom:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 363
    .restart local v8    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_f
    invoke-virtual {v14, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->addCell(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;)V

    .line 364
    const-string v20, "VTDataGridComponent"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "expandedRow["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] expandedRow.getCellsCount() :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCellsCount()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v20, "VTDataGridComponent"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "row["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] textalign:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    move-result-object v22

    const-string v23, "textalign"

    invoke-virtual/range {v22 .. v23}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v20, "VTDataGridComponent"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "row["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] bgcolor:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11, v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    move-result-object v22

    const-string v23, "backgroundColor"

    invoke-virtual/range {v22 .. v23}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6

    .line 368
    .end local v8    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_10
    invoke-virtual {v11, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->setConfigurationVisualComponentsList(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;)V

    .line 369
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3
.end method

.method private addRow(ILnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;Ljava/util/List;)V
    .locals 8
    .param p1, "rowIndex"    # I
    .param p2, "rowMaster"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "expandedRows":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;>;"
    const/4 v4, 0x0

    .line 291
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lnet/veritran/component/VTDataGridComponent;->addRow(ILnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;Ljava/util/List;ZLnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;II)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;

    .line 292
    return-void
.end method

.method private addRowHeader(I[I)[I
    .locals 27
    .param p1, "cols"    # I
    .param p2, "colWidths"    # [I

    .prologue
    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;->getHeader()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;

    move-result-object v17

    .line 380
    .local v17, "header":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;
    if-eqz v17, :cond_d

    invoke-virtual/range {v17 .. v17}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;->getConfigurationVisualComponentsList()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v2

    if-lez v2, :cond_d

    .line 381
    const-string v2, "VTDataGridComponent"

    const-string v3, "got header!"

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    move/from16 v0, p1

    new-array v0, v0, [I

    move-object/from16 p2, v0

    .line 383
    move/from16 v0, p1

    new-array v12, v0, [Ljava/lang/String;

    .line 384
    .local v12, "colAlign":[Ljava/lang/String;
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 385
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;->getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    move-result-object v2

    const-string v3, "textAlign"

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 386
    .local v8, "align":Ljava/lang/String;
    if-nez v8, :cond_0

    const-string v8, "left"

    .line 387
    :cond_0
    aput-object v8, v12, v22

    .line 388
    const-string v2, "VTDataGridComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VTCELL Align="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v12, v22

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;->getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    move-result-object v2

    const-string v3, "width"

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 391
    .local v13, "colWidth":Ljava/lang/String;
    :try_start_0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, p2, v22
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_1
    const-string v2, "VTDataGridComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VTCELL WIDTH="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v5, p2, v22

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 392
    :catch_0
    move-exception v23

    .line 393
    .local v23, "nfe":Ljava/lang/NumberFormatException;
    const/16 v2, 0x64

    div-int v2, v2, p1

    aput v2, p2, v22

    goto :goto_1

    .line 398
    .end local v8    # "align":Ljava/lang/String;
    .end local v13    # "colWidth":Ljava/lang/String;
    .end local v23    # "nfe":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v25, Lnet/veritran/component/view/VTStaticTableRowView;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTDataGridComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Lnet/veritran/component/view/VTStaticTableRowView;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 400
    .local v25, "tr":Lnet/veritran/component/view/VTStaticTableRowView;
    const-string v2, "cssclass"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 401
    .local v16, "cssClass":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v16

    .line 402
    const-string v2, "cssclass"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static/range {v17 .. v17}, Lnet/veritran/ThemeManager;->applyTheme(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 405
    const-string v2, "paddingLeft"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 406
    .local v19, "headerPaddingLeft":Ljava/lang/String;
    const-string v2, "paddingTop"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 407
    .local v21, "headerPaddingTop":Ljava/lang/String;
    const-string v2, "paddingRight"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 408
    .local v20, "headerPaddingRight":Ljava/lang/String;
    const-string v2, "paddingBottom"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 410
    .local v18, "headerPaddingBottom":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lnet/veritran/component/view/VTStaticTableRowView;->setMinimumHeight(I)V

    .line 411
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lnet/veritran/component/view/VTStaticTableRowView;->setMinimumWidth(I)V

    .line 412
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    const/4 v3, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lnet/veritran/component/view/VTStaticTableRowView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    const/16 v2, 0x11

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lnet/veritran/component/view/VTStaticTableRowView;->setGravity(I)V

    .line 418
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lnet/veritran/component/VTDataGridComponent;->getBorderAttributes(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 420
    invoke-virtual/range {v17 .. v17}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;->getConfigurationVisualComponentsList()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    move-result-object v14

    .line 421
    .local v14, "compList":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v6

    .line 422
    .local v6, "maxColumns":I
    const/4 v4, 0x0

    .local v4, "colIndex":I
    :goto_2
    if-ge v4, v6, :cond_c

    .line 423
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;->getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    move-result-object v11

    .line 424
    .local v11, "cell":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTStaticTableRowView;->setPercentagesCellsWidth([I)V

    .line 425
    invoke-virtual {v14, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v26

    .line 426
    .local v26, "vc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "theader_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lnet/veritran/component/view/VTStaticTableRowView;->setTag(Ljava/lang/Object;)V

    .line 434
    if-eqz v19, :cond_7

    .line 435
    const-string v2, "paddingLeft"

    move-object/from16 v0, v19

    invoke-virtual {v11, v2, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_2
    :goto_3
    if-eqz v21, :cond_8

    .line 440
    const-string v2, "paddingTop"

    move-object/from16 v0, v21

    invoke-virtual {v11, v2, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_3
    :goto_4
    if-eqz v20, :cond_9

    .line 445
    const-string v2, "paddingRight"

    move-object/from16 v0, v20

    invoke-virtual {v11, v2, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_4
    :goto_5
    if-eqz v18, :cond_a

    .line 450
    const-string v2, "paddingBottom"

    move-object/from16 v0, v18

    invoke-virtual {v11, v2, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_5
    :goto_6
    new-instance v24, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;

    invoke-direct/range {v24 .. v24}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;-><init>()V

    .line 463
    .local v24, "panelComponent":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;
    const-string v2, "tag"

    const-string v3, "VTPanelDataGridCellComponent"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v10

    .line 466
    .local v10, "atts":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_6
    :goto_7
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 467
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 468
    .local v9, "att":Ljava/lang/String;
    const-string v2, "height"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 470
    const-string v2, "width"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 473
    invoke-virtual {v11, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 436
    .end local v9    # "att":Ljava/lang/String;
    .end local v10    # "atts":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v24    # "panelComponent":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTDataGridComponent;->gridPaddingLeft:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 437
    const-string v2, "paddingLeft"

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/VTDataGridComponent;->gridPaddingLeft:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 441
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTDataGridComponent;->gridPaddingTop:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 442
    const-string v2, "paddingTop"

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/VTDataGridComponent;->gridPaddingTop:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 446
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTDataGridComponent;->gridPaddingRight:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 447
    const-string v2, "paddingRight"

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/VTDataGridComponent;->gridPaddingRight:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 451
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTDataGridComponent;->gridPaddingBottom:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 452
    const-string v2, "paddingBottom"

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/VTDataGridComponent;->gridPaddingBottom:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 476
    .restart local v10    # "atts":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v24    # "panelComponent":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;
    :cond_b
    new-instance v15, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-direct {v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;-><init>()V

    .line 477
    .local v15, "componentList":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 478
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->setConfigurationVisualComponentsList(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;)V

    .line 479
    const-string v2, "textalign"

    aget-object v3, v12, v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTDataGridComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTDataGridComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v3

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v3, v1}, Lnet/veritran/VTCommonActivity;->getUIComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Lnet/veritran/component/VTUIComponent;)Lnet/veritran/component/VTUIComponent;

    move-result-object v7

    .line 481
    .local v7, "panel":Lnet/veritran/component/VTUIComponent;
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lnet/veritran/component/VTDataGridComponent;->setBorder(IIIILnet/veritran/component/VTUIComponent;)V

    .line 482
    invoke-virtual {v7}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lnet/veritran/component/view/VTStaticTableRowView;->addView(Landroid/view/View;)V

    .line 484
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lnet/veritran/component/VTDataGridComponent;->setOnClickEvent(Lnet/veritran/component/VTUIComponent;)V

    .line 422
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 486
    .end local v7    # "panel":Lnet/veritran/component/VTUIComponent;
    .end local v10    # "atts":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v11    # "cell":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;
    .end local v15    # "componentList":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    .end local v24    # "panelComponent":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;
    .end local v26    # "vc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTDataGridComponent;->vtDataGridView:Lnet/veritran/component/view/VTDataGridComponentView;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lnet/veritran/component/view/VTDataGridComponentView;->addView(Landroid/view/View;)V

    .line 488
    .end local v4    # "colIndex":I
    .end local v6    # "maxColumns":I
    .end local v12    # "colAlign":[Ljava/lang/String;
    .end local v14    # "compList":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    .end local v16    # "cssClass":Ljava/lang/String;
    .end local v18    # "headerPaddingBottom":Ljava/lang/String;
    .end local v19    # "headerPaddingLeft":Ljava/lang/String;
    .end local v20    # "headerPaddingRight":Ljava/lang/String;
    .end local v21    # "headerPaddingTop":Ljava/lang/String;
    .end local v22    # "i":I
    .end local v25    # "tr":Lnet/veritran/component/view/VTStaticTableRowView;
    :cond_d
    return-object p2
.end method

.method private addVariableRow(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;Ljava/util/List;I)V
    .locals 11
    .param p1, "rowMaster"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;
    .param p3, "rowIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p2, "expandedRows":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;>;"
    const-string v0, "VTDataGridComponent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "row["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] type V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v0, "array"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 253
    .local v6, "associatedArray":I
    const-string v0, "VTDataGridComponent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "row["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] associatedArray:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v5, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-direct {v5, v6}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;-><init>(I)V

    .line 255
    .local v5, "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->reset()V

    .line 256
    const/4 v7, 0x0

    .line 257
    .local v7, "currentRow":I
    :goto_0
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 261
    .local v9, "eval":Ljava/lang/String;
    const-string v0, "VTDataGridComponent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Eval datagrid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    if-eqz v9, :cond_0

    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    invoke-static {v9, v5}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v9

    .line 266
    const-string v0, "VTDataGridComponent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Eval datagrid parsed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {v9}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    add-int/lit8 v7, v7, 0x1

    .line 270
    goto :goto_0

    .line 274
    :cond_0
    const-string v0, "valueForIndex"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v10

    .line 276
    .local v10, "valueForIndex":Ljava/lang/String;
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p3

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lnet/veritran/component/VTDataGridComponent;->addRow(ILnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;Ljava/util/List;ZLnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;II)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;

    move-result-object v8

    .line 278
    .local v8, "drAdded":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    invoke-virtual {v8, v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->setValueForIndex(Ljava/lang/String;)V

    .line 283
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 284
    goto :goto_0

    .line 285
    .end local v8    # "drAdded":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;
    .end local v9    # "eval":Ljava/lang/String;
    .end local v10    # "valueForIndex":Ljava/lang/String;
    :cond_2
    const-string v0, "VTDataGridComponent"

    const-string v1, "end ara.readRow()"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method private getBorderAttributes(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V
    .locals 3
    .param p1, "row"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    .prologue
    const/4 v2, 0x0

    .line 492
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v1, "hrsize"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->hrSize:Ljava/lang/String;

    .line 493
    iput-object v2, p0, Lnet/veritran/component/VTDataGridComponent;->hrColor:Ljava/lang/Integer;

    .line 494
    iput-object v2, p0, Lnet/veritran/component/VTDataGridComponent;->hrStyle:Ljava/lang/String;

    .line 495
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->hrSize:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 496
    const-string v0, "hrsize"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->hrSize:Ljava/lang/String;

    .line 497
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->hrSize:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 498
    const-string v0, "none"

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->hrSize:Ljava/lang/String;

    .line 507
    :goto_0
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v1, "vrsize"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vrSize:Ljava/lang/String;

    .line 508
    iput-object v2, p0, Lnet/veritran/component/VTDataGridComponent;->vrColor:Ljava/lang/Integer;

    .line 509
    iput-object v2, p0, Lnet/veritran/component/VTDataGridComponent;->vrStyle:Ljava/lang/String;

    .line 510
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vrSize:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 511
    const-string v0, "vrsize"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vrSize:Ljava/lang/String;

    .line 512
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vrSize:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 513
    const-string v0, "none"

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vrSize:Ljava/lang/String;

    .line 522
    :goto_1
    return-void

    .line 500
    :cond_0
    const-string v0, "hrcolor"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->hrColor:Ljava/lang/Integer;

    .line 501
    const-string v0, "hrstyle"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->hrStyle:Ljava/lang/String;

    goto :goto_0

    .line 504
    :cond_1
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v1, "hrcolor"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->hrColor:Ljava/lang/Integer;

    .line 505
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v1, "hrstyle"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->hrStyle:Ljava/lang/String;

    goto :goto_0

    .line 515
    :cond_2
    const-string v0, "vrcolor"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vrColor:Ljava/lang/Integer;

    .line 516
    const-string v0, "vrstyle"

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vrStyle:Ljava/lang/String;

    goto :goto_1

    .line 519
    :cond_3
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v1, "vrcolor"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vrColor:Ljava/lang/Integer;

    .line 520
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v1, "vrstyle"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vrStyle:Ljava/lang/String;

    goto :goto_1
.end method

.method private initContent()V
    .locals 12

    .prologue
    .line 189
    iget-object v8, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v9, "cols"

    invoke-virtual {v8, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 190
    .local v1, "cols":I
    const-string v8, "VTDataGridComponent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cols:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, "colWidths":[I
    invoke-direct {p0, v1, v0}, Lnet/veritran/component/VTDataGridComponent;->addRowHeader(I[I)[I

    move-result-object v0

    .line 196
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v3, "expandedRows":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;>;"
    const/4 v5, 0x0

    .line 199
    .local v5, "rowIndex":I
    iget-object v8, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v8, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;

    invoke-virtual {v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;->getRows()Ljava/util/List;

    move-result-object v7

    .line 200
    .local v7, "rows":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;

    .line 201
    .local v6, "rowMaster":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;
    const-string v9, "VTDataGridComponent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "row["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v9, "type"

    invoke-virtual {v6, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, "itemType":Ljava/lang/String;
    const-string v9, "visible"

    invoke-virtual {v6, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "eval":Ljava/lang/String;
    const-string v9, "VTDataGridComponent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Eval Fixed datagrid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    if-eqz v2, :cond_1

    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 208
    const/4 v9, 0x0

    invoke-static {v2, v9}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v2

    .line 209
    const-string v9, "VTDataGridComponent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Eval Fixed Parsed datagrid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {v2}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 215
    :cond_1
    const-string v9, "V"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 216
    invoke-direct {p0, v6, v3, v5}, Lnet/veritran/component/VTDataGridComponent;->addVariableRow(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;Ljava/util/List;I)V

    .line 220
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 221
    goto/16 :goto_0

    .line 218
    :cond_2
    invoke-direct {p0, v6, v3, v5}, Lnet/veritran/component/VTDataGridComponent;->addFixedRow(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;Ljava/util/List;I)V

    goto :goto_1

    .line 222
    .end local v2    # "eval":Ljava/lang/String;
    .end local v4    # "itemType":Ljava/lang/String;
    .end local v6    # "rowMaster":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;
    :cond_3
    invoke-direct {p0, v1, v0, v3}, Lnet/veritran/component/VTDataGridComponent;->initExpandedRows(I[ILjava/util/List;)V

    .line 223
    return-void
.end method

.method private initDataGrid()V
    .locals 8

    .prologue
    const/16 v1, 0x3ea

    const/4 v4, 0x0

    .line 158
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v5, "Width"

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, "width":Ljava/lang/String;
    const-string v0, "VTDataGridComponent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Width:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->defineWidth()V

    .line 161
    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->defineHeight()V

    .line 162
    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->defineVisibility()V

    .line 163
    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->defineMargins()V

    .line 165
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v5, "paddingLeft"

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->gridPaddingLeft:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v5, "paddingTop"

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->gridPaddingTop:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v5, "paddingRight"

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->gridPaddingRight:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v5, "paddingBottom"

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->gridPaddingBottom:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v5, "Onclick"

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "onClick":Ljava/lang/String;
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtDataGridView:Lnet/veritran/component/view/VTDataGridComponentView;

    invoke-virtual {v0, v4}, Lnet/veritran/component/view/VTDataGridComponentView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtDataGridView:Lnet/veritran/component/view/VTDataGridComponentView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lnet/veritran/component/view/VTDataGridComponentView;->setClickable(Z)V

    .line 173
    if-eqz v2, :cond_0

    .line 174
    invoke-static {v2, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v2

    .line 175
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v5, "submit"

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "formId":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 177
    invoke-static {v3, v4}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 178
    iget-object v7, p0, Lnet/veritran/component/VTDataGridComponent;->vtDataGridView:Lnet/veritran/component/view/VTDataGridComponentView;

    new-instance v0, Lnet/veritran/component/VTButtonOnClickListener;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lnet/veritran/component/VTButtonOnClickListener;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lnet/veritran/component/view/VTDataGridComponentView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    .end local v3    # "formId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 182
    .restart local v3    # "formId":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtDataGridView:Lnet/veritran/component/view/VTDataGridComponentView;

    new-instance v5, Lnet/veritran/component/VTButtonOnClickListener;

    invoke-direct {v5, v1, v2, v4, v4}, Lnet/veritran/component/VTButtonOnClickListener;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lnet/veritran/component/view/VTDataGridComponentView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initExpandedRows(I[ILjava/util/List;)V
    .locals 37
    .param p1, "cols"    # I
    .param p2, "colWidths"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    .local p3, "expandedRows":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;>;"
    const-string v2, "VTDataGridComponent"

    const-string v8, "using expanded rows"

    invoke-static {v2, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v2, "VTDataGridComponent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "expandedRows.size():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const/4 v13, 0x0

    .line 531
    .local v13, "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    const/4 v3, -0x1

    .line 532
    .local v3, "rowIndex":I
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    .line 533
    .local v5, "maxRows":I
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_0
    :goto_0
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;

    .line 534
    .local v11, "expandedRow":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;
    add-int/lit8 v3, v3, 0x1

    .line 535
    const-string v2, "array"

    invoke-virtual {v11, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 536
    const-string v2, "array"

    invoke-virtual {v11, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 537
    .local v16, "array":I
    const-string v2, "arrayRow"

    invoke-virtual {v11, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 538
    .local v17, "arrayRow":I
    if-nez v13, :cond_2

    .line 539
    new-instance v13, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    .end local v13    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    move/from16 v0, v16

    invoke-direct {v13, v0}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;-><init>(I)V

    .line 544
    .restart local v13    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    :cond_1
    :goto_1
    invoke-virtual {v13}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->reset()V

    .line 546
    const/16 v31, 0x0

    .local v31, "row":I
    :goto_2
    move/from16 v0, v31

    move/from16 v1, v17

    if-gt v0, v1, :cond_3

    .line 548
    invoke-virtual {v13}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    .line 546
    add-int/lit8 v31, v31, 0x1

    goto :goto_2

    .line 540
    .end local v31    # "row":I
    :cond_2
    invoke-virtual {v13}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->getArrayId()I

    move-result v2

    move/from16 v0, v16

    if-eq v2, v0, :cond_1

    .line 541
    new-instance v13, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    .end local v13    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    move/from16 v0, v16

    invoke-direct {v13, v0}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;-><init>(I)V

    .restart local v13    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    goto :goto_1

    .line 551
    .end local v16    # "array":I
    .end local v17    # "arrayRow":I
    :cond_3
    new-instance v34, Lnet/veritran/component/view/VTStaticTableRowView;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTDataGridComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-direct {v0, v2}, Lnet/veritran/component/view/VTStaticTableRowView;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 553
    .local v34, "tr":Lnet/veritran/component/view/VTStaticTableRowView;
    if-nez p2, :cond_5

    .line 554
    move/from16 v0, p1

    new-array v0, v0, [I

    move-object/from16 p2, v0

    .line 555
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCellsCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 557
    const/16 v28, 0x0

    .local v28, "j":I
    :goto_3
    move/from16 v0, v28

    move/from16 v1, p1

    if-ge v0, v1, :cond_5

    .line 558
    const/16 v2, 0x64

    div-int v2, v2, p1

    aput v2, p2, v28

    .line 557
    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    .line 561
    .end local v28    # "j":I
    :cond_4
    const/16 v28, 0x0

    .restart local v28    # "j":I
    :goto_4
    move/from16 v0, v28

    move/from16 v1, p1

    if-ge v0, v1, :cond_5

    .line 562
    move/from16 v0, v28

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    move-result-object v2

    const-string v8, "width"

    invoke-virtual {v2, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 564
    .local v22, "colWidth":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, p2, v28
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :goto_5
    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    .line 565
    :catch_0
    move-exception v29

    .line 566
    .local v29, "nfe":Ljava/lang/NumberFormatException;
    const/16 v2, 0x64

    div-int v2, v2, p1

    aput v2, p2, v28

    goto :goto_5

    .line 571
    .end local v22    # "colWidth":Ljava/lang/String;
    .end local v28    # "j":I
    .end local v29    # "nfe":Ljava/lang/NumberFormatException;
    :cond_5
    move/from16 v0, p1

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 572
    .local v21, "colAlign":[Ljava/lang/String;
    const/16 v28, 0x0

    .restart local v28    # "j":I
    :goto_6
    move/from16 v0, v28

    move/from16 v1, p1

    if-ge v0, v1, :cond_7

    .line 573
    move/from16 v0, v28

    invoke-virtual {v11, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    move-result-object v2

    const-string v8, "textAlign"

    invoke-virtual {v2, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 574
    .local v15, "align":Ljava/lang/String;
    if-nez v15, :cond_6

    const-string v15, "left"

    .line 575
    :cond_6
    aput-object v15, v21, v28

    .line 576
    const-string v2, "VTDataGridComponent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VTCELL Align="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v21, v28

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    add-int/lit8 v28, v28, 0x1

    goto :goto_6

    .line 578
    .end local v15    # "align":Ljava/lang/String;
    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lnet/veritran/component/view/VTStaticTableRowView;->setMinimumHeight(I)V

    .line 579
    const/4 v2, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lnet/veritran/component/view/VTStaticTableRowView;->setMinimumWidth(I)V

    .line 580
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v2, v8, v9}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lnet/veritran/component/view/VTStaticTableRowView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    const/16 v2, 0x11

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lnet/veritran/component/view/VTStaticTableRowView;->setGravity(I)V

    .line 585
    const/high16 v2, 0x42c80000    # 100.0f

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lnet/veritran/component/view/VTStaticTableRowView;->setWeightSum(F)V

    .line 586
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getConfigurationVisualComponentsList()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    move-result-object v23

    .line 588
    .local v23, "compList":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lnet/veritran/component/VTDataGridComponent;->getBorderAttributes(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 590
    invoke-virtual/range {v23 .. v23}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v6

    .line 591
    .local v6, "maxColumns":I
    move/from16 v0, p1

    if-le v6, v0, :cond_8

    move/from16 v6, p1

    .line 592
    :cond_8
    const/4 v4, 0x0

    .local v4, "colIndex":I
    :goto_7
    if-ge v4, v6, :cond_c

    .line 593
    const-string v2, "VTDataGridComponent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "component["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v35

    .line 595
    .local v35, "vc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    const-string v2, "array"

    invoke-virtual {v11, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 596
    .local v25, "expandedRowArray":Ljava/lang/String;
    const-string v2, "arrayRow"

    invoke-virtual {v11, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 597
    .local v26, "expandedRowArrayRow":Ljava/lang/String;
    if-eqz v25, :cond_9

    .line 598
    const-string v2, "array"

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v2, "arrayRow"

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_9
    new-instance v30, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;

    invoke-direct/range {v30 .. v30}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;-><init>()V

    .line 602
    .local v30, "panelComponent":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;
    const-string v2, "tag"

    const-string v8, "VTPanelDataGridCellComponent"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {v11, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getCell(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    move-result-object v20

    .line 606
    .local v20, "cell":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;
    invoke-virtual/range {v20 .. v20}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v19

    .line 607
    .local v19, "atts":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_a
    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 608
    invoke-interface/range {v19 .. v19}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 609
    .local v18, "att":Ljava/lang/String;
    const-string v2, "height"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 611
    const-string v2, "width"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 614
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 618
    .end local v18    # "att":Ljava/lang/String;
    :cond_b
    new-instance v24, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-direct/range {v24 .. v24}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;-><init>()V

    .line 619
    .local v24, "componentList":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 620
    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->setConfigurationVisualComponentsList(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;)V

    .line 622
    const-string v2, "textalign"

    aget-object v8, v21, v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTDataGridComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v2

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v13, v1}, Lnet/veritran/VTCommonActivity;->getUIComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Lnet/veritran/component/VTUIComponent;)Lnet/veritran/component/VTUIComponent;

    move-result-object v7

    .line 626
    .local v7, "panel":Lnet/veritran/component/VTUIComponent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lnet/veritran/component/VTDataGridComponent;->addChild(Lnet/veritran/component/VTUIComponent;)V

    move-object/from16 v2, p0

    .line 627
    invoke-direct/range {v2 .. v7}, Lnet/veritran/component/VTDataGridComponent;->setBorder(IIIILnet/veritran/component/VTUIComponent;)V

    .line 628
    invoke-virtual {v7}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lnet/veritran/component/view/VTStaticTableRowView;->addView(Landroid/view/View;)V

    .line 641
    invoke-virtual {v7}, Lnet/veritran/component/VTUIComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v2

    const-string v8, "onclick"

    invoke-virtual {v2, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lnet/veritran/component/VTUIComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v2

    const-string v8, "targetvar"

    invoke-virtual {v2, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 642
    invoke-virtual {v7}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v12

    move-object/from16 v8, p0

    .line 641
    invoke-direct/range {v8 .. v13}, Lnet/veritran/component/VTDataGridComponent;->setOnClickEvent(Ljava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Landroid/view/View;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 592
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    .line 649
    .end local v7    # "panel":Lnet/veritran/component/VTUIComponent;
    .end local v19    # "atts":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v20    # "cell":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;
    .end local v24    # "componentList":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    .end local v25    # "expandedRowArray":Ljava/lang/String;
    .end local v26    # "expandedRowArrayRow":Ljava/lang/String;
    .end local v30    # "panelComponent":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;
    .end local v35    # "vc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_c
    const-string v2, "onclick"

    invoke-virtual {v11, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v8, "targetvar"

    invoke-virtual {v2, v8}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v8, p0

    move-object/from16 v12, v34

    invoke-direct/range {v8 .. v13}, Lnet/veritran/component/VTDataGridComponent;->setOnClickEvent(Ljava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Landroid/view/View;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 651
    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTStaticTableRowView;->setPercentagesCellsWidth([I)V

    .line 652
    const-string v2, "backgroundcolor"

    invoke-virtual {v11, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 653
    .local v32, "rowBackgrounColor":Ljava/lang/String;
    if-eqz v32, :cond_d

    .line 654
    move-object/from16 v0, v32

    invoke-static {v0, v13}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v32

    .line 655
    const-string v2, "Scroll"

    move-object/from16 v0, v32

    invoke-static {v2, v0}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-static/range {v32 .. v32}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lnet/veritran/component/view/VTStaticTableRowView;->setComponentBackgroundColor(Ljava/lang/Integer;)V

    .line 658
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTDataGridComponent;->vtDataGridView:Lnet/veritran/component/view/VTDataGridComponentView;

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lnet/veritran/component/view/VTDataGridComponentView;->addView(Landroid/view/View;)V

    .line 660
    const/16 v27, 0x0

    .line 662
    .local v27, "firstLetterValueForIndex":Ljava/lang/String;
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getValueForIndex()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getValueForIndex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    .line 664
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getValueForIndex()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v27

    .line 667
    :cond_e
    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTDataGridComponent;->mapIndexFirstLetterRowView:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTDataGridComponent;->mapIndexFirstLetterRowView:Ljava/util/HashMap;

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    const-string v2, "VTDataGridComponent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Added letter for index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - word: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;->getValueForIndex()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 675
    .end local v4    # "colIndex":I
    .end local v6    # "maxColumns":I
    .end local v11    # "expandedRow":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;
    .end local v21    # "colAlign":[Ljava/lang/String;
    .end local v23    # "compList":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    .end local v27    # "firstLetterValueForIndex":Ljava/lang/String;
    .end local v28    # "j":I
    .end local v32    # "rowBackgrounColor":Ljava/lang/String;
    .end local v34    # "tr":Lnet/veritran/component/view/VTStaticTableRowView;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTDataGridComponent;->vtIndexScroller:Lnet/veritran/component/view/VTIndexScroller;

    if-eqz v2, :cond_10

    .line 677
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTDataGridComponent;->mapIndexFirstLetterRowView:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 679
    .local v14, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [Ljava/lang/String;

    .line 680
    .local v33, "sections":[Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTDataGridComponent;->vtIndexScroller:Lnet/veritran/component/view/VTIndexScroller;

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Lnet/veritran/component/view/VTIndexScroller;->setSections([Ljava/lang/String;)V

    .line 684
    .end local v14    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v33    # "sections":[Ljava/lang/String;
    :cond_10
    return-void
.end method

.method private setBorder(IIIILnet/veritran/component/VTUIComponent;)V
    .locals 5
    .param p1, "rowIndex"    # I
    .param p2, "colIndex"    # I
    .param p3, "maxRows"    # I
    .param p4, "maxColumns"    # I
    .param p5, "panel"    # Lnet/veritran/component/VTUIComponent;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 687
    iget-object v1, p0, Lnet/veritran/component/VTDataGridComponent;->hrSize:Ljava/lang/String;

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, "dividerSize":I
    iget-object v1, p0, Lnet/veritran/component/VTDataGridComponent;->hrSize:Ljava/lang/String;

    const-string v2, "small"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 690
    const/4 v0, 0x1

    .line 696
    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/veritran/component/VTDataGridComponent;->hrColor:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    move-object v1, p5

    .line 697
    check-cast v1, Lnet/veritran/component/VTPanel;

    iget-object v2, p0, Lnet/veritran/component/VTDataGridComponent;->hrColor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lnet/veritran/component/VTPanel;->setBorderTopColor(Ljava/lang/Integer;)V

    move-object v1, p5

    .line 698
    check-cast v1, Lnet/veritran/component/VTPanel;

    iget-object v2, p0, Lnet/veritran/component/VTDataGridComponent;->hrColor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lnet/veritran/component/VTPanel;->setBorderBottomColor(Ljava/lang/Integer;)V

    .line 702
    :cond_1
    iget-object v1, p0, Lnet/veritran/component/VTDataGridComponent;->hrStyle:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "solid"

    iput-object v1, p0, Lnet/veritran/component/VTDataGridComponent;->hrStyle:Ljava/lang/String;

    .line 703
    :cond_2
    iget-object v1, p0, Lnet/veritran/component/VTDataGridComponent;->hrStyle:Ljava/lang/String;

    const-string v2, "dotted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v1, p5

    .line 704
    check-cast v1, Lnet/veritran/component/VTPanel;

    invoke-virtual {v1, v4}, Lnet/veritran/component/VTPanel;->setBorderTopStyle(I)V

    .line 705
    add-int/lit8 v1, p3, -0x1

    if-ne p1, v1, :cond_3

    move-object v1, p5

    .line 706
    check-cast v1, Lnet/veritran/component/VTPanel;

    invoke-virtual {v1, v4}, Lnet/veritran/component/VTPanel;->setBorderBottomStyle(I)V

    :cond_3
    :goto_1
    move-object v1, p5

    .line 714
    check-cast v1, Lnet/veritran/component/VTPanel;

    invoke-virtual {v1, v0}, Lnet/veritran/component/VTPanel;->setBorderTopSize(I)V

    .line 715
    add-int/lit8 v1, p3, -0x1

    if-ne p1, v1, :cond_4

    move-object v1, p5

    .line 716
    check-cast v1, Lnet/veritran/component/VTPanel;

    invoke-virtual {v1, v0}, Lnet/veritran/component/VTPanel;->setBorderBottomSize(I)V

    .line 719
    .end local v0    # "dividerSize":I
    :cond_4
    iget-object v1, p0, Lnet/veritran/component/VTDataGridComponent;->vrSize:Ljava/lang/String;

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 720
    const/4 v0, 0x0

    .line 721
    .restart local v0    # "dividerSize":I
    iget-object v1, p0, Lnet/veritran/component/VTDataGridComponent;->vrSize:Ljava/lang/String;

    const-string v2, "small"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 722
    const/4 v0, 0x1

    .line 728
    :cond_5
    :goto_2
    iget-object v1, p0, Lnet/veritran/component/VTDataGridComponent;->vrColor:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    move-object v1, p5

    .line 729
    check-cast v1, Lnet/veritran/component/VTPanel;

    iget-object v2, p0, Lnet/veritran/component/VTDataGridComponent;->vrColor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lnet/veritran/component/VTPanel;->setBorderLeftColor(Ljava/lang/Integer;)V

    move-object v1, p5

    .line 730
    check-cast v1, Lnet/veritran/component/VTPanel;

    iget-object v2, p0, Lnet/veritran/component/VTDataGridComponent;->vrColor:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lnet/veritran/component/VTPanel;->setBorderRightColor(Ljava/lang/Integer;)V

    .line 733
    :cond_6
    iget-object v1, p0, Lnet/veritran/component/VTDataGridComponent;->vrStyle:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, "solid"

    iput-object v1, p0, Lnet/veritran/component/VTDataGridComponent;->vrStyle:Ljava/lang/String;

    .line 734
    :cond_7
    iget-object v1, p0, Lnet/veritran/component/VTDataGridComponent;->vrStyle:Ljava/lang/String;

    const-string v2, "dotted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object v1, p5

    .line 735
    check-cast v1, Lnet/veritran/component/VTPanel;

    invoke-virtual {v1, v4}, Lnet/veritran/component/VTPanel;->setBorderLeftStyle(I)V

    .line 736
    add-int/lit8 v1, p4, -0x1

    if-ne p2, v1, :cond_8

    move-object v1, p5

    .line 737
    check-cast v1, Lnet/veritran/component/VTPanel;

    invoke-virtual {v1, v4}, Lnet/veritran/component/VTPanel;->setBorderRightStyle(I)V

    :cond_8
    :goto_3
    move-object v1, p5

    .line 745
    check-cast v1, Lnet/veritran/component/VTPanel;

    invoke-virtual {v1, v0}, Lnet/veritran/component/VTPanel;->setBorderLeftSize(I)V

    .line 746
    add-int/lit8 v1, p4, -0x1

    if-ne p2, v1, :cond_9

    .line 747
    check-cast p5, Lnet/veritran/component/VTPanel;

    .end local p5    # "panel":Lnet/veritran/component/VTUIComponent;
    invoke-virtual {p5, v0}, Lnet/veritran/component/VTPanel;->setBorderRightSize(I)V

    .line 751
    .end local v0    # "dividerSize":I
    :cond_9
    return-void

    .line 691
    .restart local v0    # "dividerSize":I
    .restart local p5    # "panel":Lnet/veritran/component/VTUIComponent;
    :cond_a
    iget-object v1, p0, Lnet/veritran/component/VTDataGridComponent;->hrSize:Ljava/lang/String;

    const-string v2, "medium"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 692
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 693
    :cond_b
    iget-object v1, p0, Lnet/veritran/component/VTDataGridComponent;->hrSize:Ljava/lang/String;

    const-string v2, "large"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 694
    const/4 v0, 0x6

    goto/16 :goto_0

    :cond_c
    move-object v1, p5

    .line 709
    check-cast v1, Lnet/veritran/component/VTPanel;

    invoke-virtual {v1, v3}, Lnet/veritran/component/VTPanel;->setBorderTopStyle(I)V

    .line 710
    add-int/lit8 v1, p3, -0x1

    if-ne p1, v1, :cond_3

    move-object v1, p5

    .line 711
    check-cast v1, Lnet/veritran/component/VTPanel;

    invoke-virtual {v1, v3}, Lnet/veritran/component/VTPanel;->setBorderBottomStyle(I)V

    goto/16 :goto_1

    .line 723
    :cond_d
    iget-object v1, p0, Lnet/veritran/component/VTDataGridComponent;->vrSize:Ljava/lang/String;

    const-string v2, "medium"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 724
    const/4 v0, 0x3

    goto :goto_2

    .line 725
    :cond_e
    iget-object v1, p0, Lnet/veritran/component/VTDataGridComponent;->vrSize:Ljava/lang/String;

    const-string v2, "large"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 726
    const/4 v0, 0x6

    goto/16 :goto_2

    :cond_f
    move-object v1, p5

    .line 740
    check-cast v1, Lnet/veritran/component/VTPanel;

    invoke-virtual {v1, v3}, Lnet/veritran/component/VTPanel;->setBorderLeftStyle(I)V

    .line 741
    add-int/lit8 v1, p4, -0x1

    if-ne p2, v1, :cond_8

    move-object v1, p5

    .line 742
    check-cast v1, Lnet/veritran/component/VTPanel;

    invoke-virtual {v1, v3}, Lnet/veritran/component/VTPanel;->setBorderRightStyle(I)V

    goto :goto_3
.end method

.method private setOnClickEvent(Ljava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Landroid/view/View;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V
    .locals 18
    .param p1, "onClick"    # Ljava/lang/String;
    .param p2, "targetVar"    # Ljava/lang/String;
    .param p3, "cvc"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    .param p4, "view"    # Landroid/view/View;
    .param p5, "ara"    # Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    .prologue
    .line 763
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 764
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 765
    if-eqz p1, :cond_0

    .line 766
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object p1

    .line 768
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object p2

    .line 769
    const-string v2, "value"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 770
    .local v7, "dumpValue":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-static {v7, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v7

    .line 771
    const-string v2, "submit"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 772
    .local v5, "formId":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 773
    move-object/from16 v0, p5

    invoke-static {v5, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    .line 774
    new-instance v2, Lnet/veritran/component/VTButtonOnClickListener;

    const/16 v3, 0x3ea

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lnet/veritran/component/VTButtonOnClickListener;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 794
    .end local v5    # "formId":Ljava/lang/String;
    .end local v7    # "dumpValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 778
    .restart local v5    # "formId":Ljava/lang/String;
    .restart local v7    # "dumpValue":Ljava/lang/String;
    :cond_1
    const-string v2, "array"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 779
    .local v15, "array":Ljava/lang/String;
    const-string v2, "arrayrow"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 780
    .local v16, "arrayRow":Ljava/lang/String;
    if-eqz v15, :cond_2

    if-eqz v16, :cond_2

    .line 782
    :try_start_0
    new-instance v8, Lnet/veritran/component/VTButtonOnClickListener;

    const/16 v9, 0x3ea

    .line 783
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v10, p1

    move-object/from16 v13, p2

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Lnet/veritran/component/VTButtonOnClickListener;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 782
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 784
    :catch_0
    move-exception v17

    .line 785
    .local v17, "nfe":Ljava/lang/NumberFormatException;
    new-instance v2, Lnet/veritran/component/VTButtonOnClickListener;

    const/16 v3, 0x3ea

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v2, v3, v0, v1, v7}, Lnet/veritran/component/VTButtonOnClickListener;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 789
    .end local v17    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2
    new-instance v2, Lnet/veritran/component/VTButtonOnClickListener;

    const/16 v3, 0x3ea

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v2, v3, v0, v1, v7}, Lnet/veritran/component/VTButtonOnClickListener;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setOnClickEvent(Lnet/veritran/component/VTUIComponent;)V
    .locals 6
    .param p1, "uiComponent"    # Lnet/veritran/component/VTUIComponent;

    .prologue
    .line 755
    invoke-virtual {p1}, Lnet/veritran/component/VTUIComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v0

    const-string v1, "onclick"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/veritran/component/VTUIComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v0

    const-string v2, "targetvar"

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 756
    invoke-virtual {p1}, Lnet/veritran/component/VTUIComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v3

    invoke-virtual {p1}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    .line 755
    invoke-direct/range {v0 .. v5}, Lnet/veritran/component/VTDataGridComponent;->setOnClickEvent(Ljava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Landroid/view/View;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 757
    return-void
.end method


# virtual methods
.method public addChild(Lnet/veritran/component/VTUIComponent;)V
    .locals 1
    .param p1, "child"    # Lnet/veritran/component/VTUIComponent;

    .prologue
    .line 813
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    return-void
.end method

.method public executeEvent(Ljava/lang/String;)Z
    .locals 2
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTDataGridComponent;->checkEventType(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->isRefreshEvent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->refreshContainer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-direct {p0}, Lnet/veritran/component/VTDataGridComponent;->initDataGrid()V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->refreshContent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lnet/veritran/component/VTDataGridComponent;->vtDataGridView:Lnet/veritran/component/view/VTDataGridComponentView;

    invoke-virtual {v1}, Lnet/veritran/component/view/VTDataGridComponentView;->removeAllViews()V

    .line 76
    invoke-virtual {p0, v0}, Lnet/veritran/component/VTDataGridComponent;->unregister(Z)V

    .line 77
    invoke-direct {p0}, Lnet/veritran/component/VTDataGridComponent;->initContent()V

    .line 79
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->refreshMeasure()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 81
    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 89
    :cond_2
    :goto_0
    const/4 v0, 0x1

    :cond_3
    return v0

    .line 83
    :cond_4
    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->isVisibilityEvent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->updateVisibility()V

    goto :goto_0
.end method

.method public getChildAt(I)Lnet/veritran/component/VTUIComponent;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 823
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTUIComponent;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtIndexScrollerView:Lnet/veritran/component/view/VTIndexScrollerView;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtIndexScrollerView:Lnet/veritran/component/view/VTIndexScrollerView;

    .line 808
    :goto_0
    return-object v0

    .line 803
    :cond_0
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtScroller:Lnet/veritran/component/view/VTScrollTableWrapper;

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtScroller:Lnet/veritran/component/view/VTScrollTableWrapper;

    goto :goto_0

    .line 808
    :cond_1
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtDataGridView:Lnet/veritran/component/view/VTDataGridComponentView;

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 104
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtDataGridView:Lnet/veritran/component/view/VTDataGridComponentView;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtDataGridView:Lnet/veritran/component/view/VTDataGridComponentView;

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTDataGridComponentView;->setVisibility(I)V

    .line 106
    :cond_0
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtIndexScrollerView:Lnet/veritran/component/view/VTIndexScrollerView;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtIndexScrollerView:Lnet/veritran/component/view/VTIndexScrollerView;

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTIndexScrollerView;->setVisibility(I)V

    .line 108
    :cond_1
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtScroller:Lnet/veritran/component/view/VTScrollTableWrapper;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtScroller:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTScrollTableWrapper;->setVisibility(I)V

    .line 110
    :cond_2
    return-void
.end method

.method public init()V
    .locals 14

    .prologue
    .line 123
    invoke-super {p0}, Lnet/veritran/component/VTUIComponentContainer;->init()V

    .line 124
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtDataGridView:Lnet/veritran/component/view/VTDataGridComponentView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "grid_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    invoke-virtual {v12}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lnet/veritran/component/view/VTDataGridComponentView;->setTag(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v11, "scroll"

    invoke-virtual {v0, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 126
    .local v10, "scrollable":Ljava/lang/String;
    if-eqz v10, :cond_1

    const-string v0, "yes"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    new-instance v0, Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v11

    invoke-direct {v0, v11}, Lnet/veritran/component/view/VTScrollTableWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtScroller:Lnet/veritran/component/view/VTScrollTableWrapper;

    .line 129
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtScroller:Lnet/veritran/component/view/VTScrollTableWrapper;

    iget-object v11, p0, Lnet/veritran/component/VTDataGridComponent;->vtDataGridView:Lnet/veritran/component/view/VTDataGridComponentView;

    invoke-virtual {v0, v11}, Lnet/veritran/component/view/VTScrollTableWrapper;->setTableView(Lnet/veritran/component/view/VTUIComponentContainerView;)V

    .line 131
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v11, "indexPosition"

    invoke-virtual {v0, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v11

    invoke-static {v0, v11}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    .line 133
    .local v8, "indexPosition":Ljava/lang/String;
    const-string v0, "Left"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    .line 134
    .local v9, "indexPositionLeft":Z
    const-string v0, "Right"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 136
    .local v4, "indexPositionRight":Z
    if-nez v9, :cond_0

    if-eqz v4, :cond_1

    .line 138
    :cond_0
    new-instance v0, Lnet/veritran/component/view/VTIndexScroller;

    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v11

    invoke-direct {v0, v11, p0}, Lnet/veritran/component/view/VTIndexScroller;-><init>(Landroid/content/Context;Lnet/veritran/component/view/VTIndexScroller$VTIndexScrollerInterface;)V

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtIndexScroller:Lnet/veritran/component/view/VTIndexScroller;

    .line 140
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v11, "INDEXBACKGROUNDCOLOR"

    invoke-virtual {v0, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v11

    invoke-static {v0, v11}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "backgroundColor":Ljava/lang/String;
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v11, "INDEXFONTCOLOR"

    invoke-virtual {v0, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v11

    invoke-static {v0, v11}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "textColor":Ljava/lang/String;
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v11, "INDEXFONTSIZE"

    invoke-virtual {v0, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v11

    invoke-static {v0, v11}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "textSize":Ljava/lang/String;
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v11, "INDEXFONTFAMILY"

    invoke-virtual {v0, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v11

    invoke-static {v0, v11}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "fontFamily":Ljava/lang/String;
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v11, "INDEXFONTSTYLE"

    invoke-virtual {v0, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v11

    invoke-static {v0, v11}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, "fontStyle":Ljava/lang/String;
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v11, "INDEXFONTWEIGHT"

    invoke-virtual {v0, v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v11

    invoke-static {v0, v11}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, "fontWeight":Ljava/lang/String;
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtIndexScroller:Lnet/veritran/component/view/VTIndexScroller;

    invoke-virtual/range {v0 .. v7}, Lnet/veritran/component/view/VTIndexScroller;->setStyles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lnet/veritran/component/view/VTIndexScrollerView;

    invoke-virtual {p0}, Lnet/veritran/component/VTDataGridComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v11

    iget-object v12, p0, Lnet/veritran/component/VTDataGridComponent;->vtIndexScroller:Lnet/veritran/component/view/VTIndexScroller;

    iget-object v13, p0, Lnet/veritran/component/VTDataGridComponent;->vtScroller:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-direct {v0, v11, v12, v13}, Lnet/veritran/component/view/VTIndexScrollerView;-><init>(Landroid/content/Context;Lnet/veritran/component/view/VTIndexScroller;Lnet/veritran/component/view/VTScrollTableWrapper;)V

    iput-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtIndexScrollerView:Lnet/veritran/component/view/VTIndexScrollerView;

    .line 153
    .end local v1    # "backgroundColor":Ljava/lang/String;
    .end local v2    # "textColor":Ljava/lang/String;
    .end local v3    # "textSize":Ljava/lang/String;
    .end local v4    # "indexPositionRight":Z
    .end local v5    # "fontFamily":Ljava/lang/String;
    .end local v6    # "fontStyle":Ljava/lang/String;
    .end local v7    # "fontWeight":Ljava/lang/String;
    .end local v8    # "indexPosition":Ljava/lang/String;
    .end local v9    # "indexPositionLeft":Z
    :cond_1
    invoke-direct {p0}, Lnet/veritran/component/VTDataGridComponent;->initDataGrid()V

    .line 154
    invoke-direct {p0}, Lnet/veritran/component/VTDataGridComponent;->initContent()V

    .line 155
    return-void
.end method

.method public invalidateView()V
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtIndexScrollerView:Lnet/veritran/component/view/VTIndexScrollerView;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtIndexScrollerView:Lnet/veritran/component/view/VTIndexScrollerView;

    invoke-virtual {v0}, Lnet/veritran/component/view/VTIndexScrollerView;->invalidate()V

    .line 855
    :cond_0
    return-void
.end method

.method public scrollToSection(Ljava/lang/String;)V
    .locals 4
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 830
    iget-object v2, p0, Lnet/veritran/component/VTDataGridComponent;->mapIndexFirstLetterRowView:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/view/VTStaticTableRowView;

    .line 832
    .local v0, "rowView":Lnet/veritran/component/view/VTStaticTableRowView;
    if-eqz v0, :cond_0

    .line 834
    invoke-static {v0}, Lcom/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result v2

    float-to-int v1, v2

    .line 836
    .local v1, "yTo":I
    iget v2, p0, Lnet/veritran/component/VTDataGridComponent;->lastStroll:I

    if-eq v2, v1, :cond_0

    .line 838
    iget-object v2, p0, Lnet/veritran/component/VTDataGridComponent;->vtScroller:Lnet/veritran/component/view/VTScrollTableWrapper;

    new-instance v3, Lnet/veritran/component/VTDataGridComponent$1;

    invoke-direct {v3, p0, v1}, Lnet/veritran/component/VTDataGridComponent$1;-><init>(Lnet/veritran/component/VTDataGridComponent;I)V

    invoke-virtual {v2, v3}, Lnet/veritran/component/view/VTScrollTableWrapper;->post(Ljava/lang/Runnable;)Z

    .line 848
    .end local v1    # "yTo":I
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtDataGridView:Lnet/veritran/component/view/VTDataGridComponentView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtDataGridView:Lnet/veritran/component/view/VTDataGridComponentView;

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTDataGridComponentView;->setVisibility(I)V

    .line 96
    :cond_0
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtIndexScrollerView:Lnet/veritran/component/view/VTIndexScrollerView;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtIndexScrollerView:Lnet/veritran/component/view/VTIndexScrollerView;

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTIndexScrollerView;->setVisibility(I)V

    .line 98
    :cond_1
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtScroller:Lnet/veritran/component/view/VTScrollTableWrapper;

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lnet/veritran/component/VTDataGridComponent;->vtScroller:Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTScrollTableWrapper;->setVisibility(I)V

    .line 100
    :cond_2
    return-void
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method
