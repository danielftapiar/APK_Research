.class public Lnet/veritran/component/VTStaticTable;
.super Lnet/veritran/component/VTUIComponent;
.source "VTStaticTable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VTStaticTable"


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

.field private vtScroller:Lnet/veritran/component/view/VTScrollTableWrapper;

.field private vtTableView:Lnet/veritran/component/view/VTStaticTableView;


# direct methods
.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 1
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponent;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/VTStaticTable;->children:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTStaticTable;->setActivity(Lnet/veritran/VTCommonActivity;)V

    .line 66
    return-void
.end method

.method private initBorder([Lnet/veritran/component/view/VTStaticTableRowView;)V
    .locals 18
    .param p1, "tRows"    # [Lnet/veritran/component/view/VTStaticTableRowView;

    .prologue
    .line 264
    const/4 v7, 0x1

    .line 265
    .local v7, "initRows":Z
    if-nez p1, :cond_0

    .line 266
    const/4 v7, 0x0

    .line 267
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/veritran/component/VTStaticTable;->vtTableView:Lnet/veritran/component/view/VTStaticTableView;

    invoke-virtual {v15}, Lnet/veritran/component/view/VTStaticTableView;->getChildCount()I

    move-result v15

    new-array v0, v15, [Lnet/veritran/component/view/VTStaticTableRowView;

    move-object/from16 p1, v0

    .line 268
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/veritran/component/VTStaticTable;->vtTableView:Lnet/veritran/component/view/VTStaticTableView;

    invoke-virtual {v15}, Lnet/veritran/component/view/VTStaticTableView;->getChildCount()I

    move-result v15

    if-ge v6, v15, :cond_0

    .line 269
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/veritran/component/VTStaticTable;->vtTableView:Lnet/veritran/component/view/VTStaticTableView;

    invoke-virtual {v15, v6}, Lnet/veritran/component/view/VTStaticTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lnet/veritran/component/view/VTStaticTableRowView;

    aput-object v15, p1, v6

    .line 268
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 274
    .end local v6    # "i":I
    :cond_0
    const/4 v9, 0x0

    .line 275
    .local v9, "percentageLeftPaddingForCells":F
    const/4 v10, 0x0

    .line 276
    .local v10, "percentageRightPaddingForCells":F
    const/4 v11, 0x0

    .line 277
    .local v11, "percentageTopPaddingForCells":F
    const/4 v8, 0x0

    .line 279
    .local v8, "percentageBottomPaddingForCells":F
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v16, "paddingLeft"

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "%"

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 285
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v16, "paddingRight"

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "%"

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    .line 291
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v16, "paddingTop"

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "%"

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v11

    .line 297
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v16, "paddingBottom"

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "%"

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v8

    .line 304
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v16, "hrsize"

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "hrSize":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v16, "hrstyle"

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 306
    .local v5, "hrStyle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v16, "hrcolor"

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lnet/veritran/VTCommonActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 307
    .local v3, "hrColor":Ljava/lang/Integer;
    if-nez v4, :cond_1

    .line 308
    const-string v4, "none"

    .line 310
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v16, "vrsize"

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 311
    .local v13, "vrSize":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v16, "vrstyle"

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 312
    .local v14, "vrStyle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v16, "vrcolor"

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lnet/veritran/VTCommonActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 313
    .local v12, "vrColor":Ljava/lang/Integer;
    if-nez v13, :cond_2

    .line 314
    const-string v13, "none"

    .line 316
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    move-object/from16 v0, p1

    array-length v15, v0

    if-ge v6, v15, :cond_15

    .line 317
    if-eqz v7, :cond_3

    .line 318
    new-instance v15, Lnet/veritran/component/view/VTStaticTableRowView;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTStaticTable;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lnet/veritran/component/view/VTStaticTableRowView;-><init>(Lnet/veritran/VTCommonActivity;)V

    aput-object v15, p1, v6

    .line 320
    :cond_3
    aget-object v15, p1, v6

    invoke-virtual {v15, v9, v11, v10, v8}, Lnet/veritran/component/view/VTStaticTableRowView;->setPercentagePaddings(FFFF)V

    .line 321
    aget-object v15, p1, v6

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "trow_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/component/view/VTStaticTableRowView;->setTag(Ljava/lang/Object;)V

    .line 322
    aget-object v15, p1, v6

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/component/view/VTStaticTableRowView;->setMinimumHeight(I)V

    .line 323
    aget-object v15, p1, v6

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/component/view/VTStaticTableRowView;->setMinimumWidth(I)V

    .line 336
    aget-object v15, p1, v6

    const/16 v16, 0x11

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/component/view/VTStaticTableRowView;->setGravity(I)V

    .line 338
    const-string v15, "none"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 339
    const/4 v1, 0x0

    .line 340
    .local v1, "dividerSize":I
    const-string v15, "small"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 341
    const/4 v1, 0x1

    .line 348
    :cond_4
    :goto_6
    if-eqz v3, :cond_5

    .line 349
    aget-object v15, p1, v6

    invoke-virtual {v15, v3}, Lnet/veritran/component/view/VTStaticTableRowView;->setBorderTopColor(Ljava/lang/Integer;)V

    .line 350
    aget-object v15, p1, v6

    invoke-virtual {v15, v3}, Lnet/veritran/component/view/VTStaticTableRowView;->setBorderBottomColor(Ljava/lang/Integer;)V

    .line 352
    :cond_5
    if-nez v5, :cond_6

    const-string v5, "solid"

    .line 353
    :cond_6
    const-string v15, "dotted"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 354
    aget-object v15, p1, v6

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/component/view/VTStaticTableRowView;->setBorderTopStyle(I)V

    .line 355
    move-object/from16 v0, p1

    array-length v15, v0

    add-int/lit8 v15, v15, -0x1

    if-ne v6, v15, :cond_7

    .line 356
    aget-object v15, p1, v6

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/component/view/VTStaticTableRowView;->setBorderBottomStyle(I)V

    .line 369
    :cond_7
    :goto_7
    aget-object v15, p1, v6

    invoke-virtual {v15, v1}, Lnet/veritran/component/view/VTStaticTableRowView;->setBorderTopSize(I)V

    .line 370
    move-object/from16 v0, p1

    array-length v15, v0

    add-int/lit8 v15, v15, -0x1

    if-ne v6, v15, :cond_8

    .line 371
    aget-object v15, p1, v6

    invoke-virtual {v15, v1}, Lnet/veritran/component/view/VTStaticTableRowView;->setBorderBottomSize(I)V

    .line 374
    .end local v1    # "dividerSize":I
    :cond_8
    const-string v15, "none"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_c

    .line 375
    const/4 v1, 0x0

    .line 376
    .restart local v1    # "dividerSize":I
    const-string v15, "small"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 377
    const/4 v1, 0x1

    .line 384
    :cond_9
    :goto_8
    if-eqz v12, :cond_a

    .line 385
    aget-object v15, p1, v6

    invoke-virtual {v15, v12}, Lnet/veritran/component/view/VTStaticTableRowView;->setBorderLeftColor(Ljava/lang/Integer;)V

    .line 386
    aget-object v15, p1, v6

    invoke-virtual {v15, v12}, Lnet/veritran/component/view/VTStaticTableRowView;->setBorderRightColor(Ljava/lang/Integer;)V

    .line 388
    :cond_a
    if-nez v14, :cond_b

    const-string v14, "solid"

    .line 389
    :cond_b
    const-string v15, "dotted"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 390
    aget-object v15, p1, v6

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/component/view/VTStaticTableRowView;->setBorderLeftStyle(I)V

    .line 391
    aget-object v15, p1, v6

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/component/view/VTStaticTableRowView;->setBorderRightStyle(I)V

    .line 399
    :goto_9
    aget-object v15, p1, v6

    invoke-virtual {v15, v1}, Lnet/veritran/component/view/VTStaticTableRowView;->setBorderLeftSize(I)V

    .line 400
    aget-object v15, p1, v6

    invoke-virtual {v15, v1}, Lnet/veritran/component/view/VTStaticTableRowView;->setBorderRightSize(I)V

    .line 316
    .end local v1    # "dividerSize":I
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 280
    .end local v3    # "hrColor":Ljava/lang/Integer;
    .end local v4    # "hrSize":Ljava/lang/String;
    .end local v5    # "hrStyle":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v12    # "vrColor":Ljava/lang/Integer;
    .end local v13    # "vrSize":Ljava/lang/String;
    .end local v14    # "vrStyle":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 281
    .local v2, "ex":Ljava/lang/Exception;
    const-string v15, "VTStaticTable"

    const-string v16, "Catched exception empty (fortify)"

    invoke-static/range {v15 .. v16}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 286
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 287
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v15, "VTStaticTable"

    const-string v16, "Catched exception empty (fortify)"

    invoke-static/range {v15 .. v16}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 292
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 293
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v15, "VTStaticTable"

    const-string v16, "Catched exception empty (fortify)"

    invoke-static/range {v15 .. v16}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 298
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 299
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v15, "VTStaticTable"

    const-string v16, "Catched exception empty (fortify)"

    invoke-static/range {v15 .. v16}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 342
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v1    # "dividerSize":I
    .restart local v3    # "hrColor":Ljava/lang/Integer;
    .restart local v4    # "hrSize":Ljava/lang/String;
    .restart local v5    # "hrStyle":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v12    # "vrColor":Ljava/lang/Integer;
    .restart local v13    # "vrSize":Ljava/lang/String;
    .restart local v14    # "vrStyle":Ljava/lang/String;
    :cond_d
    const-string v15, "medium"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 343
    const/4 v1, 0x3

    goto/16 :goto_6

    .line 344
    :cond_e
    const-string v15, "large"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 345
    const/4 v1, 0x6

    goto/16 :goto_6

    .line 358
    :cond_f
    const-string v15, "dashed"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 359
    aget-object v15, p1, v6

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/component/view/VTStaticTableRowView;->setBorderTopStyle(I)V

    .line 360
    move-object/from16 v0, p1

    array-length v15, v0

    add-int/lit8 v15, v15, -0x1

    if-ne v6, v15, :cond_7

    .line 361
    aget-object v15, p1, v6

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/component/view/VTStaticTableRowView;->setBorderBottomStyle(I)V

    goto/16 :goto_7

    .line 364
    :cond_10
    aget-object v15, p1, v6

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/component/view/VTStaticTableRowView;->setBorderTopStyle(I)V

    .line 365
    move-object/from16 v0, p1

    array-length v15, v0

    add-int/lit8 v15, v15, -0x1

    if-ne v6, v15, :cond_7

    .line 366
    aget-object v15, p1, v6

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/component/view/VTStaticTableRowView;->setBorderBottomStyle(I)V

    goto/16 :goto_7

    .line 378
    :cond_11
    const-string v15, "medium"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 379
    const/4 v1, 0x3

    goto/16 :goto_8

    .line 380
    :cond_12
    const-string v15, "large"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 381
    const/4 v1, 0x6

    goto/16 :goto_8

    .line 392
    :cond_13
    const-string v15, "dashed"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 393
    aget-object v15, p1, v6

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/component/view/VTStaticTableRowView;->setBorderLeftStyle(I)V

    .line 394
    aget-object v15, p1, v6

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/component/view/VTStaticTableRowView;->setBorderRightStyle(I)V

    goto/16 :goto_9

    .line 396
    :cond_14
    aget-object v15, p1, v6

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/component/view/VTStaticTableRowView;->setBorderLeftStyle(I)V

    .line 397
    aget-object v15, p1, v6

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lnet/veritran/component/view/VTStaticTableRowView;->setBorderRightStyle(I)V

    goto/16 :goto_9

    .line 404
    .end local v1    # "dividerSize":I
    :cond_15
    return-void
.end method

.method private initGrid()V
    .locals 0

    .prologue
    .line 408
    invoke-virtual {p0}, Lnet/veritran/component/VTStaticTable;->defineWidth()V

    .line 409
    invoke-virtual {p0}, Lnet/veritran/component/VTStaticTable;->defineHeight()V

    .line 410
    invoke-virtual {p0}, Lnet/veritran/component/VTStaticTable;->defineMargins()V

    .line 411
    invoke-virtual {p0}, Lnet/veritran/component/VTStaticTable;->defineBackgroundColor()V

    .line 412
    invoke-virtual {p0}, Lnet/veritran/component/VTStaticTable;->defineBackgroundImage()V

    .line 413
    invoke-virtual {p0}, Lnet/veritran/component/VTStaticTable;->defineVisibility()V

    .line 414
    return-void
.end method


# virtual methods
.method public executeEvent(Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTStaticTable;->checkEventType(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lnet/veritran/component/VTStaticTable;->isRefreshEvent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 42
    invoke-virtual {p0}, Lnet/veritran/component/VTStaticTable;->refreshContainer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-direct {p0}, Lnet/veritran/component/VTStaticTable;->initGrid()V

    .line 44
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lnet/veritran/component/VTStaticTable;->initBorder([Lnet/veritran/component/view/VTStaticTableRowView;)V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lnet/veritran/component/VTStaticTable;->refreshContent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    iget-object v1, p0, Lnet/veritran/component/VTStaticTable;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTUIComponent;

    .line 48
    .local v0, "component":Lnet/veritran/component/VTUIComponent;
    const-string v2, "REFRESH_WITHOUT_MEASURE"

    invoke-virtual {v0, v2}, Lnet/veritran/component/VTUIComponent;->executeEvent(Ljava/lang/String;)Z

    goto :goto_0

    .line 51
    .end local v0    # "component":Lnet/veritran/component/VTUIComponent;
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/VTStaticTable;->refreshMeasure()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    invoke-virtual {p0}, Lnet/veritran/component/VTStaticTable;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 53
    invoke-virtual {p0}, Lnet/veritran/component/VTStaticTable;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 61
    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    return v1

    .line 55
    :cond_3
    invoke-virtual {p0}, Lnet/veritran/component/VTStaticTable;->isVisibilityEvent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 56
    invoke-virtual {p0}, Lnet/veritran/component/VTStaticTable;->updateVisibility()V

    goto :goto_1

    .line 58
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lnet/veritran/component/VTStaticTable;->vtScroller:Lnet/veritran/component/view/VTScrollTableWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/component/VTStaticTable;->vtScroller:Lnet/veritran/component/view/VTScrollTableWrapper;

    .line 74
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/veritran/component/VTStaticTable;->vtTableView:Lnet/veritran/component/view/VTStaticTableView;

    goto :goto_0
.end method

.method public init()V
    .locals 31

    .prologue
    .line 79
    invoke-super/range {p0 .. p0}, Lnet/veritran/component/VTUIComponent;->init()V

    .line 80
    new-instance v2, Lnet/veritran/component/view/VTStaticTableView;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTStaticTable;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/veritran/component/view/VTStaticTableView;-><init>(Lnet/veritran/VTCommonActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/veritran/component/VTStaticTable;->vtTableView:Lnet/veritran/component/view/VTStaticTableView;

    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTStaticTable;->vtTableView:Lnet/veritran/component/view/VTStaticTableView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "table_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/veritran/component/view/VTStaticTableView;->setTag(Ljava/lang/Object;)V

    .line 82
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v3, "scroll"

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 83
    .local v27, "scrolleable":Ljava/lang/String;
    if-eqz v27, :cond_0

    const-string v2, "yes"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    new-instance v2, Lnet/veritran/component/view/VTScrollTableWrapper;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTStaticTable;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/veritran/component/view/VTScrollTableWrapper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/veritran/component/VTStaticTable;->vtScroller:Lnet/veritran/component/view/VTScrollTableWrapper;

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTStaticTable;->vtScroller:Lnet/veritran/component/view/VTScrollTableWrapper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/VTStaticTable;->vtTableView:Lnet/veritran/component/view/VTStaticTableView;

    invoke-virtual {v2, v3}, Lnet/veritran/component/view/VTScrollTableWrapper;->setTableView(Lnet/veritran/component/view/VTUIComponentContainerView;)V

    .line 88
    :cond_0
    invoke-direct/range {p0 .. p0}, Lnet/veritran/component/VTStaticTable;->initGrid()V

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTStaticTable;

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTStaticTable;->getCells()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    .line 91
    .local v12, "cellsCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTStaticTable;

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTStaticTable;->getConfigurationVisualComponentsList()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v18

    .line 93
    .local v18, "elementsCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v3, "rows"

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 94
    .local v26, "rows":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v3, "cols"

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 95
    .local v16, "cols":I
    const-string v2, "VTStaticTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cellsCount:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ";elementsCount:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ";rows:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ";cols:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v3, "Onclick"

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "onClick":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTStaticTable;->vtTableView:Lnet/veritran/component/view/VTStaticTableView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/veritran/component/view/VTStaticTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTStaticTable;->vtTableView:Lnet/veritran/component/view/VTStaticTableView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/veritran/component/view/VTStaticTableView;->setClickable(Z)V

    .line 99
    if-eqz v4, :cond_1

    .line 100
    const/4 v2, 0x0

    invoke-static {v4, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v4

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v3, "submit"

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "formId":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 103
    const/4 v2, 0x0

    invoke-static {v5, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/VTStaticTable;->vtTableView:Lnet/veritran/component/view/VTStaticTableView;

    move-object/from16 v30, v0

    new-instance v2, Lnet/veritran/component/VTButtonOnClickListener;

    const/16 v3, 0x3ea

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lnet/veritran/component/VTButtonOnClickListener;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lnet/veritran/component/view/VTStaticTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .end local v5    # "formId":Ljava/lang/String;
    :cond_1
    :goto_0
    move/from16 v0, v16

    new-array v15, v0, [I

    .line 114
    .local v15, "colWidths":[I
    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/String;

    .line 115
    .local v13, "colAlign":[Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTStaticTable;

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTStaticTable;->getCells()Ljava/util/List;

    move-result-object v2

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    const-string v3, "textAlign"

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 117
    .local v8, "align":Ljava/lang/String;
    if-nez v8, :cond_2

    const-string v8, "left"

    .line 118
    :cond_2
    aput-object v8, v13, v20

    .line 119
    const-string v2, "VTStaticTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VTCELL Align="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v6, v13, v20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    move/from16 v0, v20

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTStaticTable;

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTStaticTable;->getCells()Ljava/util/List;

    move-result-object v2

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    const-string v3, "width"

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 123
    .local v14, "colWidth":Ljava/lang/String;
    :try_start_0
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v15, v20
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_2
    const-string v2, "VTStaticTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VTCELL WIDTH="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v6, v15, v20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v14    # "colWidth":Ljava/lang/String;
    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 108
    .end local v8    # "align":Ljava/lang/String;
    .end local v13    # "colAlign":[Ljava/lang/String;
    .end local v15    # "colWidths":[I
    .end local v20    # "i":I
    .restart local v5    # "formId":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTStaticTable;->vtTableView:Lnet/veritran/component/view/VTStaticTableView;

    new-instance v3, Lnet/veritran/component/VTButtonOnClickListener;

    const/16 v6, 0x3ea

    const/4 v7, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v30

    invoke-direct {v3, v6, v4, v7, v0}, Lnet/veritran/component/VTButtonOnClickListener;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lnet/veritran/component/view/VTStaticTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 124
    .end local v5    # "formId":Ljava/lang/String;
    .restart local v8    # "align":Ljava/lang/String;
    .restart local v13    # "colAlign":[Ljava/lang/String;
    .restart local v14    # "colWidth":Ljava/lang/String;
    .restart local v15    # "colWidths":[I
    .restart local v20    # "i":I
    :catch_0
    move-exception v22

    .line 125
    .local v22, "nfe":Ljava/lang/NumberFormatException;
    const/16 v2, 0x64

    div-int v2, v2, v16

    aput v2, v15, v20

    goto :goto_2

    .line 131
    .end local v8    # "align":Ljava/lang/String;
    .end local v14    # "colWidth":Ljava/lang/String;
    .end local v22    # "nfe":Ljava/lang/NumberFormatException;
    :cond_5
    move/from16 v0, v26

    new-array v0, v0, [Lnet/veritran/component/view/VTStaticTableRowView;

    move-object/from16 v28, v0

    .line 132
    .local v28, "tRows":[Lnet/veritran/component/view/VTStaticTableRowView;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lnet/veritran/component/VTStaticTable;->initBorder([Lnet/veritran/component/view/VTStaticTableRowView;)V

    .line 135
    const/16 v25, 0x0

    .line 136
    .local v25, "r":I
    const/16 v21, 0x0

    .line 137
    .local v21, "j":I
    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTStaticTable;

    .line 140
    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTStaticTable;->getConfigurationVisualComponentsList()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v29

    .line 142
    .local v29, "vc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    new-instance v24, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;

    invoke-direct/range {v24 .. v24}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;-><init>()V

    .line 144
    .local v24, "panelComponent":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTStaticTable;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    check-cast v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTStaticTable;

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTStaticTable;->getCells()Ljava/util/List;

    move-result-object v2

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    .line 145
    .local v11, "cell":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;
    invoke-virtual {v11}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->getAttributesKeys()Ljava/util/Enumeration;

    move-result-object v10

    .line 146
    .local v10, "atts":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_6
    :goto_4
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 147
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 148
    .local v9, "att":Ljava/lang/String;
    const-string v2, "height"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 149
    const-string v2, "100"

    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 150
    :cond_7
    const-string v2, "width"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 153
    invoke-virtual {v11, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 158
    .end local v9    # "att":Ljava/lang/String;
    :cond_8
    new-instance v17, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-direct/range {v17 .. v17}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;-><init>()V

    .line 159
    .local v17, "componentList":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 160
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->setConfigurationVisualComponentsList(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;)V

    .line 162
    const-string v2, "textalign"

    aget-object v3, v13, v20

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v2, "_iscell"

    const-string v3, "true"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTStaticTable;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTStaticTable;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v3

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v3, v1}, Lnet/veritran/VTCommonActivity;->getUIComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Lnet/veritran/component/VTUIComponent;)Lnet/veritran/component/VTUIComponent;

    move-result-object v23

    .line 194
    .local v23, "panel":Lnet/veritran/component/VTUIComponent;
    aget-object v2, v28, v25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tcell_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/veritran/component/view/VTStaticTableRowView;->setTag(Ljava/lang/Object;)V

    .line 195
    const-string v2, "height"

    invoke-virtual {v11, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 197
    .local v19, "heightStr":Ljava/lang/String;
    :try_start_1
    aget-object v2, v28, v25

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lnet/veritran/component/view/VTStaticTableRowView;->setHeightPercentage(F)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    :goto_5
    aget-object v2, v28, v25

    invoke-virtual/range {v23 .. v23}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/veritran/component/view/VTStaticTableRowView;->addView(Landroid/view/View;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTStaticTable;->children:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v21, v21, 0x1

    .line 213
    move/from16 v0, v21

    move/from16 v1, v16

    if-lt v0, v1, :cond_9

    .line 214
    aget-object v2, v28, v25

    invoke-virtual {v2, v15}, Lnet/veritran/component/view/VTStaticTableRowView;->setPercentagesCellsWidth([I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/veritran/component/VTStaticTable;->vtTableView:Lnet/veritran/component/view/VTStaticTableView;

    aget-object v3, v28, v25

    invoke-virtual {v2, v3}, Lnet/veritran/component/view/VTStaticTableView;->addView(Landroid/view/View;)V

    .line 253
    add-int/lit8 v25, v25, 0x1

    .line 254
    const/16 v21, 0x0

    .line 137
    :cond_9
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 198
    :catch_1
    move-exception v22

    .line 199
    .restart local v22    # "nfe":Ljava/lang/NumberFormatException;
    const-string v2, "VTStaticTable"

    const-string v3, "Catched exception empty (fortify)"

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 260
    .end local v10    # "atts":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v11    # "cell":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;
    .end local v17    # "componentList":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    .end local v19    # "heightStr":Ljava/lang/String;
    .end local v22    # "nfe":Ljava/lang/NumberFormatException;
    .end local v23    # "panel":Lnet/veritran/component/VTUIComponent;
    .end local v24    # "panelComponent":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;
    .end local v29    # "vc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_a
    const-string v2, "VTStaticTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cells:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ";elements:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method
