.class Ljavax/microedition/lcdui/DateCanvas;
.super Ljavax/microedition/lcdui/Canvas;
.source "DateField.java"


# instance fields
.field cal:Ljava/util/Calendar;

.field private day:I

.field private month:I

.field private selected:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Ljavax/microedition/lcdui/Canvas;-><init>()V

    .line 272
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ljavax/microedition/lcdui/DateCanvas;->cal:Ljava/util/Calendar;

    .line 273
    return-void
.end method


# virtual methods
.method public getTime()Ljava/util/Date;
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Ljavax/microedition/lcdui/DateCanvas;->cal:Ljava/util/Calendar;

    const/4 v1, 0x1

    iget v2, p0, Ljavax/microedition/lcdui/DateCanvas;->year:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 277
    iget-object v0, p0, Ljavax/microedition/lcdui/DateCanvas;->cal:Ljava/util/Calendar;

    const/4 v1, 0x2

    iget v2, p0, Ljavax/microedition/lcdui/DateCanvas;->month:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 278
    iget-object v0, p0, Ljavax/microedition/lcdui/DateCanvas;->cal:Ljava/util/Calendar;

    const/4 v1, 0x5

    iget v2, p0, Ljavax/microedition/lcdui/DateCanvas;->day:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 279
    iget-object v0, p0, Ljavax/microedition/lcdui/DateCanvas;->cal:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized keyPressed(I)V
    .locals 8
    .param p1, "keycode"    # I

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x1

    .line 376
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljavax/microedition/lcdui/DateCanvas;->getGameAction(I)I

    move-result v2

    .line 378
    .local v2, "k":I
    if-ne v2, v6, :cond_1

    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->selected:I

    if-lez v3, :cond_1

    .line 379
    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->selected:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljavax/microedition/lcdui/DateCanvas;->selected:I

    .line 380
    invoke-virtual {p0}, Ljavax/microedition/lcdui/DateCanvas;->repaint()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 381
    :cond_1
    if-ne v2, v4, :cond_2

    :try_start_1
    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->selected:I

    if-ge v3, v6, :cond_2

    .line 382
    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->selected:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljavax/microedition/lcdui/DateCanvas;->selected:I

    .line 383
    invoke-virtual {p0}, Ljavax/microedition/lcdui/DateCanvas;->repaint()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 376
    .end local v2    # "k":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 384
    .restart local v2    # "k":I
    :cond_2
    if-ne v2, v5, :cond_6

    .line 385
    :try_start_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 387
    .local v0, "cal":Ljava/util/Calendar;
    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->selected:I

    packed-switch v3, :pswitch_data_0

    .line 432
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljavax/microedition/lcdui/DateCanvas;->repaint()V

    goto :goto_0

    .line 389
    :pswitch_0
    const/4 v3, 0x1

    iget v4, p0, Ljavax/microedition/lcdui/DateCanvas;->year:I

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 390
    const/4 v3, 0x2

    iget v4, p0, Ljavax/microedition/lcdui/DateCanvas;->month:I

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 391
    const/4 v3, 0x5

    iget v4, p0, Ljavax/microedition/lcdui/DateCanvas;->day:I

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 392
    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 394
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 395
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 396
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget v4, p0, Ljavax/microedition/lcdui/DateCanvas;->month:I

    if-ne v3, v4, :cond_4

    .line 397
    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->day:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljavax/microedition/lcdui/DateCanvas;->day:I

    goto :goto_1

    .line 399
    :cond_4
    const/4 v3, 0x1

    iput v3, p0, Ljavax/microedition/lcdui/DateCanvas;->day:I

    goto :goto_1

    .line 402
    :pswitch_1
    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->month:I

    if-ne v3, v7, :cond_5

    .line 403
    const/4 v3, 0x0

    iput v3, p0, Ljavax/microedition/lcdui/DateCanvas;->month:I

    .line 407
    :goto_2
    const/4 v3, 0x1

    iget v4, p0, Ljavax/microedition/lcdui/DateCanvas;->year:I

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 408
    const/4 v3, 0x2

    iget v4, p0, Ljavax/microedition/lcdui/DateCanvas;->month:I

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 409
    const/4 v3, 0x5

    const/16 v4, 0x1c

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 410
    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 412
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 413
    const/4 v3, 0x5

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 414
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x4

    add-int/lit8 v1, v3, 0x1c

    .line 416
    .local v1, "daysInMonth":I
    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->day:I

    if-le v3, v1, :cond_3

    .line 417
    iput v1, p0, Ljavax/microedition/lcdui/DateCanvas;->day:I

    goto :goto_1

    .line 405
    .end local v1    # "daysInMonth":I
    :cond_5
    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->month:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljavax/microedition/lcdui/DateCanvas;->month:I

    goto :goto_2

    .line 421
    :pswitch_2
    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->year:I

    const/16 v4, 0x1388

    if-ge v3, v4, :cond_3

    .line 422
    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->year:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljavax/microedition/lcdui/DateCanvas;->year:I

    .line 427
    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->day:I

    const/16 v4, 0x1d

    if-ne v3, v4, :cond_3

    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->month:I

    if-ne v3, v5, :cond_3

    .line 428
    const/16 v3, 0x1c

    iput v3, p0, Ljavax/microedition/lcdui/DateCanvas;->day:I

    goto/16 :goto_1

    .line 433
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_6
    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 434
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 436
    .restart local v0    # "cal":Ljava/util/Calendar;
    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->selected:I

    packed-switch v3, :pswitch_data_1

    .line 482
    :cond_7
    :goto_3
    invoke-virtual {p0}, Ljavax/microedition/lcdui/DateCanvas;->repaint()V

    goto/16 :goto_0

    .line 438
    :pswitch_3
    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->day:I

    if-le v3, v5, :cond_8

    .line 439
    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->day:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljavax/microedition/lcdui/DateCanvas;->day:I

    goto :goto_3

    .line 441
    :cond_8
    const/4 v3, 0x1

    iget v4, p0, Ljavax/microedition/lcdui/DateCanvas;->year:I

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 442
    const/4 v3, 0x2

    iget v4, p0, Ljavax/microedition/lcdui/DateCanvas;->month:I

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 443
    const/4 v3, 0x5

    const/16 v4, 0x1c

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 444
    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 446
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 447
    const/4 v3, 0x5

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 448
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x4

    add-int/lit8 v1, v3, 0x1c

    .line 449
    .restart local v1    # "daysInMonth":I
    iput v1, p0, Ljavax/microedition/lcdui/DateCanvas;->day:I

    goto :goto_3

    .line 453
    .end local v1    # "daysInMonth":I
    :pswitch_4
    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->month:I

    if-nez v3, :cond_9

    .line 454
    const/16 v3, 0xb

    iput v3, p0, Ljavax/microedition/lcdui/DateCanvas;->month:I

    .line 458
    :goto_4
    const/4 v3, 0x1

    iget v4, p0, Ljavax/microedition/lcdui/DateCanvas;->year:I

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 459
    const/4 v3, 0x2

    iget v4, p0, Ljavax/microedition/lcdui/DateCanvas;->month:I

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 460
    const/4 v3, 0x5

    const/16 v4, 0x1c

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 461
    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 463
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 464
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 465
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x4

    add-int/lit8 v1, v3, 0x1c

    .line 467
    .restart local v1    # "daysInMonth":I
    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->day:I

    if-le v3, v1, :cond_7

    .line 468
    iput v1, p0, Ljavax/microedition/lcdui/DateCanvas;->day:I

    goto :goto_3

    .line 456
    .end local v1    # "daysInMonth":I
    :cond_9
    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->month:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljavax/microedition/lcdui/DateCanvas;->month:I

    goto :goto_4

    .line 472
    :pswitch_5
    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->year:I

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_7

    .line 473
    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->year:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljavax/microedition/lcdui/DateCanvas;->year:I

    .line 477
    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->day:I

    const/16 v4, 0x1d

    if-ne v3, v4, :cond_7

    iget v3, p0, Ljavax/microedition/lcdui/DateCanvas;->month:I

    if-ne v3, v5, :cond_7

    .line 478
    const/16 v3, 0x1c

    iput v3, p0, Ljavax/microedition/lcdui/DateCanvas;->day:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 436
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 29
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 291
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/DateCanvas;->getWidth()I

    move-result v21

    .line 292
    .local v21, "w":I
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/DateCanvas;->getHeight()I

    move-result v15

    .line 294
    .local v15, "h":I
    const v26, 0xffffff

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 295
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v15}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 297
    const/16 v26, 0x20

    const/16 v27, 0x1

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Ljavax/microedition/lcdui/Font;->getFont(III)Ljavax/microedition/lcdui/Font;

    move-result-object v14

    .line 300
    .local v14, "font":Ljavax/microedition/lcdui/Font;
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/DateCanvas;->day:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 301
    .local v8, "dayStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/DateCanvas;->day:I

    move/from16 v26, v0

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 302
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "0"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 303
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/DateCanvas;->month:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    .line 304
    .local v17, "monthStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/DateCanvas;->month:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    .line 305
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "0"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    .line 306
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/DateCanvas;->year:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    .line 307
    .local v24, "yearStr":Ljava/lang/String;
    const-string v12, "/"

    .line 309
    .local v12, "delimiterStr":Ljava/lang/String;
    invoke-virtual {v14}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v26

    sub-int v26, v15, v26

    ushr-int/lit8 v22, v26, 0x1

    .line 311
    .local v22, "y":I
    invoke-virtual {v14, v8}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v9

    .line 312
    .local v9, "dayW":I
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v18

    .line 313
    .local v18, "monthW":I
    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v25

    .line 314
    .local v25, "yearW":I
    invoke-virtual {v14, v12}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v13

    .line 316
    .local v13, "delimiterW":I
    add-int v26, v9, v18

    add-int v26, v26, v25

    shl-int/lit8 v27, v13, 0x1

    add-int v20, v26, v27

    .line 317
    .local v20, "stringWidth":I
    sub-int v26, v21, v20

    ushr-int/lit8 v19, v26, 0x1

    .line 318
    .local v19, "offset":I
    move/from16 v7, v19

    .line 319
    .local v7, "dOff":I
    add-int v10, v7, v9

    .line 320
    .local v10, "del1Off":I
    add-int v16, v10, v13

    .line 321
    .local v16, "mOff":I
    add-int v11, v16, v18

    .line 322
    .local v11, "del2Off":I
    add-int v23, v11, v13

    .line 324
    .local v23, "yOff":I
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 325
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 327
    const/16 v26, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v26

    invoke-virtual {v0, v12, v10, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 328
    const/16 v26, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v26

    invoke-virtual {v0, v12, v11, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 335
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/DateCanvas;->selected:I

    move/from16 v26, v0

    if-nez v26, :cond_2

    .line 336
    const/4 v5, 0x0

    .line 337
    .local v5, "colorR":I
    const v6, 0xffffff

    .line 343
    .local v6, "colorT":I
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 344
    invoke-virtual {v14}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v26

    invoke-virtual {v0, v7, v1, v9, v2}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 345
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 346
    const/16 v26, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v26

    invoke-virtual {v0, v8, v7, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 348
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/DateCanvas;->selected:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 349
    const/4 v5, 0x0

    .line 350
    const v6, 0xffffff

    .line 356
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 357
    invoke-virtual {v14}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v18

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 358
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 359
    const/16 v26, 0x14

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v22

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 361
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/DateCanvas;->selected:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 362
    const/4 v5, 0x0

    .line 363
    const v6, 0xffffff

    .line 369
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 370
    invoke-virtual {v14}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 371
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 372
    const/16 v26, 0x14

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v23

    move/from16 v3, v22

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 373
    return-void

    .line 339
    .end local v5    # "colorR":I
    .end local v6    # "colorT":I
    :cond_2
    const v5, 0xffffff

    .line 340
    .restart local v5    # "colorR":I
    const/4 v6, 0x0

    .restart local v6    # "colorT":I
    goto/16 :goto_0

    .line 352
    :cond_3
    const v5, 0xffffff

    .line 353
    const/4 v6, 0x0

    goto :goto_1

    .line 365
    :cond_4
    const v5, 0xffffff

    .line 366
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public setTime(Ljava/util/Date;)V
    .locals 2
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 283
    iget-object v0, p0, Ljavax/microedition/lcdui/DateCanvas;->cal:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 284
    iget-object v0, p0, Ljavax/microedition/lcdui/DateCanvas;->cal:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Ljavax/microedition/lcdui/DateCanvas;->year:I

    .line 285
    iget-object v0, p0, Ljavax/microedition/lcdui/DateCanvas;->cal:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Ljavax/microedition/lcdui/DateCanvas;->month:I

    .line 286
    iget-object v0, p0, Ljavax/microedition/lcdui/DateCanvas;->cal:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Ljavax/microedition/lcdui/DateCanvas;->day:I

    .line 287
    invoke-virtual {p0}, Ljavax/microedition/lcdui/DateCanvas;->repaint()V

    .line 288
    return-void
.end method
