.class Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;
.super Landroid/os/AsyncTask;
.source "VTListCarouselComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/component/VTListCarouselComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetImagesAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;",
        ">;>;"
    }
.end annotation


# instance fields
.field carouselHeight:I

.field carouselWidth:I

.field final synthetic this$0:Lnet/veritran/component/VTListCarouselComponent;


# direct methods
.method private constructor <init>(Lnet/veritran/component/VTListCarouselComponent;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 197
    iput-object p1, p0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 200
    iput v0, p0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->carouselHeight:I

    .line 201
    iput v0, p0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->carouselWidth:I

    return-void
.end method

.method synthetic constructor <init>(Lnet/veritran/component/VTListCarouselComponent;Lnet/veritran/component/VTListCarouselComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/veritran/component/VTListCarouselComponent;
    .param p2, "x1"    # Lnet/veritran/component/VTListCarouselComponent$1;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;-><init>(Lnet/veritran/component/VTListCarouselComponent;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 197
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 25
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/veritran/component/VTListCarouselComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-object/from16 v21, v0

    check-cast v21, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;

    invoke-virtual/range {v21 .. v21}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;->getListItems()Ljava/util/List;

    move-result-object v17

    .line 287
    .local v17, "items":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v11, "expandedItems":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    .line 290
    .local v14, "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    const-string v22, "type"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 291
    .local v16, "itemType":Ljava/lang/String;
    const-string v22, "V"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 292
    const/4 v15, 0x0

    .line 293
    .local v15, "itemSelected":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getItemSelected()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;

    move-result-object v22

    if-eqz v22, :cond_1

    .line 294
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getItemSelected()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;

    move-result-object v15

    .line 295
    const-string v22, "VTListCarouselComponent"

    const-string v23, "ItemSelected specified!"

    invoke-static/range {v22 .. v23}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_1
    const-string v22, "array"

    .line 298
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 297
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 299
    .local v4, "associatedArray":I
    new-instance v3, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    invoke-direct {v3, v4}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;-><init>(I)V

    .line 301
    .local v3, "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->reset()V

    .line 302
    const/4 v6, 0x0

    .line 303
    .local v6, "currentRow":I
    :goto_1
    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->readRow()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 306
    const-string v22, "filter"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 308
    .local v8, "eval":Ljava/lang/String;
    const-string v22, "VTListCarouselComponent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Eval listCarousel: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    if-eqz v8, :cond_2

    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 311
    invoke-static {v8, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    .line 313
    const-string v22, "VTListCarouselComponent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Eval listCarousel parsed: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {v8}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 316
    add-int/lit8 v6, v6, 0x1

    .line 317
    goto :goto_1

    .line 321
    :cond_2
    new-instance v10, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    invoke-direct {v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;-><init>()V

    .line 322
    .local v10, "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->clone()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 323
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 324
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v7

    .line 325
    .local v7, "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 326
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 327
    .local v18, "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 328
    .local v20, "val":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v20

    .line 329
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 331
    .end local v18    # "key":Ljava/lang/String;
    .end local v20    # "val":Ljava/lang/String;
    :cond_3
    if-eqz v15, :cond_5

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;->isMarked()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 332
    invoke-virtual {v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v7

    .line 333
    :goto_3
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 334
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 335
    .restart local v18    # "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 336
    .restart local v20    # "val":Ljava/lang/String;
    const-string v22, "VTListCarouselComponent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "key:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ";val:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v20

    .line 338
    if-nez v20, :cond_4

    const-string v20, ""

    .line 339
    :cond_4
    const-string v22, "VTListCarouselComponent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "key:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ";val(p):"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 344
    .end local v18    # "key":Ljava/lang/String;
    .end local v20    # "val":Ljava/lang/String;
    :cond_5
    const-string v22, "arrayRow"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v22, "VTListCarouselComponent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Expanded item "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ready"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v9

    .line 348
    .local v9, "exAtt":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 349
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 350
    .local v5, "att":Ljava/lang/String;
    const-string v22, "VTListCarouselComponent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 352
    invoke-virtual {v10, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 350
    invoke-static/range {v22 .. v23}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 354
    .end local v5    # "att":Ljava/lang/String;
    :cond_6
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    add-int/lit8 v6, v6, 0x1

    .line 357
    goto/16 :goto_1

    .line 359
    .end local v3    # "ara":Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .end local v4    # "associatedArray":I
    .end local v6    # "currentRow":I
    .end local v7    # "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v8    # "eval":Ljava/lang/String;
    .end local v9    # "exAtt":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v10    # "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v15    # "itemSelected":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;
    :cond_7
    const/16 v19, 0x1

    .line 361
    .local v19, "shouldAdd":Z
    const-string v22, "filter"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 362
    .restart local v8    # "eval":Ljava/lang/String;
    const-string v22, "VTListCarouselComponent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Eval Fixed listCarousel: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    if-eqz v8, :cond_8

    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 366
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-static {v8, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v8

    .line 367
    const-string v22, "VTListCarouselComponent"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Eval Fixed Parsed listCarousel: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-static {v8}, Lnet/veritran/ard/ASRD;->evalBoolean(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 370
    const/16 v19, 0x0

    .line 374
    :cond_8
    if-eqz v19, :cond_0

    .line 377
    new-instance v10, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    invoke-direct {v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;-><init>()V

    .line 378
    .restart local v10    # "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getParent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->setParent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 379
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v7

    .line 380
    .restart local v7    # "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_5
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 381
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 382
    .restart local v18    # "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 383
    .restart local v20    # "val":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v20

    .line 384
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 387
    .end local v18    # "key":Ljava/lang/String;
    .end local v20    # "val":Ljava/lang/String;
    :cond_9
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 395
    .end local v7    # "eKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v8    # "eval":Ljava/lang/String;
    .end local v10    # "expandedItem":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v14    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    .end local v16    # "itemType":Ljava/lang/String;
    .end local v19    # "shouldAdd":Z
    :cond_a
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_b
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    .line 397
    .restart local v14    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    const-string v22, "resourceorigin"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "H"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 399
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v22

    const-string v23, "imgsrc"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "expires"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lnet/veritran/utils/ImageHandler;->preLoadImage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 403
    :cond_c
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v12

    .line 405
    .local v12, "imgHandlerInstance":Lnet/veritran/utils/ImageHandler;
    const-string v22, "imgsrc"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 407
    .local v13, "imgId":Ljava/lang/String;
    invoke-virtual {v12, v13}, Lnet/veritran/utils/ImageHandler;->isImageSVG(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 411
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->carouselWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->carouselHeight:I

    move/from16 v23, v0

    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v24

    move/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v12, v13, v0, v1, v2}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;IILnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Landroid/graphics/Bitmap;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->setImage(Ljava/lang/Object;)V

    goto :goto_6

    .line 417
    .end local v12    # "imgHandlerInstance":Lnet/veritran/utils/ImageHandler;
    .end local v13    # "imgId":Ljava/lang/String;
    .end local v14    # "item":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;
    :cond_d
    return-object v11
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 197
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    # getter for: Lnet/veritran/component/VTListCarouselComponent;->vtListView:Lnet/veritran/component/view/VTListCarouselComponentView;
    invoke-static {v1}, Lnet/veritran/component/VTListCarouselComponent;->access$200(Lnet/veritran/component/VTListCarouselComponent;)Lnet/veritran/component/view/VTListCarouselComponentView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/component/view/VTListCarouselComponentView;->getPixelsHeight()I

    move-result v4

    .line 217
    .local v4, "carouselHeight":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    # getter for: Lnet/veritran/component/VTListCarouselComponent;->vtListView:Lnet/veritran/component/view/VTListCarouselComponentView;
    invoke-static {v1}, Lnet/veritran/component/VTListCarouselComponent;->access$200(Lnet/veritran/component/VTListCarouselComponent;)Lnet/veritran/component/view/VTListCarouselComponentView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/component/view/VTListCarouselComponentView;->getPixelsWidth()I

    move-result v5

    .line 219
    .local v5, "carouselWidth":I
    const-string v1, "VTListCarouselComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CarouselHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v1, "VTListCarouselComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CarouselWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    iget-object v1, v1, Lnet/veritran/component/VTListCarouselComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "cycle"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v9

    .line 225
    .local v9, "cycleValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    iget-object v1, v1, Lnet/veritran/component/VTListCarouselComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "transitiontime"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v14

    .line 228
    .local v14, "transitionTimeValue":Ljava/lang/String;
    const/4 v13, 0x0

    .line 231
    .local v13, "transitionTime":I
    :try_start_0
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 238
    :goto_0
    const-string v1, "YES"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TRUE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-lez v13, :cond_3

    :cond_0
    const/4 v6, 0x1

    .line 240
    .local v6, "cycle":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    # getter for: Lnet/veritran/component/VTListCarouselComponent;->vtListView:Lnet/veritran/component/view/VTListCarouselComponentView;
    invoke-static {v1}, Lnet/veritran/component/VTListCarouselComponent;->access$200(Lnet/veritran/component/VTListCarouselComponent;)Lnet/veritran/component/view/VTListCarouselComponentView;

    move-result-object v16

    new-instance v1, Lnet/veritran/MobileArrayAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    invoke-virtual {v2}, Lnet/veritran/component/VTListCarouselComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v7}, Lnet/veritran/MobileArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IIZI)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTListCarouselComponentView;->setAdapter(Lnet/veritran/MobileArrayAdapter;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    # getter for: Lnet/veritran/component/VTListCarouselComponent;->vtListView:Lnet/veritran/component/view/VTListCarouselComponentView;
    invoke-static {v1}, Lnet/veritran/component/VTListCarouselComponent;->access$200(Lnet/veritran/component/VTListCarouselComponent;)Lnet/veritran/component/view/VTListCarouselComponentView;

    move-result-object v1

    new-instance v2, Lnet/veritran/component/VTImplicitOnClickListener;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v6, v3}, Lnet/veritran/component/VTImplicitOnClickListener;-><init>(ZI)V

    invoke-virtual {v1, v2}, Lnet/veritran/component/view/VTListCarouselComponentView;->setOnItemClickListener(Lnet/veritran/component/VTImplicitOnClickListener;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    # getter for: Lnet/veritran/component/VTListCarouselComponent;->vtListView:Lnet/veritran/component/view/VTListCarouselComponentView;
    invoke-static {v1}, Lnet/veritran/component/VTListCarouselComponent;->access$200(Lnet/veritran/component/VTListCarouselComponent;)Lnet/veritran/component/view/VTListCarouselComponentView;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/veritran/component/view/VTListCarouselComponentView;->locateIndicator(I)V

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    # getter for: Lnet/veritran/component/VTListCarouselComponent;->vtListView:Lnet/veritran/component/view/VTListCarouselComponentView;
    invoke-static {v1}, Lnet/veritran/component/VTListCarouselComponent;->access$200(Lnet/veritran/component/VTListCarouselComponent;)Lnet/veritran/component/view/VTListCarouselComponentView;

    move-result-object v1

    new-instance v2, Lnet/veritran/component/VTImplicitOnItemSelectedListener;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    # getter for: Lnet/veritran/component/VTListCarouselComponent;->pageIndicator:Lnet/veritran/component/view/VTPageIndicatorView;
    invoke-static {v7}, Lnet/veritran/component/VTListCarouselComponent;->access$300(Lnet/veritran/component/VTListCarouselComponent;)Lnet/veritran/component/view/VTPageIndicatorView;

    move-result-object v7

    invoke-direct {v2, v6, v3, v7}, Lnet/veritran/component/VTImplicitOnItemSelectedListener;-><init>(ZILnet/veritran/component/view/VTPageIndicatorView;)V

    invoke-virtual {v1, v2}, Lnet/veritran/component/view/VTListCarouselComponentView;->setOnItemChangeListener(Lnet/veritran/component/VTImplicitOnItemSelectedListener;)V

    .line 249
    const/4 v11, -0x1

    .line 250
    .local v11, "selectedIndex":I
    const/4 v8, 0x0

    .line 251
    .local v8, "currentIndex":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    iget-object v1, v1, Lnet/veritran/component/VTListCarouselComponent;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v2, "Value"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v12

    .line 254
    .local v12, "selectedValue":Ljava/lang/String;
    if-eqz v12, :cond_1

    const-string v1, ""

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_1

    .line 257
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v2, "Value"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 256
    invoke-static {v1, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v15

    .line 259
    .local v15, "val":Ljava/lang/String;
    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 260
    move v11, v8

    .line 268
    .end local v15    # "val":Ljava/lang/String;
    :cond_1
    if-ltz v11, :cond_5

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    # getter for: Lnet/veritran/component/VTListCarouselComponent;->vtListView:Lnet/veritran/component/view/VTListCarouselComponentView;
    invoke-static {v1}, Lnet/veritran/component/VTListCarouselComponent;->access$200(Lnet/veritran/component/VTListCarouselComponent;)Lnet/veritran/component/view/VTListCarouselComponentView;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v11, v2}, Lnet/veritran/component/view/VTListCarouselComponentView;->setSelectedIndex(II)V

    .line 277
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    # getter for: Lnet/veritran/component/VTListCarouselComponent;->vtListView:Lnet/veritran/component/view/VTListCarouselComponentView;
    invoke-static {v1}, Lnet/veritran/component/VTListCarouselComponent;->access$200(Lnet/veritran/component/VTListCarouselComponent;)Lnet/veritran/component/view/VTListCarouselComponentView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/veritran/component/view/VTListCarouselComponentView;->showProgress(Z)V

    .line 278
    return-void

    .line 233
    .end local v6    # "cycle":Z
    .end local v8    # "currentIndex":I
    .end local v11    # "selectedIndex":I
    .end local v12    # "selectedValue":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 235
    .local v10, "ex":Ljava/lang/NumberFormatException;
    const-string v1, "VTListCarouselComponent"

    const-string v2, "transition Time will be 0"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 263
    .restart local v6    # "cycle":Z
    .restart local v8    # "currentIndex":I
    .restart local v11    # "selectedIndex":I
    .restart local v12    # "selectedValue":Ljava/lang/String;
    .restart local v15    # "val":Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 265
    goto :goto_2

    .line 271
    .end local v15    # "val":Ljava/lang/String;
    :cond_5
    if-eqz v6, :cond_2

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    # getter for: Lnet/veritran/component/VTListCarouselComponent;->vtListView:Lnet/veritran/component/view/VTListCarouselComponentView;
    invoke-static {v1}, Lnet/veritran/component/VTListCarouselComponent;->access$200(Lnet/veritran/component/VTListCarouselComponent;)Lnet/veritran/component/view/VTListCarouselComponentView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lnet/veritran/component/view/VTListCarouselComponentView;->setSelectedIndex(II)V

    goto :goto_3
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 207
    iget-object v0, p0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    # getter for: Lnet/veritran/component/VTListCarouselComponent;->vtListView:Lnet/veritran/component/view/VTListCarouselComponentView;
    invoke-static {v0}, Lnet/veritran/component/VTListCarouselComponent;->access$200(Lnet/veritran/component/VTListCarouselComponent;)Lnet/veritran/component/view/VTListCarouselComponentView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTListCarouselComponentView;->showProgress(Z)V

    .line 208
    iget-object v0, p0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    # getter for: Lnet/veritran/component/VTListCarouselComponent;->vtListView:Lnet/veritran/component/view/VTListCarouselComponentView;
    invoke-static {v0}, Lnet/veritran/component/VTListCarouselComponent;->access$200(Lnet/veritran/component/VTListCarouselComponent;)Lnet/veritran/component/view/VTListCarouselComponentView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/component/view/VTListCarouselComponentView;->getPixelsHeight()I

    move-result v0

    iput v0, p0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->carouselHeight:I

    .line 209
    iget-object v0, p0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    # getter for: Lnet/veritran/component/VTListCarouselComponent;->vtListView:Lnet/veritran/component/view/VTListCarouselComponentView;
    invoke-static {v0}, Lnet/veritran/component/VTListCarouselComponent;->access$200(Lnet/veritran/component/VTListCarouselComponent;)Lnet/veritran/component/view/VTListCarouselComponentView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/component/view/VTListCarouselComponentView;->getPixelsWidth()I

    move-result v0

    iput v0, p0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->carouselWidth:I

    .line 210
    return-void
.end method
